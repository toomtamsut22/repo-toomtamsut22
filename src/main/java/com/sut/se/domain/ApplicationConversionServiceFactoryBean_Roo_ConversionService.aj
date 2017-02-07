// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.se.domain;

import com.sut.se.domain.ApplicationConversionServiceFactoryBean;
import com.sut.se.domain.Student;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Student, String> ApplicationConversionServiceFactoryBean.getStudentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.sut.se.domain.Student, java.lang.String>() {
            public String convert(Student student) {
                return new StringBuilder().append(student.getNamestudent()).append(' ').append(student.getStudentid()).toString();
            }
        };
    }
    
    public Converter<Long, Student> ApplicationConversionServiceFactoryBean.getIdToStudentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.sut.se.domain.Student>() {
            public com.sut.se.domain.Student convert(java.lang.Long id) {
                return Student.findStudent(id);
            }
        };
    }
    
    public Converter<String, Student> ApplicationConversionServiceFactoryBean.getStringToStudentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.sut.se.domain.Student>() {
            public com.sut.se.domain.Student convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Student.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getStudentToStringConverter());
        registry.addConverter(getIdToStudentConverter());
        registry.addConverter(getStringToStudentConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
