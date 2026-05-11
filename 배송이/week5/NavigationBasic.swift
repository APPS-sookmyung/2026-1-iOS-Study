import SwiftUI


struct NavigationBasic: View {
	
	// property
	@State var showSheet: Bool = false
	
    var body: some View {
		NavigationView {
			VStack {
				
				NavigationLink {
					// destination : 목적지 -> 어디로 페이지 이동할꺼냐
					SecondNavigationView()
				} label: {
					Text("Second Navigation 이동")
						.foregroundColor(.white)
						.font(.headline)
						.padding()
						.background(Color.blue)
						.cornerRadius(10)
				}
			} // : VStack
			// navigationTitle - 상단에 페이지 제목
			.navigationTitle("페이지 제목")
			// navigationBarTitleDisplayMode - 상단 페이지 제목 스타일
			// .automatic: 자동, inline - 상단에 작게, large : leading 쪽으로 크게
			.navigationBarTitleDisplayMode(.automatic)
			// navigationBarHidden - 네이게이션 타이틀, 바를 감추는 거임
			// .navigationBarHidden(true)
			
            // MARK: - navigationBarItems -> .toolbar
			// navigationBarItems 상단 좌우에 icon, text, button 을 사용해서 나타낼 수 있음 - iOS 16 이후 사용 중지 -> .toolbar{} 사용 권장
//			.navigationBarItems(
//				leading: Image(systemName: "line.3.horizontal"),
//				trailing: Button(action: {
//					showSheet.toggle()
//				}, label: {
//					Image(systemName: "gear")
//				}))
            
            // .toolbar 로 변환 -> iOS 16 부터 사용 권장
            .toolbar {
                // 네비게이션 바 왼쪽에 햄버거 메뉴 아이콘 배치
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "line.3.horizontal")
                }
                
                // 네비게이션 바 오른쪽에 설정 버튼 배치
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showSheet.toggle() // 시트 표시 토글
                    }, label: {
                        Image(systemName: "gear") // 설정 아이콘
                    })
                }
            }
		} // : NavigationView
		.sheet(isPresented: $showSheet) {
			ZStack {
				// background
				Color.green.ignoresSafeArea()
				
				// content
				Text("설정 페이지 입니다")
					.font(.largeTitle)
			}
		}
    }
}

//struct NavigationBasic_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationBasic()
//    }
//}


// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview {
    NavigationBasic()
}
