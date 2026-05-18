import SwiftUI

struct ColorPickerBasic: View {
	// property
	@State var backgroundColor: Color = .green
	
    var body: some View {
		ZStack {
			// background
			backgroundColor.ignoresSafeArea()
			
			ColorPicker(selection: $backgroundColor, supportsOpacity: false) {
				Text("원하는 색을 고르세요")
				
			}
			.padding()
			.background(Color.black)
			.cornerRadius(10)
			.foregroundColor(.white)
			.font(.headline)
			.padding(50)
		} // : ZStack
    }
}

//struct ColorPickerBasic_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorPickerBasic()
//    }
//}

// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview {
    ColorPickerBasic()
}
