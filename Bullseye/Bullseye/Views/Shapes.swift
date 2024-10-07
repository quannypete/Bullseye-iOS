import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                .strokeBorder(Color.blue, lineWidth: 20)
                .frame(width: 200, height: 100)
                .background(Color.green)
        }
    }
}

#Preview {
    Shapes()
}
