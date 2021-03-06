package com.issuetracker.mvc.service.eventservice;

import com.issuetracker.mvc.dao.eventDao.EventDao;
import com.issuetracker.mvc.model.AssignEvent;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by acer on 1/29/2015.
 */
public class EventServiceImpl implements EventService {
    @Autowired
    EventDao eventDao;
    @Override
    public List<AssignEvent> getUserAssignedList(Integer id){
       return eventDao.getUserAssignedList(id);

    }

    @Override
    public void insertData(Integer user_id, Integer issue_id) {
        eventDao.insertData(user_id,issue_id);
    }

    @Override
    public void updateTransferData(Integer user_id, Integer event_id) {
        eventDao.updateTransferData(user_id,event_id);
    }
}
