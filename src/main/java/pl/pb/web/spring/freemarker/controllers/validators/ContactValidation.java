package pl.pb.web.spring.freemarker.controllers.validators;

import pl.pb.web.spring.freemarker.reposytory.model.ContactEntity;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Created by pawel on 2016-02-14.
 */
@Component
public class ContactValidation implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return ContactEntity.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {

        ValidationUtils.rejectIfEmpty(errors, "name", "name");
        ContactEntity contact = (ContactEntity) o;

    }
}
