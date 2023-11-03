CREATE DATABASE `yaho`;

USE `yaho`;

CREATE TABLE `mountain` (
                            id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                            name char(100) NOT NULL UNIQUE,
                            features text NOT NULL,
                            course text NOT NULL
);

CREATE TABLE `member`(
                         id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                         userId char(100) NOT NULL UNIQUE,
                         `password` char(100) NOT NULL,
                         nowDateTime datetime NOT NULL,
                         gender char(100) NOT null
);

CREATE TABLE `review`(
                         id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                         title text NOT NULL,
                         content text NOT NULL,
                         memberId char(100) NOT NULL,
                         regDate DATETIME NOT NULL,
                         score int UNSIGNED NOT NULL
);


--회원
INSERT INTO `member`
SET nowDateTime = NOW(),
userId = '경현잉',
`password` = '11',
gender = '남자';

INSERT INTO `member`
SET nowDateTime = NOW(),
userId = '병근잉',
`password` = '11',
gender = '남자';

INSERT INTO `member`
SET nowDateTime = NOW(),
userId = '조은잉',
`password` = '11',
gender = '여자';

-- 산

INSERT INTO `mountain`
SET name = '청계산',
features = '청계산의 정상 해발고도는 약 724미터로, 경기도 내에서 가장 높은 산 중 하나입니다.
정상에서는 주변 지역과 먼 도시 전경을 감상할 수 있습니다.
청계산은 아름다운 자연 경관을 제공하며, 숲, 바위, 계곡, 계단식 폭포, 꽃과 나무들로 가득합니다.
자연을 즐기며 하이킹과 트래킹을 즐기기에 적합한 장소입니다.
청계산 주변에는 문화 유산과 역사적인 장소가 많이 있습니다.
예를 들어, 고려 시대의 사찰인 청계사, 유네스코 세계문화유산으로 지정된 수원 화성 등이 있습니다.
청계산은 하이커와 등산객들 사이에서 인기가 있는 산으로, 다양한 하이킹 코스와 등산로가 마련되어 있습니다.
난이도에 따라 여러 경로를 선택할 수 있습니다. 청계산에는 다양한 전망대가 있어, 정상에서 아름다운 풍경을 감상할 수 있습니다.
특히 가을에는 단풍이 아름다워 많은 사람들이 찾는 명소입니다.
청계산 근처에는 전통 문화를 체험할 수 있는 장소와 미술관, 박물관 등이 있어 문화 이벤트나 체험을 즐길 수 있습니다.',
course = '정상 코스 (A 코스):
길이: 약 2.5km (약 1.5마일)
설명: 가장 인기 있는 코스 중 하나로, 청계산 정상까지 이어지며 정상에서 아름다운 전망을 감상할 수 있습니다. 상대적으로 가파른 길과 계단이 있습니다.

사파리 코스 (B 코스):
길이: 약 3.7km (약 2.3마일)
설명: 이 코스는 동물원 지역을 지나가는 코스로, 동물원에서 다양한 동물을 볼 수 있습니다. 산림욕로와 조금 더 가깝습니다.

무장애인 코스 (C 코스):
길이: 약 4.5km (약 2.8마일)
설명: 휠체어 사용자 및 무장애인을 위한 코스로, 포장된 도로를 따라 가볍게 하이킹할 수 있습니다.

부메랑 코스 (D 코스):
길이: 약 5.8km (약 3.6마일)
설명: 이 코스는 청계산을 한 바퀴 돌면서 다양한 경치를 감상할 수 있는 긴 코스로, 산림욕로와 경치 좋은 지점을 포함합니다.

중도 둘레길 코스 (E 코스):
길이: 약 10.5km (약 6.5마일)
설명: 이 코스는 청계산을 한 바퀴 도는 긴 코스 중 하나로, 중도 둘레길을 따라 청계산의 다양한 지점을 탐험할 수 있습니다.';

INSERT INTO `mountain`
SET name = '불장산',
features = '불장산의 정상 해발고도는 약 1,192미터로, 경상북도 내에서 높은 산 중 하나입니다.
정상에서는 주변 지역과 아름다운 풍경을 감상할 수 있습니다.
불장산은 아름다운 자연 경관을 제공합니다.
숲, 바위, 계곡, 계단식 폭포, 그리고 다양한 식물과 동물이 서식하는 자연환경을 포함하고 있습니다.
특히 봄에는 꽃들이 피어나고 가을에는 단풍이 아름다워 관광객들에게 인기가 있습니다.
불장산은 하이킹과 트래킹을 즐기기에 좋은 장소로, 다양한 하이킹 코스와 등산로가 마련되어 있습니다.
이를 통해 등산객들은 다양한 난이도와 경로를 선택할 수 있습니다.
불장산에는 다양한 전망대가 위치하고 있어, 정상에서 주변 풍경을 감상할 수 있습니다.
더불어 주변 지역의 아름다운 경치를 관찰할 수 있습니다. 불장산 주변에는 역사적인 사찰과 문화유산이 있습니다.
이곳에서는 고려 시대의 사찰인 불장사를 비롯하여 다양한 문화유산을 발견할 수 있습니다.
불장산 근처에는 문화체험 활동을 즐길 수 있는 장소도 많이 있습니다. 관광객은 전통 문화를 체험하거나 지역 특산물을 구매할 수 있습니다.',
course = '불장산 정상 코스 (정상투어 코스):
길이: 약 7.5km (왕복)
난이도: 중상
설명: 이 코스는 불장산 정상까지 이어지며, 불장사와 천왕봉, 백운대, 정상 등 다양한 명소를 지나가는 긴 코스입니다. 정상에서 아름다운 경치를 감상할 수 있습니다.

천왕봉 코스:
길이: 약 6.5km (왕복)
난이도: 중상
설명: 이 코스는 불장산 중심부에서 천왕봉까지 이어지며, 정상에서 아름다운 경치를 감상할 수 있습니다.

수련사 코스:
길이: 약 2.5km (왕복)
난이도: 하
설명: 이 코스는 수련사로 향하는 쉬운 코스로, 가족 나들이나 초보자에게 적합합니다. 수련사에서는 사찰과 아름다운 조경을 즐길 수 있습니다.

백운대 코스:
길이: 약 5.5km (왕복)
난이도: 중하
설명: 백운대까지 이어지는 이 코스는 천왕봉과 백운대의 경치를 즐길 수 있는 중간 정도의 코스입니다.

