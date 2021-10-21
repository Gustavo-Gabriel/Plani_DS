import SwiftUI

@available(iOS 13, *)
public struct Colors {
    static func colorWithName(_ name: String, alpha: CGFloat = 1.0) -> UIColor {
        return PlaniAssets.colorFromName(name, alpha: alpha)!
    }
    
    // MARK: - Blue colors
    
    /// Returns color with rgb #E5E4ED
    public static var blue100: Color {
        return Color(colorWithName("blue100"))
    }
    
    /// Returns color with rgb #9C9AAF
    public static var blue200: Color {
        return Color(colorWithName("blue200"))
    }
    
    /// Returns color with rgb #5D5B85
    public static var blue300: Color {
        return Color(colorWithName("blue300"))
    }
    
    /// Returns color with rgb #312E68
    public static var blue400: Color {
        return Color(colorWithName("blue400"))
    }
    
    // MARK: - Purple colors

    /// Returns color with rgb #9DB0FF
    public static var purple200: Color {
        return Color(colorWithName("purple200"))
    }
    
    /// Returns color with rgb #4664E6
    public static var purple300: Color {
        return Color(colorWithName("purple300"))
    }
    
    // MARK: - Orange colors

    /// Returns color with rgb #FAFAEE
    public static var orange100: Color {
        return Color(colorWithName("orange100"))
    }
    
    /// Returns color with rgb #F5B941
    public static var orange300: Color {
        return Color(colorWithName("orange300"))
    }
    
    // MARK: - Neutral colors

    /// Returns color with rgb #D6D6D6
    public static var gray100: Color {
        return Color(colorWithName("gray100"))
    }
    
    /// Returns color with rgb #8E8E93
    public static var gray200: Color {
        return Color(colorWithName("gray200"))
    }
    
    /// Returns color with rgb #636366
    public static var gray300: Color {
        return Color(colorWithName("gray300"))
    }
    
    /// Returns color with rgb #313136
    public static var gray400: Color {
        return Color(colorWithName("gray400"))
    }
    
    /// Returns color with rgb #1C1C1E
    public static var gray500: Color {
        return Color(colorWithName("gray500"))
    }
    
    /// Returns color with rgb #252525 and opacity 60%
    public static var gray600: Color {
        return Color(colorWithName("gray600"))
    }
    
    /// Returns color with rgb #000000
    public static var black: Color {
        return Color(colorWithName("black"))
    }
    
    /// Returns color with rgb #FFFFFF
    public static var white: Color {
        return Color(colorWithName("white"))
    }
}

@available(iOS 13, *)
extension Colors {
    static func hexStringToUIColor(_ hex: String, opacity: CGFloat = 1.0) -> UIColor {
        var cString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        var rgbValue: UInt64 = 0
        
        if cString.hasPrefix("#") {
            cString.remove(at: cString.startIndex)
        }
        
        if cString.count != 6 {
            return UIColor.gray
        }
        
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        let uicolor = UIColor(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                              green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                              blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                              alpha: opacity)
        
        return uicolor
    }
}
