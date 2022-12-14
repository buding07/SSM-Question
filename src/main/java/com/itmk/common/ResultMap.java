package com.itmk.common;


import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * layui table返回值定义
 * @param <T>
 */
@Data
@AllArgsConstructor
public class ResultMap<T> {
    private int code;

    private String msg;

    private T data;

    private long count;

}