불장사 순례길:
길이: 약 2.5km (원점 투어)
난이도: 하
설명: 이 코스는 불장사를 중심으로하는 쉬운 순례길로, 사찰을 둘러보며 천연기념물인 불장산 편백을 관찰할 수 있습니다.';

insert into `mountain`
set name = '구룡산',
features = '구룡산의 정상 해발고도는 약 737미터로, 경기도 내에서 높은 산 중 하나입니다.
정상에서 주변 지역과 아름다운 풍경을 감상할 수 있습니다.
구룡산은 아름다운 자연 경관을 제공합니다. 산림, 바위, 계곡, 계단식 폭포, 그리고 다양한 식물과 동물로 가득한 자연 환경을 포함하고 있습니다.
 구룡산은 하이킹과 트래킹을 즐기기에 좋은 장소로, 다양한 하이킹 코스와 등산로가 마련되어 있습니다.
 이를 통해 등산객들은 다양한 난이도와 경로를 선택할 수 있습니다.
 구룡산에는 다양한 전망대가 위치하고 있어, 정상에서 주변 풍경을 감상할 수 있으며, 특히 가을에는 단풍이 아름다워 관광객들에게 인기가 있습니다.
 구룡산 주변에는 역사적인 사찰과 문화유산이 있습니다. 이곳에서는 고려 시대의 사찰인 구룡사와 다양한 문화유산을 발견할 수 있습니다.
 구룡산 근처에는 전통 문화를 체험하거나 지역 특산물을 구매할 수 있는 장소도 많이 있습니다.',
course = '구룡산 정상 코스 (A 코스):
길이: 약 3.8km (왕복)
난이도: 중상
설명: 이 코스는 구룡산 정상까지 이어지며, 정상에서 아름다운 경치를 감상할 수 있습니다. 중간에 다양한 전망대와 휴게소가 있습니다.

동남 코스 (B 코스):
길이: 약 4.5km (왕복)
난이도: 중상
설명: 이 코스는 동남 쪽으로 향하며, 다양한 경치와 산림을 통해 정상을 향하는 길입니다.

동북 코스 (C 코스):
길이: 약 4km (왕복)
난이도: 중상
설명: 이 코스는 동북 쪽으로 향하는 길로, 산림과 바위 지형을 통해 정상에 도달합니다.

서남 코스 (D 코스):
길이: 약 4km (왕복)
난이도: 중하
설명: 이 코스는 서남 쪽으로 향하며, 비교적 쉬운 하이킹 코스로 가족이나 초보자에게 적합합니다.

반곡 코스 (E 코스):
길이: 약 2.5km (왕복)
난이도: 하
설명: 이 코스는 반곡 지역으로 향하는 가장 짧고 쉬운 하이킹 코스로, 가족 나들이나 숲속 산책을 즐기기에 좋습니다.';

insert into `mountain`
set name = '관악산',
features = '관악산의 정상 해발고도는 약 632미터로, 서울 지역에서 가장 높은 산 중 하나입니다.
정상에서는 서울 시내와 주변 지역의 아름다운 전망을 감상할 수 있습니다. 관악산은 아름다운 자연 경관을 제공합니다.
산림, 바위, 계곡, 계단식 폭포, 그리고 다양한 식물과 동물로 가득한 자연 환경을 포함하고 있습니다.
관악산은 서울 지역 주민과 관광객에게 인기있는 하이킹 장소로, 다양한 하이킹 코스와 등산로가 마련되어 있습니다.
서울 시내에서도 접근이 용이한 곳으로 야간 하이킹을 즐기는 사람들에게도 인기가 있습니다.
관악산에는 여러 개의 전망대가 위치하고 있어, 정상과 중간 지점에서 주변 경치를 감상할 수 있습니다.
관악산 주변에는 문화 유산이 풍부하며, 고려 시대의 사찰인 관악사와 연Ꝭ사, 그리고 역사적인 명소인 국립서울대학교 등이 있습니다.
관악산 근처에는 전통 문화를 체험하거나 지역 특산물을 쇼핑할 수 있는 장소가 있습니다.',
course = '북문 코스 (북문 입구 - 정상 코스):
길이: 약 2.5km (왕복)
난이도: 중하
설명: 이 코스는 북문에서 시작하여 정상까지 이어지는 코스로, 산림과 바위 지형을 통과하며 정상에서 서울 시내와 주변 경치를 감상할 수 있습니다.

남문 코스 (남문 입구 - 정상 코스):
길이: 약 3km (왕복)
난이도: 중하
설명: 이 코스는 남문에서 시작하여 정상까지 이어지며, 정상에서 아름다운 전망을 즐길 수 있습니다.

도서관 코스 (도서관 - 정상 코스):
길이: 약 2.5km (왕복)
난이도: 중하
설명: 이 코스는 서울대학교 도서관에서 시작하여 정상까지 이어지며, 중간에 휴게소와 전망대가 있어 쉬면서 경치를 즐길 수 있습니다.

곰곰곰 코스 (매봉 앞 방면 코스):
길이: 약 5.5km (왕복)
난이도: 중상
설명: 이 코스는 관악산의 북쪽에 위치한 매봉 산까지 이어지며, 경치가 아름다워 관광객들에게 인기가 있습니다.

국사봉 코스 (남문 - 국사봉 - 정상 코스):
길이: 약 6km (왕복)
난이도: 중상
설명: 이 코스는 남문에서 시작하여 국사봉을 거쳐 정상까지 이어지는 긴 하이킹 코스로, 정상과 중간 지점에서 경치를 감상할 수 있습니다.';

insert into `mountain`
set name = '오대산',
features = '오대산의 정상인 오대봉의 해발고도는 약 1,563미터로, 높은 산이며 남한강과 북한강의 수원지로부터 물을 공급하는 중요한 물源지 중 하나입니다.
 오대산은 사계절 내내 아름다운 경치를 제공합니다. 봄에는 벚꽃과 진달래가 활짝 핀다. 여름에는 푸른 숲과 시원한 계곡을 즐길 수 있으며, 가을에는 단풍 명소로 유명하다.
 겨울에는 눈 위에서 하이킹을 즐기거나 스키를 즐길 수 있다. 오대산은 다양한 계곡과 폭포로 유명하며, 특히 국립공원 내에 위치한 청정한 자연 환경이 매력적이다.
 대표적인 계곡으로는 남이골과 소금강 계곡 등이 있으며, 중앙폭포와 선운폭포는 아름다운 폭포로 알려져 있다.
 오대산은 하이킹과 등산하기에 좋은 명산 중 하나로, 다양한 하이킹 코스가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있다.
 오대산 주변에는 오대산국립공원이 위치하여 천혜의 자연환경을 보존하고 있다.
 오대산 근처에는 역사적인 문화유적도 많이 있으며, 오대산사(五臺山寺)와 태백산성(太白山城) 등의 역사적인 장소를 탐방할 수 있다.
 오대산 주변에는 스키장과 골프장과 같은 다양한 스포츠 및 레크리에이션 시설도 있어, 계절에 따라 다양한 액티비티를 즐길 수 있다.',
