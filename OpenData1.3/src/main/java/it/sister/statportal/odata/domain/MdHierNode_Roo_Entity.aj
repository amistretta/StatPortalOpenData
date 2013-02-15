// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.sister.statportal.odata.domain;

import it.sister.statportal.odata.domain.MdHierNode;
import java.lang.Integer;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Table;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MdHierNode_Roo_Entity {
    
    declare @type: MdHierNode: @Entity;
    
    declare @type: MdHierNode: @Table(name = "MD_HIER_NODE", schema = "public");
    
    @PersistenceContext
    transient EntityManager MdHierNode.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID", columnDefinition = "int4")
    private Integer MdHierNode.id;
    
    public Integer MdHierNode.getId() {
        return this.id;
    }
    
    public void MdHierNode.setId(Integer id) {
        this.id = id;
    }
    
    @Transactional
    public void MdHierNode.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MdHierNode.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MdHierNode attached = MdHierNode.findMdHierNode(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MdHierNode.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MdHierNode.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MdHierNode MdHierNode.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MdHierNode merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager MdHierNode.entityManager() {
        EntityManager em = new MdHierNode().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MdHierNode.countMdHierNodes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MdHierNode o", Long.class).getSingleResult();
    }
    
    public static List<MdHierNode> MdHierNode.findAllMdHierNodes() {
        return entityManager().createQuery("SELECT o FROM MdHierNode o", MdHierNode.class).getResultList();
    }
    
    public static MdHierNode MdHierNode.findMdHierNode(Integer id) {
        if (id == null) return null;
        return entityManager().find(MdHierNode.class, id);
    }
    
    public static List<MdHierNode> MdHierNode.findMdHierNodeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MdHierNode o", MdHierNode.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
