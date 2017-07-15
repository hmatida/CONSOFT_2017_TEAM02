package SGCteam02.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Avaliacoes {

	 @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	   private long id;
	 
	 private String nomeAvaliador;
	 
}
