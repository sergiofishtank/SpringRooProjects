package com.sergio.roo.jsf.jsf;
import com.sergio.roo.jsf.dominio.Organo;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Organo.class, beanName = "organoBean")
public class OrganoBean {
}
