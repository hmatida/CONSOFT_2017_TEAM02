package SGCteam02.models;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@Entity
@Table(name="sessao")
public class Sessao {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id_sessao")
	private Long id;
	private String nomeDaSessao;
	private String abreviacao;
	
	@Column
	@DateTimeFormat(iso=ISO.DATE)
	private Calendar inicio;
	
	@Column
	@DateTimeFormat(iso=ISO.DATE)
	private Calendar fim;
	
	@ManyToOne
	@JoinColumn(name="id_conferencia", referencedColumnName="id_conferencia")
	private Conferencia conferencia;

	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNomeDaSessao() {
		return nomeDaSessao;
	}

	public void setNomeDaSessao(String nomeDaSessao) {
		this.nomeDaSessao = nomeDaSessao;
	}

	public String getAbreviacao() {
		return abreviacao;
	}

	public void setAbreviacao(String abreviacao) {
		this.abreviacao = abreviacao;
	}

	public Calendar getInicio() {
		return inicio;
	}

	public void setInicio(Calendar inicio) {
		this.inicio = inicio;
	}

	public Calendar getFim() {
		return fim;
	}

	public void setFim(Calendar fim) {
		this.fim = fim;
	}

	public Conferencia getConferencia() {
		return conferencia;
	}

	public void setConferencia(Conferencia conferencia) {
		this.conferencia = conferencia;
	}
	
	
}
