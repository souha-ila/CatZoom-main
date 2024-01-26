package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Blog;

import com.example.demo.repository.BlogRepository;

@Service
public class BlogService {
    @Autowired
    private BlogRepository repository;

    public Blog saveBlog(Blog Blog) {
        return repository.save(Blog);
    }

  
    public List<Blog> getBlogs() {
        return repository.findAll();
    }

    
    public String deleteBlog(int id) {
        repository.deleteById(id);
        return "Blog removed !! " + id;
    }

    public Blog updateBlog(Blog Blog) {
        Blog existingBlog = repository.findById(Blog.getId()).orElse(null);
        existingBlog.setTitre(Blog.getTitre());
        existingBlog.setContent(Blog.getContent());
        existingBlog.setDate_publication(Blog.getDate_publication());
        return repository.save(existingBlog);
    }
    public Blog getBlogById(int id) {
        return repository.findById(id).orElse(null);
    }



}