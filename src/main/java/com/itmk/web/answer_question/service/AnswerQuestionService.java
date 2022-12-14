package com.itmk.web.answer_question.service;

import com.itmk.web.answer_question.entity.AnswerQuestion;

/**
 * @author buding
 */
public interface AnswerQuestionService {

    AnswerQuestion getAnswerById(Long questionId , Long userId);
}
