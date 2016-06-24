package pl.pb.web.spring.freemarker.reposytory.dao;

import pl.pb.web.spring.freemarker.reposytory.model.ContactEntity;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

/**
 * Created by bojnop01 on 2016-02-12.
 */
@Service
public interface ContactDao extends CrudRepository<ContactEntity, Long>{

}
