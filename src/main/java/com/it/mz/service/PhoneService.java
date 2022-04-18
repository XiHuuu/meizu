package com.it.mz.service;

import com.it.mz.pojo.Phone;

import java.util.List;

public interface PhoneService {
    List<Phone> getPhones();

    Phone getPhoneById(int id);
}
