package com.it.mz.mapper;

import com.it.mz.pojo.Phone;

import java.util.List;

public interface PhoneMapper {
    List<Phone> getPhones();

    Phone getPhoneById(int id);

    void updatePhone(Phone phone);

    void delete(int id);

    void add(Phone phone);
}
