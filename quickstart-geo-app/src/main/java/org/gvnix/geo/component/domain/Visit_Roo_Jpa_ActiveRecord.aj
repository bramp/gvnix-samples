// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gvnix.geo.component.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.gvnix.geo.component.domain.Visit;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Visit_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Visit.entityManager;
    
    public static final List<String> Visit.fieldNames4OrderClauseFilter = java.util.Arrays.asList("description", "visitDate", "pet", "vet");
    
    public static final EntityManager Visit.entityManager() {
        EntityManager em = new Visit().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Visit.countVisits() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Visit o", Long.class).getSingleResult();
    }
    
    public static List<Visit> Visit.findAllVisits() {
        return entityManager().createQuery("SELECT o FROM Visit o", Visit.class).getResultList();
    }
    
    public static List<Visit> Visit.findAllVisits(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Visit o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Visit.class).getResultList();
    }
    
    public static Visit Visit.findVisit(Long id) {
        if (id == null) return null;
        return entityManager().find(Visit.class, id);
    }
    
    public static List<Visit> Visit.findVisitEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Visit o", Visit.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Visit> Visit.findVisitEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Visit o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Visit.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Visit.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Visit.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Visit attached = Visit.findVisit(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Visit.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Visit.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Visit Visit.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Visit merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
