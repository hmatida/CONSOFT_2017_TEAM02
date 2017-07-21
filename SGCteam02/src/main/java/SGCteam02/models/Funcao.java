package SGCteam02.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;

@Entity
public class Funcao {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long idFuncao;
	private String nome;
	
	@ManyToMany
	@JoinColumn(name="idUsuario", referencedColumnName="idUsuario")
	private List<Usuario> usuarios;
	
	public Long getIdFuncao() {
		return idFuncao;
	}
	public void setIdFuncao(Long idFuncao) {
		this.idFuncao = idFuncao;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	
}
