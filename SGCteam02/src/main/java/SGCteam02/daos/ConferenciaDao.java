package SGCteam02.daos;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import SGCteam02.models.Conferencia;

public interface ConferenciaDao extends CrudRepository<Conferencia, Long>{
	
}
