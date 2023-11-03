package org.example.mountain.entity;

import org.example.Container;
import org.example.DefaultCommand;
import org.example.mountain.controller.MountainController;
import org.example.screenSelect.Answer;

public class MountainList {
    Answer answer = new Answer();
    private static MountainController mountainController = new MountainController();
    public void gyeonggiDo() {

        while (true) {
            System.out.println("\n== 경기도 지역의 산을 선택해주세요. ==");
            System.out.println("\n▶ 청계산 / ▶ 불장산 / ▶ 구룡산 / ▶ 관악산");
            System.out.print("입력 :");
            String commandMountain = Container.getSc().nextLine().trim();

            switch (commandMountain) {
                case "청계산", "관악산", "구룡산", "불장산":
                    mountainController.mountainFeature(commandMountain);
                    answer.review();
                    break;
                default:
                    DefaultCommand.mountainDeafaultCommand();
                    continue;
            }
            break;
        }
    }
    public void gangwonDo() {
        while (true) {
            System.out.println("\n== 강원도 지역의 산을 선택해주세요. ==");
            System.out.println("\n▶ 오대산 / ▶ 설악산 / ▶ 태백산 / ▶ 속리산");
            System.out.print("입력 :");
            String commandMountain = Container.getSc().nextLine().trim();

            switch (commandMountain) {
                case "오대산", "속리산", "태백산", "설악산":
                    mountainController.mountainFeature(commandMountain);
                    answer.review();
                    break;
                default:
                    DefaultCommand.mountainDeafaultCommand();
                    continue;
            }
            break;
        }
    }

    public void chungcheongDo() {
        while (true) {
            System.out.println("\n== 충청도 지역의 산을 선택해주세요. ==");
            System.out.println("\n▶ 계룡산 / ▶ 대덕산 / ▶ 내장산 / ▶ 소백산");
            System.out.print("입력 :");
            String commandMountain = Container.getSc().nextLine().trim();

            switch (commandMountain) {
                case "계룡산", "소백산", "내장산", "대덕산":
                    mountainController.mountainFeature(commandMountain);
                    answer.review();
                    break;
                default:
                    DefaultCommand.mountainDeafaultCommand();
                    continue;
            }
            break;
        }
    }
    public void kyongsangDo() {
        while (true) {
            System.out.println("\n== 경상도 지역의 산을 선택해주세요. ==");
            System.out.println("\n▶ 공주산 / ▶ 토함산 / ▶ 대왕약산 / ▶ 콘솔산");
            System.out.print("입력 :");
            String commandMountain = Container.getSc().nextLine().trim();

            switch (commandMountain) {
                case "공주산", "콘솔산", "대왕약산", "토함산":
                    mountainController.mountainFeature(commandMountain);
                    answer.review();
                    break;
                default:
                    DefaultCommand.mountainDeafaultCommand();
                    continue;
            }
            break;
        }
    }
    public void jeollaDo() {
        while (true) {
            System.out.println("\n== 전라도 지역의 산을 선택해주세요. ==");
            System.out.println("\n▶ 월출산 / ▶ 무등산 / ▶ 무안고덕산 / ▶ 장안산");
            System.out.print("입력 :");
            String commandMountain = Container.getSc().nextLine().trim();

            switch (commandMountain) {
                case "월출산", "장안산", "무안고덕산", "무등산":
                    mountainController.mountainFeature(commandMountain);
                    answer.review();
                    break;
                default:
                    DefaultCommand.mountainDeafaultCommand();
                    continue;
            }
            break;
        }
    }
    public void jejuDo() {
        while (true) {
            System.out.println("\n== 제주도 지역의 산을 선택해주세요. ==");
            System.out.println("\n▶ 한라산");
            System.out.print("입력 :");
            String commandMountain = Container.getSc().nextLine().trim();

            switch (commandMountain) {
                case "한라산":
                    mountainController.mountainFeature(commandMountain);
                    answer.review();
                    break;
                default:
                    DefaultCommand.mountainDeafaultCommand();
                    continue;
            }
            break;
        }
    }
}