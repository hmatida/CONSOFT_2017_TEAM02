package SGCteam02.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "EVENTO")
public class Evento {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "DATA_INICIO")
	private Date dataInicio;

	@Column(name = "DATA_FIM")
	private Date dataFim;

	@Column(name = "TIPO_EVENTO")
	private String tipo;

	@Column(name = "TITULO")
	private String titulo;

	

	public Evento() {
	}

}
