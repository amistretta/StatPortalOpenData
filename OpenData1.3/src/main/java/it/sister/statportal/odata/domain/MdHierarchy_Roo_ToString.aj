// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.sister.statportal.odata.domain;

import java.lang.String;

privileged aspect MdHierarchy_Roo_ToString {
    
    public String MdHierarchy.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Description: ").append(getDescription()).append(", ");
        sb.append("IdLuHierType: ").append(getIdLuHierType()).append(", ");
        sb.append("MdHierNodes: ").append(getMdHierNodes() == null ? "null" : getMdHierNodes().size()).append(", ");
        sb.append("Name: ").append(getName()).append(", ");
        sb.append("Id: ").append(getId());
        return sb.toString();
    }
    
}