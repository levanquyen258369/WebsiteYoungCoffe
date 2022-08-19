package com.example.DoAnWebsite.entities;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Promotions")
@JsonIgnoreProperties(ignoreUnknown = true, value ={"hibernateLazyInitializer", "handler"})
public class Promotions {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "promotionId")
    private int promotionId;

    @Column (name = "promotionName")
    private String promotionName;

    @Column (name = "startTime")
    private Date startTime;

    @Column (name = "endTime")
    private Date endTime;

    @Column (name = "discount")
    private  int discount;

    @Column (name = "applyDay")
    private String applyDay;

    @Column (name = "maxDiscount")
    private  int maxDiscount;

    @Column (name = "remainApply")
    private  int remainApply;

    @Column (name = "code")
    private String code;

    @Column (name = "status")
    private  boolean status;

    @Column (name = "createAt")
    private  Date createAt;

    @Column (name = "updateAt")
    private  Date updateAt;

    public Promotions(){
        this.createAt = new Date(System.currentTimeMillis());
        this.updateAt = new Date(System.currentTimeMillis());
    }

    public Promotions(int promotionId, String promotionName, Date startTime, Date endTime, int discount, String applyDay, int maxDiscount, int remainApply, String code, boolean status, Date createAt, Date updateAt) {
        this.promotionId = promotionId;
        this.promotionName = promotionName;
        this.startTime = startTime;
        this.endTime = endTime;
        this.discount = discount;
        this.applyDay = applyDay;
        this.maxDiscount = maxDiscount;
        this.remainApply = remainApply;
        this.code = code;
        this.status = status;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public int getPromotionId() {
        return promotionId;
    }

    public void setPromotionId(int promotionId) {
        this.promotionId = promotionId;
    }

    public String getPromotionName() {
        return promotionName;
    }

    public void setPromotionName(String promotionName) {
        this.promotionName = promotionName;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getApplyDay() {
        return applyDay;
    }

    public void setApplyDay(String applyDay) {
        this.applyDay = applyDay;
    }

    public int getMaxDiscount() {
        return maxDiscount;
    }

    public void setMaxDiscount(int maxDiscount) {
        this.maxDiscount = maxDiscount;
    }

    public int getRemainApply() {
        return remainApply;
    }

    public void setRemainApply(int remainApply) {
        this.remainApply = remainApply;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public Date getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Date updateAt) {
        this.updateAt = updateAt;
    }
}
