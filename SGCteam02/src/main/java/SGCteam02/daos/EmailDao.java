package SGCteam02.daos;


import org.springframework.data.repository.CrudRepository;

import SGCteam02.models.Email;



public interface EmailDao extends CrudRepository<Email, Long>{

}
