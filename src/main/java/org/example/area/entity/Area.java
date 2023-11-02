package org.example.area.entity;


import org.example.Container;
import org.example.DefaultCommand;
import org.example.mountain.controller.MountainController;

public class Area {
    // 지역을 선택하는 메인화면
    public void areaSelcet() {
        MountainController mountainController = new MountainController();

        while (true) {
            System.out.println("\n== 지역을 선택해주세요. ==");
            System.out.println("\n▶ 경기도 / ▶ 강원도 / ▶ 충청도 / ▶ 전라도 / ▶ 경상도 / ▶ 제주도");
            System.out.print("입력 :");
            String commandArea = Container.getSc().nextLine().trim();

            switch (commandArea) {
                case "경기도":
                    mountainController.gyeonggiDo();
                    break;
                case "강원도":
                    mountainController.gangwonDo();
                    break;
                case "충청도":
                    mountainController.chungcheongDo();
                    break;
                case "전라도":
                    mountainController.jeollaDo();
                    break;
                case "경상도":
                    mountainController.kyongsangDo();
                    break;
                case "제주도":
                    mountainController.jejuDo();
                    break;
                default:
                    System.out.println();
                    DefaultCommand.areaDeafaultCommand();
                    continue;
            }
            break;
        }
    }
}