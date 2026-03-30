# 2주차 강의 정리
## Stack
- Stack 안에 Stack 이 중첩될 수 있다
### ZStack vs Background
- 요소를 겹치게 놓아야 할 때 둘 다 사용 가능
- Layer 복잡할 땐 Zstack 사용하는 것을 추천

## Padding
- Padding : 각각의 요소와의 간격 설정
- `.padding()` 하면 자동으로 상하좌우 15만큼의 padding 생김 (기본값)
- `.background()` 보다 앞에서 설정하면 padding, 뒤에서 설정하면 margin 설정하는 것과 같음
- `.padding(.leading)` `.padding(.bottom)`

## Spacer
- Spacer : 상단 뒤로가기 버튼이나 하단 메뉴바 등을 만들 때 사용
- `Divider()` : 구분선

## ScrollView
- ScrollView : 사용자가 View 영역을 스크롤할 수 있게 만드는 것
- `ScrollView(.vertical, showsIndicators: false)` 
- showIndicators : 스크롤 바 표시 여부
- `.vertical` : 세로 스크롤, `.horizontal` : 가로 스크롤

## Init_Enum
- 일종의 객체를 선언하고 객체를 생성하는 것
- 요소 재사용 할때 유용함
- 파이썬과 유사하게, Init 함수로 객체 생성 가능

## ForEach
- 파이썬의 `for ... in ...` 과 유사함

## LazyVGrid, LazyHGrid
- List : 일반적 목록 배열 방식
- Grid : box 형태로 나타낼 수 있는 배열 방식 

## SafeArea
- 아이폰 노치 부분을 고려하기 위한 기능
- `ignoreSafeArea` : Safe Area 무시. 노치 부분에도 디자인하려면 필요함

## Button
- Action : 사용자가 버튼을 클릭할 때 실행되는 메서드
- Label : 텍스트, 아이콘 등 버튼을 라벨링하기
- `@State` : 상태 관리. 변경되면 자동으로 재렌더링
