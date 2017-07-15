package SGCteam02.models;

import java.util.Date;

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
public class Fatura {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@NotNull
	@Column(name = "VALOR")
	private double valor;

	@Column(name = "DATA_ENVIO")
	private Date dataEnvio;

	@NotNull
	@Column(name = "DATA_VENCIMENTO")
	private Date dataVencimento;

	@Column(name = "DATA_PAGAMENTO")
	private Date dataPagamento;

	

	public Fatura() {
		// TODO Auto-generated constructor stub
	}

}
