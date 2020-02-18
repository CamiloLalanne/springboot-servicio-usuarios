package com.formacionbdi.springboot.app.usuarios.models.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

import com.formacionbdi.springboot.app.usuarios.commons.models.entity.Usuario;
//con esta anotacion lo defines altiro como un servicio dandole el path a nivel de clase
//usuarios y con la anotacion restResource le dices el path de los servicios
@RepositoryRestResource(path="usuarios")
public interface UsuarioDao extends PagingAndSortingRepository<Usuario, Long>{

	//cuando usas restResource se consulta con el path que tiene esta anotacion.
	//pero cuando no tiene la anotacion @RestResource, se debe hacer la consulta con el nombre
	//del metodo
	@RestResource(path="buscar-username")
	public Usuario findByUsername(@Param("username") String username);
	
	@Query(value="select * from usuarios where username = ?1",nativeQuery = true)
	public Usuario findUsernameQuery(String username);
	
	@Query("select u from Usuario u where u.username=?1")
	public Usuario obtenerPorUsername(String username);
}
