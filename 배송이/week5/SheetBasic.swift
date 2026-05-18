import SwiftUI

struct SheetBasic: View {
	// property
	@State var showSheet: Bool = false
	
    var body: some View {
		ZStack {
			// Background
			Color.green.ignoresSafeArea()
			
			// Content
			Button {
				showSheet.toggle()
			} label: {
				Text("Button")
					.foregroundColor(.green)
					.font(.headline)
					.padding()
					.background(Color.white)
					.cornerRadius(10)
			}
			// .sheet(isPresented: $showSheet) {
			// 	SheetBasic2()
			// }
			.fullScreenCover(isPresented: $showSheet) {
				SheetBasic2()
			}

		}
    }
}

//struct SheetBasic_Previews: PreviewProvider {
//    static var previews: some View {
//        SheetBasic()
//    }
//}

// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview {
    SheetBasic()
}
