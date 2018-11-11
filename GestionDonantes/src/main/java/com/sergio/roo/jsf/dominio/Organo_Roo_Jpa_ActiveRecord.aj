// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sergio.roo.jsf.dominio;

import com.sergio.roo.jsf.dominio.Organo;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Organo_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Organo.entityManager;
    
    public static final List<String> Organo.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nombre", "descripcion", "donante");
    
    public static final EntityManager Organo.entityManager() {
        EntityManager em = new Organo().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Organo.countOrganoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Organo o", Long.class).getSingleResult();
    }
    
    public static List<Organo> Organo.findAllOrganoes() {
        return entityManager().createQuery("SELECT o FROM Organo o", Organo.class).getResultList();
    }
    
    public static List<Organo> Organo.findAllOrganoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Organo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Organo.class).getResultList();
    }
    
    public static Organo Organo.findOrgano(Long id) {
        if (id == null) return null;
        return entityManager().find(Organo.class, id);
    }
    
    public static List<Organo> Organo.findOrganoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Organo o", Organo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Organo> Organo.findOrganoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Organo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Organo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Organo.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Organo.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Organo attached = Organo.findOrgano(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Organo.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Organo.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Organo Organo.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Organo merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
