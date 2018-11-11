package com.sergio.roo.jsf.jsf.converter;
import com.sergio.roo.jsf.dominio.Donante;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Donante.class)
public class DonanteConverter implements Converter {
}
