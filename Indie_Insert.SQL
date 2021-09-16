-----------------------------------Member-----------------------------------
insert into member values((SELECT NVL(MAX(member.mb_num),0)+1 FROM member),'test','1234','test@test.com','456','test_addr1','test_addr2','12345678',to_timestamp('2021-09-07','yyyy-mm-dd'));

-----------------------------------Board-----------------------------------

insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),'0913_KanyeWest.jpg','concert','Kanye West, 싱글차트 100위권 스물 세 곡 신규 진입','이번 주 차트에서 유독 눈에 띄는 아티스트가 있었으니, 바로 Kanye West입니다. 1년이 넘는 시간 동안 발매를 미루다가 드디어 공개된 Kanye West의 [Donda] 수록곡들이 차트 100위권 안에 들었기 때문이지요. 전체 스물 일곱 곡 중 스물 세 곡이 진입하며 리스너들의 기대 만큼이나 엄청난 성적을 보여주고 있는데요. 인트로이자 스킷 격인 Donda Chant와 보너스 개념인 [Ok Ok pt 2], [Junya pt 2, Jesus Lord pt 2]를 제외한 모든 곡이 100위로 들어왔으니, 사실상 전곡이 100위권에 들어온 셈입니다.',1,to_timestamp('2021-09-07','yyyy-mm-dd'),to_timestamp('2021-09-07','yyyy-mm-dd'));

insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),
'FrankOcean_1.jpg',
'magazine',
'프랭크 오션, "요즘 탐구하고 있는 사운드는..."',
'지난 2016년 두 번째 스튜디오 앨범 [Blonde]를 발표한 후, 또다시 너무나도 조용해진 알앤비 씬의 아이콘 프랭크 오션(Frank Ocean). 1집 [Channel Orange]에서 2집 [Blonde]가 발표되기까지 약 4년이 걸렸으니, [Blonde]의 3주년 째인 올해가 지나면 슬슬 세 번째 스튜디오 앨범을 합리적으로 기대해볼 수 있다.
다행히도, 프랭크 오션은 계속해서 새 앨범에 담길 사운드를 열심히 연구하고 있는 것으로 보인다. W 매거진과 함께 오랜만에 공식적인 인터뷰를 가진 프랭크 오션은, 최근 큰 관심을 갖고 있는 사운드에 관해 털어놓았다.
"요즘은 클럽에 시선을 두고 있었어요. 여러 종류의 밤문화, 그리고 그 안에서 흐르는 음악 말이죠. 디트로이트, 시카고, 테크노, 하우스, 프렌치 일렉트로닉... 그 중 제게 가장 와닿았던 건 뉴올리언스 바운스 사운드였고요.”
이후 앨범 작업에 관한 진행도에 대한 질문을 받자, 프랭크 오션은 "언제나 음악을 매만지고 있다"는 모호한 답변을 제공했다. 어쩌면, 프랭크 오션의 새 앨범이 칸예 웨스트(Kanye West)의 지독한 [Jesus Is King]보다 일찍 나오게 되는 건 아닐까?',
1,to_timestamp('2021-09-07','yyyy-mm-dd'),to_timestamp('2021-09-07','yyyy-mm-dd'));

insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),
'Blonde_1.jpg',
'magazine',
'Frank Ocean, 새 앨범 [Blonde] 발매',
'Frank Ocean, 새 앨범 [Blonde] 발매 Frank Ocean이 비주얼 앨범 [Endless] 발매에 이어, 정규 앨범 [Blonde]을 깜짝 발매하였습니다. [Blonde]는 2012년에 발매한 [Channel Orange] 이후 4년만에 정규 앨범인데요. 
신보 발매와 동시에 로스엔젤로스, 뉴욕, 시카고, 런던에 팝업 스토어를 열어 Boys Dont Cry라는 이름의 잡지를 무료로 내놓기도 했는데, 이 잡지에는 Frank Ocean 어머니의 인터뷰와 사진 등의 다양한 콘텐츠들이 담겨있다고 합니다.
총 17트랙으로 구성된 [Blonde]는 현재 애플 뮤직에서 감상할 수 있습니다. 다음은 [Blonde]의 트랙리스트 및 관련 이미지들입니다. (앨범의 공식 제목이 Blonde인지 Blond인지에 관해서는 아직 명확한 설명이 없기에 일단 애플 뮤직에 표기된 Blonde로 표기하였습니다)',
1,to_timestamp('2021-09-14','yyyy-mm-dd'),to_timestamp('2021-09-14','yyyy-mm-dd'));

insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),
'concert_1.jpg',
'concert',
'Drake와 Migos의 합동 투어가 시작된다',
'올해의 기회를 놓치면 다시 접하기 힘들법한 엄청난 라인업의 투어 콘서트가 탄생했습니다. 현 힙합씬 최고의 주가를 달리고 있는 래퍼와 그룹이 만났는데요. 바로 Drake와 Migos가 <Aubrey and the Three Amigos>라는 이름의 투어를 진행할 것이라고 합니다. <Aubrey and the Three Amigos> 투어는 오는 7월 솔트레이크 시티에서 시작되어, 다섯 달간의 공연을 진행한 후 11월에 막을 내릴 예정이라고 합니다. "Walk It Talk It"에서의 조합을 실제 콘서트에서 보게 될 줄은 예상치 못했습니다. 올해 미국을 방문 예정이라면, <Aubrey and the Three Amigos> 투어 일정을 참고해보는 건 어떨까요?',
1,to_timestamp('2021-09-14','yyyy-mm-dd'),to_timestamp('2021-09-14','yyyy-mm-dd'));


insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),
'news_1.jpg',
'news',
'Drake, 열심히 작업 중임을 알리다',
'지난번, 한 농구경기 휴식 시간 중 짧은 인사를 통해 "새 앨범은 고향인 Toronto를 위한 앨범이 될 것"이라고 전했던 Drake가 정말로 앨범 작업에 한창인 것으로 보입니다. Drake가 인스타그램에 파티도, 시상식도 아닌 일에 열중하는 본인의 사진을 올렸기 때문입니다. ',
1,to_timestamp('2021-09-4','yyyy-mm-dd'),to_timestamp('2021-09-5','yyyy-mm-dd'));

insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),
'concert_2.jpg',
'concert',
'빌리 아일리시, 8월 두 번째 내한 공연 예정',
'18세의 나이로 팝 씬의 독보적인 아이콘이 된 빌리 아일리시(Billie Eilish)가 2018년에 이어 다시 한 번 한국에서 공연을 진행한다. 빌리 아일리시는 오는 2020년 8월 23일 국내 관객들을 찾을 예정이며, 시간과 장소 등 더욱 자세한 사항은 추후 공개될 예정이다.',
1,to_timestamp('2021-08-4','yyyy-mm-dd'),to_timestamp('2021-08-5','yyyy-mm-dd'));


insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),
'concert_3.jpg',
'concert',
'릴 펌, 첫 내한 공연 셋리스트 공개',
'다가오는 5월 26일 진행되는 릴 펌(Lil Pump)의 첫 내한 공연의 공식 셋리스트가 공개되었다. 금일 공개된 자료에 따르면, 릴펌은 총 17곡의 트랙을 한국 팬들을 위해 들려줄 예정이며, 여기에는 “Gucci Gang”, "Esskeetit", "Be Like Me", "Boss" 등의 솔로 히트 넘버들은 물론 칸예 웨스트(Kanye West)와 함께한 “I Love It”까지 포함된 것으로 알려졌다. 짧은 커리어에도 수많은 히트곡을 쌓아온 릴펌이기에 이번 내한 공연에는 더욱 많은 관심이 쏠릴 것으로 기대되고 있다. 한편, 세계적인 힙합 스타인 릴 펌의 첫 내한 공연이자 최정상급의 국내 뮤지션들이 총출동하는 JBL 2019 월드 힙합 페스티벌(JBL 2019 World Hiphop Festival)은 5월 25일, 26일 양일에 거쳐 진행된다. 이외에도 첫날인 5월 25일 토요일에는 스윙스, 영비, 기리보이, 키드밀리, 그레이, 우원재, 딥플로우, 오디, 큐엠, 넉살, 윤미래, 타이거JK, 비지, 어글리덕이 출연하며, 26일 일요일에는 릴펌과 더불어 다이나믹 듀오, 리듬파워, 제시, 더콰이엇, DJ 소다가 출연한다.',
1,to_timestamp('2021-08-4','yyyy-mm-dd'),to_timestamp('2021-08-5','yyyy-mm-dd'));

insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),
'concert_4.jpg',
'concert',
'레지 스노우, 9월 내한 공연 예정',
'오는 9월 7일로 예정됐던 위즈 칼리파(Wiz Khalifa), 조이 배대스(Joey Bada$$), 레지 스노우(Rejjie Snow)의 내한공연이 레지 스노우 단독 공연으로 변경되어 진행된다. 공연 내용의 변경과 함께, 올림픽공원 체조경기장에서 홍대 웨스트브릿지 with KT 5G 라이브홀로 장소를 옮겨 진행될 예정이라고 한다. 레지 스노우의 단독 내한 공연은 2019년 9월 7일 오후 7시 진행될 예정이다. 가격은 예매 33,000원, 현장판매 44,000원이며, 오는 8월 29일 낮 12시부터 공식 예매처인 인터파크에서 예매가 가능하다고 한다. 기존 공연의 티켓을 자동적으로 예매 취소되며, 배송료를 포함한 전액이 환불될 예정이다.',
1,to_timestamp('2021-08-4','yyyy-mm-dd'),to_timestamp('2021-08-5','yyyy-mm-dd'));

insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),
'news_2.jpg',
'news',
'칸예 웨스트 [DONDA], 이번 주 발매 예정?',
'1년 전과는 사뭇 다른 분위기의 예고. 딱 1년 전에도 비슷한 헤드라인이 외신을 휩쓸었던 바 있지만, 이번에는 어쩐지 분위기가 조금 다르다. 며칠 전 라스베가스에서 진행된 비밀 리스닝 파티에 이어, 칸예 웨스트(Kanye West)의 열 번째 스튜디오 앨범 [DONDA]에 관한 정보가 끊임없이 쏟아지고 있다. 첫째로, 지난 토요일 칸예 웨스트와 함께 직접 앨범을 감상한 동료 저스틴 라보이(Justin Laboy)는 트위터 계정을 통해 “이번 주에 (앨범이) 발매되고 나면, 한동안 다른 것들은 거들떠보지도 않을 거다”라며 [DONDA]의 이번 주 발매를 암시했다.',
1,to_timestamp('2021-08-4','yyyy-mm-dd'),to_timestamp('2021-08-5','yyyy-mm-dd'));

insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),
'news_3.jpg',
'news',
'타일러 더 크리에이터, 신보 [CALL ME IF YOU GET LOST] 발매일과 커버 아트 공개',
'IGOR] 이후 2년 1개월 만의 신보. 타일러 더 크리에이터(Tyler, The Creator)가 여섯 번째 스튜디오 앨범 [CALL ME IF YOU GET LOST]의 발매일과 커버 아트를 공개했다. [CALL ME IF YOU GET LOST]는 오는 25일(금요일) 공개될 예정이며, 이는 전작 [IGOR] 이후 약 2년 1개월 만의 복귀다. 발매일과 커버 아트의 공개와 함께, 타일러 더 크리에이터는 골프 왱(GOLF WANG) 홈페이지를 통해 [CALL ME IF YOU GET LOST]의 피지컬 예약 판매를 시작했다. 현재 골프 왱 홈페이지에서 본작의 CD, 카세트 등과 머천다이즈를 예약 구매할 수 있다.',
1,to_timestamp('2021-08-4','yyyy-mm-dd'),to_timestamp('2021-08-5','yyyy-mm-dd'));

insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),
'magazine_3.jpg',
'magazine',
'빌리 아일리시, “내 음악이 어딜 봐서 팝 음악이야?”',
'GQ와의 인터뷰를 진행한 빌리 아일리시(Billie Eilish)는 타일러 더 크리에이터의 발언에 적극적으로 동의하는 모습을 보였다. 그녀는 타일러 더 크리에이터가 했던 발언에 적극적으로 동의하며, 역시 특정 장르에 규정당하는 본인의 입장을 털어놓았다. 내가 백인 십대 여성 뮤지션이라서 내 음악이 팝이래. 내 음악이 어딜 봐서 팝이야? 내 음악의 어떤 부분이 팝처럼 들리는 건데? ',
1,to_timestamp('2021-09-15','yyyy-mm-dd'),to_timestamp('2021-09-15','yyyy-mm-dd'));

