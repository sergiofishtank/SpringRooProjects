package es.ua.jtech.web;
import es.ua.jtech.domain.Tarea;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tareas")
@Controller
@RooWebScaffold(path = "tareas", formBackingObject = Tarea.class)
public class TareaController {
}
