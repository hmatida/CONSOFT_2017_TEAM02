package SGCteam02.daos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import SGCteam02.models.*;

public interface LocalDao extends CrudRepository<Local, Long> {

}
