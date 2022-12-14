package com.itmk.web.answer_paper.service.impl;

import com.itmk.web.answer_paper.entity.AnswerPaper;
import com.itmk.web.answer_paper.entity.CommitParm;
import com.itmk.web.answer_paper.entity.PaperPrm;
import com.itmk.web.answer_paper.mapper.AnswerPaperMapper;
import com.itmk.web.answer_paper.service.AnswerPaperService;
import com.itmk.web.answer_paper_choice.entity.AnswerPaperChoice;
import com.itmk.web.answer_paper_choice.mapper.AnswerPaperChoiceMapper;
import com.itmk.web.answer_question.entity.AnswerQuestion;
import com.itmk.web.answer_question.mapper.AnswerQuestionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author buding
 */
@Service
public class AnswerPaperServiceImpl implements AnswerPaperService {

    @Resource
    private AnswerQuestionMapper answerQuestionMapper;

    @Resource
    private AnswerPaperMapper answerPaperMapper;

    @Resource
    private AnswerPaperChoiceMapper answerPaperChoiceMapper;

    @Override
    @Transactional
    public void saveCommit(CommitParm parm) {
        //保存答卷表
        AnswerQuestion question = new AnswerQuestion();
        question.setUserId(parm.getUserId());
        question.setQuestionId(parm.getQuestionId());
        question.setCreateTime(new Date());
        answerQuestionMapper.add(question);

        //保存答案
        List<PaperPrm> paperList = parm.getPaperList();
        List<AnswerPaper> list = new ArrayList<>();

        for (int i = 0; i < paperList.size(); i++) {
            AnswerPaper paper = new AnswerPaper();
            paper.setUserId(parm.getUserId());
            paper.setPaperId(paperList.get(i).getPaperId());
            paper.setPaperType(paperList.get(i).getPaperType());
            paper.setPaperValue(paperList.get(i).getPaperValue());
            list.add(paper);

            if (paperList.get(i).getPaperType().equals("1")){//单选题
                List<AnswerPaperChoice> choiceList = new ArrayList<>();
                AnswerPaperChoice choice  =new AnswerPaperChoice();
                choice.setChioceId(Long.valueOf(paperList.get(i).getPaperValue()));
                choice.setPaperId(paperList.get(i).getPaperId());
                choice.setUserId(parm.getUserId());
                choiceList.add(choice);
                answerPaperChoiceMapper.saveBatch(choiceList);
            }
            //多选题
            if (paperList.get(i).getPaperType().equals("2")){
                List<AnswerPaperChoice> choiceList = new ArrayList<>();
                String regs = ",";
                String[] split = paperList.get(i).getPaperValue().split(regs);
                for (int j = 0; j < split.length; j++) {
                    AnswerPaperChoice choice  =new AnswerPaperChoice();
                    choice.setChioceId(Long.valueOf(split[j]));
                    choice.setPaperId(paperList.get(i).getPaperId());
                    choice.setUserId(parm.getUserId());
                    choiceList.add(choice);

                }
                answerPaperChoiceMapper.saveBatch(choiceList);
            }
        }
        answerPaperMapper.saveBatch(list);
    }
}
