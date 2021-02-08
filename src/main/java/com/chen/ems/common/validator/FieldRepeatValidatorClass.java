package com.chen.ems.common.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

/**
 * @Author: CHENLIHUI
 * @Description:  FieldRepeatValidator注解接口实现类
 * @Date: Create in 16:07 2020/8/11
 */
public class FieldRepeatValidatorClass implements ConstraintValidator<FieldRepeatValidator, Object> {

    private String id;
    private String field;
    private String message;

    @Override
    public void initialize(FieldRepeatValidator fieldRepeatValidator) {
        this.id = fieldRepeatValidator.id();
        this.field = fieldRepeatValidator.field();
        this.message = fieldRepeatValidator.message();
    }

    @Override
    public boolean isValid(Object o, ConstraintValidatorContext constraintValidatorContext) {
        return FieldRepeatValidatorUtils.fieldRepeat(id, field, o, message);
    }
}
