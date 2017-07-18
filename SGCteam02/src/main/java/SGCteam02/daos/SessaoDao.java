package SGCteam02.daos;

import org.springframework.data.repository.CrudRepository;

import SGCteam02.models.FasesConfecencia;
import SGCteam02.models.Sessao;

public interface SessaoDao extends CrudRepository<Sessao, Long>{

}
