package fifth.game.springbootgame.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fifth.game.springbootgame.model.Data;
import fifth.game.springbootgame.model.DataRepository;

@Service
@Transactional
public class DataService {
	
	
	private DataRepository dDao;
	
	@Autowired
	public DataService(DataRepository dDao) {
		super();
		this.dDao = dDao;
	}
	
	public DataService() {
		super();
	}
	
	
	public void insert(Data data) {
		dDao.save(data);
	}
	
	public List<Data> findAll(){
		return dDao.findAll();
	}
	
	public Data findById(Integer id) {
		Optional<Data> optional  = dDao.findById(id);
		if(optional.isPresent())
			return optional .get();
		return null;
	}
 	
}
