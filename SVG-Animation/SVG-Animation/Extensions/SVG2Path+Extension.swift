import SwiftUI
import SVG2Path

extension SVG2Path {
    
    /// https://github.com/Kyome22/SVG2Path?ref=iosexample.com
    ///
    /// svg파일의 path를 넣어 실행시키면 해당 svg를 그리는 코드가 출력됩니다.
    /// 출력된 코드를 통해 Path+Extension에 type property로 선언해 사용하면 편하게 사용할 수 있습니다.
    static func generateCode(svgStr: String) {
        let svg2Path = SVG2Path()
        let data = svg2Path.extractPath(text: svgStr)
        
        if let data = data {
            data.paths.forEach { path in
                print(path.codeString())
            }
        } else {
            print("Invalid SVG path!")
        }
    }
}

// Usage
/*
    .onAppear {
        SVG2Path.generateCode(svgStr: """
            [svg text...]
        """)
    }
 */
