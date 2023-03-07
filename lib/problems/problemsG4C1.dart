import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProblemsG4C1 {
  static String problem1 =
      r"""$-\frac{\sqrt{12}}{4}+\sqrt6\div\frac{4\sqrt2}{3}+\frac{3}{4\sqrt3}$ 을 간단히 하면?""";

  static List<String> hints1 = [
    r"""- 제곱근 : 어떤 수 $x$ 를 제곱하여 $a$가 될 때 ($x^2=a$), $x$를 $a$의 제곱근 이라 한다. <br>
    - 양수 $a$의 제곱근은 양수와 음수 두 개가 있고, 이 중 양수인 것을 양의 제곱근, 음수인 것을 음의 제곱근이라 한다. <br>
- 근호($\sqrt{\space})$: $a$의 양의 제곱근을 표현 할 때, 다음과 같이 근호($\sqrt{\space})$ 사용하여 나타낸다. 이를 $\sqrt{a}$를 ‘제곱근 $a$’ 또는 ‘루트 $a$’라고 읽는다.""",
    r""" 근호를 포함한 식의 사칙연산

$a>0,b>0$일 때, <br>

(1) 제곱근의 곱셈: $\sqrt{a}\times\sqrt{b} = \sqrt{a}\sqrt{b} = \sqrt{ab}$ <br>

(2) 제곱근의 나눗셈: $\sqrt{a}\div\sqrt{b} = \frac{\sqrt{a}}{\sqrt{b}} = \sqrt{\frac{a}{b}}$ <br>

(3) $\sqrt{a^2b} = a\sqrt{b}$ <br>

(4) 분모의 유리화: $\frac{\sqrt{a}}{\sqrt{b}} = \frac{\sqrt{a}\sqrt{b}}{\sqrt{b}\sqrt{b}} = \frac{\sqrt{ab}}{b}$ <br>

근호를 포함한 식의 편리한 계산 방법 <br>

(1) 괄호가 있는 경우에는 분배법칙을 이용하여 괄호를 먼저 푼다. <br>

(2) 곱셈과 나눗셈을 앞에서부터 차례로 계산한다. 이때 나눗셈은 나누는 수의 역수를 곱하는 것으로 변형하면 계산이 편리하다.<br>

(3) 덧셈과 뺄셈은 다항식의 덧셈과 뺄셈에서 동류항까지 모아서 계산하듯이 근호 안의 수가 같은 것끼리 모아서 계산한다.""",
    r"""$-\frac{\sqrt{12}}{4}+\sqrt6\div\frac{4\sqrt2}{3}+\frac{3}{4\sqrt3}$ <br>

$=-\frac {\square\sqrt{3}}{4}+\sqrt6\times\frac{\square}{4\sqrt{2}}+\frac{3\sqrt{3}}{\square}$<br>

$=-\frac{\sqrt 3}{\square} + \frac{3\sqrt{3}}{4}+\frac{\sqrt{3}}{4}$<br>

$=\square$"""
  ];
  static List<Image> images1 = [];
  static List<String> choices1 = [
    r"$-\sqrt3$",
    r"$-\frac{\sqrt3}{2}$",
    r" $\frac{\sqrt3}{2}$",
    r"$\sqrt3$",
    r"$2\sqrt3$"
  ];
  static Map<int, Image> hintImg1 = {};

  static String problem2 =
      r"$\sqrt{144}+\sqrt{150}-\sqrt{256}+\sqrt{6} = a+b\sqrt{6}$일 때, 유리수 $a,b$에 대해서 $a+b$의 값은?";
  static List<String> hints2 = [
    r"""- 제곱근 : 어떤 수 $x$ 를 제곱하여 $a$가 될 때 ($x^2=a$), $x$를 $a$의 제곱근 이라 한다. <br>
    - 양수 $a$의 제곱근은 양수와 음수 두 개가 있고, 이 중 양수인 것을 양의 제곱근, 음수인 것을 음의 제곱근이라 한다.<br>
- 근호($\sqrt{\space})$: $a$의 양의 제곱근을 표현 할 때, 다음과 같이 근호($\sqrt{\space})$ 사용하여 나타낸다. 이를 $\sqrt{a}$를 ‘제곱근 $a$’ 또는 ‘루트 $a$’라고 읽는다.""",
    r"""근호를 포함한 식의 사칙연산 <br>

$a>0,b>0$일 때,<br>

(1) 제곱근의 곱셈: $\sqrt{a}\times\sqrt{b} = \sqrt{a}\sqrt{b} = \sqrt{ab}$<br>

(2) 제곱근의 나눗셈: $\sqrt{a}\div\sqrt{b} = \frac{\sqrt{a}}{\sqrt{b}} = \sqrt{\frac{a}{b}}$<br>

(3) $\sqrt{a^2b} = a\sqrt{b}$<br>

(4) 분모의 유리화: $\frac{\sqrt{a}}{\sqrt{b}} = \frac{\sqrt{a}\sqrt{b}}{\sqrt{b}\sqrt{b}} = \frac{\sqrt{ab}}{b}$<br>

근호를 포함한 식의 편리한 계산 방법<br>

(1) 괄호가 있는 경우에는 분배법칙을 이용하여 괄호를 먼저 푼다.<br>

(2) 곱셈과 나눗셈을 앞에서부터 차례로 계산한다. 이때 나눗셈은 나누는 수의 역수를 곱하는 것으로 변형하면 계산이 편리하다.<br>

(3) 덧셈과 뺄셈은 다항식의 덧셈과 뺄셈에서 동류항까지 모아서 계산하듯이 근호 안의 수가 같은 것끼리 모아서 계산한다.""",
    r"""$\sqrt{144}+\sqrt{150}-\sqrt{256}+\sqrt{6}$ <br>

$=12 + 5\sqrt{\square}-16+\sqrt{6}$ <br>

$=a+b\sqrt\square$"""
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

  static String problem3 =
      r' $\sqrt{11} < n < \sqrt{63}$ 을 만족시키는 자연수 $n$ 의 개수는? ';
  static List<String> hints3 = [
    r"""- 제곱근 : 어떤 수 $x$ 를 제곱하여 $a$가 될 때 ($x^2=a$), $x$를 $a$의 제곱근 이라 한다. <br>
    - 양수 $a$의 제곱근은 양수와 음수 두 개가 있고, 이 중 양수인 것을 양의 제곱근, 음수인 것을 음의 제곱근이라 한다.<br>
- 근호($\sqrt{\space})$: $a$의 양의 제곱근을 표현 할 때, 다음과 같이 근호($\sqrt{\space})$ 사용하여 나타낸다. 이를 $\sqrt{a}$를 ‘제곱근 $a$’ 또는 ‘루트 $a$’라고 읽는다.""",
    r"""- $a,b$가 양수일 때, $ a < b $ 이면, $\sqrt{a} < \sqrt{b}$ <br>

  - $a,b $가 양수일 때, $\sqrt{a}<\sqrt{b^2}$ 이면, $\sqrt{a} < b $ 이다.    """,
    r"""$ \sqrt{9} = \square < \sqrt{11}< n $ 이므로, $ \square < n $ <br>
$ n<\sqrt{63}<\sqrt{64}=\square$ 이므로, $n<\square $ <br>
따라서, $ \square < n < \square $를 만족하는 자연수의 개수는 $ \square $ 개 이다."""
  ];
  static List<Image> images3 = [];
  static List<String> choices3 = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];
  static Map<int, Image> hintImg3 = {};

  static String problem4 =
      r'수직선 위의 다섯 개의 점 A,B,C,D,E 중에서 $\sqrt{8}-1$에 대응하는 점으로 가장 적절한 것은?';
  static List<String> hints4 = [
    r"""- 제곱근 : 어떤 수 $x$ 를 제곱하여 $a$가 될 때 ($x^2=a$), $x$를 $a$의 제곱근 이라 한다. <br>
    - 양수 $a$의 제곱근은 양수와 음수 두 개가 있고, 이 중 양수인 것을 양의 제곱근, 음수인 것을 음의 제곱근이라 한다.<br>
- 근호($\sqrt{\space})$: $a$의 양의 제곱근을 표현 할 때, 다음과 같이 근호($\sqrt{\space})$ 사용하여 나타낸다. 이를 $\sqrt{a}$를 ‘제곱근 $a$’ 또는 ‘루트 $a$’라고 읽는다.""",
    r"""- $a,b$가 양수일 때, $ a < b $ 이면, $\sqrt{a} < \sqrt{b}$ <br>

  - $a,b $가 양수일 때, $\sqrt{a}<\sqrt{b^2}$ 이면, $\sqrt{a} < b $ 이다.    """,
    r"""$(\sqrt{4}=\square) < \sqrt{8}<(\sqrt{9}=\square)$ <br>

$\square-1 < \sqrt{8}-1<\square-1$<br>

따라서 수직선 상에서 $\sqrt{8}-1$을 대응하는 점은 정수 $\square$와  $\square$ 사이에 위치한다."""
  ];
  static List<Image> images4 = [Image.asset('assets/problem_image/G4C1P4.png')];
  static List<String> choices4 = ["A", "B", "C", "D", "E"];
  static Map<int, Image> hintImg4 = {};

  static String problem5 = '''다음 중 옳지 않은 것은?''';
  static List<String> hints5 = [
    r"""- 유한소수: 소수점 아래에 0이 아닌 숫자가 유한개인 소수 <br>
- 무한소수: 소수점 아래에 0이 아닌 숫자가 무한히 계속되는 소수 <br>
- 유리수: 두 정수의 비(분수)로 나타낼 수 있는 수 <br>
- 무리수: 두 정수의 비(분수)로 나타낼 수 없는 수 <br>
- 근호($\sqrt{\space})$: $a$의 양의 제곱근을 표현 할 때,양수""",
    r"양수 $a$에 대해 $\sqrt{a^2}=a$ 이다. ",
    r"근호를 사용하여 나타낸 수 중 근호 안의 수가 유리수를 제곱한 수면 유리수, 아니면 무리수인 것으로 알려져 있다."
  ];
  static List<Image> images5 = [];
  static List<String> choices5 = [
    "유한소수는 모두 유리수이다.",
    "무한소수 중에는 무리수도 있다.",
    "무리수를 소수로 나타내면 순환하지 않는 무한소수이다.",
    "근호를 사용하여 나타낸 수는 모두 무리수이다.",
    "유리수가 아닌 실수는 모두 무리수이다",
  ];
  static Map<int, Image> hintImg5 = {};

  static String problem6 = r'다음 그림과 같은 직각삼각형에서 $x$의 값을 근호를 사용하여 나타내시오.';
  static List<String> hints6 = [
    r"""- 근호($\sqrt{\space})$: $a$의 양의 제곱근을 표현 할 때, 다음과 같이 근호($\sqrt{\space})$ 사용하여 나타낸다. 이를 $\sqrt{a}$를 ‘제곱근 $a$’ 또는 ‘루트 $a$’라고 읽는다. <br>
- 직각삼각형: 한 각이 직각인 삼각형""",
    r"""- 피타고라스의 정리: 직각삼각형의 빗변 $c$의 제곱은 나머지 변 $a$와 $b$의 각각 제곱의 합과 같다. <br>
 $a^2+b^2=c^2$ <br>
- $a>0, b>0$일 때 $a=b$ 이면 $\sqrt{a}=\sqrt{b}$""",
    r"""$4^2+x^2=\square^2$ <br>

$x^2=\square^2-4^2$ <br>

$x=\sqrt{x^2}=\sqrt{\square^2-4^2}$다""",
  ];
  static List<Image> images6 = [Image.asset('assets/problem_image/G4C1P6.png')];
  static List<String> choices6 = [
    r"$2\sqrt{2}$",
    r"$\sqrt{3}$",
    r"$\sqrt{15}$",
    r"$2\sqrt{7}$",
    r"$\sqrt{33}$",
  ];
  static Map<int, Image> hintImg6 = {};

  static String problem7 =
      r'넓이가 $8a$인 정사각형 모양의 땅이 있다. 이 땅의 한 변의 길이가 $7$보다 작은 수가 되도록 하는 자연수 $a$의 개수는?';
  static List<String> hints7 = [
    "정사각형: 네 변의 길이가 모두 같고, 네 각의 크기가 모두 같은 사각형",
    r"""- 정사각형의 넓이($ S $)는 한 변의 길이$ (a)$의 제곱이다. 즉, $ S=a^2 $ <br>

- $ a,b $가 양수일 때, $ a < b $ 이면, $ \sqrt{a} < \sqrt{b} $ 그리고 그 역도 성립 한다.""",
    r"""정사각형의 한 변 길이를 $x$라고 하면, 문제에서 주어진 조건에 따라 <br>

$x<\square$ 이며, <br>

정사각형의 넓이 $S=x^2=\square$a <br>

따라서, $x=\sqrt{\square a}<7$<br>

$\square a<7^2$<br>

$a<\frac{49}{\square}$ 이므로 조건을 만족시키는 자연수 $a$의 개수는 $\square$다.""",
  ];
  static List<Image> images7 = [];
  static List<String> choices7 = [
    r"3",
    r"4",
    r"5",
    r"6",
    r"7",
  ];

  static Map<int, Image> hintImg7 = {};

  static String problem8 =
      r'아래 그림과 같이 튤립, 개나리, 진달래를 심은 정사각형 모양의 세 화단이 붙어 있다. 세 화단의  넓이는 각각 차례대로 $180 m^2$,  $48 m^2$,  $3 m^2$일 때, 전체 화단의 둘레의 길이를 구하시오.';
  static List<String> hints8 = [
    "정사각형: 네 변의 길이가 모두 같고, 네 각의 크기가 모두 같은 사각형",
    r"""- 정사각형의 넓이($S$)는 한 변의 길이($a)$의 제곱이다. 즉, $S=a^2$ <br>
- $a,b$가 양수일 때, $a=b$ 이면, $\sqrt{a} < \sqrt{b}$ 그리고 그 역도 성립한다.""",
    r"""전체 화단의 둘레의 길이를 $l$이라고 하고, 각 정사각형의 변의 길이를 $a,b,c$라고 하자. <br>

아래 그림과 같이 정사각형의 한 변의 아닌 선분의 길이를 각각 $x,y$라고 하자. <br> 
$l=3a+2b+3c+x+y$ <br>

$x=a-\square$ ,

$y=b-\square$<br>

$l$에 관한 식에 $x,y$의 관계식을 대입하면<br>

$l=3a+3b+3c+(a-\square)+(b-\square)=4a+\square b+\square c$<br>

문제의 주어진 조건에 따라 $a^2=180,\space b^2=48,\space c^2=3$<br>

$a=\square,\space b=\square,\space c=\square$<br>

$l$에 관한 식에 다시 $a,b,c$의 값을 대입하여 계산하면, 

$l=\square \sqrt{3}$""",
  ];
  static List<Image> images8 = [Image.asset('assets/problem_image/G4C1P8.png')];
  static List<String> choices8 = [
    r"$30\sqrt{3}$",
    r"$31\sqrt{3}$",
    r"$32\sqrt{3}$",
    r"$33\sqrt{3}$",
    r"$34\sqrt{3}$"
  ];
  static Map<int, Image> hintImg8 = {
    3: Image.asset('assets/hint_image/G4C1P8H3.png')
  };

  static String problem9 =
      r'$\sqrt{(\sqrt{5}-\sqrt{6})^2}-\sqrt{(2\sqrt{6}-\sqrt{45})^2}-\sqrt{(\sqrt{54}-2\sqrt{5})^2}$을 간단히 하라.';
  static List<String> hints9 = [
    r"""근호($\sqrt{\space})$: $a$의 양의 제곱근을 표현 할 때, 다음과 같이 근호($\sqrt{\space})$ 사용하여 나타낸다. 이를 $\sqrt{a}$를 ‘제곱근 $a$’ 또는 ‘루트 $a$’라고 읽는다.""",
    r"""- 근호를 포함한 식의 사칙연산 <br>

$a>0,b>0$일 때,<br>

(1) 제곱근의 곱셈: $\sqrt{a}\times\sqrt{b} = \sqrt{a}\sqrt{b} = \sqrt{ab}$<br>

(2) 제곱근의 나눗셈: $\sqrt{a}\div\sqrt{b} = \frac{\sqrt{a}}{\sqrt{b}} = \sqrt{\frac{a}{b}}$<br>

(3) $\sqrt{a^2b} = a\sqrt{b}$<br>

(4) 분모의 유리화: $\frac{\sqrt{a}}{\sqrt{b}} = \frac{\sqrt{a}\sqrt{b}}{\sqrt{b}\sqrt{b}} = \frac{\sqrt{ab}}{b}$ <br>

- 실수 $a$에 대해서 $\sqrt{a^2}=|a|$<br>
- 근호를 포함한 식의 덧셈과 뺄셈은 다항식의 덧셈과 뺄셈에서 동류항까지 모아서 계산하듯이 근호 안의 수가 같은 것끼리 모아서 계산한다.<br>

- $ a > b $이면 $|a-b|=a-b $,  $ a < b $이면 $ |a-b| = - (a-b) $ , """,
    r"""$(\sqrt{5}-\sqrt{6)}<0,\space (2\sqrt{6}-\sqrt{45})\space \square \space 0,\space (\sqrt{54}-2\sqrt{5})\space \square \space0$이므로,

$\sqrt{(\sqrt{5}-\sqrt{6})^2}-\sqrt{(2\sqrt{6}-\sqrt{45})^2}-\sqrt{(\sqrt{54}-2\sqrt{5})^2}\\= -(\sqrt{5}-\sqrt{6})-\{-(2\sqrt{6}-3\sqrt{5})\}-(3\sqrt{6}-2\sqrt{5})\\=-\sqrt{5}+\sqrt{6}+2\sqrt{6}-3\sqrt{5}-3\sqrt{6}+2\sqrt{5}\\=\square\sqrt{5}$"""
  ];
  static List<Image> images9 = [];
  static List<String> choices9 = [
    r"$-2\sqrt{5}$",
    r"$-\sqrt{6}$",
    r"$2\sqrt{6}$",
    r"$\sqrt{5}+2\sqrt{6}$",
    r"$3\sqrt{5}+\sqrt{6}$",
  ];
  static Map<int, Image> hintImg9 = {};

  static String problem10 =
      r'서로 다른 두 개의 주사위를 던져서 나온 눈의 수가 각각 $a,b$일 때, $4<\sqrt{ab}\leq6$일 확률은?';
  static List<String> hints10 = [
    r"""- 근호($\sqrt{\space})$: $a$의 양의 제곱근을 표현 할 때, 다음과 같이 근호($\sqrt{\space})$ 사용하여 나타낸다. 이를 $\sqrt{a}$를 ‘제곱근 $a$’ 또는 ‘루트 $a$’라고 읽는다. <br>
- 주사위: 각 면에 1~6개의 눈이 그려진 정육면체. 마주보는 면의 숫자의 합은 7이다. 주사위를 던졌을 때 나올 수 있는 숫자의 경우의 수는 6이다. 수학에서는 주사위를 던졌을 때 각 숫자가 나올 확률은 동일하다.""",
    r"""- $a,b$가 양수일 때, $a<b$ 이면, $\sqrt{a} < \sqrt{b}$ <br>
    - 역에 대해서도 성립한다.<br>
    - 다른 부등호에 대해서도 성립한다.<br>
- 경우의 수 곱의 법칙 : 두 사건 $A,B$에 대하여 사건 $A$가 일어나는 경우의 수가 $m$이고, 사건 $B$가 일어나는 경우의 수가 $n$이면 두 사건 $A,B$가 동시에 또는 연이어 일어나는 경우의 수는 $m\times n$이다. 단, 두 사건의 결과가 서로 영향을 주지 조건에서 성립한다.""",
    r"""서로 다른 두 개의 주사위를 던져서 나온 수가 각각 $a,b$이고 이를 순서쌍 $(a,b)$로 표현하자. <br>

$ 4<\sqrt{ab}\leq6$에서 $ \square < ab < \square $ <br>

이를 만족시키는 순서쌍 $(a,b)$를 구하면 다음과 같다.<br>

$(3,6),(\square,\square),(\square,\square),(\square,\square),(\square,\square),(\square,\square),(\square,\square),(\square,\square),(\square,\square),(\square,\square)$로 총 $10$개다.
<br>
위 사건의 확률을 구하기 위해 전체 경우의 수를 구하면<br>
$\square\times\square=36$<br>

따라서, 위 사건의 확률은 $\frac{10}{36}=\frac{5}{18}$""",
  ];
  static List<Image> images10 = [];
  static List<String> choices10 = [
    r" $\frac{1}{6}$",
    r"$\frac{2}{9}$",
    r"$\frac{5}{18}$",
    r" $\frac{1}{3}$",
    r"$\frac{7}{18}$",
  ];

  static Map<int, Image> hintImg10 = {};

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
  ];
  static List<String> listChoicesNumber = [
    "\\(\\textcircled{1}\\)",
    "\\(\\textcircled{2}\\)",
    "\\(\\textcircled{3}\\)",
    "\\(\\textcircled{4}\\)",
    "\\(\\textcircled{5}\\)",
  ];

  static String gap = "\\(\\quad\\)";

  static List<int> listAns = [3, 2, 4, 4, 4, 5, 4, 5, 1, 3];
}
