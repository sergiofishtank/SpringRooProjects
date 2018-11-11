// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ejercicio.tareas.jsf;

import com.ejercicio.tareas.domain.Materias;
import com.ejercicio.tareas.domain.Tareas;
import com.ejercicio.tareas.domain.TipoMateria;
import com.ejercicio.tareas.jsf.MateriasBean;
import com.ejercicio.tareas.jsf.util.MessageFactory;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;
import javax.faces.validator.LengthValidator;
import org.primefaces.component.autocomplete.AutoComplete;
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect MateriasBean_Roo_ManagedBean {
    
    declare @type: MateriasBean: @ManagedBean(name = "materiasBean");
    
    declare @type: MateriasBean: @SessionScoped;
    
    private String MateriasBean.name = "Materiases";
    
    private Materias MateriasBean.materias;
    
    private List<Materias> MateriasBean.allMateriases;
    
    private boolean MateriasBean.dataVisible = false;
    
    private List<String> MateriasBean.columns;
    
    private HtmlPanelGrid MateriasBean.createPanelGrid;
    
    private HtmlPanelGrid MateriasBean.editPanelGrid;
    
    private HtmlPanelGrid MateriasBean.viewPanelGrid;
    
    private boolean MateriasBean.createDialogVisible = false;
    
    private List<Tareas> MateriasBean.selectedTareas;
    
    @PostConstruct
    public void MateriasBean.init() {
        columns = new ArrayList<String>();
        columns.add("nombre");
        columns.add("descripcion");
    }
    
    public String MateriasBean.getName() {
        return name;
    }
    
    public List<String> MateriasBean.getColumns() {
        return columns;
    }
    
    public List<Materias> MateriasBean.getAllMateriases() {
        return allMateriases;
    }
    
    public void MateriasBean.setAllMateriases(List<Materias> allMateriases) {
        this.allMateriases = allMateriases;
    }
    
    public String MateriasBean.findAllMateriases() {
        allMateriases = Materias.findAllMateriases();
        dataVisible = !allMateriases.isEmpty();
        return null;
    }
    
    public boolean MateriasBean.isDataVisible() {
        return dataVisible;
    }
    
    public void MateriasBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid MateriasBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void MateriasBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid MateriasBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void MateriasBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid MateriasBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void MateriasBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid MateriasBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel nombreCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nombreCreateOutput.setFor("nombreCreateInput");
        nombreCreateOutput.setId("nombreCreateOutput");
        nombreCreateOutput.setValue("Nombre:");
        htmlPanelGrid.getChildren().add(nombreCreateOutput);
        
        InputText nombreCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nombreCreateInput.setId("nombreCreateInput");
        nombreCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{materiasBean.materias.nombre}", String.class));
        LengthValidator nombreCreateInputValidator = new LengthValidator();
        nombreCreateInputValidator.setMaximum(25);
        nombreCreateInput.addValidator(nombreCreateInputValidator);
        nombreCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(nombreCreateInput);
        
        Message nombreCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreCreateInputMessage.setId("nombreCreateInputMessage");
        nombreCreateInputMessage.setFor("nombreCreateInput");
        nombreCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreCreateInputMessage);
        
        OutputLabel tipoMateriaCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        tipoMateriaCreateOutput.setFor("tipoMateriaCreateInput");
        tipoMateriaCreateOutput.setId("tipoMateriaCreateOutput");
        tipoMateriaCreateOutput.setValue("Tipo Materia:");
        htmlPanelGrid.getChildren().add(tipoMateriaCreateOutput);
        
        AutoComplete tipoMateriaCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        tipoMateriaCreateInput.setId("tipoMateriaCreateInput");
        tipoMateriaCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{materiasBean.materias.tipoMateria}", TipoMateria.class));
        tipoMateriaCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{materiasBean.completeTipoMateria}", List.class, new Class[] { String.class }));
        tipoMateriaCreateInput.setDropdown(true);
        tipoMateriaCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(tipoMateriaCreateInput);
        
        Message tipoMateriaCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        tipoMateriaCreateInputMessage.setId("tipoMateriaCreateInputMessage");
        tipoMateriaCreateInputMessage.setFor("tipoMateriaCreateInput");
        tipoMateriaCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(tipoMateriaCreateInputMessage);
        
        OutputLabel descripcionCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        descripcionCreateOutput.setFor("descripcionCreateInput");
        descripcionCreateOutput.setId("descripcionCreateOutput");
        descripcionCreateOutput.setValue("Descripcion:");
        htmlPanelGrid.getChildren().add(descripcionCreateOutput);
        
        InputText descripcionCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        descripcionCreateInput.setId("descripcionCreateInput");
        descripcionCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{materiasBean.materias.descripcion}", String.class));
        LengthValidator descripcionCreateInputValidator = new LengthValidator();
        descripcionCreateInputValidator.setMaximum(25);
        descripcionCreateInput.addValidator(descripcionCreateInputValidator);
        descripcionCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(descripcionCreateInput);
        
        Message descripcionCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        descripcionCreateInputMessage.setId("descripcionCreateInputMessage");
        descripcionCreateInputMessage.setFor("descripcionCreateInput");
        descripcionCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(descripcionCreateInputMessage);
        
        HtmlOutputText tareasCreateOutput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        tareasCreateOutput.setId("tareasCreateOutput");
        tareasCreateOutput.setValue("Tareas:");
        htmlPanelGrid.getChildren().add(tareasCreateOutput);
        
        HtmlOutputText tareasCreateInput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        tareasCreateInput.setId("tareasCreateInput");
        tareasCreateInput.setValue("This relationship is managed from the Tareas side");
        htmlPanelGrid.getChildren().add(tareasCreateInput);
        
        Message tareasCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        tareasCreateInputMessage.setId("tareasCreateInputMessage");
        tareasCreateInputMessage.setFor("tareasCreateInput");
        tareasCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(tareasCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid MateriasBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel nombreEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nombreEditOutput.setFor("nombreEditInput");
        nombreEditOutput.setId("nombreEditOutput");
        nombreEditOutput.setValue("Nombre:");
        htmlPanelGrid.getChildren().add(nombreEditOutput);
        
        InputText nombreEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nombreEditInput.setId("nombreEditInput");
        nombreEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{materiasBean.materias.nombre}", String.class));
        LengthValidator nombreEditInputValidator = new LengthValidator();
        nombreEditInputValidator.setMaximum(25);
        nombreEditInput.addValidator(nombreEditInputValidator);
        nombreEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(nombreEditInput);
        
        Message nombreEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreEditInputMessage.setId("nombreEditInputMessage");
        nombreEditInputMessage.setFor("nombreEditInput");
        nombreEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreEditInputMessage);
        
        OutputLabel tipoMateriaEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        tipoMateriaEditOutput.setFor("tipoMateriaEditInput");
        tipoMateriaEditOutput.setId("tipoMateriaEditOutput");
        tipoMateriaEditOutput.setValue("Tipo Materia:");
        htmlPanelGrid.getChildren().add(tipoMateriaEditOutput);
        
        AutoComplete tipoMateriaEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        tipoMateriaEditInput.setId("tipoMateriaEditInput");
        tipoMateriaEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{materiasBean.materias.tipoMateria}", TipoMateria.class));
        tipoMateriaEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{materiasBean.completeTipoMateria}", List.class, new Class[] { String.class }));
        tipoMateriaEditInput.setDropdown(true);
        tipoMateriaEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(tipoMateriaEditInput);
        
        Message tipoMateriaEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        tipoMateriaEditInputMessage.setId("tipoMateriaEditInputMessage");
        tipoMateriaEditInputMessage.setFor("tipoMateriaEditInput");
        tipoMateriaEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(tipoMateriaEditInputMessage);
        
        OutputLabel descripcionEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        descripcionEditOutput.setFor("descripcionEditInput");
        descripcionEditOutput.setId("descripcionEditOutput");
        descripcionEditOutput.setValue("Descripcion:");
        htmlPanelGrid.getChildren().add(descripcionEditOutput);
        
        InputText descripcionEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        descripcionEditInput.setId("descripcionEditInput");
        descripcionEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{materiasBean.materias.descripcion}", String.class));
        LengthValidator descripcionEditInputValidator = new LengthValidator();
        descripcionEditInputValidator.setMaximum(25);
        descripcionEditInput.addValidator(descripcionEditInputValidator);
        descripcionEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(descripcionEditInput);
        
        Message descripcionEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        descripcionEditInputMessage.setId("descripcionEditInputMessage");
        descripcionEditInputMessage.setFor("descripcionEditInput");
        descripcionEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(descripcionEditInputMessage);
        
        HtmlOutputText tareasEditOutput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        tareasEditOutput.setId("tareasEditOutput");
        tareasEditOutput.setValue("Tareas:");
        htmlPanelGrid.getChildren().add(tareasEditOutput);
        
        HtmlOutputText tareasEditInput = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        tareasEditInput.setId("tareasEditInput");
        tareasEditInput.setValue("This relationship is managed from the Tareas side");
        htmlPanelGrid.getChildren().add(tareasEditInput);
        
        Message tareasEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        tareasEditInputMessage.setId("tareasEditInputMessage");
        tareasEditInputMessage.setFor("tareasEditInput");
        tareasEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(tareasEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid MateriasBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText nombreLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nombreLabel.setId("nombreLabel");
        nombreLabel.setValue("Nombre:");
        htmlPanelGrid.getChildren().add(nombreLabel);
        
        HtmlOutputText nombreValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nombreValue.setId("nombreValue");
        nombreValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{materiasBean.materias.nombre}", String.class));
        htmlPanelGrid.getChildren().add(nombreValue);
        
        HtmlOutputText tipoMateriaLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        tipoMateriaLabel.setId("tipoMateriaLabel");
        tipoMateriaLabel.setValue("Tipo Materia:");
        htmlPanelGrid.getChildren().add(tipoMateriaLabel);
        
        HtmlOutputText tipoMateriaValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        tipoMateriaValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{materiasBean.materias.tipoMateria}", String.class));
        htmlPanelGrid.getChildren().add(tipoMateriaValue);
        
        HtmlOutputText descripcionLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        descripcionLabel.setId("descripcionLabel");
        descripcionLabel.setValue("Descripcion:");
        htmlPanelGrid.getChildren().add(descripcionLabel);
        
        HtmlOutputText descripcionValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        descripcionValue.setId("descripcionValue");
        descripcionValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{materiasBean.materias.descripcion}", String.class));
        htmlPanelGrid.getChildren().add(descripcionValue);
        
        HtmlOutputText tareasLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        tareasLabel.setId("tareasLabel");
        tareasLabel.setValue("Tareas:");
        htmlPanelGrid.getChildren().add(tareasLabel);
        
        HtmlOutputText tareasValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        tareasValue.setId("tareasValue");
        tareasValue.setValue("This relationship is managed from the Tareas side");
        htmlPanelGrid.getChildren().add(tareasValue);
        
        return htmlPanelGrid;
    }
    
    public Materias MateriasBean.getMaterias() {
        if (materias == null) {
            materias = new Materias();
        }
        return materias;
    }
    
    public void MateriasBean.setMaterias(Materias materias) {
        this.materias = materias;
    }
    
    public List<TipoMateria> MateriasBean.completeTipoMateria(String query) {
        List<TipoMateria> suggestions = new ArrayList<TipoMateria>();
        for (TipoMateria tipoMateria : TipoMateria.values()) {
            if (tipoMateria.name().toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(tipoMateria);
            }
        }
        return suggestions;
    }
    
    public List<Tareas> MateriasBean.getSelectedTareas() {
        return selectedTareas;
    }
    
    public void MateriasBean.setSelectedTareas(List<Tareas> selectedTareas) {
        if (selectedTareas != null) {
            materias.setTareas(new HashSet<Tareas>(selectedTareas));
        }
        this.selectedTareas = selectedTareas;
    }
    
    public String MateriasBean.onEdit() {
        if (materias != null && materias.getTareas() != null) {
            selectedTareas = new ArrayList<Tareas>(materias.getTareas());
        }
        return null;
    }
    
    public boolean MateriasBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void MateriasBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String MateriasBean.displayList() {
        createDialogVisible = false;
        findAllMateriases();
        return "materias";
    }
    
    public String MateriasBean.displayCreateDialog() {
        materias = new Materias();
        createDialogVisible = true;
        return "materias";
    }
    
    public String MateriasBean.persist() {
        String message = "";
        if (materias.getId() != null) {
            materias.merge();
            message = "message_successfully_updated";
        } else {
            materias.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Materias");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllMateriases();
    }
    
    public String MateriasBean.delete() {
        materias.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Materias");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllMateriases();
    }
    
    public void MateriasBean.reset() {
        materias = null;
        selectedTareas = null;
        createDialogVisible = false;
    }
    
    public void MateriasBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
