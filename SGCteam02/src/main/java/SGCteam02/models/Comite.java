package SGCteam02.models;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;


@Entity
public class Comite {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private String nome;
	
	private int nroMaxParticipantes;
	
	private int participantes;
	
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name="comite_usuario", joinColumns=
				@JoinColumn(name="id"),
				inverseJoinColumns = @JoinColumn(name="idUsuario") )
	private List<Usuario> usuarios;
	
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

	public void setUsuarios(Usuario usuarios) {
		this.usuarios.add(usuarios);
		participantes=participantes++;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public int getNroMaxParticipantes() {
		return nroMaxParticipantes;
	}


	public void setNroMaxParticipantes(int nroMaxParticipantes) {
		this.nroMaxParticipantes = nroMaxParticipantes;
	}


	public int getParticipantes() {
		return participantes;
	}


	public void setParticipantes(int participantes) {
		this.participantes = participantes;
	}
	
	public void addParticipantes(List<Usuario> usuario){
		this.usuarios.addAll(usuario);
		participantes=participantes++;
	}


	public List<Usuario> getUsuarios() {
		return usuarios;
	}


	public void setUsuarios(List<Usuario> usuarios) {
		this.usuarios = usuarios;
	}
	
}
