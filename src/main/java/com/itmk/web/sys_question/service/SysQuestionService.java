package com.itmk.web.sys_question.service;

import com.itmk.web.sys_question.entity.QuestionParm;
import com.itmk.web.sys_question.entity.SysQuestion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author buding
 */
public interface SysQuestionService {

    //新增问卷
    boolean addQuestion(SysQuestion sysQuestion);

    //表格查询
    List<SysQuestion> getTableList(QuestionParm parm);

    //编辑问卷
    boolean editQuestion(SysQuestion sysQuestion);

    //根据id查询
    SysQuestion getById(Long questionId);

    //根据id删除
    boolean deleteQuestion(Long questionId);

    //查询我的问卷
    List<SysQuestion> getMyList(QuestionParm parm);

}
