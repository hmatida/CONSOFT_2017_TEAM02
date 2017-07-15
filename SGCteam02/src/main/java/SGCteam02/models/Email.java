package SGCteam02.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "EMAIL")
public class Email {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@NotNull
	@Column(name = "EMAIL")
	private String email;

	@Column(name = "NOME_REMENTE")
	private String nomeRemetente;

	@NotNull
	@Column(name = "EMAIL_RETORNO")
	private String emailRetorno;

	@OneToOne
	private Conferencia conferencia;

	

}
