package SGCteam02.models;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;


@Entity
public class Comite {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private int nroParticipantes;
	
	private ArrayList<Usuario> usuarios;
	
	@ManyToOne
	@JoinColumn(name="id_conferencia", referencedColumnName="id_conferencia")
	private Conferencia conferencia;
	

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public Conferencia getConferencia() {
		return conferencia;
	}


	public void setConferencia(Conferencia conferencia) {
		this.conferencia = conferencia;
	}


	public int getNroParticipantes() {
		return nroParticipantes;
	}


	public void setNroParticipantes(int nroParticipantes) {
		this.nroParticipantes = nroParticipantes;
	}


	public ArrayList<Usuario> getUsuarios() {
		return usuarios;
	}


	public void setUsuarios(ArrayList<Usuario> usuarios) {
		this.usuarios = usuarios;
	}
}
