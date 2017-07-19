package SGCteam02.models;

import java.sql.Date;
import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.*;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="usuario")
public class Usuario {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Long idUsuario;

	private String nome;


	private String sobrenome;


	private String cpf;

	private String email;

	
	@Column(name="DATA_NASCIMENTO")
	private Date dataNascimento;

	@Size(max = 255)
	@Column(name="LOGIN", unique=true)
	private String login;

	
	@Size(max = 10)
	@Column(name="SENHA")
	private String senha;

	@ManyToMany
	@JoinTable(name="usuario_funcao", joinColumns = @JoinColumn(name="idusuario"),
	inverseJoinColumns=@JoinColumn(name="idfuncao"))
	private List<Funcao> func;
	
	@OneToMany(mappedBy="usuario")
	private List<Sessao> sessao;
	
	
	
	public Long getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Long idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public List<Funcao> getFunc() {
		return func;
	}


	public void setFunc(List<Funcao> func) {
		this.func = func;
	}


	public List<Sessao> getSessao() {
		return sessao;
	}


	public void setSessao(List<Sessao> sessao) {
		this.sessao = sessao;
	}
	
	
}
