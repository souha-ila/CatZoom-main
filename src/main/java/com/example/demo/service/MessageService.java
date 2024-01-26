package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Message;
import com.example.demo.repository.MessageRepository;

@Service
public class MessageService {
    @Autowired
    private MessageRepository repository;

    public Message saveMessage(Message Message) {
        return repository.save(Message);
    }

  
    public List<Message> getMessages() {
        return repository.findAll();
    }

    
    public String deleteMessage(int id) {
        repository.deleteById(id);
        return "Message removed !! " + id;
    }

    public Message updateMessage(Message Message) {
    	Message existingBlog = repository.findById(Message.getId()).orElse(null);
        existingBlog.setName(Message.getName());
        existingBlog.setEmail(Message.getEmail());
        existingBlog.setContent(Message.getContent());
       
        return repository.save(existingBlog);
    }
    public Message getMessageById(int id) {
        return repository.findById(id).orElse(null);
    }



}