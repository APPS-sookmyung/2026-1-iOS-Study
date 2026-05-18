# 5주차 강의 내용 정리

## DatePicker
- 날짜 및 시간 선택 
- ```.compact``` ```.graphical``` ```.wheel``` 등
- ```displayedComponents``` 옵션 활용 
- ```DateFormatter``` 로 날짜 형식 변환 및 화면 출력

## Stepper
- 수치 값 제어
- ```onIncrement```, ```onDecrement``` 클로저 내 커스텀
- withAnimation 적용을 통한 UI 요소의 동적 크기 변화

## Slider
- 수치 선택을 위한 슬라이더 바 구현
- in 및 step 속성 활용하여 값의 범위와 증감 단위 설정 
- ```onEditingChanged``` 활용하여 사용자의 조작 상태 감지 

## TabView
- 하단 탭 바 기반 다중 화면 전환 및 계층 구조 구현
- ```.tabItem``` 활용하여 아이콘 및 텍스트 구성 
- tag와 selection 바인딩을 통한 프로그래밍 방식 페이지 이동 

## DarkMode
- 시스템 컬러 활용 라이트 및 다크 모드 자동 색상 대응 
- Asset Catalog 내 Adaptive Color 설정 및 커스텀 색상 관리
- ```@Environment(\.colorScheme)``` 감지 통한 개별 로직 분기 

## OnAppear
- 뷰가 화면에 나타나는 시점의 초기화 로직 및 이벤트 실행 제어
- ```DispatchQueue``` 활용하여 메인 스레드 내 실행 지연 기능 구현
- ```LazyVStack``` 항목 노출 시 개별 이벤트 발생 원리 확인 

## OnTapGesture
- 버튼 이외의 일반 뷰에 클릭 상호작용 부여하기
- ```count``` 파라미터 활용 단일 탭 및 다중 탭 감지 기능 구현
- 일반 Button 액션과 제스처 처리 방식의 시각적 및 기능적 차이 비교 