insert into board values((SELECT NVL(MAX(board.b_num),0)+1 FROM BOARD),
'magazine_4.jpg',
'magazine',
'빌리 아일리시, “드레이크가 문자했어, 근데 그게 어때서?”',
'지난 1월 말, 제62회 그래미 어워즈(Grammy Awards)에서 다섯 개의 트로피를 챙기며 역사적인 기록을 만들어낸 빌리 아일리시(Billie Eilish). 그녀는 이미 음악 시장에서 가장 중요한 존재로 활약하는 중이며, 그만큼 팬들의 과도한 관심과 무분별한 방어기제로 골머리를 앓는 중이기도 하다. 실제로, 최근 드레이크(Drake)가 빌리 아일리시에게 연락을 취했다는 사실이 알려진 후 몇 팬들은 "미성년자 딱지 떼니까 바로 집적대는 거냐"라며 드레이크를 질타하기도 했다. 최근 보그지의 커버를 장식하며 인터뷰에 응한 빌리 아일리시는 이와 같은 상황에 관한 생각을 드러냈다. 그냥 인터넷은 지금 개똥같이 멍청해. 다들 예민하기만 하다고. 다 큰 남자라고 누군가의 팬이 되면 안 되는 거야? 본인들이 진짜 걱정해야 할 사람들이 널려있는데. 아니, 드레이크가 내 팬이라고 소름끼친다면서 트럼프한테 투표하러 가? X발 그게 뭐야?”',
1,to_timestamp('2021-09-15','yyyy-mm-dd'),to_timestamp('2021-09-15','yyyy-mm-dd'));

-----------------------------------Music-----------------------------------

