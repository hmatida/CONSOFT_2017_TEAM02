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
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String nome;
	private Calendar iniDAte;
	private Calendar fimDate;
	
	@ManyToOne
	private Conferencia conferencia;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
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

	public Conferencia getConferencia() {
		return conferencia;
	}

	public void setConferencia(Conferencia conferencia) {
		this.conferencia = conferencia;
	}
	
	
}
