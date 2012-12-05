/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lrweb;

/**
 *
 * @author rishabh
 */
public class plbean {
    private String vehicleType;
    private int learningLicenseNo;
    private String name;
    private String fathername;
    private String dateOfBirth;
    private String permanentAddress;
    private String temporaryAddress;
    private String qualification;
    private String contactNumber;
    private String emailAddress;
    private String identificationMark;
    private String gender;
    private String bloodgroup;
    private String dateOfTest;
    private String testingAuthority;
    private String resultOfTest;
    private String drivingTestFailedBefore;
    private String learningLicenseRTO;

    /**
     * @return the vehicleType
     */
    public plbean(){
        vehicleType="";
        learningLicenseNo=0;
        name="";
        fathername="";
        permanentAddress="";
        temporaryAddress="";
        qualification="";
        contactNumber="";
        emailAddress="";
        identificationMark="";
        gender="";
        bloodgroup="";
        dateOfTest="";
        testingAuthority="";
        resultOfTest="";
        drivingTestFailedBefore="";
        learningLicenseRTO="";
    }
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
     * @return the learningLicenseNo
     */
    public int getLearningLicenseNo() {
        return learningLicenseNo;
    }

    /**
     * @param learningLicenseNo the learningLicenseNo to set
     */
    public void setLearningLicenseNo(int learningLicenseNo) {
        this.learningLicenseNo = learningLicenseNo;
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
     * @return the temporaryAddress
     */
    public String getTemporaryAddress() {
        return temporaryAddress;
    }

    /**
     * @param temporaryAddress the temporaryAddress to set
     */
    public void setTemporaryAddress(String temporaryAddress) {
        this.temporaryAddress = temporaryAddress;
    }

    /**
     * @return the qualification
     */
    public String getQualification() {
        return qualification;
    }

    /**
     * @param qualification the qualification to set
     */
    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    /**
     * @return the contactNumber
     */
    public String getContactNumber() {
        return contactNumber;
    }

    /**
     * @param contactNumber the contactNumber to set
     */
    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    /**
     * @return the emailAddress
     */
    public String getEmailAddress() {
        return emailAddress;
    }

    /**
     * @param emailAddress the emailAddress to set
     */
    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    /**
     * @return the identificationMark
     */
    public String getIdentificationMark() {
        return identificationMark;
    }

    /**
     * @param identificationMark the identificationMark to set
     */
    public void setIdentificationMark(String identificationMark) {
        this.identificationMark = identificationMark;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the bloodgroup
     */
    public String getBloodgroup() {
        return bloodgroup;
    }

    /**
     * @param bloodgroup the bloodgroup to set
     */
    public void setBloodgroup(String bloodgroup) {
        this.bloodgroup = bloodgroup;
    }

    /**
     * @return the dateOfTest
     */
    public String getDateOfTest() {
        return dateOfTest;
    }

    /**
     * @param dateOfTest the dateOfTest to set
     */
    public void setDateOfTest(String dateOfTest) {
        this.dateOfTest = dateOfTest;
    }

    /**
     * @return the testingAuthority
     */
    public String getTestingAuthority() {
        return testingAuthority;
    }

    /**
     * @param testingAuthority the testingAuthority to set
     */
    public void setTestingAuthority(String testingAuthority) {
        this.testingAuthority = testingAuthority;
    }

    /**
     * @return the resultOfTest
     */
    public String getResultOfTest() {
        return resultOfTest;
    }

    /**
     * @param resultOfTest the resultOfTest to set
     */
    public void setResultOfTest(String resultOfTest) {
        this.resultOfTest = resultOfTest;
    }

    
    /**
     * @return the dateOfBirth
     */
    public String getDateOfBirth() {
        return dateOfBirth;
    }

    /**
     * @param dateOfBirth the dateOfBirth to set
     */
    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    /**
     * @return the drivingTestFailedBefore
     */
    public String getDrivingTestFailedBefore() {
        return drivingTestFailedBefore;
    }

    /**
     * @param drivingTestFailedBefore the drivingTestFailedBefore to set
     */
    public void setDrivingTestFailedBefore(String drivingTestFailedBefore) {
        this.drivingTestFailedBefore = drivingTestFailedBefore;
    }

    /**
     * @return the learningLicenseRTO
     */
    public String getLearningLicenseRTO() {
        return learningLicenseRTO;
    }

    /**
     * @param learningLicenseRTO the learningLicenseRTO to set
     */
    public void setLearningLicenseRTO(String learningLicenseRTO) {
        this.learningLicenseRTO = learningLicenseRTO;
    }
}
