package SGCteam02.models;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.*;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

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

	@Column
	@DateTimeFormat(iso=ISO.DATE)
	private Calendar dataNascimento;


	private String login;

	

	private String senha;

	@ManyToMany
	@JoinTable(name="usuario_funcao", joinColumns = @JoinColumn(name="idUsuario"),
	inverseJoinColumns=@JoinColumn(name="idFuncao"))
	private List<Funcao> func = new ArrayList();
	
	@OneToMany(mappedBy="usuario")
	private List<Sessao> sessao;
	
	@ManyToOne
	@JoinColumn(name="id_conferencia", referencedColumnName="id_conferencia")
	private Conferencia conferencia;
	
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

	public Conferencia getConferencia() {
		return conferencia;
	}

	public void setConferencia(Conferencia conferencia) {
		this.conferencia = conferencia;
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

	public Calendar getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Calendar dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	
	
}
