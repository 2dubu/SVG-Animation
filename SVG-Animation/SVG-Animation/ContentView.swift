import SwiftUI
// import SVG2Path

struct ContentView: View {
    @State private var endAmount: CGFloat = .zero
    @State private var isFilled: Bool = false
    @State private var scale: Double = 360
    
    private let color1 = Color(hex: "F88A36")
    private let color2 = Color(hex: "FD2020")
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            SVGShapeView(shape: .swiftLogo)
                .trim(from: 0, to: endAmount)
                .stroke(color1, lineWidth: 2)
            SVGShapeView(shape: .swiftLogo)
                .fill(LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .opacity(isFilled ? 1 : 0)
        }
        .rotation3DEffect(.degrees(scale), axis: (x: 0, y: 1, z: 0))
        .onAppear {
            withAnimation(.easeInOut(duration: 2)) {
                endAmount = 1
            }
            withAnimation(.easeInOut(duration: 2).delay(2)) {
                isFilled = true
            }
            withAnimation(.linear(duration: 3).repeatForever(autoreverses: false).delay(4)) {
                scale = 0
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