course = '오대봉 정상 코스:
길이: 약 78킬로미터 (왕복)
소요 시간: 약 45시간
설명: 이 코스는 오대산 정상인 오대봉을 향하는 주요 등산로로, 아름다운 풍경과 경치를 제공합니다. 난이도가 있는 코스 중 하나로 알려져 있습니다.

남이골 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 34시간
설명: 남이골 코스는 오대산의 아름다운 계곡과 폭포를 향하는 코스로, 가족 단위나 하이킹 입문자에게 적합한 코스입니다.

소금강 계곡 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 45시간
설명: 소금강 계곡은 오대산 근처에 위치한 아름다운 계곡으로, 하이킹 코스와 계곡을 함께 즐길 수 있는 코스입니다.

선운폭포 코스:
길이: 약 1011킬로미터 (왕복)
소요 시간: 약 56시간
설명: 선운폭포는 오대산 근처에 위치한 아름다운 폭포 중 하나로, 하이킹과 자연 감상을 결합한 코스입니다.';


insert into `mountain`
set name = '설악산',
features = '설악산의 정상인 도봉봉(도선봉)의 해발고도는 약 1,708미터로, 대한민국에서 가장 높은 산 중 하나입니다.
 이로 인해 눈이 내리면 겨울에는 눈으로 덮이는 아름다운 풍경을 제공합니다.
 설악산은 깨끗하고 아름다운 자연 환경으로 유명하며, 높은 산봉우리와 울창한 숲, 계곡, 폭포, 고원 등 다양한 지형을 포함한 다채로운 경관을 제공합니다.
 설악산에는 다양한 봉우리가 있으며, 그 중 동족산 봉우리는 정상이 아닌 주변 봉우리 중 하나로, 정상 등산로와 경치가 아름답습니다.
 설악산은 설악산 국립공원에 속하며, 자연 생태계와 문화유산을 보존하고 관리하는 역할을 합니다. 국립공원 내에는 야생동물과 다양한 식물이 서식하고 있습니다.
 설악산 주변에는 문화적 유산이 풍부하며, 설악사(雪嶽寺)와 동궁루(東宮樓) 등의 문화유적이 있습니다.
 설악산은 하이킹과 등산하기에 매우 인기 있는 산으로, 다양한 하이킹 코스와 등산로가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 설악산 정상에 위치한 무운재(無雲齋)는 안개가 없다는 뜻으로, 일부 날씨 조건에서 눈에 띄게 맑은 하늘을 제공하는 명소입니다.',
course = '대동봉 정상 코스:
길이: 약 78킬로미터 (왕복)
소요 시간: 약 67시간
설명: 이 코스는 대동봉 정상을 향하는 주요 등산로로, 중간에 목재도로와 다기도로를 통과하면서 아름다운 자연경관을 감상할 수 있습니다.

중동봉 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 78시간
설명: 중동봉 코스는 대동봉에서 북동쪽으로 이동하면서 중동봉 정상을 향하는 코스로, 대동봉 정상을 넘어 중동봉 정상까지 등반합니다.

덕유봉 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 56시간
설명: 덕유봉 코스는 설악산 남서쪽에 위치한 덕유봉을 향하는 코스로, 경치가 아름다우며 일부 난이도가 있는 코스입니다.

깃대봉 코스:
길이: 약 1011킬로미터 (왕복)
소요 시간: 약 89시간
설명: 깃대봉 코스는 설악산 북서쪽에 위치한 깃대봉 정상을 향하는 코스로, 산림욕과 천혜의 경치를 즐길 수 있습니다.

오색봉 코스:
길이: 약 1213킬로미터 (왕복)
소요 시간: 약 910시간
설명: 오색봉 코스는 설악산의 서쪽에서 시작하여 다양한 경치와 지형을 탐험하는 긴 코스로, 숙련된 하이커들을 위한 코스입니다.';

insert into `mountain`
set name = '태백산',
features = '태백산의 정상은 해발고도 1,566미터로, 동아시아에서 가장 높은 산 중 하나입니다.
 이로 인해 정상에서는 주변 지역과 아름다운 풍경을 감상할 수 있습니다.
 태백산은 깨끗하고 아름다운 자연 환경으로 유명하며, 울창한 숲, 깊은 계곡, 폭포, 고원, 바위, 봉우리 등 다양한 지형을 제공합니다.
 태백산의 랜드마크로 높은 바위 봉우리 중 하나로, 우렁이바위에서는 전망이 환상적이며 태백산의 정상을 향해 하이킹을 즐길 수 있습니다.
 동반구니암은 태백산 내에 위치한 사찰로, 역사적이고 문화적인 가치가 있는 명소 중 하나입니다.
 태백산은 하이킹과 등산하기에 좋은 명산 중 하나로, 다양한 하이킹 코스와 등산로가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 태백산 국립공원 내에는 다양한 야생동물과 식물이 서식하고 있으며, 자연 탐험과 산림욕을 즐길 수 있습니다.',
course = '만복대 코스:
길이: 약 56킬로미터 (왕복)
소요 시간: 약 34시간
설명: 만복대 코스는 산림욕을 즐기면서 만복대 정상을 향하는 코스로, 경치가 아름답고 상대적으로 난이도가 낮아 가족 단위나 하이킹 입문자에게 적합합니다.

중봉 코스:
길이: 약 1011킬로미터 (왕복)
소요 시간: 약 67시간
설명: 중봉 코스는 중봉 정상을 향하는 코스로, 중간에 천문대와 우렁이바위 등을 볼 수 있으며 중간 난이도의 하이킹 코스입니다.

