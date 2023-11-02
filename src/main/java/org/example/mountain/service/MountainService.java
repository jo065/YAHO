package org.example.mountain.service;

import org.example.mountain.entity.Mountain;
import org.example.mountain.repository.MountainRepository;

public class MountainService {
    MountainRepository mountainRepository = new MountainRepository();
    public Mountain findByMountainRepository(String name){
       return mountainRepository.findByMountainRepository(name);
    }
}
