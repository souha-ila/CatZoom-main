package com.example.demo.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Demande;
import com.example.demo.repository.DemandeRepository;

@Service
public class DemandeService {

    private final DemandeRepository demandeRepository;

    @Autowired
    public DemandeService(DemandeRepository demandeRepository) {
        this.demandeRepository = demandeRepository;
    }

    public Demande enregistrerDemande(Demande demande) {
        
        return demandeRepository.save(demande);
    }

    public Iterable<Demande> obtenirToutesLesDemandes() {
        return demandeRepository.findAll();
    }

    public Demande obtenirDemandeParId(Integer id) {
        return demandeRepository.findById(id).orElse(null);
    }

    public void supprimerDemande(Integer id) {
        demandeRepository.deleteById(id);
    }

   
}
