package com.sergio.roo.jsf.jsf;
import com.sergio.roo.jsf.dominio.Donante;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Donante.class, beanName = "donanteBean")
public class DonanteBean {
}