우렁이바위 코스:
길이: 약 78킬로미터 (왕복)
소요 시간: 약 56시간
설명: 우렁이바위는 태백산의 랜드마크로, 이 코스를 통해 랜드마크를 탐험할 수 있으며 경치와 자연환경을 즐길 수 있습니다.

동반구니암 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 67시간
설명: 동반구니암 코스는 동반구니암 사찰을 중심으로 경치를 감상하면서 하이킹을 즐길 수 있는 코스입니다.

전망대 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 45시간
설명: 전망대 코스는 태백산의 전망대에서 주변 풍경을 감상할 수 있는 코스로, 상대적으로 짧은 거리와 경치를 즐길 수 있습니다.';


insert into `mountain`
set name = '속리산',
features = '속리산의 정상인 큰방재(1,708m)는 한반도에서 높은 해발고도를 자랑하며, 정상에서 주변 지역을 조망할 수 있는 아름다운 경치를 제공합니다.
 속리산에 위치한 선운사는 한국불교의 역사적인 사찰로 유명하며, 아름다운 절경과 문화적 가치가 있는 장소 중 하나입니다.
 속리산은 울창한 숲, 계곡, 폭포, 바위, 고원, 봉우리 등 다양한 지형과 자연환경을 제공합니다.
 특히 가을에는 단풍 명소로 유명하며, 단풍 숲을 즐기러 많은 관광객과 하이커가 찾아옵니다.
 속리산은 하이킹과 등산하기에 좋은 명산 중 하나로, 다양한 하이킹 코스와 등산로가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 속리산은 다양한 동식물이 서식하는 지역으로, 자연 탐험과 산림욕을 즐길 수 있습니다.
 속리산은 속리산 국립공원에 속하며, 자연 생태계와 문화유산을 보존하고 관리하는 역할을 합니다.
 속리산에는 다양한 기암암석이 분포하며, 특히 바위를 사랑하는 사람들에게 인기가 있습니다.',
course = '영주봉 코스:
길이: 약 45킬로미터 (왕복)
소요 시간: 약 34시간
설명: 이 코스는 속리산의 가장 낮은 정상 중 하나인 영주봉을 향하는 코스로, 산림욕과 풍경 감상을 즐길 수 있는 쉬운 코스입니다.

신선대 코스:
길이: 약 56킬로미터 (왕복)
소요 시간: 약 45시간
설명: 신선대 코스는 속리산의 선운사에서 시작하여 정상인 큰방재를 향하는 코스로, 선운사와 자연 경관을 함께 즐길 수 있습니다.

연화봉 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 67시간
설명: 연화봉 코스는 큰방재 정상에서 북동쪽으로 이동하면서 연화봉 정상을 향하는 중간 난이도의 코스로, 경치가 아름답습니다.

서장대 코스:
길이: 약 1112킬로미터 (왕복)
소요 시간: 약 89시간
설명: 서장대 코스는 속리산 서쪽에 위치한 서장대 정상을 향하는 코스로, 속리산의 서편을 탐험하며 경치를 감상할 수 있습니다.

관음암 코스:
길이: 약 78킬로미터 (왕복)
소요 시간: 약 56시간
설명: 관음암 코스는 속리산 근처에 위치한 관음암을 중심으로 산행을 즐길 수 있는 코스입니다.';


insert into `mountain`
set name = '계룡산',
features = '계룡산의 정상인 오서산(1,127m)은 상대적으로 낮은 해발고도를 가지고 있으며, 산행 입문자나 가족 단위로 하이킹하기에 적합한 산입니다.
 계룡산은 계룡산 국립공원에 속하며, 자연환경과 문화유산을 보존하고 관리하는 역할을 합니다.
 계룡산은 울창한 숲과 다양한 식물, 동물이 서식하는 지역으로, 자연 탐험과 산림욕을 즐길 수 있습니다.
 계룡산은 하이킹과 등산하기에 좋은 산으로, 다양한 하이킹 코스와 등산로가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 계룡산에 위치한 청룡사는 한국불교의 역사적인 사찰로 유명하며, 절경과 문화적 가치가 있는 명소 중 하나입니다.
 계룡산의 북동쪽에 위치한 대야산은 다른 하이킹 코스로 연결되는 지점 중 하나로, 산행과 하이킹을 더욱 다양하게 즐길 수 있습니다.',
course = '청룡사 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 45시간
설명: 청룡사 코스는 계룡산 국립공원 내에 위치한 청룡사를 중심으로 하는 코스로, 숲속을 걷며 아름다운 자연 경관을 즐길 수 있습니다.

옥구룡 코스:
길이: 약 56킬로미터 (왕복)
소요 시간: 약 34시간
설명: 옥구룡 코스는 산림욕과 풍경을 즐기기에 적합한 쉬운 하이킹 코스로, 가족과 하이킹 입문자에게 추천됩니다.

대야산 연결로:
길이: 약 34킬로미터 (왕복)
소요 시간: 약 23시간
설명: 대야산 연결로는 계룡산과 인접한 대야산과 연결되는 코스로, 다른 하이킹 코스와 연결하여 산행을 확장할 수 있습니다.

대방재 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 56시간
설명: 대방재 코스는 계룡산에서 대방재 정상을 향하는 중간 난이도의 하이킹 코스로, 경치가 아름다우며 산림욕을 즐길 수 있습니다.';


insert into `mountain`
set name = '대덕산',
features = '대덕산의 정상은 해발고도 약 1,614미터로, 동아시아에서 높은 해발고도를 가지고 있습니다.
 정상에서는 주변 지역을 조망할 수 있는 아름다운 경치를 제공합니다.
 대덕산은 울창한 숲, 계곡, 폭포, 바위, 고원, 봉우리 등 다양한 지형과 자연환경을 제공합니다.
 특히 가을에는 단풍 명소로 유명하며, 단풍 숲을 즐기러 많은 관광객과 하이커가 찾아옵니다.
 대덕산은 하이킹과 등산하기에 좋은 명산 중 하나로, 다양한 하이킹 코스와 등산로가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 대덕산은 대덕산 국립공원에 속하며, 자연 생태계와 문화유산을 보존하고 관리하는 역할을 합니다.
 대덕산 주변에는 아름다운 계곡과 폭포가 많이 있으며, 여름에는 시원한 물놀이를 즐길 수 있습니다.',
course = '옥류동 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 45시간
설명: 옥류동 코스는 대덕산을 대표하는 하이킹 코스로, 경치가 아름답고 중간 정도의 난이도를 가지고 있습니다.

