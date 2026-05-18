

import SwiftUI

struct IOSDeviceView3: View {
	
	// property
	// @StageObject 에서 선언한 viewModel 을 @EnvironmentOject 를 통해 가져오기
	@EnvironmentObject var viewModel: IOSDeviceViewModel
	
    var body: some View {
		ZStack {
			//background
			Color.blue.ignoresSafeArea()
			
			ScrollView {
				VStack (spacing: 20) {
					ForEach(viewModel.iOSDeviceArray) { item in
						Text(item.name)
					} //: LOOP
				} //:VSATCK
				.foregroundColor(.white)
				.font(.largeTitle)
			} //: SCROLL
		} //: ZSTACK
    }
}



// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview {
    IOSDeviceView3()
        .environmentObject(IOSDeviceViewModel())
}
