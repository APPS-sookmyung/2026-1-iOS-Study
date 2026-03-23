# 1주차 내용 정리

## 유용한 단축키
- Cmd + 0 : 사이드바 열고 닫기
- Cmd + Option + P : Preview 새로고침

## Stack
- VStack : 뷰를 위에서 아래로 쌓음
- HStack : 뷰를 왼쪽에서 오른쪽으로 쌓음
- ZStack : 뷰를 Z축 방향으로 쌓음. 먼저 쓴 코드가 아래에 깔리고 그 위로 중첩
- 실제 앱 화면은 이 3가지 스택을 섞어서 구성한다.

## Font Size
- font size를 title, body, footnote 등 미리 정해진 변수로 지정하면 기기에 따라 자동으로 responsive
- .bold() == .fontWeight(.bold)

## 이탤릭체, 밑줄 등
```
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .fontWeight(.semibold)
                .underline(true, color: Color.red)
                .italic(true)
                .strikethrough(true)
```

## Shape
- Circle, Ellipse, Capsule, Rectangle, RoundedRectangle 등

## Color
### BasicColor
- `Color.색상` 으로 사용 가능

### PrimaryColor
- 자동으로 다크모드 지원됨
- `Color.primary`

### UIColor

### CustomColor

## Gradient
- 한 도형 안에 여러 개의 색을 표현 (그라데이션)
### Linear
```
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom)
```
### Raical
```
                    RadialGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.purple]),
                        center: .leading,
                        startRadius: 5,
                        endRadius: 300)
```
### Angular
```
                    AngularGradient(
                        gradient: Gradient(colors: [Color.blue, Color.green]),
                        center: .topLeading,
                        angle: .degrees(180 + 45))
                )
```

## Icon
### SF Symbols
- 미리 정해진 아이콘 파일을 사용할 수 있음
- Apple Developers 에서 다운

## Image
- Divider 로 영역 나누기
```
            Image("image")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .cornerRadius(150)
```

## Frame

## Background
