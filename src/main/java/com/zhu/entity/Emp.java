package com.zhu.entity;

import java.io.Serializable;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
public class Emp implements Serializable{
    private String id;
    private String name;
    private String path;
    private Double salary;
    private Integer age;
}
