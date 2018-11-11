package com.ejercicio.tareas.jsf;
import com.ejercicio.tareas.domain.Tareas;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Tareas.class, beanName = "tareasBean")
public class TareasBean {
}
