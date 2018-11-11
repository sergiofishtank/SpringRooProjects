// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sergio.roo.jsf.jsf;

import com.sergio.roo.jsf.dominio.Donante;
import com.sergio.roo.jsf.dominio.Organo;
import com.sergio.roo.jsf.jsf.OrganoBean;
import com.sergio.roo.jsf.jsf.converter.DonanteConverter;
import com.sergio.roo.jsf.jsf.util.MessageFactory;
import java.util.ArrayList;
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
import org.primefaces.component.autocomplete.AutoComplete;
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect OrganoBean_Roo_ManagedBean {
    
    declare @type: OrganoBean: @ManagedBean(name = "organoBean");
    
    declare @type: OrganoBean: @SessionScoped;
    
    private String OrganoBean.name = "Organoes";
    
    private Organo OrganoBean.organo;
    
    private List<Organo> OrganoBean.allOrganoes;
    
    private boolean OrganoBean.dataVisible = false;
    
    private List<String> OrganoBean.columns;
    
    private HtmlPanelGrid OrganoBean.createPanelGrid;
    
    private HtmlPanelGrid OrganoBean.editPanelGrid;
    
    private HtmlPanelGrid OrganoBean.viewPanelGrid;
    
    private boolean OrganoBean.createDialogVisible = false;
    
    @PostConstruct
    public void OrganoBean.init() {
        columns = new ArrayList<String>();
        columns.add("nombre");
        columns.add("descripcion");
    }
    
    public String OrganoBean.getName() {
        return name;
    }
    
    public List<String> OrganoBean.getColumns() {
        return columns;
    }
    
    public List<Organo> OrganoBean.getAllOrganoes() {
        return allOrganoes;
    }
    
    public void OrganoBean.setAllOrganoes(List<Organo> allOrganoes) {
        this.allOrganoes = allOrganoes;
    }
    
    public String OrganoBean.findAllOrganoes() {
        allOrganoes = Organo.findAllOrganoes();
        dataVisible = !allOrganoes.isEmpty();
        return null;
    }
    
    public boolean OrganoBean.isDataVisible() {
        return dataVisible;
    }
    
    public void OrganoBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid OrganoBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void OrganoBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid OrganoBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void OrganoBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid OrganoBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void OrganoBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid OrganoBean.populateCreatePanel() {
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
        nombreCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{organoBean.organo.nombre}", String.class));
        nombreCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(nombreCreateInput);
        
        Message nombreCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreCreateInputMessage.setId("nombreCreateInputMessage");
        nombreCreateInputMessage.setFor("nombreCreateInput");
        nombreCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreCreateInputMessage);
        
        OutputLabel descripcionCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        descripcionCreateOutput.setFor("descripcionCreateInput");
        descripcionCreateOutput.setId("descripcionCreateOutput");
        descripcionCreateOutput.setValue("Descripcion:");
        htmlPanelGrid.getChildren().add(descripcionCreateOutput);
        
        InputText descripcionCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        descripcionCreateInput.setId("descripcionCreateInput");
        descripcionCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{organoBean.organo.descripcion}", String.class));
        descripcionCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(descripcionCreateInput);
        
        Message descripcionCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        descripcionCreateInputMessage.setId("descripcionCreateInputMessage");
        descripcionCreateInputMessage.setFor("descripcionCreateInput");
        descripcionCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(descripcionCreateInputMessage);
        
        OutputLabel donanteCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        donanteCreateOutput.setFor("donanteCreateInput");
        donanteCreateOutput.setId("donanteCreateOutput");
        donanteCreateOutput.setValue("Donante:");
        htmlPanelGrid.getChildren().add(donanteCreateOutput);
        
        AutoComplete donanteCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        donanteCreateInput.setId("donanteCreateInput");
        donanteCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{organoBean.organo.donante}", Donante.class));
        donanteCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{organoBean.completeDonante}", List.class, new Class[] { String.class }));
        donanteCreateInput.setDropdown(true);
        donanteCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "donante", String.class));
        donanteCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{donante.nombre} #{donante.fechaNacimiento} #{donante.mail}", String.class));
        donanteCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{donante}", Donante.class));
        donanteCreateInput.setConverter(new DonanteConverter());
        donanteCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(donanteCreateInput);
        
        Message donanteCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        donanteCreateInputMessage.setId("donanteCreateInputMessage");
        donanteCreateInputMessage.setFor("donanteCreateInput");
        donanteCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(donanteCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid OrganoBean.populateEditPanel() {
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
        nombreEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{organoBean.organo.nombre}", String.class));
        nombreEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(nombreEditInput);
        
        Message nombreEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreEditInputMessage.setId("nombreEditInputMessage");
        nombreEditInputMessage.setFor("nombreEditInput");
        nombreEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreEditInputMessage);
        
        OutputLabel descripcionEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        descripcionEditOutput.setFor("descripcionEditInput");
        descripcionEditOutput.setId("descripcionEditOutput");
        descripcionEditOutput.setValue("Descripcion:");
        htmlPanelGrid.getChildren().add(descripcionEditOutput);
        
        InputText descripcionEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        descripcionEditInput.setId("descripcionEditInput");
        descripcionEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{organoBean.organo.descripcion}", String.class));
        descripcionEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(descripcionEditInput);
        
        Message descripcionEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        descripcionEditInputMessage.setId("descripcionEditInputMessage");
        descripcionEditInputMessage.setFor("descripcionEditInput");
        descripcionEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(descripcionEditInputMessage);
        
        OutputLabel donanteEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        donanteEditOutput.setFor("donanteEditInput");
        donanteEditOutput.setId("donanteEditOutput");
        donanteEditOutput.setValue("Donante:");
        htmlPanelGrid.getChildren().add(donanteEditOutput);
        
        AutoComplete donanteEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        donanteEditInput.setId("donanteEditInput");
        donanteEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{organoBean.organo.donante}", Donante.class));
        donanteEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{organoBean.completeDonante}", List.class, new Class[] { String.class }));
        donanteEditInput.setDropdown(true);
        donanteEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "donante", String.class));
        donanteEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{donante.nombre} #{donante.fechaNacimiento} #{donante.mail}", String.class));
        donanteEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{donante}", Donante.class));
        donanteEditInput.setConverter(new DonanteConverter());
        donanteEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(donanteEditInput);
        
        Message donanteEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        donanteEditInputMessage.setId("donanteEditInputMessage");
        donanteEditInputMessage.setFor("donanteEditInput");
        donanteEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(donanteEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid OrganoBean.populateViewPanel() {
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
        nombreValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{organoBean.organo.nombre}", String.class));
        htmlPanelGrid.getChildren().add(nombreValue);
        
        HtmlOutputText descripcionLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        descripcionLabel.setId("descripcionLabel");
        descripcionLabel.setValue("Descripcion:");
        htmlPanelGrid.getChildren().add(descripcionLabel);
        
        HtmlOutputText descripcionValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        descripcionValue.setId("descripcionValue");
        descripcionValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{organoBean.organo.descripcion}", String.class));
        htmlPanelGrid.getChildren().add(descripcionValue);
        
        HtmlOutputText donanteLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        donanteLabel.setId("donanteLabel");
        donanteLabel.setValue("Donante:");
        htmlPanelGrid.getChildren().add(donanteLabel);
        
        HtmlOutputText donanteValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        donanteValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{organoBean.organo.donante}", Donante.class));
        donanteValue.setConverter(new DonanteConverter());
        htmlPanelGrid.getChildren().add(donanteValue);
        
        return htmlPanelGrid;
    }
    
    public Organo OrganoBean.getOrgano() {
        if (organo == null) {
            organo = new Organo();
        }
        return organo;
    }
    
    public void OrganoBean.setOrgano(Organo organo) {
        this.organo = organo;
    }
    
    public List<Donante> OrganoBean.completeDonante(String query) {
        List<Donante> suggestions = new ArrayList<Donante>();
        for (Donante donante : Donante.findAllDonantes()) {
            String donanteStr = String.valueOf(donante.getNombre() +  " "  + donante.getFechaNacimiento() +  " "  + donante.getMail());
            if (donanteStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(donante);
            }
        }
        return suggestions;
    }
    
    public String OrganoBean.onEdit() {
        return null;
    }
    
    public boolean OrganoBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void OrganoBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String OrganoBean.displayList() {
        createDialogVisible = false;
        findAllOrganoes();
        return "organo";
    }
    
    public String OrganoBean.displayCreateDialog() {
        organo = new Organo();
        createDialogVisible = true;
        return "organo";
    }
    
    public String OrganoBean.persist() {
        String message = "";
        if (organo.getId() != null) {
            organo.merge();
            message = "message_successfully_updated";
        } else {
            organo.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Organo");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllOrganoes();
    }
    
    public String OrganoBean.delete() {
        organo.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Organo");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllOrganoes();
    }
    
    public void OrganoBean.reset() {
        organo = null;
        createDialogVisible = false;
    }
    
    public void OrganoBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
