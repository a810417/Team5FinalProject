package fifth.game.springbootgame.service;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fifth.game.springbootgame.model.Member;
import fifth.game.springbootgame.model.MemberDao;

@Service
@Transactional
public class MemberService {

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private MemberDao mDao;

	public Member insert(Member m) {
		mDao.save(m);
		return m;
	}

	public void delete(Member bean) {
		Session session = sessionFactory.openSession();
		if (bean != null) {
			session.beginTransaction();
			session.delete(bean);
			session.getTransaction().commit();
		}
		session.close();
	}

	public void deleteById(Integer id) {
		Session session = sessionFactory.openSession();

		Member member = session.get(Member.class, id);

		if (member != null) {
			session.beginTransaction();
			System.out.println("準備刪除");
			session.delete(member);
			System.out.println("刪除完成");
			session.getTransaction().commit();
		}

		session.close();
		System.out.println("session關閉");
	}

	public List<Member> selectAll() {

		String str = "from Member";

		Session session = sessionFactory.openSession();
		Query<Member> createQuery = session.createQuery(str, Member.class);
		List<Member> list = createQuery.getResultList();
		session.close();
		return list;
	}

	public List<Member> selectMOHU(String word) {
		
		String str = "from Member WHERE str(id) LIKE :id or account Like :account or nickname Like :nickname or email Like :email";

		Session session = sessionFactory.openSession();
		Query<Member> cQ = session.createQuery(str, Member.class);

		cQ.setParameter("id", "%" +word + "%");
		cQ.setParameter("account", "%" + word + "%");
		cQ.setParameter("nickname", "%" + word + "%");
		cQ.setParameter("email", "%" + word + "%");

		List<Member> list = cQ.getResultList();
		session.close();
		if (list.isEmpty()) {
			return null;
		}
		return list;
	}
	


	public Member findMemberById(Integer id) {
		Optional<Member> optional = mDao.findById(id);

		if (optional.isPresent()) {
			Member findMem = optional.get();
			return findMem;
		}
		return null;

	}

	public Member updateMemberById(Member m, Integer id) {

		Optional<Member> optional = mDao.findById(id);

		if (optional.isPresent()) {
			Member presentMem = optional.get();
			presentMem.setAccount(m.getAccount());
			presentMem.setPassword(m.getPassword());
			presentMem.setNickname(m.getNickname());
			presentMem.setEmail(m.getEmail());

//			if (Arrays.equals(m.getPhoto(), presentMem.getPhoto())) {
//				System.out.println("結果1: " + Arrays.equals(m.getPhoto(), presentMem.getPhoto()));
//				System.out.println("原始照片1"+presentMem.getPhoto());
//				System.out.println("新照片1"+m.getPhoto());
//				presentMem.setPhoto(presentMem.getPhoto());
//			} else {
//				System.out.println("結果2: " + Arrays.equals(m.getPhoto(), presentMem.getPhoto()));
//				System.out.println("原始照片2"+presentMem.getPhoto());
//				System.out.println("新照片2"+m.getPhoto());
//				presentMem.setPhoto(m.getPhoto());
//				
//			}
			if (m.getPhoto().length == 0) {
				presentMem.setPhoto(presentMem.getPhoto());
			} else {
				presentMem.setPhoto(m.getPhoto());
			}
			mDao.save(presentMem);
			return presentMem;
		}
		return null;
	}

	public byte[] getPhotoById(Integer id) {

		String str = "from Member where id=:id";
		Session session = sessionFactory.openSession();

		Query<Member> createQuery = session.createQuery(str, Member.class);
		createQuery.setParameter("id", id);
		Member rs = createQuery.uniqueResult();
		session.close();
		if (rs == null) {
			System.out.println("沒有東西");
			return null;

		} else {

			byte[] rsByte = rs.getPhoto();
			return rsByte;
		}
	}
}
