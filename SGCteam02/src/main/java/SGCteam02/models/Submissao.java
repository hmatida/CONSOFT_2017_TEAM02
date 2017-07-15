package SGCteam02.models;

import java.sql.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Submissao {
	
	
	 @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	   private Integer id;

	 private Date dataHora;
	 private String tipoSubmissao;
	 
	 @ManyToMany	 
	 private List<Trabalho> trabalho;
	 
	 
	 
}
