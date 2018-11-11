// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.ua.jtech.domain;

import es.ua.jtech.domain.Tarea;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Tarea_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Tarea.entityManager;
    
    public static final List<String> Tarea.fieldNames4OrderClauseFilter = java.util.Arrays.asList("titulo", "limite", "prioridad");
    
    public static final EntityManager Tarea.entityManager() {
        EntityManager em = new Tarea().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Tarea.countTareas() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Tarea o", Long.class).getSingleResult();
    }
    
    public static List<Tarea> Tarea.findAllTareas() {
        return entityManager().createQuery("SELECT o FROM Tarea o", Tarea.class).getResultList();
    }
    
    public static List<Tarea> Tarea.findAllTareas(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Tarea o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Tarea.class).getResultList();
    }
    
    public static Tarea Tarea.findTarea(Long id) {
        if (id == null) return null;
        return entityManager().find(Tarea.class, id);
    }
    
    public static List<Tarea> Tarea.findTareaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Tarea o", Tarea.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Tarea> Tarea.findTareaEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Tarea o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Tarea.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Tarea.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Tarea.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Tarea attached = Tarea.findTarea(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Tarea.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Tarea.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Tarea Tarea.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Tarea merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