북한산우렁이바위 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 56시간
설명: 북한산우렁이바위 코스는 북한산과 대덕산을 연결하는 하이킹 코스로, 우렁이바위에서 아름다운 경치를 감상할 수 있습니다.

팔산 코스:
길이: 약 1011킬로미터 (왕복)
소요 시간: 약 67시간
설명: 팔산 코스는 대덕산 정상인 팔산을 향하는 하이킹 코스로, 다소 긴 거리와 중간 정도의 난이도를 가지고 있습니다.

계룡산 두루봉 코스:
길이: 약 910킬로미터 (왕복)
소요 시간: 약 67시간
설명: 계룡산 두루봉 코스는 계룡산과 대덕산을 연결하는 하이킹 코스로, 두루봉에서 아름다운 경치를 즐길 수 있습니다.';

insert into `mountain`
set name = '내장산',
features = '내장산의 정상은 해발고도 약 1,269미터로, 동아시아에서 높은 해발고도를 가지고 있습니다.
 정상에서는 주변 지역을 조망할 수 있는 아름다운 경치를 제공합니다.
 내장산은 울창한 숲, 계곡, 폭포, 바위, 고원, 봉우리 등 다양한 지형과 자연환경을 제공합니다.
 특히 가을에는 단풍 명소로 유명하며, 단풍 숲을 즐기러 많은 관광객과 하이커가 찾아옵니다.
 내장산은 하이킹과 등산하기에 좋은 명산 중 하나로, 다양한 하이킹 코스와 등산로가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 내장산의 남동쪽에 위치한 대동여고는 주변 지역을 조망할 수 있는 명소로, 하이킹 중에 방문할 수 있습니다.
 내장산 자연휴양림은 캠핑, 피크닉, 숙박 시설을 제공하며, 자연과 함께 즐길 수 있는 장소입니다.',
course = '구룡봉 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 56시간
설명: 구룡봉 코스는 내장산의 정상 중 하나인 구룡봉을 향하는 중간 정도의 난이도를 가진 하이킹 코스입니다. 정상에서는 아름다운 경치를 감상할 수 있습니다.

구재산 코스:
길이: 약 1011킬로미터 (왕복)
소요 시간: 약 67시간
설명: 구재산 코스는 내장산과 구재산을 연결하는 하이킹 코스로, 경치가 아름답고 걷기 좋은 코스입니다.

대소양 관매토끼산 코스:
길이: 약 78킬로미터 (왕복)
소요 시간: 약 45시간
설명: 이 코스는 대소양과 관매토끼산을 돌아다니며 즐길 수 있는 중간 정도의 난이도를 가진 하이킹 코스입니다.

문장대 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 45시간
설명: 문장대 코스는 내장산에서 문장대로 향하는 하이킹 코스로, 중간 정도의 난이도와 아름다운 경치가 특징입니다.';


insert into `mountain`
set name = '소백산',
features = '소백산의 정상은 해발고도 1,562미터로, 대한민국에서 두 번째로 높은 산 중 하나입니다.
 이러한 높은 해발고도로 인해 풍경이 아름다우며, 특히 봄, 여름, 가을, 겨울에 모든 계절마다 다양한 매력을 제공합니다.
 소백산은 경치가 아름다워, 정상에서 주변 산악 지역과 멋진 전망을 즐길 수 있습니다.
 가을에는 단풍이 화려하게 물들어 풍경을 더욱 아름답게 만듭니다.
 소백산에는 다양한 하이킹 코스가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 대표적인 코스로는 소백산 정상까지 올라가는 등산로와 다양한 생태 탐방로가 있습니다.
 소백산은 풍부한 생태계로 유명하며, 다양한 동식물을 관찰할 수 있습니다.
 산림과 야생화가 아름다운 경치를 만들어냅니다.
 소백산 주변에는 문화유적과 역사적인 장소도 많이 있으며, 이곳을 탐험하면 지역의 역사와 문화에 대한 흥미로운 정보를 얻을 수 있습니다.',
course = '대덕암 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 45시간
설명: 대덕암 코스는 소백산 중에서도 가장 인기 있는 하이킹 코스 중 하나로, 정상에서 아름다운 경치를 감상할 수 있습니다.

천왕봉 코스:
길이: 약 1011킬로미터 (왕복)
소요 시간: 약 67시간
설명: 천왕봉 코스는 소백산의 정상 중 하나인 천왕봉을 향하는 하이킹 코스로, 경치가 아름답고 중간 정도의 난이도를 가집니다.

봉명사 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 56시간
설명: 봉명사 코스는 소백산에 위치한 봉명사로 향하는 하이킹 코스로, 자연과 문화를 함께 즐길 수 있습니다.

행운동 코스:
길이: 약 1213킬로미터 (왕복)
소요 시간: 약 78시간
설명: 행운동 코스는 소백산의 높은 봉우리 중 하나인 행운동을 향하는 하이킹 코스로, 일부 구간에서 중간에서 어려운 난이도를 가집니다.

송곡사 코스:
길이: 약 45킬로미터 (왕복)
소요 시간: 약 34시간
설명: 송곡사 코스는 소백산 근처에 위치한 송곡사로 향하는 하이킹 코스로, 산림욕과 문화체험을 즐길 수 있습니다.';


insert into `mountain`
set name = '공주산',
features = '공주산의 정상은 해발고도 614미터로, 지역 내에서는 상대적으로 높은 산입니다.
 공주산은 경치가 아름다워, 정상에서 주변 지역과 멋진 전망을 즐길 수 있습니다.
 특히 봄과 가을에는 풍경이 아름다워지며, 단풍 명소로도 유명합니다.
 공주산에는 다양한 하이킹 코스가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 대표적인 코스로는 정상 등산로와 송어바위 자연 탐방로 등이 있습니다.
 이 탐방로는 해발고도 400m에서 600m 사이를 따라 산책하며, 동안에는 산림, 계곡, 흐르는 물 소리 등을 즐길 수 있는 경치가 아름다운 산책로입니다.
 공주산 주변에는 문화유적과 역사적인 장소도 많이 있으며, 이곳을 탐험하면 지역의 역사와 문화에 대한 흥미로운 정보를 얻을 수 있습니다.',
