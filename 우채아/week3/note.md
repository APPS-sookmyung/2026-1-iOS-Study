# 3주차 강의 내용 정리
## @State
- @ : 프로퍼티가 저장되는 방식을 관리하는 코드를 추가
- @State : 변수가 변경될 때마다 View에 반영. 일종의 상태 관리

## Extract View
- View를 컴포넌트화 하는 방법
- 긴 코드를 하나의 컴포넌트로 만들어서 반복되는 코드나 코드의 길이를 줄인다

## @Binding
- @State를 Subview에서 사용하기 위한 Wrapper
- 자식 뷰에서 값을 바꾸면 부모 뷰의 값도 함께 바뀜
- 부모에서 넘겨줄 때 변수 앞에 $를 붙여서 전달
- ```BindingChild(backgroundColor: $backgroundColor)```

## 조건문
- if 문을 사용하여 특정 조건이 충족될 때만 뷰를 화면에 그리도록 제어

## 삼항연산자 (Ternary Operator)
- if-else 문을 한 줄로 간단하게 표현 가능
- 주로 .fill(), .frame(), .font() 같은 메서드 내부에서 상태에 따라 다른 값을 적용할 때 유용
- ```.fill(isAnimated ? Color.red : Color.blue)```

## Animation
- 방법 1 (withAnimation): 상태를 변경하는 코드 자체를 감싸서 전체적인 변화에 애니메이션 넣기
- 방법 2 (.animation): 특정 뷰의 속성 뒤에 모디파이어를 붙여 개별적으로 제어

### 속도 옵션
- .linear: 일정한 속도
- .easeIn / .easeOut: 서서히 시작하거나 서서히 멈춤
- .spring: 튕기는 듯한 물리적 효과 적용

## Transition 
- 뷰가 화면에 나타나거나(Insertion) 화면에서 사라질 때의 효과 지정
- if 조건문에 의해 뷰가 생성/삭제될 때 withAnimation 사용
### 종류
- .move: 특정 방향에서 들어오기
- .opacity: 투명도 조절
- .scale: 크기 조절
- .asymmetric: 나타날 때와 사라질 때의 효과를 다르게 설정 가능
