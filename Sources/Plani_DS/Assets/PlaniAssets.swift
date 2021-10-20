import UIKit

@available(iOS 13, *)
class PlaniAssets {
    static func colorFromName(_ name: String, alpha: CGFloat = 1.0) -> UIColor? {
        return UIColor(named: name,
                       in: Bundle(for: self),
                       compatibleWith: nil)?.withAlphaComponent(alpha)
    }
    
    static func imageFromName(_ name: String) -> UIImage? {
        return UIImage(named: name,
                       in: Bundle(for: self),
                       compatibleWith: nil)
    }
}
