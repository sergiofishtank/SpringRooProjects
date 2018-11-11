package com.ejercicio.tareas.jsf;
import com.ejercicio.tareas.domain.Materias;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Materias.class, beanName = "materiasBean")
public class MateriasBean {
}
