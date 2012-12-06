/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lrweb;

/**
 *
 * @author rishabh
 */
public class lrbean {
    private String name;
    private String fathername;
    private String licenseNumber;
    private String issueDate;
    private String vehicleType;
    private String presentAddress;

    /**
     * @return the name
     */
    public lrbean(){
        name="";
        fathername="";
        licenseNumber="";
        issueDate="";
        vehicleType="";
        presentAddress="";
    }
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
     * @return the licenseNumber
     */
    public String getLicenseNumber() {
        return licenseNumber;
    }

    /**
     * @param licenseNumber the licenseNumber to set
     */
    public void setLicenseNumber(String licenseNumber) {
        this.licenseNumber = licenseNumber;
    }

    /**
     * @return the issueDate
     */
    public String getIssueDate() {
        return issueDate;
    }

    /**
     * @param issueDate the issueDate to set
     */
    public void setIssueDate(String issueDate) {
        this.issueDate = issueDate;
    }

    /**
     * @return the vehicleType
     */
    public String getVehicleType() {
        return vehicleType;
    }

    /**
     * @param vehicleType the vehicleType to set
     */
    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

    /**
     * @return the presentAddress
     */
    public String getPresentAddress() {
        return presentAddress;
    }

    /**
     * @param presentAddress the presentAddress to set
     */
    public void setPresentAddress(String presentAddress) {
        this.presentAddress = presentAddress;
    }
    
}
