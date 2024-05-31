package br.com.unipe.aula.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.unipe.aula.model.Carro;

@Repository
public class CarroDAO {
    
    @PersistenceContext
    private EntityManager entityManager;
    
    public CarroDAO() {}
    
    @Transactional(readOnly=false)
    public void salvar(Carro carro) {
        entityManager.persist(carro);
    }
    
    @Transactional(readOnly=true)
    public List<Carro> getAll() { 
        return entityManager.createQuery("from Carro", Carro.class).getResultList();
    }
    
    @Transactional (readOnly = true)
    public Carro getId(Long id) {
    	return entityManager.find(Carro.class, id);
    }
    
    @Transactional(readOnly=false)
    public void excluir (Long id){
    	entityManager.remove(getId(id));
    }
    
    @Transactional (readOnly = false)
    public void editar (Carro carro) {
    	entityManager.merge(carro);
    }
}
