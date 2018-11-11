package com.ejercicio.tareas.jsf.converter;
import com.ejercicio.tareas.domain.Materias;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Materias.class)
public class MateriasConverter implements Converter {
}
