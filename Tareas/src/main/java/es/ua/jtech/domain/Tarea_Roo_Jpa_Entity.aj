// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.ua.jtech.domain;

import es.ua.jtech.domain.Tarea;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Tarea_Roo_Jpa_Entity {
    
    declare @type: Tarea: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Tarea.id;
    
    @Version
    @Column(name = "version")
    private Integer Tarea.version;
    
    public Long Tarea.getId() {
        return this.id;
    }
    
    public void Tarea.setId(Long id) {
        this.id = id;
    }
    
    public Integer Tarea.getVersion() {
        return this.version;
    }
    
    public void Tarea.setVersion(Integer version) {
        this.version = version;
    }
    
}
