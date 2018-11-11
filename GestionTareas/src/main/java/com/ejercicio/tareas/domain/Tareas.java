package com.ejercicio.tareas.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Tareas {

    /**
     */
    @NotNull
    @Size(max = 25)
    private String nombre;

    /**
     */
    @Size(max = 25)
    private String descripcion;

    /**
     */
    @NotNull
    @ManyToOne
    private Materias materia;
}
