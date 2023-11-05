package org.example.member.controller;

import org.example.Container;
import org.example.screenSelect.MainScreen;
import org.example.member.entity.Member;
import org.example.member.service.MemberService;


public class MemberController {

    private static MainScreen mainScreen = new MainScreen();
    MemberService memberService = new MemberService();

    // 로그인
    public void login() {
        if (Container.getLoginMember() != null) {
            System.out.println("※ 이미 로그인 되어있습니다. ※");
            return;
        }

        System.out.print("아이디 : ");
        String userId = Container.getSc().nextLine().trim();
        System.out.print("비밀번호 : ");
        String password = Container.getSc().nextLine().trim();

        Member member = memberService.findByUserId(userId);

        if (member == null) {
            System.out.println("※ 존재하지 않는 아이디입니다. 다시 입력해주세요. ※");
            return;
        }
        if (member.getPassword().equals(password) == false) {
            System.out.println("※ 비밀번호가 틀렸습니다. 다시 입력해주세요. ※");
            return;
        }

        Container.setLoginMember(member);

        System.out.println("로그인 되었습니다." + Container.getLoginMember().getUserId() + "님 환영합니다. (*´∪`)");
        // MainScreen을 실행하기 위한 코드
        mainScreen.mainSelect();
    }

    // 회원가입
    public void sign() {

        String userId;
        String password;
        String gender;
        // 로그인 및 중복된 계정인지 확인하는 구문
        while (true) {
            System.out.print("새로운 아이디 : ");
            userId = Container.getSc().nextLine().trim();

            Member member = memberService.findByUserId(userId);

            if (member != null) {
                System.out.println("※ 이미 존재하는 아이디 입니다. 다시 입력해주세요. ※");
                continue;
            }else {
                System.out.println("사용 가능한 아이디 입니다.");
            }
            break;
        }

        // 비밀번호를 중복되는지 확인하는 구문
        while (true) {
            System.out.print("새로운 비밀번호 : ");
            password = Container.getSc().nextLine().trim();
            System.out.print("새로운 비밀번호 확인 : ");
            String passwordchecked = Container.getSc().nextLine().trim();
            if (password.equals(passwordchecked)) {
                System.out.println("비밀번호가 입력되었습니다.");
            } else {
                System.out.println("※ 비밀번호가 다릅니다. 다시 압력해주세요. ※");
                continue;
            }
            break;
        }

        while (true) {
            System.out.print("성별 : ");
            gender = Container.getSc().nextLine().trim();
            switch (gender) {
                case "남", "남자", "남성":
                    break;
                case "여", "여자", "여성":
                    break;
                default:
                    System.out.println("※ 성별을 다시 기입해 주세요. ※");
                    continue;
            }
            break;
        }

        memberService.signService(userId, password, gender);
        System.out.println("회원가입이 완료되었습니다. 로그인을 진행해주세요.");
    }

    public static Member logout() {

        if (Container.getLoginMember() != null) {
            Container.setLoginMember(null);
            System.out.println("로그아웃 되었습니다.");
        } else {
            System.out.println("※ 로그아웃 상태입니다. ※");
        }
        return null;
    }
}