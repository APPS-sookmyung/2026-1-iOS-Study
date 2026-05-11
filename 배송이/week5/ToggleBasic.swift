import SwiftUI

struct ToggleBasic: View {
	// property
	@State var toggleIsOn: Bool = false
	
    var body: some View {
		VStack {
			HStack {
				Text("로그인 상태:")
				Text(toggleIsOn ? "온라인" : "오프라인")
			} //: HStack
			Toggle(
				isOn: $toggleIsOn) {
					Text("로그인 상태 선택")
				} //: Toggle
				.toggleStyle(SwitchToggleStyle(tint: Color.red))
			Spacer()
		} //: VStack
		.padding(.horizontal, 100)
    }
}

//struct ToggleBasic_Previews: PreviewProvider {
//    static var previews: some View {
//        ToggleBasic()
//    }
//}

// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview {
    ToggleBasic()
}
