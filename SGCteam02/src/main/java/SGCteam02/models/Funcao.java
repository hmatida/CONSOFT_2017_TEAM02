package SGCteam02.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Funcao {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long idFuncao;
	private String nome;
	
	
	public long getIdFuncao() {
		return idFuncao;
	}
	public void setIdFuncao(long idFuncao) {
		this.idFuncao = idFuncao;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}

}
