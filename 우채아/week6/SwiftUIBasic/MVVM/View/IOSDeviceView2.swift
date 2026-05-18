

import SwiftUI

struct IOSDeviceView2: View {
	
	// property
	let selectedItem: String
	
	
    var body: some View {
		ZStack {
			// background
			Color.orange.ignoresSafeArea()
			
			VStack (spacing: 20) {
				Text("당신이 선택한 기기는?")
					.font(.title)
				
				Text(selectedItem)
					.font(.headline)
					.foregroundColor(.orange)
					.padding()
					.padding(.horizontal)
					.background(Color.white)
					.cornerRadius(20)
				
				NavigationLink {
					IOSDeviceView3()
				} label: {
					Text("다음 페이지로 이동 -> ")
						.font(.headline)
						.foregroundColor(.orange)
						.padding()
						.padding(.horizontal)
						.background(Color.white)
						.cornerRadius(20)
				}

			} //: VSTACK
		} //:ZSTACK
    }
}


// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview {
    IOSDeviceView2(selectedItem: "아이폰")
}
