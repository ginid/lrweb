/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lrweb;

/**
 *
 * @author rishabh
 */
public class ncvbean {
    private String licenseNumber;
    private String vehicleType;
    private String mc;
    private String dl;
    public ncvbean(){
        licenseNumber="";
        vehicleType="";
        mc="";
        dl="";
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
     * @return the mc
     */
    public String getMc() {
        return mc;
    }

    /**
     * @param mc the mc to set
     */
    public void setMc(String mc) {
        this.mc = mc;
    }

    /**
     * @return the dl
     */
    public String getDl() {
        return dl;
    }

    /**
     * @param dl the dl to set
     */
    public void setDl(String dl) {
        this.dl = dl;
    }
    
}
