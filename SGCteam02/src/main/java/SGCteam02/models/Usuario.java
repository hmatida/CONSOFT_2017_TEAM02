package SGCteam02.models;

import java.sql.Date;

import javax.persistence.*;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.*;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name = "USUARIO")
public class Usuario {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

	

	@NotNull
	@NotBlank
	@Size(max = 255)
	@Column(name="NOME")
	private String nome;

	@NotNull
	@NotBlank
	@Size(max = 255)
	@Column(name="SOBRENOME")
	private String sobrenome;

	@NotNull
	@NotBlank
	@Size(max = 12)
	@Column(name="CPF")
	private String cpf;

	@NotNull
	@NotBlank
	@Size(max = 255)
	@Column(name="EMAIL", unique=true)
	private String email;

	@NotNull
	@Column(name="DATA_NASCIMENTO")
	private Date dataNascimento;

	@NotNull
	@NotBlank
	@Size(max = 255)
	@Column(name="LOGIN", unique=true)
	private String login;

	@NotNull
	@NotBlank
	@Size(max = 10)
	@Column(name="SENHA")
	private String senha;
	


	public Usuario(){
		
	}
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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
}
