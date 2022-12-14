package com.itmk.common;

import com.itmk.web.sys_user.entity.SysUser;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

/**
 * @author buding
 */
@Data
@AllArgsConstructor
public class ResultVo<T> {

    private String msg;
    private int code;
    private T data;

}
