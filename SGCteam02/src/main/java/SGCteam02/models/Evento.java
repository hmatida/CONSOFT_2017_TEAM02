package SGCteam02.models;

import java.util.ArrayList;
import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import antlr.collections.List;

@Entity
public class Evento {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long idEvento;
	private String tipo;
	private Calendar data;
	private Calendar dtFim;
	private String titulo;
	
	@ManyToOne
	private Local local;

	public Long getIdEvento() {
		return idEvento;
	}

	public void setIdEvento(Long idEvento) {
		this.idEvento = idEvento;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Calendar getData() {
		return data;
	}

	public void setData(Calendar data) {
		this.data = data;
	}

	public Calendar getDtFim() {
		return dtFim;
	}

	public void setDtFim(Calendar dtFim) {
		this.dtFim = dtFim;
	}

	public String getTitulo() {
		return titulo;
	}
	
	public enum eventoType{
		EVENTO, PRINTED, COMBO
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}	
}
