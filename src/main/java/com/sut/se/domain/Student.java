package com.sut.se.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Pattern;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Student {

    /**
     */
    private String namestudent;

    /**
     */
    @Pattern(regexp = "[BDM]\\d{7}")
    private String studentid;
}
