package com.itmk.web.sys_question.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author buding
 */
@Data
public class SysQuestion implements Serializable {
    private Long questionId;
    private String questionTitle;
    private String questionDesc;
    private String questionImg;
    private Integer questionOrder;
    private String questionStatus;

}
