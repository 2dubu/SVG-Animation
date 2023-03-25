import SwiftUI

extension Path {
    func scaled(for rect: CGRect) -> Path {
        let scaleX = rect.width/boundingRect.width
        let scaleY = rect.height/boundingRect.height
        let scale = min(scaleX, scaleY)
        return applying(CGAffineTransform(scaleX: scale, y: scale))
    }
    
    func scaled(for rect: CGRect, bounds: CGRect) -> Path {
        let pointScale = (rect.width >= rect.height) ?
        max(bounds.height, bounds.width) :
        min(bounds.height, bounds.width)
        let pointTransform = CGAffineTransform(scaleX: 1/pointScale, y: 1/pointScale)
        let path = Path(self.cgPath).applying(pointTransform)
        let multiplier = min(rect.width, rect.height)
        let transform = CGAffineTransform(scaleX: multiplier, y: multiplier)
        return path.applying(transform)
    }
    
    func scale(x: CGFloat, y: CGFloat) -> Path {
        return applying(CGAffineTransform(scaleX: x, y: y))
    }
}

extension Path {
    static var appleLogo: Path {
        var path = Path()
        path.move(to: CGPoint(x: 12.1520, y: 6.8960))
        path.addCurve(to: CGPoint(x: 8.1920, y: 5.8560),
                      control1: CGPoint(x: 11.2040, y: 6.8960),
                      control2: CGPoint(x: 9.7370, y: 5.8180))
        path.addCurve(to: CGPoint(x: 3.2310, y: 8.8700),
                      control1: CGPoint(x: 6.1520, y: 5.8830),
                      control2: CGPoint(x: 4.2820, y: 7.0390))
        path.addCurve(to: CGPoint(x: 4.7500, y: 20.9600),
                      control1: CGPoint(x: 1.1140, y: 12.5450),
                      control2: CGPoint(x: 2.6850, y: 17.9730))
        path.addCurve(to: CGPoint(x: 8.5420, y: 23.9990),
                      control1: CGPoint(x: 5.7630, y: 22.4140),
                      control2: CGPoint(x: 6.9580, y: 24.0500))
        path.addCurve(to: CGPoint(x: 12.4770, y: 23.0120),
                      control1: CGPoint(x: 10.0620, y: 23.9340),
                      control2: CGPoint(x: 10.6320, y: 23.0120))
        path.addCurve(to: CGPoint(x: 16.4370, y: 23.9600),
                      control1: CGPoint(x: 14.3080, y: 23.0120),
                      control2: CGPoint(x: 14.8270, y: 23.9990))
        path.addCurve(to: CGPoint(x: 20.1130, y: 21.0120),
                      control1: CGPoint(x: 18.0740, y: 23.9340),
                      control2: CGPoint(x: 19.1130, y: 22.4800))
        path.addCurve(to: CGPoint(x: 21.7750, y: 17.5970),
                      control1: CGPoint(x: 21.2690, y: 19.3240),
                      control2: CGPoint(x: 21.7490, y: 17.6870))
        path.addCurve(to: CGPoint(x: 18.5550, y: 12.7400),
                      control1: CGPoint(x: 21.7360, y: 17.5840),
                      control2: CGPoint(x: 18.5930, y: 16.3760))
        path.addCurve(to: CGPoint(x: 21.1520, y: 8.1810),
                      control1: CGPoint(x: 18.5290, y: 9.7000),
                      control2: CGPoint(x: 21.0350, y: 8.2460))
        path.addCurve(to: CGPoint(x: 16.7620, y: 5.8050),
                      control1: CGPoint(x: 19.7230, y: 6.0910),
                      control2: CGPoint(x: 17.5290, y: 5.8570))
        path.addCurve(to: CGPoint(x: 12.1520, y: 6.8950),
                      control1: CGPoint(x: 14.7620, y: 5.6490),
                      control2: CGPoint(x: 13.0870, y: 6.8950))
        path.closeSubpath()
        path.move(to: CGPoint(x: 15.5300, y: 3.8300))
        path.addCurve(to: CGPoint(x: 16.7750, y: 0.0000),
                      control1: CGPoint(x: 16.3730, y: 2.8180),
                      control2: CGPoint(x: 16.9300, y: 1.4030))
        path.addCurve(to: CGPoint(x: 13.2430, y: 1.8180),
                      control1: CGPoint(x: 15.5680, y: 0.0520),
                      control2: CGPoint(x: 14.1130, y: 0.8050))
        path.addCurve(to: CGPoint(x: 11.9700, y: 5.5320),
                      control1: CGPoint(x: 12.4630, y: 2.7140),
                      control2: CGPoint(x: 11.7890, y: 4.1560))
        path.addCurve(to: CGPoint(x: 15.5290, y: 3.8310),
                      control1: CGPoint(x: 13.3080, y: 5.6360),
                      control2: CGPoint(x: 14.6850, y: 4.8440))
        return path
    }
    
