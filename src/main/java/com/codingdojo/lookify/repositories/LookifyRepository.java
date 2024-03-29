package com.codingdojo.lookify.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.lookify.models.Lookify;

@Repository
public interface LookifyRepository extends CrudRepository <Lookify, Long> {
	List<Lookify> findAll();
	List<Lookify> findByArtistContaining(String search);
	Long deleteById(String search);
}
