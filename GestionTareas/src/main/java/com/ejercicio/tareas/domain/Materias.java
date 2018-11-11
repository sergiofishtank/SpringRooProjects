package com.ejercicio.tareas.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.Enumerated;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Materias {

    /**
     */
    @NotNull
    @Size(max = 25)
    private String nombre;

    /**
     */
    @NotNull
    @Enumerated
    private TipoMateria tipoMateria;

    /**
     */
    @Size(max = 25)
    private String descripcion;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "materia")
    private Set<Tareas> tareas = new HashSet<Tareas>();
}
