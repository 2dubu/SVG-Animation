import SwiftUI
import SVG2Path

struct SVGShapeView: Shape {
    let shape: Path
//    let pathBounds: CGRect
    
    func path(in rect: CGRect) -> Path {
        return shape.scaled(for: rect)
    }
}
