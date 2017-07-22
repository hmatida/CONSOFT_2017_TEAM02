package SGCteam02.models;

import java.util.Calendar;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@Entity
@Table(name="conferencia")
public class Conferencia {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id_conferencia")
	private Long id;
	private String nome;
	private String nome_abre;
	private String nome_organizador;
	private String sub_tit;
	private String sub_tit_sec;
	private String url;
	private String email;
	private String emailRetorno;
	
	private String moeda;
	private int numMaxParticipantes;
	
	@Column
	@DateTimeFormat(iso=ISO.DATE)
	private Calendar dataEvento;
	
	@OneToMany(mappedBy="conferencia")
	private List<FasesConfecencia> fasesConf;
	
	@OneToMany(mappedBy="conferencia")
	private List<Evento> eventos;
	
	@OneToMany(mappedBy="conferencia")
	private List<Sessao> sessao;
	
	@OneToMany(mappedBy="conferencia")
	private List<Usuario> participantes;
	
	public Calendar getDataEvento() {
		return dataEvento;
	}
	public void setDataEvento(Calendar dataEvento) {
		this.dataEvento = dataEvento;
	}
	public Long getId() {
		return id;
	}
	public void setIdConf(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getNome_abre() {
		return nome_abre;
	}
	public void setNome_abre(String nome_abre) {
		this.nome_abre = nome_abre;
	}
	public String getNome_organizador() {
		return nome_organizador;
	}
	public void setNome_organizador(String nome_organizador) {
		this.nome_organizador = nome_organizador;
	}
	public String getSub_tit() {
		return sub_tit;
	}
	public void setSub_tit(String sub_tit) {
		this.sub_tit = sub_tit;
	}
	public String getSub_tit_sec() {
		return sub_tit_sec;
	}
	public void setSub_tit_sec(String sub_tit_sec) {
		this.sub_tit_sec = sub_tit_sec;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmail_ret() {
		return emailRetorno;
	}
	public void setEmail_ret(String emailRetorno) {
		this.emailRetorno = emailRetorno;
	}
	public String getMoeda() {
		return moeda;
	}
	public void setMoeda(String moeda) {
		this.moeda = moeda;
	}
	public int getN_participantes() {
		return numMaxParticipantes;
	}
	public void setN_participantes(int numMaxParticipantes) {
		this.numMaxParticipantes = numMaxParticipantes;
	}
	public List<FasesConfecencia> getFasesConf() {
		return fasesConf;
	}
	public void setFasesConf(List<FasesConfecencia> fasesConf) {
		this.fasesConf = fasesConf;
	}
	public void setId(Long id) {
		this.id = id;
	}
		
	public List<Evento> getEventos() {
		return eventos;
	}
	public void setEventos(List<Evento> eventos) {
		this.eventos = eventos;
	}
	public List<Sessao> getSessao() {
		return sessao;
	}
	public void setSessao(List<Sessao> sessao) {
		this.sessao = sessao;
	}
	public List<Usuario> getParticipantes() {
		return participantes;
	}
	public void setParticipantes(List<Usuario> participantes) {
		this.participantes = participantes;
	}
	public String getEmailRetorno() {
		return emailRetorno;
	}
	public void setEmailRetorno(String emailRetorno) {
		this.emailRetorno = emailRetorno;
	}
	public int getNumMaxParticipantes() {
		return numMaxParticipantes;
	}
	public void setNumMaxParticipantes(int numMaxParticipantes) {
		this.numMaxParticipantes = numMaxParticipantes;
	}
}

