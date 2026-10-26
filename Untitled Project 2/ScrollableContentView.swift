import SwiftUI

struct ScrollableContentView<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 16) {
                content
            }
            .frame(maxWidth: .infinity)
            // الحوامش الداخلية إذا تبينها (أو تقدري تشيلينها لو ما تبين مسافات)
            .padding(.horizontal, 24)
            .padding(.top, 8)
            .padding(.bottom, 20)
        }
        // هذا السطر هو الحل الجذري: يجبر السكرول يكون على قد محتواه ولا يتمدد بشكل مزعج
        .fixedSize(horizontal: false, vertical: true)
    }
}

#Preview {
    ScrollableContentView {
        Text("عنصر تجريبي 1")
            .padding()
            .background(Color.white)
            .cornerRadius(12)
        
        Text("عنصر تجريبي 2")
            .padding()
            .background(Color.white)
            .cornerRadius(12)
    }
}
