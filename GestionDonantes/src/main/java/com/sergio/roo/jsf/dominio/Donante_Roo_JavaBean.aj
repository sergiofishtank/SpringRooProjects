// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sergio.roo.jsf.dominio;

import com.sergio.roo.jsf.dominio.Donante;
import com.sergio.roo.jsf.dominio.GrupoSanguineo;
import com.sergio.roo.jsf.dominio.Organo;
import java.util.Date;
import java.util.Set;

privileged aspect Donante_Roo_JavaBean {
    
    public String Donante.getNombre() {
        return this.nombre;
    }
    
    public void Donante.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public GrupoSanguineo Donante.getGrupoSanguineo() {
        return this.grupoSanguineo;
    }
    
    public void Donante.setGrupoSanguineo(GrupoSanguineo grupoSanguineo) {
        this.grupoSanguineo = grupoSanguineo;
    }
    
    public Date Donante.getFechaNacimiento() {
        return this.fechaNacimiento;
    }
    
    public void Donante.setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }
    
    public String Donante.getMail() {
        return this.mail;
    }
    
    public void Donante.setMail(String mail) {
        this.mail = mail;
    }
    
    public Set<Organo> Donante.getOrganos() {
        return this.organos;
    }
    
    public void Donante.setOrganos(Set<Organo> organos) {
        this.organos = organos;
    }
    
}
