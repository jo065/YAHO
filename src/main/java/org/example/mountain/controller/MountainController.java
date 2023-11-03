package org.example.mountain.controller;

import org.example.Container;
import org.example.member.service.MemberService;
import org.example.mountain.entity.Mountain;
import org.example.mountain.service.MountainService;
import org.example.screenSelect.MainScreen;

public class MountainController {
    MountainService mountainService = new MountainService();

    public void mountainFeature(String name){

        Mountain mountain = mountainService.findByMountainRepository(name);

        if (mountain.getName().equals(name)){
            System.out.println(name + " 정보가 출력되었습니다.");
            System.out.println("이름 / 특징 / 코스");
            System.out.println("-".repeat(17));

            System.out.printf("\n %s\n %s\n %s\n", mountain.getName(), mountain.getFeatures(), mountain.getCourse());
        }

        if (mountain == null){
            System.out.println("※ 존재하지 않는 산 정보입니다. 다시 입력해주세요. ※");
        }

    }
}
