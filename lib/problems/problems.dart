import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Problems {
  static String problem1 =
      r"""$\sqrt{20\over3} \times\sqrt{6\over5}$   의 값은?""";

  static List<String> hints1 = [
    r"어떤 수 $x$를 제곱해서 $a$가 될때, $x$를  $a$의 제곱근($x = \sqrt a$)이라 한다",
    r" $\sqrt A \times \sqrt B = \sqrt {AB}$ 이다. <br> $\sqrt {A^2B} = A\sqrt B$ 이다.",
    r"$\sqrt{20\over 3} \times \sqrt{6\over 5} =\sqrt{{20\over3}\times{6\over5}}=\sqrt{\square}=\square\sqrt2$"
  ];
  static List<Image> images1 = [];
  static List<String> choices1 = [
    r"$\sqrt 2$",
    r"$2 \sqrt 2$",
    r"$3\sqrt2$",
    r"$4\sqrt2$",
    r"$5\sqrt2$"
  ];
  static Map<int, Image> hintImg1 = {};

  static String problem2 = r"다항식 $(2x-1)(x+3)$ 의 전개식에서 $x$의 계수를 구하시오.";
  static List<String> hints2 = [
    r"- 다항식은 여러 항으로 이루어진 식이다. <br> - 전개식은 다항식을 단항식의 합의 형태로 표현하는 것을 말한다",
    r"$(ax+b)(cx+d)= acx^2+(ad+bc)x+bd$",
    r"$(2x-1)(x+3) = 2x^2+6x-x-3 = {\square}x^2+{\square}x-{\square}$ <br> 따라서, $x$의 계수는 $\square$ 이다."
  ];
  static List<Image> images2 = [];
  static List<String> choices2 = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];
  static Map<int, Image> hintImg2 = {};

  static String problem3 = r'$\sin60\degree \times\cos30\degree$ 의 값은?';
  static List<String> hints3 = [
    r"$sinA = {a\over b}, cosA = {c\over b}, tan A = { a\over c}$ 이다.",
    r"한 내각의 크기가 $30\degree $인 직각삼각형의 세 변의 길이의 비는 $1:\sqrt3:2$ 이다.",
    r"$sin60\degree \times cos30\degree = {\square\over2}\times{\square\over2}= {{\square}\over 4}$"
  ];
  static List<Image> images3 = [];
  static List<String> choices3 = [
    r"$1\over4$",
    r"$3\over8$",
    r"$1\over2$",
    r"$5\over8$",
    r"$3\over4$",
  ];
  static Map<int, Image> hintImg3 = {
    1: Image.asset('assets/hint_image/prob3_hint1_img.png'),
    2: Image.asset('assets/hint_image/prob3_hint2_img.png'),
  };

  static String problem4 = r'이차함수 $y = -x^2+4x+3$  의 그래프의 꼭지점의 $y$ 좌표는?';
  static List<String> hints4 = [
    r"- 함수 $y=f(x)$ 에서 $y$ 가 $x$ 에 대하여 $y=ax^2+bx+c$ ($a$, $b$, $c$ 는 상수, $a \neq0$) 로 나타낼때, 이 함수를 $x$에 대한 이차함수라고 한다. <br> - 이차함수의 꼭지점은 이차함수의 값이 최솟값 혹은 최댓값이 되는 점이다.",
    r"- 이차함수의 $x^2$의 계수가 음수인 경우, 이차함수는 위로 볼록하며 최대값을 가진다. <br> - 이차함수 $y=a(x-p)^2 +q$ 의 꼭지점의 좌표는 ($p,q$) 이다.",
    r"$y = -x^2+4x+3 = -(x^2-4x+4-4)+3=-(x^2-4x+{\square})+7=-(x-{\square})^2+7$ 이므로 그래프의 꼭짓점의 좌표는 (2,$\square$) 이다."
  ];
  static List<Image> images4 = [];
  static List<String> choices4 = ["4", "5", "6", "7", "8"];
  static Map<int, Image> hintImg4 = {};

  static String problem5 =
      '''다음은 어느 봉사 동아리의 학생들의 한 달 동안의 봉사 시간을 나타낸 조사하여 나타낸 히스토그램이다.
한달 동안의 봉사 시간이 6시간 이상 12시간 미만인 학생의 수는?''';
  static List<String> hints5 = [
    r"히스토그램은 가로축에 계급, 세로축에 도수를 표시하여 각 계급의 크기를 가로로, 도수를 세로로 하는 직사각형을 그린 그래프이다.",
    r"히스토그램의 계급을 활용해 해당 범위 내 도수의 합을 구한다",
    r"한달 동안의 봉사 시간이 6시간 이상, 9시간 미만인 학생의 수는 $\square$명이고, 9시간 이상, 12시간 미만인 학생의 수는 $\square$명이므로 한달 동안 봉사시간이 6시간 이상 12시간 미만인 학생의 수는 총 $\square$명이다."
  ];
  static List<Image> images5 = [Image.asset('assets/problem_image/5.png')];
  static List<String> choices5 = ["11", "13", "15", "17", "19"];
  static Map<int, Image> hintImg5 = {};

  static String problem6 =
      r'그림과 같이 삼각형 $ABC$ 의 외심을 $O$ 라 하자. $\angle OBC = 17\degree$,  $\angle OCA=52\degree$ 일 때, $\angle OAB$ 의 크기는?';
  static List<String> hints6 = ["hint1", "hint2", "hint3"];
  static List<Image> images6 = [Image.asset('assets/problem_image/6.png')];
  static List<String> choices6 = ["18", "19", "20", "21", "22"];
  static Map<int, Image> hintImg6 = {};

  static String problem7 =
      r'일차부등식 ${x+5\over2} - x \leq a $ 의 해가 $x \geq 4$ 일 때, 실수 $a$ 의 값은?';
  static List<String> hints7 = ["hint1", "hint2", "hint3"];
  static List<Image> images7 = [];
  static List<String> choices7 = [
    r"$1\over8$",
    r"$1\over4$",
    r"$3\over8$",
    r"$1\over2$",
    r"$5\over8$",
  ];

  static Map<int, Image> hintImg7 = {};

  static String problem8 =
      '그림과 같이 밑면의 반지름의 길이가 3이고 높이가 8인 원뿔과 밑면의 반지름의 길이가 2인 원기둥이 있다. 두 입체도형의 부피가 같을 때, 원기둥의 겉넓이는?';
  static List<String> hints8 = ["hint1", "hint2", "hint3"];
  static List<Image> images8 = [Image.asset('assets/problem_image/8.png')];
  static List<String> choices8 = [
    r"$32\pi$",
    r"$34\pi$",
    r"$36\pi$",
    r"$38\pi$",
    r"$40\pi$"
  ];
  static Map<int, Image> hintImg8 = {};

  static String problem9 =
      r'두 일차방정식 $ax+4y=12$ , $2x+ay=a+5$ 의 그래프의 교점이 $y$ 축 위에 있을 때, 상수 $a$ 의 값은?';
  static List<String> hints9 = ["hint1", "hint2", "hint3"];
  static List<Image> images9 = [];
  static List<String> choices9 = ["2", r"$5\over2$", "3", r"$7\over2$", "4"];
  static Map<int, Image> hintImg9 = {};

  static String problem10 = r'$2-\sqrt6$ 보다 크고 $5+\sqrt15$ 보다 작은 정수의 개수는?';
  static List<String> hints10 = ["hint1", "hint2", "hint3"];
  static List<Image> images10 = [];
  static List<String> choices10 = ["7", "8", "9", "10", "11"];

  static Map<int, Image> hintImg10 = {};

  static String problem11 =
      r'세 변의 길이가 각각 $x,x+1,x+3$ 인 삼각형이 직각삼각형일때, $x$ 의 값은? (단, $x > 2)$';
  static List<String> hints11 = ["hint1", "hint2", "hint3"];
  static List<Image> images11 = [];
  static List<String> choices11 = [
    r"$2\sqrt3$",
    r"$2+\sqrt3$",
    r"$1+2\sqrt3$",
    r"$3\sqrt3$",
    r"$2+2\sqrt3$"
  ];

  static Map<int, Image> hintImg11 = {};

  static String problem12 =
      r'어느 학교에서 학생들에게 나누어 줄 구슬을 구입하였다. 구입한 구슬을 한 상자에 250개씩 $n$ 개의 상자에 담았더니 50개의 구슬이 남았고, 한 상자에 200개씩 $n+1$ 개의 상자에 담았더니 100개의 구슬이 남았다. 이 학교에서 구입한 구슬의 총 개수는?';
  static List<String> hints12 = ["hint1", "hint2", "hint3"];
  static List<Image> images12 = [];
  static List<String> choices12 = ["800", "1050", "1300", "1550", "1800"];
  static Map<int, Image> hintImg12 = {};

  static String problem13 =
      r'두 이차방정식 $x^2-x-2=0$, $2x^2+kx-6=0$ 이 공통인 해를 갖도록 하는 모든 실수 $k$ 의 값의 합은?';
  static List<String> hints13 = ["hint1", "hint2", "hint3"];
  static List<Image> images13 = [];
  static List<String> choices13 = ["-5", "-4", "-3", "-2", "-1"];

  static Map<int, Image> hintImg13 = {};

  static String problem14 =
      r'''그림과 같이 반비례 관계 $y={a\over x}$ ($a>0$) 의 그래프가 두 직선 $x=2,y=2$ 와 만나는 점을 각각 $A,B$ 라 하자. 점 $C(2,2)$ 에 대하여 사각형 $OACB$ 의 넓이가 $22\over7$ 일 때, 상수 $a$ 의 값은?

(단, $O$ 는 원점이고, 점 $A$ 의 $y$ 좌표는 2보다 작다.)''';
  static List<String> hints14 = ["hint1", "hint2", "hint3"];
  static List<Image> images14 = [Image.asset('assets/problem_image/14.png')];
  static List<String> choices14 = [
    r"$6\over7$",
    "1",
    r"$8\over7$",
    r"$9\over7$",
    r"$10\over7$"
  ];

  static Map<int, Image> hintImg14 = {};

  static String problem15 =
      r'''다음은 어느 학급 학생 20명의 수학 과목의 중간고사 점수와 기말고사 점수에 대한 산점도이다.
위의 산점도에 대하여 <보기>에서 옳은 것만을 있는 대로 고른것은?
''';
  static List<String> hints15 = ["hint1", "hint2", "hint3"];
  static List<Image> images15 = [
    Image.asset('assets/problem_image/15_1.png'),
    Image.asset('assets/problem_image/15_2.png')
  ];
  static List<String> choices15 = ["ㄱ", "ㄱ,ㄴ", "ㄱ,ㄷ", "ㄴ,ㄷ", "ㄱ,ㄴ,ㄷ"];
  static Map<int, Image> hintImg15 = {};

  static String problem16 =
      r'서로 다른 네 실수 $a, b, {1\over6},{2\over3}$ 에 대응하는 점을 수직선 위에 나타내면 이웃한 두 점 사이의 거리가 모두 같다. $ab <0$ 일 때, $a+b$ 의 최대값은?';
  static List<String> hints16 = ["hint1", "hint2", "hint3"];
  static List<Image> images16 = [];
  static List<String> choices16 = [
    r"$3\over4$",
    r"$5\over6$",
    r"$11\over12$",
    "1",
    r"$13\over12$"
  ];
  static Map<int, Image> hintImg16 = {};

  static String problem17 =
      r'한 개의 주사위를 두 번 던져서 나오는 눈의 수를 차례로 $a,b$ 라 하자. $a^2\times3^b\times5$ 가 $2^2\times3^5$ 의 배수일 확률은?';
  static List<String> hints17 = ["hint1", "hint2", "hint3"];
  static List<Image> images17 = [];
  static List<String> choices17 = [
    r"$1\over6$",
    r"$7\over36$",
    r"$2\over9$",
    r"$1\over4$",
    r"$5\over 18$"
  ];
  static Map<int, Image> hintImg17 = {};

  static String problem18 =
      r'''그림과 같이 $\angle ABC = 60\degree$ 인 삼각형 $ABC$ 의 두 변 $AB,AC$ 의 중점을 각각 $D,E$ 라 하자. 선분 $DE$ 를 지름으로 하는 원이 선분 $BC$ 와 접할 때, 이 원이 선분 $AB$ 와 만나는 점 중 $D$ 가 아닌 점을 $F$ 라 하자.
다음은 삼각형 $ABC$ 의 넓이가 16일 때, 삼각형 $AFE$ 의 넓이를 구하는 과정이다.
위의 (가), (나), (다)에 알맞은 수를 각각 a, b, c 라 할 때, $a\times b\times c$ 의 값은?''';
  static List<String> hints18 = ["hint1", "hint2", "hint3"];
  static List<Image> images18 = [
    Image.asset('assets/problem_image/18_1.png'),
    Image.asset('assets/problem_image/18_2.png')
  ];
  static List<String> choices18 = [
    r"$5\sqrt3$",
    r"$6\sqrt3$",
    r"$7\sqrt3$",
    r"$8\sqrt3$",
    r"$9\sqrt3$"
  ];

  static Map<int, Image> hintImg18 = {};

  static String problem19 =
      r'그림과 같이 $AB=AC$ 인 이등변삼각형 $ABC$ 에 외접하는 원이 있다. 선분 $AC$ 위의 점 $D$에 대하여 원과 직선 $BD$가 만나는 점 중 $B$가 아닌 점을 $E$라 하자. $AE=2BC$, $CD=1$ 이고, $\angle ADB + \angle AEB=180\degree$일 때, 선분 $BC$ 의 길이는?';
  static List<String> hints19 = ["hint1", "hint2", "hint3"];
  static List<Image> images19 = [Image.asset('assets/problem_image/19.png')];
  static List<String> choices19 = [
    r"$3-\sqrt2$",
    r"$7\over3$",
    r"$1+\sqrt2$",
    r"$5\over2$",
    r"$4-\sqrt2$"
  ];
  static Map<int, Image> hintImg19 = {};

  static String problem20 =
      r'''그림과 같이 제1사분면 위의 점 $A$ 를 꼭짓점으로 하는 이차함수 $y=ax^2+bx$ 의 그래프가 직선 $x=3$ 에 대하여 대칭이다. 점 $B(0,{10\over3})$ 에서 선분 $OA$ 에 내린 수선의 발 $H$ 에 대하여 $BH = 2$ 일 때, $a+b$ 의 값은?

(단, $a,b$ 는 상수이고, O 는 원점이다.)''';
  static List<String> hints20 = ["hint1", "hint2", "hint3"];
  static List<Image> images20 = [Image.asset('assets/problem_image/20.png')];
  static List<String> choices20 = [
    r"$20\over9$",
    r"$7\over3$",
    r"$22\over9$",
    r"$23\over9$",
    r"$8\over3$"
  ];
  static Map<int, Image> hintImg20 = {};

  static String problem21 =
      r'''그림과 같이 삼각형 $ABC$ 에서 선분 $AB$ 위의 점 $D$ 에 대하여 $BD=2AD$ 이다. 점 $A$  에서 선분 $CD$ 에 내린 수선의 발 $E$ 에 대하여 $AE=4, BE=CE=10$ 일 때, 
      삼각형 $ABC$ 의 넓이는? <br> (단, $∠CAB > 90\degree$)''';
  static List<String> hints21 = ["hint1", "hint2", "hint3"];
  static List<Image> images21 = [Image.asset('assets/problem_image/21.png')];
  static List<String> choices21 = ["69", "72", "75", "78", "81"];

  static Map<int, Image> hintImg21 = {};

  static String problem22 =
      r'일차함수 $y=3x+a$ 의 그래프가 점 (-3,2)를 지날 때, 상수 $a$ 의 값을 구하시오.';
  static List<String> hints22 = ["hint1", "hint2", "hint3"];
  static List<Image> images22 = [];
  static List<String> choices22 = [];
  static Map<int, Image> hintImg22 = {};

  static String problem23 =
      r'다항식 $x^2-2x-80$ 이 $x+a$ 를 인수로 가진다. $a$ 가 자연수일 때, $a$ 의 값을 구하시오.';
  static List<String> hints23 = ["hint1", "hint2", "hint3"];
  static List<Image> images23 = [];
  static List<String> choices23 = [];
  static Map<int, Image> hintImg23 = {};
  static String problem24 =
      r'그림과 같이 오각형 $ABCDE$ 에서 $\angle A = 105\degree, \angle B = x\degree, \angle C = y\degree, \angle D = 109\degree, \angle E = 92\degree$일 때, $x+y$ 의 값을 구하시오.';
  static List<String> hints24 = ["hint1", "hint2", "hint3"];
  static List<Image> images24 = [Image.asset('assets/problem_image/24.png')];
  static List<String> choices24 = [];
  static Map<int, Image> hintImg24 = {};

  static String problem25 = r'''다음 조건을 만족시키는 두 자리의 자연수 $n$ 의 최댓값을 구하시오.
<br>
(가) $n$ 은 4의 배수이다.
<br>
(나) $n$ 의 소인수의 개수가 3이다.''';
  static List<String> hints25 = ["hint1", "hint2", "hint3"];
  static List<Image> images25 = [];
  static List<String> choices25 = [];
  static Map<int, Image> hintImg25 = {};
  static String problem26 =
      r'''그림과 같이 길이가 1인 선분 $AB$ 위의 점 $C$에 대하여 선분 $AC$ 를 한 변으로 하는 정사각형 $ACDE$ 가 있다. 선분 $CD$ 를 삼등분하는 점 중 점 $D$ 에 가까운 점을 $F$ 라 하자. 정사각형 $ACDE$ 의 넓이와 삼각형 $BFC$ 의 넓이의 합이 $5\over8$ 일 때, $AC = {q\over p}$ 이다. $p+q$ 의 값을 구하시오.

(단, $p,q$ 는 서로소인 자연수)''';
  static List<String> hints26 = ["hint1", "hint2", "hint3"];
  static List<Image> images26 = [Image.asset('assets/problem_image/26.png')];
  static List<String> choices26 = [];
  static Map<int, Image> hintImg26 = {};
  static String problem27 =
      r'''그림과 같이 반지름의 길이가 2이고 중심각의 크기가 $90\degree$인 부채꼴 $OAB$ 가 있다. 선분 $OA$ 를 지름으로 하는 반원의 호 위의 점 $P$ 에 대하여 직선 $OP$ 가 호 $AB$ 와 만나는 점을 $Q$ 라 하고, 점 $Q$ 에서 선분 $OA$ 에 내린 수선의 발을 $H$ 라 하자. $∠QOA = 30\degree$ 일 때, 삼각형 $PHQ$ 의 넓이는 ${a\sqrt3-b}\over4$ 이다. $a+b$ 의 값을 구하시오.

(단, $a,b$ 는 자연수이다.)''';
  static List<String> hints27 = ["hint1", "hint2", "hint3"];
  static List<Image> images27 = [Image.asset('assets/problem_image/27.png')];
  static List<String> choices27 = [];
  static Map<int, Image> hintImg27 = {};

  static String problem28 = r'''다음은 8명의 학생이 3년 동안 읽은 책의 권수를 조사하여 나타낸 자료이다.
이 자료의 중앙값과 평균이 모두 7일 때, 분산을 구하시오.''';
  static List<String> hints28 = ["hint1", "hint2", "hint3"];
  static List<Image> images28 = [Image.asset('assets/problem_image/28.png')];
  static List<String> choices28 = [];
  static Map<int, Image> hintImg28 = {};

  static String problem29 =
      r'''좌표평면에서 이차항의 계수가 양수인 이차함수 $y=f(x)$ 의 그래프 위의 두 점 $A, B$ 가 다음 조건을 만족시킨다.
이차함수 $y=f(x)$ 의 그래프 위의 점 $D$ 에 대하여 삼각형 $ADB$ 가 $∠ADB=90\degree$ 인 이등변삼각형이고 넓이가 16일 때, $f(8)$ 의 값을 구하시오.''';
  static List<String> hints29 = ["hint1", "hint2", "hint3"];
  static List<Image> images29 = [Image.asset('assets/problem_image/29.png')];
  static List<String> choices29 = [];
  static Map<int, Image> hintImg29 = {};

  static String problem30 =
      r'''그림과 같이 $AD//BC$ 인 사다리꼴 $ABCD$ 에서 두 대각선의 교점을 $E$ 라 하자. 점 $E$를 지나고 선분 $AD$ 와 평행한 직선이 선분 $CD$와 만나는 점을 $F$라 하고, 두 선분 $AC, BF$ 의 교점을 $G$ 라 하자. $AD=4,EF=3$ 일 때, 사다리꼴 $ABCD$ 의 넓이는 삼각형 $EGF$ 의 넓이의 $k$ 배이다. $9k$ 의 값을 구하시오.''';
  static List<String> hints30 = ["hint1", "hint2", "hint3"];
  static List<Image> images30 = [Image.asset('assets/problem_image/30.png')];
  static List<String> choices30 = [];

  static Map<int, Image> hintImg30 = {};
  // static String _convert2flutterTex(String text){

  // }
  static _convert2FlutterTexString(String text) {
    String converted = "";
    int index = 0;

    for (var i = 0; i < text.length; i++) {
      if (text[i] == '\$') {
        if (index % 2 == 0) {
          converted += "\\(";
        } else {
          converted += "\\)";
        }
        index++;
      } else {
        converted += text[i];
      }
    }

    return converted;
  }

  static _convert2FlutterTexListSting(List<String> listString) {
    List<String> convertedList = [];

    for (var text in listString) {
      int index = 0;
      String converted = "";

      for (var i = 0; i < text.length; i++) {
        if (text[i] == '\$') {
          if (index % 2 == 0) {
            converted += "\\(";
          } else {
            converted += "\\)";
          }
          index++;
        } else {
          converted += text[i];
        }
      }
      convertedList.add(converted);
    }

    return convertedList;
  }

  static List<String> listProblem = [
    _convert2FlutterTexString(problem1),
    _convert2FlutterTexString(problem2),
    _convert2FlutterTexString(problem3),
    _convert2FlutterTexString(problem4),
    _convert2FlutterTexString(problem5),
    _convert2FlutterTexString(problem6),
    _convert2FlutterTexString(problem7),
    _convert2FlutterTexString(problem8),
    _convert2FlutterTexString(problem9),
    _convert2FlutterTexString(problem10),
    _convert2FlutterTexString(problem11),
    _convert2FlutterTexString(problem12),
    _convert2FlutterTexString(problem13),
    _convert2FlutterTexString(problem14),
    _convert2FlutterTexString(problem15),
    _convert2FlutterTexString(problem16),
    _convert2FlutterTexString(problem17),
    _convert2FlutterTexString(problem18),
    _convert2FlutterTexString(problem19),
    _convert2FlutterTexString(problem20),
    _convert2FlutterTexString(problem21),
    _convert2FlutterTexString(problem22),
    _convert2FlutterTexString(problem23),
    _convert2FlutterTexString(problem24),
    _convert2FlutterTexString(problem25),
    _convert2FlutterTexString(problem26),
    _convert2FlutterTexString(problem27),
    _convert2FlutterTexString(problem28),
    _convert2FlutterTexString(problem29),
    _convert2FlutterTexString(problem30),
  ];

  static List<List<String>> listHints = [
    _convert2FlutterTexListSting(hints1),
    _convert2FlutterTexListSting(hints2),
    _convert2FlutterTexListSting(hints3),
    _convert2FlutterTexListSting(hints4),
    _convert2FlutterTexListSting(hints5),
    _convert2FlutterTexListSting(hints6),
    _convert2FlutterTexListSting(hints7),
    _convert2FlutterTexListSting(hints8),
    _convert2FlutterTexListSting(hints9),
    _convert2FlutterTexListSting(hints10),
    _convert2FlutterTexListSting(hints11),
    _convert2FlutterTexListSting(hints12),
    _convert2FlutterTexListSting(hints13),
    _convert2FlutterTexListSting(hints14),
    _convert2FlutterTexListSting(hints15),
    _convert2FlutterTexListSting(hints16),
    _convert2FlutterTexListSting(hints17),
    _convert2FlutterTexListSting(hints18),
    _convert2FlutterTexListSting(hints19),
    _convert2FlutterTexListSting(hints20),
    _convert2FlutterTexListSting(hints21),
    _convert2FlutterTexListSting(hints22),
    _convert2FlutterTexListSting(hints23),
    _convert2FlutterTexListSting(hints24),
    _convert2FlutterTexListSting(hints25),
    _convert2FlutterTexListSting(hints26),
    _convert2FlutterTexListSting(hints27),
    _convert2FlutterTexListSting(hints28),
    _convert2FlutterTexListSting(hints29),
    _convert2FlutterTexListSting(hints30),
  ];

  static List<Map<int, Image>> listHintImg = [
    hintImg1,
    hintImg2,
    hintImg3,
    hintImg4,
    hintImg5,
    hintImg6,
    hintImg7,
    hintImg8,
    hintImg9,
    hintImg10,
    hintImg11,
    hintImg12,
    hintImg13,
    hintImg14,
    hintImg15,
    hintImg16,
    hintImg17,
    hintImg18,
    hintImg19,
    hintImg20,
    hintImg21,
    hintImg22,
    hintImg23,
    hintImg24,
    hintImg25,
    hintImg26,
    hintImg27,
    hintImg28,
    hintImg29,
    hintImg30,
  ];

  static List<List<Image>> listImages = [
    images1,
    images2,
    images3,
    images4,
    images5,
    images6,
    images7,
    images8,
    images9,
    images10,
    images11,
    images12,
    images13,
    images14,
    images15,
    images16,
    images17,
    images18,
    images19,
    images20,
    images21,
    images22,
    images23,
    images24,
    images25,
    images26,
    images27,
    images28,
    images29,
    images30,
  ];

  static List<List<String>> listChoices = [
    _convert2FlutterTexListSting(choices1),
    _convert2FlutterTexListSting(choices2),
    _convert2FlutterTexListSting(choices3),
    _convert2FlutterTexListSting(choices4),
    _convert2FlutterTexListSting(choices5),
    _convert2FlutterTexListSting(choices6),
    _convert2FlutterTexListSting(choices7),
    _convert2FlutterTexListSting(choices8),
    _convert2FlutterTexListSting(choices9),
    _convert2FlutterTexListSting(choices10),
    _convert2FlutterTexListSting(choices11),
    _convert2FlutterTexListSting(choices12),
    _convert2FlutterTexListSting(choices13),
    _convert2FlutterTexListSting(choices14),
    _convert2FlutterTexListSting(choices15),
    _convert2FlutterTexListSting(choices16),
    _convert2FlutterTexListSting(choices17),
    _convert2FlutterTexListSting(choices18),
    _convert2FlutterTexListSting(choices19),
    _convert2FlutterTexListSting(choices20),
    _convert2FlutterTexListSting(choices21),
    _convert2FlutterTexListSting(choices22),
    _convert2FlutterTexListSting(choices23),
    _convert2FlutterTexListSting(choices24),
    _convert2FlutterTexListSting(choices25),
    _convert2FlutterTexListSting(choices26),
    _convert2FlutterTexListSting(choices27),
    _convert2FlutterTexListSting(choices28),
    _convert2FlutterTexListSting(choices29),
    _convert2FlutterTexListSting(choices30),
  ];
  static List<String> listChoicesNumber = [
    "\\(\\textcircled{1}\\)",
    "\\(\\textcircled{2}\\)",
    "\\(\\textcircled{3}\\)",
    "\\(\\textcircled{4}\\)",
    "\\(\\textcircled{5}\\)",
  ];

  static String gap = "\\(\\quad\\)";
}
