package com.it.mz.service.impl;

import com.it.mz.mapper.PhoneMapper;
import com.it.mz.pojo.Phone;
import com.it.mz.service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PhoneServiceImpl implements PhoneService {
    @Autowired
    PhoneMapper phoneMapper;

    @Override
    public List<Phone> getPhones() {
        return phoneMapper.getPhones();
    }

    @Override
    public Phone getPhoneById(int id) {
        return phoneMapper.getPhoneById(id);
    }

    @Override
    public void updatePhone(Phone phone) {
        phoneMapper.updatePhone(phone);
    }

    @Override
    public void delete(int id) {
        phoneMapper.delete(id);
    }

    @Override
    public void add(Phone phone) {
        phoneMapper.add(phone);
    }
}
