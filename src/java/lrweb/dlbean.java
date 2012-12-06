/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lrweb;

/**
 *
 * @author rishabh
 */
public class dlbean {
    private String name;
    private String fathername;
    private String permanentAddress;
    private String losingDate;
    private String losingCircumstances;
    
    public dlbean(){
        name="";
        fathername="";
        permanentAddress="";
        losingDate="";
        losingCircumstances="";
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
     * @return the fathername
     */
    public String getFathername() {
        return fathername;
    }

    /**
     * @param fathername the fathername to set
     */
    public void setFathername(String fathername) {
        this.fathername = fathername;
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

    /**
     * @return the losingDate
     */
    public String getLosingDate() {
        return losingDate;
    }

    /**
     * @param losingDate the losingDate to set
     */
    public void setLosingDate(String losingDate) {
        this.losingDate = losingDate;
    }

    /**
     * @return the losingCircumstances
     */
    public String getLosingCircumstances() {
        return losingCircumstances;
    }

    /**
     * @param losingCircumstances the losingCircumstances to set
     */
    public void setLosingCircumstances(String losingCircumstances) {
        this.losingCircumstances = losingCircumstances;
    }
    
}
