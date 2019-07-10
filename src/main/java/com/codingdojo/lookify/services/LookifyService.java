package com.codingdojo.lookify.services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.lookify.models.Lookify;
import com.codingdojo.lookify.repositories.LookifyRepository;

@Service
public class LookifyService {
	private final LookifyRepository lookifyRepository;
	
		public LookifyService(LookifyRepository lookifyRepository) {
			this.lookifyRepository = lookifyRepository;
		}
		
		public List<Lookify> allLookify() {
			return lookifyRepository.findAll();
		}
		
		public Lookify createMusic(Lookify music) {
	        return lookifyRepository.save(music);
	    }
		
		public Lookify findLookify(Long id) {
	        Optional<Lookify> optionalLookify = lookifyRepository.findById(id);
	        if(optionalLookify.isPresent()) {
	            return optionalLookify.get();
	        } else {
	            return null;
	        }
	    }
		
		public void deleteLookify(Long id) {
			lookifyRepository.deleteById(id);;
		}
		
		public List<Lookify> topTen() {
			ArrayList<Lookify> lookify = (ArrayList <Lookify>) lookifyRepository.findAll();
			Collections.sort(lookify, Comparator.comparingInt(Lookify::getRating).reversed());
			for(int i = 0; i < lookify.size(); i++) {
				if(i > 10) {
					lookify.remove(i);
				}
			}
			return lookify;
		}


		

}
