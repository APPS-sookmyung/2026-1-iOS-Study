import SwiftUI

struct PickerBasic: View {
	// property
	let typeOfPhone : [String] = [
		"애플", "삼성", "샤오미", "기타 브랜드"
	]
	
	@State var selectedIndex: Int = 0
	
    var body: some View {
		NavigationView {
			Form {
				Section {
					Picker(selection: $selectedIndex, label: Text("기종 선택")) {
						ForEach(0 ..< typeOfPhone.count, id: \.self) { index in
							Text(typeOfPhone[index])
						} // : Loop
					} // :Picker
					.pickerStyle(.segmented)
				} // : Section
				
				Text("핸드폰 제조사는 \(typeOfPhone[selectedIndex]) 입니다")
					.padding()
					.foregroundColor(.white)
					.background(Color.blue)
					.font(.headline)
					.padding()
					.frame(maxWidth: .infinity, alignment: .center)
				
			} // : From
			.navigationTitle(Text("현재 사용중인 핸드폰 기종은?"))
			.navigationBarTitleDisplayMode(.inline)
		} // : Navigation
    }
}

//struct PickerBasic_Previews: PreviewProvider {
//    static var previews: some View {
//        PickerBasic()
//    }
//}

// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview {
    PickerBasic()
}
