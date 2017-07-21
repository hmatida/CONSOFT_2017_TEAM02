package SGCteam02.models;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
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
@Table(name = "evento")
public class Evento {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(name = "DATA_INICIO")
	@DateTimeFormat(iso=ISO.DATE)
	private Calendar dataInicio;

	@Column(name = "DATA_FIM")
	@DateTimeFormat(iso=ISO.DATE)
	private Calendar dataFim;

	@Column(name = "TIPO_EVENTO")
	private String tipo;

	@Column(name = "TITULO")
	private String titulo;
	
	@ManyToOne
	@JoinColumn(name="id_conferencia", referencedColumnName="id_conferencia")
	private Conferencia conferencia;
	
	@JoinColumn(name="id_local", referencedColumnName="id_local")
	@ManyToOne
	private Local local;
	
	private String tp_cobranca;
	private String descricao;
	private double preco;


	public Evento() {
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public Calendar getDataInicio() {
		return dataInicio;
	}


	public void setDataInicio(Calendar dataInicio) {
		this.dataInicio = dataInicio;
	}


	public Calendar getDataFim() {
		return dataFim;
	}


	public void setDataFim(Calendar dataFim) {
		this.dataFim = dataFim;
	}


	public String getTipo() {
		return tipo;
	}


	public void setTipo(String tipo) {
		this.tipo = tipo;
	}


	public String getTitulo() {
		return titulo;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public Conferencia getConferencia() {
		return conferencia;
	}


	public void setConferencia(Conferencia conferencia) {
		this.conferencia = conferencia;
	}


	public Local getLocal() {
		return local;
	}


	public void setLocal(Local local) {
		this.local = local;
	}



	public String getTp_cobranca() {
		return tp_cobranca;
	}


	public void setTp_cobranca(String tp_cobranca) {
		this.tp_cobranca = tp_cobranca;
	}


	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}


	public double getPreco() {
		return preco;
	}


	public void setPreco(double preco) {
		this.preco = preco;
	}
	
	
}
