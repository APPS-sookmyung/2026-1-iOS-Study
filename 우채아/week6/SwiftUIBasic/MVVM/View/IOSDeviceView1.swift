

import SwiftUI

struct IOSDeviceView1: View {
	
	// 처음 ViewModel 을 초기화 할때는 @StateObject 로 불러오기!
	@StateObject var viewModel: IOSDeviceViewModel = IOSDeviceViewModel()
	
	
    var body: some View {
		NavigationView {
			List {
				ForEach(viewModel.iOSDeviceArray) { item in
					NavigationLink {
						// destination
						IOSDeviceView2(selectedItem: item.name)
					} label: {
						Text(item.name)
					} //: LINK
				} //: LOOP
			} //: LIST
		} //: NAVIGATION
		// Navigation 하위 뷰에 ViewModel 을 environmentObject 로 넘겨줌
		.environmentObject(viewModel)
    }
}



// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview {
    IOSDeviceView1()
}
