// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ejercicio.tareas.jsf.converter;

import com.ejercicio.tareas.domain.Tareas;
import com.ejercicio.tareas.jsf.converter.TareasConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.FacesConverter;

privileged aspect TareasConverter_Roo_Converter {
    
    declare @type: TareasConverter: @FacesConverter("com.ejercicio.tareas.jsf.converter.TareasConverter");
    
    public Object TareasConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return Tareas.findTareas(id);
    }
    
    public String TareasConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Tareas ? ((Tareas) value).getId().toString() : "";
    }
    
}
