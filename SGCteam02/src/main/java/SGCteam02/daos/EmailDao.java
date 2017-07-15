package SGCteam02.daos;

import org.hibernate.validator.constraints.Email;
import org.springframework.data.repository.CrudRepository;



public interface EmailDao extends CrudRepository<Email, Long>{

}