course = '봉문사 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 45시간
설명: 봉문사 코스는 공주산 중에서도 가장 인기 있는 하이킹 코스 중 하나로, 봉문사를 방문하며 아름다운 경치를 감상할 수 있습니다.

제석사 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 56시간
설명: 제석사 코스는 제석사로 향하는 하이킹 코스로, 중간 정도의 난이도와 아름다운 경치가 특징입니다.

마왕산 코스:
길이: 약 1112킬로미터 (왕복)
소요 시간: 약 67시간
설명: 마왕산 코스는 공주산 중에서 가장 높은 봉우리 중 하나인 마왕산을 향하는 하이킹 코스로, 중간에서 어려운 난이도를 가집니다.

당산 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 45시간
설명: 당산 코스는 당산 정상으로 향하는 하이킹 코스로, 경치가 아름답고 중간 정도의 난이도를 가집니다.

도피산 코스:
길이: 약 1011킬로미터 (왕복)
소요 시간: 약 67시간
설명: 도피산 코스는 도피산을 향하는 하이킹 코스로, 중간에서 어려운 난이도와 아름다운 경치가 특징입니다.';


insert into `mountain`
set name = '토함산',
features = '토함산의 정상은 해발고도 1,276미터로, 충청북도 지역에서 높은 산 중 하나입니다.
 토함산은 경치가 아름다워, 정상에서 주변 산악 지역과 멋진 전망을 즐길 수 있습니다.
 특히 가을에는 단풍 명소로 유명하며, 화려한 단풍을 감상할 수 있습니다.
 토함산에는 다양한 하이킹 코스가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 대표적인 코스로는 정상 등산로, 정통사가 있는 길, 법사암 등이 있습니다.
 토함산 정상에 위치한 정통사는 불교 문화유적으로 유명하며, 불교 신도들에게 중요한 종교적인 장소입니다.
 토함산 주변에는 문화유적과 역사적인 장소도 많이 있으며, 이곳을 탐험하면 지역의 역사와 문화에 대한 흥미로운 정보를 얻을 수 있습니다.',
course = '대장산 코스:
길이: 약 56킬로미터 (왕복)
소요 시간: 약 34시간
설명: 대장산 코스는 토함산 중에서도 가장 인기 있는 하이킹 코스 중 하나로, 정상에서 아름다운 경치를 감상할 수 있습니다.

중장산 코스:
길이: 약 78킬로미터 (왕복)
소요 시간: 약 45시간
설명: 중장산 코스는 중장산을 향하는 하이킹 코스로, 중간 정도의 난이도와 아름다운 경치가 특징입니다.

도산 코스:
길이: 약 1011킬로미터 (왕복)
소요 시간: 약 67시간
설명: 도산 코스는 도산으로 향하는 하이킹 코스로, 중간에서 어려운 난이도와 아름다운 경치가 특징입니다.

감포산 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 56시간
설명: 감포산 코스는 감포산을 향하는 하이킹 코스로, 중간에서 어려운 난이도와 아름다운 경치가 특징입니다.

민주사 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 45시간
설명: 민주사 코스는 토함산 근처에 위치한 민주사로 향하는 하이킹 코스로, 산림욕과 문화체험을 즐길 수 있습니다.';


INSERT INTO `mountain`
set name = '대왕약산',
features = '대왕약산의 정상은 해발고도 1,045미터로, 지역 내에서 상대적으로 높은 산 중 하나입니다.
 대왕약산은 경치가 아름다워, 정상에서 주변 산악 지역과 멋진 전망을 즐길 수 있습니다.
 봄, 여름, 가을, 겨울에 모든 계절마다 다양한 매력을 제공합니다.
 대왕약산에는 다양한 하이킹 코스가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 대표적인 코스로는 정상 등산로, 도린봉, 도린사로가 있습니다.
 대왕약산에 위치한 도린사는 불교 사찰로 유명하며, 사찰과 종교적인 분위기를 느낄 수 있습니다.
 대왕약산 주변에는 다양한 동식물이 서식하고 있으며, 산림, 계곡, 폭포 등의 자연경관을 탐험할 수 있습니다.',
course = '청계산 해맞이 코스:
길이: 약 45킬로미터 (왕복)
소요 시간: 약 23시간
설명: 청계산 해맞이 코스는 대왕약산에서 청계산 정상까지 이어지는 하이킹 코스로, 해돋이를 감상하기에 인기가 있습니다.

대왕약산 정상 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 34시간
설명: 대왕약산 정상 코스는 대왕약산의 정상을 향하는 하이킹 코스로, 정상에서 아름다운 경치를 감상할 수 있습니다.

구봉산 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 45시간
설명: 구봉산 코스는 대왕약산과 구봉산을 연결하는 하이킹 코스로, 아름다운 자연 경관을 제공합니다.

천장산 코스:
길이: 약 1011킬로미터 (왕복)
소요 시간: 약 56시간
설명: 천장산 코스는 대왕약산과 천장산을 연결하는 하이킹 코스로, 중간에서 어려운 난이도와 아름다운 경치가 특징입니다.

소요산 코스:
길이: 약 78킬로미터 (왕복)
소요 시간: 약 34시간
설명: 소요산 코스는 대왕약산과 소요산을 연결하는 하이킹 코스로, 중간에서 어려운 난이도와 아름다운 경치를 제공합니다.';

INSERT INTO `mountain`
set name = '콘솔산',
features = '구룡산의 정상은 해발고도 약 503미터로, 비교적 낮은 산이지만 지역 주민과 관광객들에게 즐길 만한 경치와 활동을 제공합니다.
 구룡산은 경치가 아름다워, 정상에서 주변 산악 지역과 바다, 도시 전망을 즐길 수 있습니다.
 특히 일출 또는 일몰 시에 멋진 풍경을 감상할 수 있습니다.
 구룡산에는 다양한 하이킹 코스가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 대표적인 코스로는 정상 등산로, 청계산코스, 어리목길, 중룡산코스 등이 있습니다.
 구룡산 주변에는 문화유적과 역사적인 장소도 있으며, 이곳을 탐험하면 지역의 역사와 문화에 대한 흥미로운 정보를 얻을 수 있습니다.
 구룡산은 다양한 동식물이 서식하는 지역으로, 자연 탐험과 산림욕을 즐길 수 있습니다',
course = '정상 등산로:
길이: 약 3.54.5킬로미터 (왕복)
소요 시간: 약 23시간
설명: 이 코스는 구룡산의 정상까지 올라가는 주요 등산로로, 비교적 짧은 거리로 정상에 도달할 수 있습니다. 경치가 아름다우며, 일출과 일몰을 감상하기에 좋은 코스입니다.