    static var swiftLogo: Path {
        var path = Path()
        path.move(to: CGPoint(x: 9.6140, y: 1.5000))
        path.addCurve(to: CGPoint(x: 10.8330, y: 8.2190),
                      control1: CGPoint(x: 9.6140, y: 1.5000),
                      control2: CGPoint(x: 12.1180, y: 4.6600))
        path.addCurve(to: CGPoint(x: 4.0520, y: 2.7190),
                      control1: CGPoint(x: 10.8330, y: 8.2190),
                      control2: CGPoint(x: 6.3250, y: 5.0240))
        path.addCurve(to: CGPoint(x: 7.8960, y: 7.6570),
                      control1: CGPoint(x: 4.0520, y: 2.7190),
                      control2: CGPoint(x: 6.8800, y: 6.8170))
        path.addCurve(to: CGPoint(x: 2.2710, y: 3.4070),
                      control1: CGPoint(x: 7.8960, y: 7.6570),
                      control2: CGPoint(x: 6.2010, y: 6.7550))
        path.addCurve(to: CGPoint(x: 8.9270, y: 10.5320),
                      control1: CGPoint(x: 2.2710, y: 3.4070),
                      control2: CGPoint(x: 6.8060, y: 9.3020))
        path.addCurve(to: CGPoint(x: 1.0000, y: 9.6260),
                      control1: CGPoint(x: 8.9270, y: 10.5320),
                      control2: CGPoint(x: 5.7110, y: 12.7230))
        path.addCurve(to: CGPoint(x: 8.6770, y: 14.0000),
                      control1: CGPoint(x: 1.0000, y: 9.6250),
                      control2: CGPoint(x: 3.4500, y: 14.0000))
        path.addCurve(to: CGPoint(x: 12.8960, y: 12.7810),
                      control1: CGPoint(x: 11.0250, y: 14.0000),
                      control2: CGPoint(x: 11.7320, y: 12.7810))
        path.addCurve(to: CGPoint(x: 14.8340, y: 14.0000),
                      control1: CGPoint(x: 14.1070, y: 12.7810),
                      control2: CGPoint(x: 14.8340, y: 14.0000))
        path.addCurve(to: CGPoint(x: 13.7710, y: 10.3120),
                      control1: CGPoint(x: 15.5410, y: 12.2730),
                      control2: CGPoint(x: 13.7710, y: 10.3120))
        path.addCurve(to: CGPoint(x: 9.6140, y: 1.5000),
                      control1: CGPoint(x: 13.7710, y: 10.3120),
                      control2: CGPoint(x: 15.4380, y: 5.0630))
        path.closeSubpath()
        return path
    }
    