insert into music values('1','bal','kor','너희 흔적, 너의 계절','이상복','너희 흔적, 너의 계절','bal1.jpg','가사1',0,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('2','bal','kor','돌아보니','이지훈','돌아보니','bal2.jpg','가사2',1,to_timestamp('2021-09-06','yyyy-mm-dd'));
insert into music values('3','bal','kor','Be With You','윤예준','Be With You','bal3.jpg','가사3',2,to_timestamp('2021-09-05','yyyy-mm-dd'));
insert into music values('4','bal','kor','시원하게 보낸','이재우','바다와 대지의 노래이야기','bal4.jpg','가사4',3,to_timestamp('2021-09-04','yyyy-mm-dd'));
insert into music values('5','bal','kor','잠깐만요','마른수건','잠깐만요','bal5.jpg','가사5',5,to_timestamp('2021-09-03','yyyy-mm-dd'));

insert into music values('6','bal','kor','시간을 거슬러','케이윌','시간을 거슬러','bal6.jpg','가사6',5,to_timestamp('2021-08-31','yyyy-mm-dd'));
insert into music values('7','bal','kor','고백','멜로망스','세 번째 고백','bal7.jpg','가사7',5,to_timestamp('2021-08-29','yyyy-mm-dd'));
insert into music values('8','bal','kor','가까운 듯 먼 그대여','카더가든','가까운 듯 먼 그대여','bal8.jpg','가사8',5,to_timestamp('2021-08-26','yyyy-mm-dd'));
insert into music values('9','bal','kor','비가 오는 날엔(2021)','헤이즈(Heize)','비가 오는 날엔','bal9.jpg','가사9',5,to_timestamp('2021-08-04','yyyy-mm-dd'));
insert into music values('10','bal','kor','바라만 본다','MSG워너비(M.O.M)','바라만 본다','bal10.jpg','가사10',5,to_timestamp('2021-06-26','yyyy-mm-dd'));

insert into music values('11','bal','for','Silent Love','Lil Candy Brownie','Silent Love','bal11.jpg','가사10',5,to_timestamp('2021-09-06','yyyy-mm-dd'));
insert into music values('12','bal','for','Drifting','Melissa J','Drifting','bal12.jpg','가사10',5,to_timestamp('2021-09-05','yyyy-mm-dd'));
insert into music values('13','bal','for','How bad Is the Rain','Elsa Mickayla','How bad Is the Rain','bal13.jpg','가사10',5,to_timestamp('2021-09-04','yyyy-mm-dd'));
insert into music values('14','bal','for','Treading Water','Benny Bizzie','Treading Water','bal14.jpg','가사10',5,to_timestamp('2021-09-03','yyyy-mm-dd'));
insert into music values('15','bal','for','Intro','Kazamasata','Human power','bal15.jpg','가사10',5,to_timestamp('2021-09-02','yyyy-mm-dd'));

insert into music values('16','bal','for','Leave The Door Open','Bruno Mars','Skate','bal16.jpg','가사10',5,to_timestamp('2021-07-30','yyyy-mm-dd'));
insert into music values('17','bal','for','parachute','John K','love+everything','bal17.jpg','가사10',5,to_timestamp('2020-11-13','yyyy-mm-dd'));
insert into music values('18','bal','for','2002','Anne-Marie','Speak Your Mind','bal18.jpg','가사10',5,to_timestamp('2018-04-27','yyyy-mm-dd'));
insert into music values('19','bal','for','At My Worst','Pink Sweat$','The Prelude','bal19.jpg','가사10',5,to_timestamp('2020-07-17','yyyy-mm-dd'));
insert into music values('20','bal','for','Save Your Tears','The Weeknd','Save Your Tears','bal20.jpg','가사10',5,to_timestamp('2021-04-23','yyyy-mm-dd'));

insert into music values('21','dan','kor','난 혼자였구나','프롬디어','난 혼자였구나','dan1.jpg','가사1',0,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('22','dan','kor','Purple hours','AKIRU','Purple hours','dan2.jpg','가사2',1,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('23','dan','kor','바다만큼','황재은','바다만큼','dan3.jpg','가사3',2,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('24','dan','kor','특별하게','R.H.M','특별하게','dan4.jpg','가사4',3,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('25','dan','kor','연금술사','차재영','연금술사','dan5.jpg','가사5',5,to_timestamp('2021-09-06','yyyy-mm-dd'));

insert into music values('26','dan','kor','색안경','STAYC','STEREOTYPE','dan6.jpg','가사6',5,to_timestamp('2021-09-06','yyyy-mm-dd'));
insert into music values('27','dan','kor','Queendom','Red Velvet','Queendom','dan7.jpg','가사7',5,to_timestamp('2021-08-16','yyyy-mm-dd'));
insert into music values('28','dan','kor','신호등','이무진','신호등','dan8.jpg','가사8',5,to_timestamp('2021-05-14','yyyy-mm-dd'));
insert into music values('29','dan','kor','DUMB DUMB','전소미','DUMB DUMB','dan9.jpg','가사9',5,to_timestamp('2021-08-02','yyyy-mm-dd'));
insert into music values('30','dan','kor','Next Level','aespa','Next Level','dan10.jpg','가사10',5,to_timestamp('2021-05-17','yyyy-mm-dd'));

insert into music values('31','dan','for','The Hungriest Beast','Stabscotch','The Hungriest','dan11.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('32','dan','for','Foi Ela','Nu zs','Foi Ela','dan12.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('33','dan','for','Mazzel','Herman Van Veen','Dat Kun Je Wel','dan13.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('34','dan','for','Summer Lover','LIIA','Summer Lover','dan14.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('35','dan','for','Somebody Else','Boon','Somebody Else','dan15.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));

insert into music values('36','dan','for','STAY','The Kid LAROI','STAY','dan16.jpg','가사10',5,to_timestamp('2021-07-09','yyyy-mm-dd'));
insert into music values('37','dan','for','Bad Habits','Ed Sheeran','Visiting Hours','dan17.jpg','가사10',5,to_timestamp('2021-08-10','yyyy-mm-dd'));
insert into music values('38','dan','for','Peaches','Justin Bieber','Justice','dan18.jpg','가사10',5,to_timestamp('2021-03-19','yyyy-mm-dd'));
insert into music values('39','dan','for','Off My Face','Justin Bieber','Justice','dan19.jpg','가사10',5,to_timestamp('2021-03-19','yyyy-mm-dd'));
insert into music values('40','dan','for','Loving You Girl','Peder Elias','Loving You Girl','dan20.jpg','가사10',5,to_timestamp('2021-05-14','yyyy-mm-dd'));

insert into music values('41','hip','kor','Myself','곡식','Myself','hip1.jpg','가사1',0,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('42','hip','kor','HI-WAY','Rich Otty','HI-WAY','hip2.jpg','가사2',1,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('43','hip','kor','Sports Mode','키모엘','Sports Mode','hip3.jpg','가사3',2,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('44','hip','kor','PARISCENT','SSSSWJ','PARISCENT','hip4.jpg','가사4',3,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('45','hip','kor','Bird','Unsigned nino','Self Love','hip5.jpg','가사5',5,to_timestamp('2021-09-07','yyyy-mm-dd'));

insert into music values('46','hip','kor','OHAYO MY NIGHT','디핵','OHAYO','hip6.jpg','가사6',5,to_timestamp('2020-06-20','yyyy-mm-dd'));
insert into music values('47','hip','kor','이대로만','로꼬','이대로만','hip7.jpg','가사7',5,to_timestamp('2021-08-24','yyyy-mm-dd'));
insert into music values('48','hip','kor','비 오는 날','에픽하이','비 오는 날','hip8.jpg','가사8',5,to_timestamp('2021-06-29','yyyy-mm-dd'));
insert into music values('49','hip','kor','사이렌','호미들','사이렌','hip9.jpg','가사9',5,to_timestamp('2021-03-20','yyyy-mm-dd'));
insert into music values('50','hip','kor','은근히 낯가려요','부끄뚱','은근히 낯가려요','hip10.jpg','가사10',5,to_timestamp('2021-08-22','yyyy-mm-dd'));

insert into music values('51','hip','for','Fahrersitz','SEV79','Fahrersit','hip11.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('52','hip','for','Speak.Less','Chainwax','Escapism','hip12.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('53','hip','for','Prove It','1300Liko','Prove It','hip13.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('54','hip','for','Aokigahara','CREEPYMANE','Era','hip14.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('55','hip','for','Shadows in Paradise','Dj Jacob','Shadows','hip15.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));

insert into music values('56','hip','for','INDUSTRY BABY','Lil Nas X','INDUSTRY BABY','hip16.jpg','가사10',5,to_timestamp('2021-07-23','yyyy-mm-dd'));
insert into music values('57','hip','for','Mood','24KGoldn','Mood','hip17.jpg','가사10',5,to_timestamp('2020-07-24','yyyy-mm-dd'));
insert into music values('58','hip','for','Sunflower','Post Malone','스파이더맨','hip18.jpg','가사10',5,to_timestamp('2018-12-14','yyyy-mm-dd'));
insert into music values('59','hip','for','Jail','Kanye West','Donda','hip19.jpg','가사10',5,to_timestamp('2020-08-29','yyyy-mm-dd'));
insert into music values('60','hip','for','Hurricane','Kanye West','Donda','hip20.jpg','가사10',5,to_timestamp('2021-08-29','yyyy-mm-dd'));

insert into music values('61','in','kor','Myself2','곡식','Myself2','in1.jpg','가사1',0,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('62','in','kor','Sports Mode2','키모엘','Sports Mode2','in2.jpg','가사2',1,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('63','in','kor','별자리','소프지니','소프지니','in3.jpg','가사3',2,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('64','in','kor','거친 하루를 마감하는','소담밴드','거친하루를','in4.jpg','가사4',3,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('65','in','kor','Bird','Unsigned nino','Self Love','in5.jpg','가사5',5,to_timestamp('2021-09-07','yyyy-mm-dd'));

insert into music values('66','in','kor','흔들리는 꽃들 속에서','장범준','멜로가 체질','in6.jpg','가사6',5,to_timestamp('2019-08-23','yyyy-mm-dd'));
insert into music values('67','in','kor','아로하','조정석','슬기로운','in7.jpg','가사7',5,to_timestamp('2020-03-27','yyyy-mm-dd'));
insert into music values('68','in','kor','허리춤','오반','허리춤','in8.jpg','가사8',5,to_timestamp('2021-06-21','yyyy-mm-dd'));
insert into music values('69','in','kor','밤하늘의 별을','경서','밤하늘의 별을','in9.jpg','가사9',5,to_timestamp('2020-11-14','yyyy-mm-dd'));
insert into music values('70','in','kor','주저하는 연인들을 위해','잔나비','전설','in10.jpg','가사10',5,to_timestamp('2019-03-13','yyyy-mm-dd'));

insert into music values('71','in','for','Night Time Djuke-ing','Andy','MEGA-SHEBANG','in11.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('72','in','for','Better Friends','Abby Cates','Better Friends','in12.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('73','in','for','Kansas City','Adam Ostrar','Kansas City','in13.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('74','in','for','With You With Me','Jesse Taylor','With You With Me','in14.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));
insert into music values('75','in','for','Holding On','Michael Robert','Holding On','in15.jpg','가사10',5,to_timestamp('2021-09-07','yyyy-mm-dd'));

insert into music values('76','in','for','10,000 Hours','Dan + Shay','Good Things','in16.jpg','가사10',5,to_timestamp('2021-08-13','yyyy-mm-dd'));
insert into music values('77','in','for','Whiskey and Morphine','Alexander Jean','Head High','in17.jpg','가사10',5,to_timestamp('2016-06-03','yyyy-mm-dd'));
insert into music values('78','in','for','Fancy Like','Walker Hayes','Country Stuff','in18.jpg','가사10',5,to_timestamp('2021-06-04','yyyy-mm-dd'));
insert into music values('79','in','for','Glad You Exist','Dan + Shay','Glad You Exist','in19.jpg','가사10',5,to_timestamp('2021-02-05','yyyy-mm-dd'));
insert into music values('80','in','for','New York City','Norah Jones','New York City','in20.jpg','가사10',5,to_timestamp('2008-09-24','yyyy-mm-dd'));







