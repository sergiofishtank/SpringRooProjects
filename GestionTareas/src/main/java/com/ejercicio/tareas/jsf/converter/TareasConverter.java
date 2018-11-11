package com.ejercicio.tareas.jsf.converter;
import com.ejercicio.tareas.domain.Tareas;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Tareas.class)
public class TareasConverter implements Converter {
}
