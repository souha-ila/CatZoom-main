package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Chat;
import com.example.demo.repository.ChatRepository;

@Service
public class ChatService {
    @Autowired
    private ChatRepository repository;

    public Chat saveChat(Chat Chat) {
        return repository.save(Chat);
    }

    public List<Chat> getChats() {
        return repository.findAll();
    }

    
    public String deleteChat(int id) {
        repository.deleteById(id);
        return "Cat removed !! " + id;
    }

    public Chat updateChat(Chat Chat) {
    	Chat existingChat = repository.findById(Chat.getId()).orElse(null);
        existingChat.setNom(Chat.getNom());
        existingChat.setRace(Chat.getRace());
        existingChat.setDescription(Chat.getDescription());
        existingChat.setImage(Chat.getImage());
       
        return repository.save(existingChat);
    }
    public Chat getChatById(int id) {
        return repository.findById(id).orElse(null);
    }
    

    public List<Chat> getChatsByRace(String race) {
        return repository.findByRace(race);
    }

}