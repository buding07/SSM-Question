package com.itmk.web.sys_paper_choice.service;

import com.itmk.web.sys_paper_choice.entity.ResultPaperChoice;
import com.itmk.web.sys_paper_choice.entity.SysPaperChoice;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author buding
 */
public interface SysPaperChoiceService {
    //删除试题选项
    boolean deleteChoice(Long paperId);
    //批量保存选项接口
    boolean saveBatch(List<SysPaperChoice> choices);
    //查询选项的票数统计
    List<ResultPaperChoice> getListPaperChoice(Long questionId);

}
