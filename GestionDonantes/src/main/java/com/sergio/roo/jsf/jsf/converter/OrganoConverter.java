package com.sergio.roo.jsf.jsf.converter;
import com.sergio.roo.jsf.dominio.Organo;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Organo.class)
public class OrganoConverter implements Converter {
}
