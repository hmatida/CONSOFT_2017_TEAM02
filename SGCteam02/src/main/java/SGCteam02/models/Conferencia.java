package SGCteam02.models;

import java.util.Calendar;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
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
	private String cidade;
	private String email;
	private String email_ret;
	private String moeda;
	private int n_participantes;
	
	@Column
	@DateTimeFormat(iso=ISO.DATE)
	private Calendar dataEvento;
	
	@OneToMany(mappedBy="conferencia")
	private List<FasesConfecencia> fasesConf;
	
	@OneToMany(mappedBy="conferencia")
	private List<Evento> eventos;
	
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
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmail_ret() {
		return email_ret;
	}
	public void setEmail_ret(String email_ret) {
		this.email_ret = email_ret;
	}
	public String getMoeda() {
		return moeda;
	}
	public void setMoeda(String moeda) {
		this.moeda = moeda;
	}
	public int getN_participantes() {
		return n_participantes;
	}
	public void setN_participantes(int n_participantes) {
		this.n_participantes = n_participantes;
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
}