    static var amazonLogo: Path {
        var path = Path()
        path.move(to: CGPoint(x: 25.4062, y: 3.0000))
        path.addCurve(to: CGPoint(x: 11.1875, y: 12.8125),
                      control1: CGPoint(x: 19.3047, y: 3.0000),
                      control2: CGPoint(x: 12.5859, y: 5.3125))
        path.addCurve(to: CGPoint(x: 12.0938, y: 14.0938),
                      control1: CGPoint(x: 10.9883, y: 13.6133),
                      control2: CGPoint(x: 11.5938, y: 13.9922))
        path.addLine(to: CGPoint(x: 18.3125, y: 14.6875))
        path.addCurve(to: CGPoint(x: 19.5000, y: 13.5000),
                      control1: CGPoint(x: 18.9141, y: 14.6875),
                      control2: CGPoint(x: 19.3008, y: 14.1016))
        path.addCurve(to: CGPoint(x: 24.5938, y: 9.5938),
                      control1: CGPoint(x: 20.0000, y: 10.8984),
                      control2: CGPoint(x: 22.1953, y: 9.5938))
        path.addCurve(to: CGPoint(x: 28.1875, y: 11.3125),
                      control1: CGPoint(x: 25.8945, y: 9.5938),
                      control2: CGPoint(x: 27.3867, y: 10.1133))
        path.addCurve(to: CGPoint(x: 28.9062, y: 15.9062),
                      control1: CGPoint(x: 29.0859, y: 12.6133),
                      control2: CGPoint(x: 28.9062, y: 14.4062))
        path.addLine(to: CGPoint(x: 28.9062, y: 16.8125))
        path.addCurve(to: CGPoint(x: 16.9062, y: 19.0000),
                      control1: CGPoint(x: 25.2070, y: 17.2109),
                      control2: CGPoint(x: 20.4062, y: 17.5000))
        path.addCurve(to: CGPoint(x: 10.0938, y: 29.4062),
                      control1: CGPoint(x: 12.9062, y: 20.6992),
                      control2: CGPoint(x: 10.0938, y: 24.2070))
        path.addCurve(to: CGPoint(x: 19.5938, y: 39.3125),
                      control1: CGPoint(x: 10.0938, y: 36.0078),
                      control2: CGPoint(x: 14.2930, y: 39.3125))
        path.addCurve(to: CGPoint(x: 30.0938, y: 34.5938),
                      control1: CGPoint(x: 24.0938, y: 39.3125),
                      control2: CGPoint(x: 26.5938, y: 38.1953))
        path.addCurve(to: CGPoint(x: 33.8125, y: 38.9062),
                      control1: CGPoint(x: 31.2930, y: 36.2930),
                      control2: CGPoint(x: 31.7109, y: 37.1055))
        path.addCurve(to: CGPoint(x: 34.4062, y: 39.0938),
                      control1: CGPoint(x: 34.0117, y: 39.0078),
                      control2: CGPoint(x: 34.2070, y: 39.0938))
        path.addCurve(to: CGPoint(x: 35.3125, y: 38.8125),
                      control1: CGPoint(x: 34.7070, y: 39.0938),
                      control2: CGPoint(x: 35.0117, y: 39.0117))
        path.addLine(to: CGPoint(x: 35.3125, y: 38.9062))
        path.addCurve(to: CGPoint(x: 40.1875, y: 34.5938),
                      control1: CGPoint(x: 36.6133, y: 37.8047),
                      control2: CGPoint(x: 38.8867, y: 35.6953))
        path.addCurve(to: CGPoint(x: 40.1875, y: 32.9062),
                      control1: CGPoint(x: 40.6875, y: 34.1953),
                      control2: CGPoint(x: 40.5859, y: 33.5078))
        path.addCurve(to: CGPoint(x: 37.8125, y: 27.0000),
                      control1: CGPoint(x: 38.9883, y: 31.4062),
                      control2: CGPoint(x: 37.8125, y: 30.0000))
        path.addLine(to: CGPoint(x: 37.8125, y: 17.0938))
        path.addCurve(to: CGPoint(x: 35.0000, y: 6.0938),
                      control1: CGPoint(x: 37.8125, y: 12.8945),
                      control2: CGPoint(x: 38.1016, y: 8.9922))
        path.addCurve(to: CGPoint(x: 25.4062, y: 3.0000),
                      control1: CGPoint(x: 32.5000, y: 3.7930),
                      control2: CGPoint(x: 28.5078, y: 3.0000))
        path.closeSubpath()
        path.move(to: CGPoint(x: 25.4062, y: 5.0000))
        path.addCurve(to: CGPoint(x: 33.5938, y: 7.5938),
                      control1: CGPoint(x: 28.1055, y: 5.0000),
                      control2: CGPoint(x: 31.5938, y: 5.6953))
        path.addCurve(to: CGPoint(x: 35.8125, y: 16.0938),
                      control1: CGPoint(x: 35.6953, y: 9.5938),
                      control2: CGPoint(x: 35.8125, y: 12.0938))
        path.addLine(to: CGPoint(x: 35.8125, y: 27.0000))
        path.addCurve(to: CGPoint(x: 38.1875, y: 33.5938),
                      control1: CGPoint(x: 35.8125, y: 30.3008),
                      control2: CGPoint(x: 37.0859, y: 32.0938))
        path.addCurve(to: CGPoint(x: 37.3125, y: 34.4062),
                      control1: CGPoint(x: 37.8867, y: 33.7930),
                      control2: CGPoint(x: 37.6133, y: 34.1055))
        path.addLine(to: CGPoint(x: 37.3125, y: 34.3125))
        path.addLine(to: CGPoint(x: 34.4062, y: 36.9062))
        path.addCurve(to: CGPoint(x: 32.1875, y: 34.3125),
                      control1: CGPoint(x: 33.3047, y: 35.9062),
                      control2: CGPoint(x: 32.8867, y: 35.3125))
        path.addCurve(to: CGPoint(x: 31.6875, y: 33.5938),
                      control1: CGPoint(x: 32.0859, y: 34.1133),
                      control2: CGPoint(x: 31.8867, y: 33.8945))
        path.addLine(to: CGPoint(x: 30.3125, y: 31.5938))
        path.addLine(to: CGPoint(x: 28.5938, y: 33.3125))
        path.addCurve(to: CGPoint(x: 19.5938, y: 37.4062),
                      control1: CGPoint(x: 25.4922, y: 36.5117),
                      control2: CGPoint(x: 23.4922, y: 37.4062))
        path.addCurve(to: CGPoint(x: 12.0938, y: 29.5000),
                      control1: CGPoint(x: 14.8945, y: 37.4062),
                      control2: CGPoint(x: 12.0938, y: 34.3984))
        path.addCurve(to: CGPoint(x: 17.6875, y: 20.9062),
                      control1: CGPoint(x: 12.0938, y: 25.5000),
                      control2: CGPoint(x: 14.0859, y: 22.5078))
        path.addCurve(to: CGPoint(x: 27.1875, y: 19.0938),
                      control1: CGPoint(x: 20.2891, y: 19.8047),
                      control2: CGPoint(x: 23.9883, y: 19.3945))
        path.addCurve(to: CGPoint(x: 29.0938, y: 18.9062),
                      control1: CGPoint(x: 27.8867, y: 18.9922),
                      control2: CGPoint(x: 28.4922, y: 19.0078))
        path.addLine(to: CGPoint(x: 30.9062, y: 18.6875))
        path.addLine(to: CGPoint(x: 30.9062, y: 15.5000))
        path.addCurve(to: CGPoint(x: 29.8125, y: 10.3125),
                      control1: CGPoint(x: 30.9062, y: 13.8984),
                      control2: CGPoint(x: 30.9141, y: 12.0117))
        path.addCurve(to: CGPoint(x: 24.5938, y: 7.6875),
                      control1: CGPoint(x: 28.7109, y: 8.7109),
                      control2: CGPoint(x: 26.7930, y: 7.6875))
        path.addCurve(to: CGPoint(x: 17.6875, y: 12.5938),
                      control1: CGPoint(x: 21.1953, y: 7.6875),
                      control2: CGPoint(x: 18.4883, y: 9.5938))
        path.addLine(to: CGPoint(x: 13.5000, y: 12.1875))
        path.addCurve(to: CGPoint(x: 25.4062, y: 5.0000),
                      control1: CGPoint(x: 15.1016, y: 5.9883),
                      control2: CGPoint(x: 21.6055, y: 5.0000))
        path.closeSubpath()
        path.move(to: CGPoint(x: 27.0938, y: 20.0000))
        path.addCurve(to: CGPoint(x: 17.5000, y: 28.4062),
                      control1: CGPoint(x: 19.1953, y: 20.5000),
                      control2: CGPoint(x: 17.5000, y: 24.8047))
        path.addCurve(to: CGPoint(x: 23.3125, y: 35.0000),
                      control1: CGPoint(x: 17.3984, y: 32.3047),
                      control2: CGPoint(x: 19.8125, y: 35.0000))
        path.addCurve(to: CGPoint(x: 29.5000, y: 31.0938),
                      control1: CGPoint(x: 25.8125, y: 35.0000),
                      control2: CGPoint(x: 28.1016, y: 33.4922))
        path.addCurve(to: CGPoint(x: 30.9062, y: 23.9062),
                      control1: CGPoint(x: 30.8984, y: 28.5938),
                      control2: CGPoint(x: 30.9062, y: 26.3047))
        path.addLine(to: CGPoint(x: 30.9062, y: 20.0000))
        path.closeSubpath()
        path.move(to: CGPoint(x: 27.0938, y: 22.0000))
        path.addLine(to: CGPoint(x: 28.9062, y: 22.0000))
        path.addLine(to: CGPoint(x: 28.9062, y: 23.4062))
        path.addCurve(to: CGPoint(x: 27.6875, y: 30.0938),
                      control1: CGPoint(x: 28.9062, y: 25.9062),
                      control2: CGPoint(x: 28.9883, y: 27.8945))
        path.addCurve(to: CGPoint(x: 23.3125, y: 33.0000),
                      control1: CGPoint(x: 26.6875, y: 31.8945),
                      control2: CGPoint(x: 25.0117, y: 33.0000))
        path.addCurve(to: CGPoint(x: 19.4062, y: 28.4062),
                      control1: CGPoint(x: 20.9141, y: 33.0000),
                      control2: CGPoint(x: 19.4062, y: 31.2070))
        path.addCurve(to: CGPoint(x: 27.0938, y: 22.0000),
                      control1: CGPoint(x: 19.4062, y: 23.7070),
                      control2: CGPoint(x: 23.0938, y: 22.3008))
        path.closeSubpath()
        path.move(to: CGPoint(x: 44.6875, y: 36.5938))
        path.addCurve(to: CGPoint(x: 39.8125, y: 38.0000),
                      control1: CGPoint(x: 43.0859, y: 36.5938),
                      control2: CGPoint(x: 41.2109, y: 37.0000))
        path.addCurve(to: CGPoint(x: 39.9062, y: 38.6875),
                      control1: CGPoint(x: 39.4141, y: 38.3008),
                      control2: CGPoint(x: 39.4062, y: 38.6875))
        path.addCurve(to: CGPoint(x: 45.8125, y: 38.9062),
                      control1: CGPoint(x: 41.5078, y: 38.4883),
                      control2: CGPoint(x: 45.1133, y: 38.0078))
        path.addCurve(to: CGPoint(x: 44.5000, y: 44.6875),
                      control1: CGPoint(x: 46.4141, y: 39.7070),
                      control2: CGPoint(x: 45.1016, y: 43.0859))
        path.addCurve(to: CGPoint(x: 45.0938, y: 45.0000),
                      control1: CGPoint(x: 44.3008, y: 45.1875),
                      control2: CGPoint(x: 44.6953, y: 45.3008))
        path.addCurve(to: CGPoint(x: 48.0000, y: 37.4062),
                      control1: CGPoint(x: 47.7930, y: 42.6992),
                      control2: CGPoint(x: 48.5000, y: 38.0078))
        path.addCurve(to: CGPoint(x: 44.6875, y: 36.5938),
                      control1: CGPoint(x: 47.6992, y: 36.9062),
                      control2: CGPoint(x: 46.2891, y: 36.5938))
        path.closeSubpath()
        path.move(to: CGPoint(x: 2.3125, y: 37.5000))
        path.addCurve(to: CGPoint(x: 2.1875, y: 38.3125),
                      control1: CGPoint(x: 2.0117, y: 37.5000),
                      control2: CGPoint(x: 1.7891, y: 38.0117))
        path.addCurve(to: CGPoint(x: 25.0000, y: 47.0000),
                      control1: CGPoint(x: 8.1875, y: 43.7109),
                      control2: CGPoint(x: 16.1992, y: 47.0000))
        path.addCurve(to: CGPoint(x: 43.6875, y: 41.3125),
                      control1: CGPoint(x: 31.3008, y: 47.0000),
                      control2: CGPoint(x: 38.5859, y: 45.0117))
        path.addCurve(to: CGPoint(x: 43.0000, y: 40.0938),
                      control1: CGPoint(x: 44.4883, y: 40.7109),
                      control2: CGPoint(x: 43.8008, y: 39.6953))
        path.addCurve(to: CGPoint(x: 25.5938, y: 43.6875),
                      control1: CGPoint(x: 37.3008, y: 42.4922),
                      control2: CGPoint(x: 31.1953, y: 43.6875))
        path.addCurve(to: CGPoint(x: 2.8125, y: 37.6875),
                      control1: CGPoint(x: 17.2930, y: 43.6875),
                      control2: CGPoint(x: 9.3125, y: 41.3867))
        path.addCurve(to: CGPoint(x: 2.3125, y: 37.5000),
                      control1: CGPoint(x: 2.6133, y: 37.4883),
                      control2: CGPoint(x: 2.4141, y: 37.5000))
        path.closeSubpath()
        return path
    }
}
