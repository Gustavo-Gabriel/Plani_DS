import SwiftUI

@available(iOS 14, *)
extension Color {
    func isEqualTo(_ color: Color) -> Bool {
        let selfRed = self.components.red
        let selfGreen = self.components.green
        let selfBlue = self.components.blue
        let selfOpacity = self.components.opacity

        let comparedRed = color.components.red
        let comparedGreen = color.components.green
        let comparedBlue = color.components.blue
        let comparedOpacity = color.components.opacity

        return selfRed == comparedRed && selfGreen == comparedGreen && selfBlue == comparedBlue && selfOpacity == comparedOpacity
    }
}

@available(iOS 14, *)
extension Color {
    var components: (red: CGFloat, green: CGFloat, blue: CGFloat, opacity: CGFloat) {

        #if canImport(UIKit)
        typealias NativeColor = UIColor
        #elseif canImport(AppKit)
        typealias NativeColor = NSColor
        #endif

        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var opacity: CGFloat = 0

        guard NativeColor(self).getRed(&red, green: &green, blue: &blue, alpha: &opacity) else {
            return (0, 0, 0, 0)
        }

        return (red, green, blue, opacity)
    }
}
