/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lrweb;

/**
 *
 * @author rishabh
 */
public class drbean {
    private String makeOfVehicle;
    private String circumstances;
    private String circumstancesDeclaration;
    private String duplicateRegistrationApply;
    private String policeReportDate;
    private String name;
    private String permanentAddress;
    
    public drbean(){
        makeOfVehicle="";
        circumstances="";
        circumstancesDeclaration="";
        duplicateRegistrationApply="";
        policeReportDate="";
        name="";
        permanentAddress="";
    }
    /**
     * @return the makeOfVehicle
     */
    public String getMakeOfVehicle() {
        return makeOfVehicle;
    }

    /**
     * @param makeOfVehicle the makeOfVehicle to set
     */
    public void setMakeOfVehicle(String makeOfVehicle) {
        this.makeOfVehicle = makeOfVehicle;
    }

    /**
     * @return the circumstances
     */
    public String getCircumstances() {
        return circumstances;
    }

    /**
     * @param circumstances the circumstances to set
     */
    public void setCircumstances(String circumstances) {
        this.circumstances = circumstances;
    }

    /**
     * @return the circumstancesDeclaration
     */
    public String getCircumstancesDeclaration() {
        return circumstancesDeclaration;
    }

    /**
     * @param circumstancesDeclaration the circumstancesDeclaration to set
     */
    public void setCircumstancesDeclaration(String circumstancesDeclaration) {
        this.circumstancesDeclaration = circumstancesDeclaration;
    }

    /**
     * @return the duplicateRegistrationApply
     */
    public String getDuplicateRegistrationApply() {
        return duplicateRegistrationApply;
    }

    /**
     * @param duplicateRegistrationApply the duplicateRegistrationApply to set
     */
    public void setDuplicateRegistrationApply(String duplicateRegistrationApply) {
        this.duplicateRegistrationApply = duplicateRegistrationApply;
    }

    /**
     * @return the policeReportDate
     */
    public String getPoliceReportDate() {
        return policeReportDate;
    }

    /**
     * @param policeReportDate the policeReportDate to set
     */
    public void setPoliceReportDate(String policeReportDate) {
        this.policeReportDate = policeReportDate;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the permanentAddress
     */
    public String getPermanentAddress() {
        return permanentAddress;
    }

    /**
     * @param permanentAddress the permanentAddress to set
     */
    public void setPermanentAddress(String permanentAddress) {
        this.permanentAddress = permanentAddress;
    }
    
}
