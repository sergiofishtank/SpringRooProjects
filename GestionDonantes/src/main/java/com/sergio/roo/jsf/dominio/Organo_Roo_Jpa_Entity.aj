// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sergio.roo.jsf.dominio;

import com.sergio.roo.jsf.dominio.Organo;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Organo_Roo_Jpa_Entity {
    
    declare @type: Organo: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Organo.id;
    
    @Version
    @Column(name = "version")
    private Integer Organo.version;
    
    public Long Organo.getId() {
        return this.id;
    }
    
    public void Organo.setId(Long id) {
        this.id = id;
    }
    
    public Integer Organo.getVersion() {
        return this.version;
    }
    
    public void Organo.setVersion(Integer version) {
        this.version = version;
    }
    
}