청계산코스:
길이: 약 78킬로미터 (왕복)
소요 시간: 약 45시간
설명: 청계산코스는 구룡산과 청목산을 연결하는 코스로, 경치가 아름답고 자연환경을 경험할 수 있습니다.

어리목길:
길이: 약 1011킬로미터 (왕복)
소요 시간: 약 56시간
설명: 어리목길은 구룡산과 소금산, 청계산을 연결하는 긴 코스로, 다양한 경치와 지형을 탐험할 수 있습니다.

중룡산코스:
길이: 약 1011킬로미터 (왕복)
소요 시간: 약 56시간
설명: 중룡산코스는 구룡산과 중룡산을 연결하는 코스로, 아름다운 경치와 다양한 산림을 경험할 수 있습니다.';

INSERT INTO `mountain`
set name = '월출산',
features = '월출산의 정상은 해발고도 약 1,121미터로, 남한에서 높은 산 중 하나입니다.
 정상에서는 주변 지역을 조망할 수 있는 아름다운 경치를 즐길 수 있습니다.
 월출산은 울창한 숲, 계곡, 폭포, 바위, 봉우리 등 다양한 지형과 자연환경을 제공합니다.
 특히 가을에는 단풍 명소로 유명하며, 단풍 숲을 즐기러 많은 관광객과 하이커가 찾아옵니다.
 월출산은 하이킹과 등산하기에 좋은 명산 중 하나로, 다양한 하이킹 코스와 등산로가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 월출산 정상 중 하나인 누월봉은 독특한 모양을 가지고 있으며, 그 형상이 마치 사람이 눕고 있는 것과 비슷하여 누월봉이라고 불립니다.
 월출산 근처에 위치한 월출사는 역사적인 절로, 하이킹 코스 중간에 방문할 수 있습니다.
 월출산 정상에서는 전라북도와 인근 지역을 한눈에 볼 수 있으며, 해가 떠오르는 풍경이 아름다워 해돋이 관람지로도 알려져 있습니다.',
course = '월출산 정상 코스:
길이: 약 78킬로미터 (왕복)
소요 시간: 약 45시간
설명: 월출산 정상 코스는 월출산 정상을 향하는 가장 인기 있는 하이킹 코스 중 하나입니다. 정상에서 아름다운 경치를 감상할 수 있습니다.

누월봉 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 34시간
설명: 누월봉 코스는 월출산의 누월봉으로 향하는 하이킹 코스로, 독특한 봉우리 형상을 가지고 있습니다.

해돋이 코스:
길이: 약 56킬로미터 (왕복)
소요 시간: 약 23시간
설명: 해돋이 코스는 월출산 정상까지 이어지며, 해돋이를 감상하기에 인기가 있는 하이킹 코스입니다.

월출사 코스:
길이: 약 45킬로미터 (왕복)
소요 시간: 약 23시간
설명: 월출사 코스는 월출산 근처에 위치한 월출사로 향하는 하이킹 코스로, 산림욕과 문화체험을 즐길 수 있습니다.

둥지 코스:
길이: 약 78킬로미터 (왕복)
소요 시간: 약 45시간
설명: 둥지 코스는 월출산의 높은 봉우리 중 하나인 둥지를 향하는 하이킹 코스로, 중간에서 어려운 난이도를 가집니다.';

INSERT INTO `mountain`
set name = '무등산',
features = '무등산의 가장 높은 정상은 해발고도 약 1,915미터로, 남한에서 높은 산 중 하나입니다.
 정상에서는 주변 지역을 조망할 수 있는 아름다운 경치를 즐길 수 있습니다.
 무등산은 울창한 숲, 계곡, 폭포, 바위, 봉우리 등 다양한 지형과 자연환경을 제공합니다.
 특히 가을에는 단풍 명소로 유명하며, 단풍 숲을 즐기러 많은 관광객과 하이커가 찾아옵니다.
 무등산은 하이킹과 등산하기에 좋은 명산 중 하나로, 다양한 하이킹 코스와 등산로가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 무등산에는 다양한 봉우리와 절들이 분포되어 있으며, 산행을 즐기면서 문화와 역사적인 유산도 감상할 수 있습니다.
 무등산 정상에서는 전라남도와 경상남도의 대부분을 한눈에 볼 수 있으며, 해돋이와 일몰을 감상하기에도 인기가 있습니다.
 무등산 주변에는 풍부한 자연환경과 숲속에서의 휴식을 즐길 수 있는 산림욕 시설이 마련되어 있습니다.',
course = '무등산 정상 코스:
길이: 약 78킬로미터 (왕복)
소요 시간: 약 45시간
설명: 무등산 정상 코스는 무등산 정상을 향하는 가장 인기 있는 하이킹 코스 중 하나입니다. 정상에서는 아름다운 경치를 감상할 수 있습니다.

도봉봉 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 34시간
설명: 도봉봉 코스는 무등산의 봉우리 중 하나인 도봉봉을 향하는 하이킹 코스로, 독특한 봉우리 형상을 가지고 있습니다.

열봉봉 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 45시간
설명: 열봉봉 코스는 무등산의 봉우리 중 하나인 열봉봉을 향하는 하이킹 코스로, 아름다운 경치를 제공합니다.

권기재 코스:
길이: 약 1011킬로미터 (왕복)
소요 시간: 약 56시간
설명: 권기재 코스는 무등산의 권기재를 향하는 하이킹 코스로, 중간에서 어려운 난이도와 아름다운 경치가 특징입니다.

무등사 코스:
길이: 약 56킬로미터 (왕복)
소요 시간: 약 23시간
설명: 무등산 근처에 위치한 무등사로 향하는 하이킹 코스로, 산림욕과 문화체험을 즐길 수 있습니다.';

INSERT INTO `mountain`
set name = '무안고덕산',
features = '무안고덕산의 정상은 해발고도 약 827미터로, 지역적으로 상당히 높은 산 중 하나입니다.
 무안고덕산은 아름다운 자연환경을 제공하며, 숲, 계곡, 바위, 봉우리 등 다양한 지형이 풍부하게 분포되어 있습니다.
 산림욕과 자연 경치를 즐기기에 좋은 장소 중 하나입니다.
 무안고덕산은 하이킹과 등산하기에 좋은 명산으로, 다양한 하이킹 코스와 등산로가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 무안고덕산에는 다양한 봉우리와 전망대가 있어, 정상에서 주변 지역을 한눈에 볼 수 있으며, 아름다운 경치를 감상할 수 있습니다.
 가을에는 무안고덕산 주변에서 아름다운 단풍을 감상할 수 있는 명소 중 하나로 유명합니다.',
