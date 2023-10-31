package org.example.mountain.entity;

import org.example.Container;
import org.example.member.controller.MemberController;
import org.example.mountain.controller.MountainController;
import org.example.review.controller.ReviewController;

public class Mountain {
    String MountainName;

    MountainController mountainController = new MountainController();

    public void gyeonggiDo() {
        while (true) {
            System.out.println("== 아래 항목중 원하시는 산을 선택해 주세요 ==");
            System.out.println("[1.청계산  2.불장산  3.구룡산  4.관악산]");

            System.out.printf("산 이름) ");
            MountainName = Container.getScanner().nextLine();

            switch (MountainName) {
                case "청계산":
                    mountainController.cheongsanMountain();
                    break;
                case "불장산":
                    System.out.println("불장산은 ~~");
                    break;
                case "구룡산":
                    System.out.println("구룡산은 ~~");
                    break;
                case "관악산":
                    System.out.println("관악산은 ~~");
                    break;
                default:
                    System.out.println("※ 올바른 산 이름을 입력해주세요 ※");
            }
            ReviewController.reviewWrite();

        }
    }

    public void gangwonDo() {
        System.out.println("== 아래 항목중 원하시는 산을 선택해 주세요 ==");
        System.out.println(" 1.오대산  2.봉평산  3.설악산  4.태백산  5.속리산");

        System.out.printf("산 이름) ");

        MountainName = Container.getScanner().nextLine();
        if (MountainName.equals("오대산")) {
            System.out.println("오대산은 ~~");
        } else if (MountainName.equals("봉평산")) {
            System.out.println("봉평산 ~~");
        } else if (MountainName.equals("태백산")) {
            System.out.println("태백산 ~~");
        } else if (MountainName.equals("속리산")) {
            System.out.println("속리산 ~~");
        }
        ReviewController.reviewWrite();
    }

    public void chungcheongDo() {
        System.out.println("== 아래 항목중 원하시는 산을 선택해 주세요 ==");
        System.out.println(" 1.계룡산  2.백운산  3.대덕산  4.내장산  5.소백산");

        System.out.printf("산 이름) ");

        MountainName = Container.getScanner().nextLine();
        if (MountainName.equals("계룡산")) {
            System.out.println("계룡산 ~~");
        } else if (MountainName.equals("백운산")) {
            System.out.println("백운산 ~~");
        } else if (MountainName.equals("대덕산")) {
            System.out.println("대덕산 ~~");
        } else if (MountainName.equals("내장산")) {
            System.out.println("내장산 ~~");
        } else if (MountainName.equals("소백산")) {
            System.out.println("소백산 ~~");
        }
        ReviewController.reviewWrite();
    }

    public void jeollaDo() {
        System.out.println("== 아래 항목중 원하시는 산을 선택해 주세요 ==");
        System.out.println(" 1.오대산  2.봉평산  3.설악산  4.태백산  5.속리산");

        System.out.printf("산 이름) ");

        MountainName = Container.getScanner().nextLine();
        if (MountainName.equals("오대산")) {
            System.out.println("오대산은 ~~");
        } else if (MountainName.equals("봉평산")) {
            System.out.println("봉평산 ~~");
        } else if (MountainName.equals("태백산")) {
            System.out.println("태백산 ~~");
        } else if (MountainName.equals("속리산")) {
            System.out.println("속리산 ~~");
        }
        ReviewController.reviewWrite();
    }

    public void kyongsangDo() {
        System.out.println("== 아래 항목중 원하시는 산을 선택해 주세요 ==");
        System.out.println(" 1.오대산  2.봉평산  3.설악산  4.태백산  5.속리산");

        System.out.printf("산 이름) ");

        MountainName = Container.getScanner().nextLine();
        if (MountainName.equals("오대산")) {
            System.out.println("오대산은 ~~");
        } else if (MountainName.equals("봉평산")) {
            System.out.println("봉평산 ~~");
        } else if (MountainName.equals("태백산")) {
            System.out.println("태백산 ~~");
        } else if (MountainName.equals("속리산")) {
            System.out.println("속리산 ~~");
        }
        ReviewController.reviewWrite();
    }

    public void jejuDo() {
        System.out.println("== 아래 항목중 원하시는 산을 선택해 주세요 ==");
        System.out.println(" 1.오대산  2.봉평산  3.설악산  4.태백산  5.속리산");

        System.out.printf("산 이름) ");

        MountainName = Container.getScanner().nextLine();
        if (MountainName.equals("오대산")) {
            System.out.println("오대산은 ~~");
        } else if (MountainName.equals("봉평산")) {
            System.out.println("봉평산 ~~");
        } else if (MountainName.equals("태백산")) {
            System.out.println("태백산 ~~");
        } else if (MountainName.equals("속리산")) {
            System.out.println("속리산 ~~");
        }
        ReviewController.reviewWrite();
    }
}

