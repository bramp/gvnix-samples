// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.domain;

import com.springsource.petclinic.domain.Visit;
import java.util.Calendar;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Visit_Roo_GvNIXJpaAudit {
    
    @DateTimeFormat(style = "MM")
    private Calendar Visit.auditCreation;
    
    private String Visit.auditCreatedBy;
    
    @DateTimeFormat(style = "MM")
    private Calendar Visit.auditLastUpdate;
    
    private String Visit.auditLastUpdatedBy;
    
    public Calendar Visit.getAuditCreation() {
        return this.auditCreation;
    }
    
    public void Visit.setAuditCreation(Calendar auditCreation) {
        this.auditCreation = auditCreation;
    }
    
    public String Visit.getAuditCreatedBy() {
        return this.auditCreatedBy;
    }
    
    public void Visit.setAuditCreatedBy(String auditCreatedBy) {
        this.auditCreatedBy = auditCreatedBy;
    }
    
    public Calendar Visit.getAuditLastUpdate() {
        return this.auditLastUpdate;
    }
    
    public void Visit.setAuditLastUpdate(Calendar auditLastUpdate) {
        this.auditLastUpdate = auditLastUpdate;
    }
    
    public String Visit.getAuditLastUpdatedBy() {
        return this.auditLastUpdatedBy;
    }
    
    public void Visit.setAuditLastUpdatedBy(String auditLastUpdatedBy) {
        this.auditLastUpdatedBy = auditLastUpdatedBy;
    }
    
}