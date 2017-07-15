package SGCteam02.models;

import java.util.Calendar;
import java.util.Date;

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
	private Date inicialDate;
	private Date finalDate;
	


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

	public Date getInicialDate() {
		return inicialDate;
	}

	public void setInicialDate(Date iniDAte) {
		this.inicialDate = iniDAte;
	}

	public Date getFimDate() {
		return finalDate;
	}

	public void setFimDate(Date fimDate) {
		this.finalDate = fimDate;
	}

	
	
	
}
