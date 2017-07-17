package SGCteam02.models;

import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@Entity
@Table(name="fases_confecencia")
public class FasesConfecencia {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String nome;
	
	
	@Column
	@DateTimeFormat(iso=ISO.DATE)
	private Calendar initDate;
	
	@Column
	@DateTimeFormat(iso=ISO.DATE)
	private Calendar fimDate;
	
	@ManyToOne
	@JoinColumn(name="id_conferencia", referencedColumnName="id_conferencia")
	private Conferencia conferencia;

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

	public Calendar getInitDate() {
		return initDate;
	}

	public void setInitDate(Calendar initDate) {
		this.initDate = initDate;
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
