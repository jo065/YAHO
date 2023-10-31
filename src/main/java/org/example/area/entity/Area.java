package org.example.area.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.example.Container;
import org.example.area.controller.AreaController;
import org.example.mountain.entity.Mountain;

@AllArgsConstructor
@Getter
@Setter
public class Area {

    public void run() {
        Mountain mountain = new Mountain();

        while (true) {
            if (Container.getLoginUserId() == null) {
                System.out.println("로그인 후 이용 가능합니다.");
                return;
            }
            System.out.println("== 아래 항목중 원하시는 지역을 선택해 주세요 ==");
            System.out.println("[1.경기도  2.강원도  3.충청도  4.전라도  5.경상도  6.제주도]");

            System.out.printf("지역 이름) ");
            String area = Container.getScanner().nextLine();

            switch (area) {
                case "경기도":
                    mountain.gyeonggiDo();
                    break;
                case "강원도":
                    mountain.gangwonDo();
                    break;
                case "충청도":
                    mountain.chungcheongDo();
                    break;
                case "전라도":
                    mountain.jeollaDo();
                    break;
                case "경상도":
                    mountain.kyongsangDo();
                    break;
                case "제주도":
                    mountain.jejuDo();
                    break;
                default:
                    System.out.println("※ 올바른 지역명을 입력해주세요 ※");
            }
        }
    }
}
