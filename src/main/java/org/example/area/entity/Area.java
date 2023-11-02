package org.example.area.entity;


import org.example.Container;
import org.example.DefaultCommand;
import org.example.mountain.entity.MountainList;

public class Area {
    // 지역을 선택하는 메인화면
    public void areaSelcet() {
        MountainList mountainList = new MountainList();

        while (true) {
            System.out.println("\n== 지역을 선택해주세요. ==");
            System.out.println("\n▶ 경기도 / ▶ 강원도 / ▶ 충청도 / ▶ 전라도 / ▶ 경상도 / ▶ 제주도");
            System.out.print("입력 :");
            String commandArea = Container.getSc().nextLine().trim();

            switch (commandArea) {
                case "경기도":
                    mountainList.gyeonggiDo();
                    break;
                case "강원도":
                    mountainList.gangwonDo();
                    break;
                case "충청도":
                    mountainList.chungcheongDo();
                    break;
                case "전라도":
                    mountainList.jeollaDo();
                    break;
                case "경상도":
                    mountainList.kyongsangDo();
                    break;
                case "제주도":
                    mountainList.jejuDo();
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