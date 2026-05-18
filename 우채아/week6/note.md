# 6주차 학습 내용 정리

## MVVM
### 장점
- 개발 단계에서 UI, 로직 나눠서 작업 가능
- UI 코드 분리하여 로직에만 집중한 테스트 진행 가능
### 단점
- 일반화된 ViewModel을 초기 설계하기 어려움
- Model 데이터를 ViewModel에서 다시 작성함에 따라 추가 코드 발생

## Model
- 변수를 가져와서 다른 곳에서도 편리하게 사용

## ViewModel
### ObservedObject
- 이미 객체화된 것을 넘겨 받고 나서 사용
- 새로고침하면 값도 새로고침됨

### StateObject
- 객체 처음 초기화할 때 사용
- View와는 별개의 메모리 공간에 저장되는 데이터

## @EnvironmentObject
- 여러 View가 Object에서 데이터 가져와서 사용할 수 있음

## AppStorage
- DB처럼 간단한 데이터를 보관할 수 있음
- 보안에 취약하므로 민감한 데이터는 저장하지 말 것

