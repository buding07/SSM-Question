package com.itmk.web.sys_user.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author buding
 */
@Data
public class UserParm  implements Serializable {
    private int page;//当前页
    private int limit;//每页的条数
    private String phone;
}
