package SGCteam02.models;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class FasesConfecencia {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String nome;
	private Calendar iniDAte;
	private Calendar fimDate;
	
//	@ManyToOne
//	private Conferencia conferencia;

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

	public Calendar getIniDAte() {
		return iniDAte;
	}

	public void setIniDAte(Calendar iniDAte) {
		this.iniDAte = iniDAte;
	}

	public Calendar getFimDate() {
		return fimDate;
	}

	public void setFimDate(Calendar fimDate) {
		this.fimDate = fimDate;
	}
	
}