course = '무안고덕산 정상 코스:
길이: 약 67킬로미터 (왕복)
소요 시간: 약 34시간
설명: 무안고덕산 정상 코스는 무안고덕산의 정상을 향하는 가장 인기 있는 하이킹 코스 중 하나입니다. 정상에서는 아름다운 경치를 감상할 수 있습니다.

신리암 코스:
길이: 약 78킬로미터 (왕복)
소요 시간: 약 45시간
설명: 신리암 코스는 무안고덕산과 인접한 신리암으로 향하는 하이킹 코스로, 숲과 자연 경치를 즐길 수 있습니다.

봉오리 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 45시간
설명: 봉오리 코스는 무안고덕산의 봉오리를 향하는 하이킹 코스로, 아름다운 경치를 제공합니다.

송덕산 코스:
길이: 약 1011킬로미터 (왕복)
소요 시간: 약 56시간
설명: 송덕산 코스는 무안고덕산과 송덕산을 연결하는 하이킹 코스로, 중간에서 어려운 난이도와 아름다운 경치가 특징입니다.';

INSERT INTO `mountain`
set name = '장안산',
features = '장안산의 정상 해발고도는 약 506미터로, 상대적으로 낮은 산 중 하나입니다.
 이로 인해 입문자와 가족 등 다양한 하이커에게 인기가 있습니다.
 장안산은 아름다운 자연경관과 다양한 식물, 동물 종류를 제공합니다.
 산책로와 하이킹로를 따라 가다 보면, 푸른 숲과 바위, 계곡, 계단식 폭포 등을 발견할 수 있습니다.
 장안산 주변에는 문화 유산과 역사적인 장소가 많이 있습니다.
 예를 들어, 불교 절의 유적, 신라 시대의 유물이 발견된 곳, 그리고 전쟁 중 병원으로 사용된 장소 등이 있습니다.
 장안산은 하이킹로와 산책로가 잘 조성되어 있어, 다양한 경로로 등산을 즐길 수 있습니다.
 가파른 산 정상까지 올라가기도 가능하고, 가까운 산책로를 걸어가기에도 적합합니다.
 장안산에서는 다양한 시점에서 아름다운 풍경을 감상할 수 있습니다.
 특히 봄과 가을에는 화려한 꽃과 단풍이 산을 더 아름답게 만듭니다.',
course = '동북방향 정상 코스:
길이: 약 2.5킬로미터 (왕복)
설명: 이 코스는 장안산의 정상을 향하는 가장 짧은 코스 중 하나로, 상대적으로 가파른 경사와 계단이 많습니다. 정상에서는 멋진 경치를 감상할 수 있습니다.

남동방향 산림욕로:
길이: 약 4.5킬로미터 (왕복)
설명: 이 산책로는 산림욕을 즐기기에 좋으며, 자연 경관과 신선한 공기를 느낄 수 있는 코스입니다. 가족과 함께 산책하기에 적합합니다.

동방향 숲길 코스:
길이: 약 5.5킬로미터 (왕복)
설명: 이 코스는 장안산 동쪽에 위치하며, 숲속을 걷는 것을 즐기는 하이커에게 적합합니다. 도심에서 자연 속으로 이동하는 느낌을 느낄 수 있습니다.

서쪽 투어 코스:
길이: 약 6.5킬로미터 (왕복)
설명: 이 코스는 장안산 서쪽을 돌며 산의 다양한 경치와 풍경을 경험할 수 있는 하이킹 코스입니다.';

INSERT INTO `mountain`
set name = '한라산',
features = '한라산의 정상은 한라산 주봉(韓山主峰) 또는 한라봉(韓羅峰)이라고 불리며, 해발고도는 약 1,950미터로 대한민국 내에서 가장 높은 산입니다.
 한라산은 경치가 아름다워, 정상에서 주변 제주도와 동해안을 조망할 수 있습니다.
 봄, 여름, 가을, 겨울 모든 계절마다 다양한 매력을 제공합니다.
 한라산은 다양한 하이킹 코스가 마련되어 있어 모든 수준의 하이커들이 즐길 수 있습니다.
 대표적인 코스로는 서봉, 동봉, 중봉, 남봉 코스 등이 있습니다.
 한라산은 화산 활동으로 형성된 산으로, 독특한 화산학적 특징을 가지고 있습니다.
 특히 크레이터 호수인 발해와 성판악, 백록담, 성산일출봉 등의 자연 지형은 독특한 아름다움을 제공합니다.
 한라산 국립공원 내에는 다양한 동식물이 서식하고 있으며, 자연 탐험과 산림욕을 즐길 수 있습니다.',
course = '서봉 코스:
길이: 약 910킬로미터 (왕복)
소요 시간: 약 78시간
설명: 서봉 코스는 한라산의 서쪽으로 시작하여 정상인 서봉을 향하는 코스로, 긴 거리와 높은 해발고도를 가지고 있어 산악자와 숙련된 하이커들을 위한 코스입니다.

동봉 코스:
길이: 약 89킬로미터 (왕복)
소요 시간: 약 67시간
설명: 동봉 코스는 한라산의 동쪽에서 시작하여 정상인 동봉을 향하는 코스로, 서봉 코스와 유사한 난이도를 가지고 있습니다.

중봉 코스:
길이: 약 34킬로미터 (왕복)
소요 시간: 약 23시간
설명: 중봉 코스는 중간 지점에 위치한 중봉을 향하는 코스로, 상대적으로 짧은 거리와 적당한 난이도를 가지고 있어 하이킹 입문자들에게 추천됩니다.

남봉 코스:
길이: 약 34킬로미터 (왕복)
소요 시간: 약 23시간
설명: 남봉 코스는 한라산의 남쪽에서 시작하여 정상인 남봉을 향하는 코스로, 중봉 코스와 유사한 난이도를 가지고 있습니다.';

DROP table `mountain`;

SELECT * FROM `member`;
SELECT * FROM `mountain`;
SELECT * FROM `review`;