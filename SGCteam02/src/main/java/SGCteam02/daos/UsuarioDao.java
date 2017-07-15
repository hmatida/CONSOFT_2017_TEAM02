/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SGCteam02.daos;

import SGCteam02.models.Usuario;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Roosevelt
 */
public class UsuarioDao {
    
    @Autowired
	SessionFactory hibernateSession;

	public void add(Usuario user) {
		hibernateSession.getCurrentSession().save(user);

	}

	public void edit(Usuario user) {
		hibernateSession.getCurrentSession().update(user);

	}

	
	public void delete(int userId) {
		Usuario tempUser = (Usuario) hibernateSession.getCurrentSession()
				.get(Usuario.class, userId);
		hibernateSession.getCurrentSession().delete(tempUser);

	}

	
	public Usuario getUsuario(int userId) {
		Usuario tempUser = (Usuario) hibernateSession.getCurrentSession()
				.get(Usuario.class, userId);
		return tempUser;
	}

	
	public List<Usuario> getAllUsuario() {
		return hibernateSession.getCurrentSession()
				.createQuery("Select * from Usuario").list();
	}

    
}
