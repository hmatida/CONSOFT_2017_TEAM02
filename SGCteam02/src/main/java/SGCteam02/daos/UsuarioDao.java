/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SGCteam02.daos;

import SGCteam02.models.Usuario;

import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Nélio
 */
public interface UsuarioDao extends CrudRepository<Usuario, Long>{


    
}
