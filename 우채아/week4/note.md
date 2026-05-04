# 4주차 강의 내용 정리
## Sheet
- 화면 전환: .sheet(부분 화면) .fullScreenCover(전체 화면) 방식
- ```@State Bool``` 으로 표시 상태 제어
- ```presentationMode```를 호출하여 화면 닫기

## NavigationView (NavigationStack)
- 계층 구조: NavigationStack을 이용한 뷰 계층 관리

## List
- ForEach와 Section을 조합하여 데이터를 그룹화하여 나열 가능
- .onDelete(삭제) .onMove(순서 변경) 
- ```EditButton()```으로 리스트 편집 가능

## Alert
- 팝업 알림
- .destructive, .cancel 등 
- 동적 처리: Enum 또는 상태 변수 값에 따라 다른 형태의 알림창 출력 가능

## ContextMenu
- 뷰를 길게 눌렀을 때 나타나는 메뉴 인터페이스 구현
- Button과 Label을 조합하여 아이콘 중심의 메뉴 구성 

## ActionSheet
- 화면 하단에서 올라오는 선택지 목록
- ```ActionSheet.Button``` 배열을 정의하여 공유, 신고, 삭제 등 액션 

## TextField & TextEditor
- 단일 행(TextField) 및 다중 행(TextEditor) 입력 방식
- 글자 수 조건 확인 후 버튼 활성화(disabled) 제어 로직 
- 입력 데이터를 배열(userNameData)에 추가하고 입력창을 초기화

## Toggle
- 스위치 형태의 On/Off 상태 바인딩 제어
- ```SwitchToggleStyle```을 활용하여 강조 색상(tint) 변경

## Picker
- ForEach 루프를 활용하여 다중 항목 중 하나를 선택하는 기능 구현
- ```.segmented``` 스타일 등을 적용

## ColorPicker
- 사용자가 인터페이스에서 직접 색상을 선택하도록 구현
- 동적 바인딩: 선택된 색상을 배경색 등 UI에 즉시 반영
