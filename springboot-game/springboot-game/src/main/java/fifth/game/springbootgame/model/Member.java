package fifth.game.springbootgame.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "member")
@Component
public class Member {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;

	@Column(name="account")
	private String account;
	
	@Column(name="password")
	private String password;

	@Column(name="nickname")
	private String nickname;

	@Column(name="email")
	private String email;

	@Column(name="photo")
	private byte[] photo;

	@Column(name="create_at", columnDefinition = "datetime")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss")
	@JsonFormat(pattern="yyyy/MM/dd HH:mm:ss EEEE", timezone = "GMT+8")
	private Date create_at;

	public Member() {
	}
	
		
	public Member(String account, String password, String nickname, String email, byte[] photo, Date create_at) {
		super();
		this.account = account;
		this.password = password;
		this.nickname = nickname;
		this.email = email;
		this.photo = photo;
		this.create_at = create_at;
	}



	@PrePersist
	public void onCreate() {
		if(create_at == null) {
			create_at = new Date();
		}
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	public Date getCreate_at() {
		return create_at;
	}

	public void setCreate_at(Date create_at) {
		this.create_at = create_at;
	}




}
