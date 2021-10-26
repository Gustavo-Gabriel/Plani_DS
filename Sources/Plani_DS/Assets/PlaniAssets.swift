import SwiftUI
import Foundation

@available(iOS 14, *)
final class PlaniAssets {
    static func colorFromName(_ name: String, opacity: Double = 1.0) -> Color? {
        return Color(name, bundle: .module).opacity(opacity)
    }
    
    static func imageFromName(_ name: String) -> UIImage? {
        return UIImage(named: name,
                       in: .module,
                       compatibleWith: nil)
    }
}
