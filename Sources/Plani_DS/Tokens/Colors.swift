import SwiftUI

@available(iOS 14, *)
public struct Colors {
    static func colorWithName(_ name: String, opacity: Double = 1.0) -> Color {
        if let color = PlaniAssets.colorFromName(name, opacity: opacity) {
            return color
        }
        
        return Color.clear
    }
    
    // MARK: - Blue colors
    
    /// Returns color with rgb #E5E4ED
    public static var blue100: Color {
        return colorWithName("blue100")
    }
    
    /// Returns color with rgb #9C9AAF
    public static var blue200: Color {
        return colorWithName("blue200")
    }
    
    /// Returns color with rgb #5D5B85
    public static var blue300: Color {
        return colorWithName("blue300")
    }
    
    /// Returns color with rgb #312E68
    public static var blue400: Color {
        return colorWithName("blue400")
    }
    
    // MARK: - Purple colors

    /// Returns color with rgb #9DB0FF
    public static var purple200: Color {
        return colorWithName("purple200")
    }
    
    /// Returns color with rgb #4664E6
    public static var purple300: Color {
        return colorWithName("purple300")
    }
    
    // MARK: - Orange colors

    /// Returns color with rgb #FAFAEE
    public static var orange100: Color {
        return colorWithName("orange100")
    }
    
    /// Returns color with rgb #F5B941
    public static var orange300: Color {
        return colorWithName("orange300")
    }
    
    // MARK: - Neutral colors

    /// Returns color with rgb #D6D6D6
    public static var gray100: Color {
        return colorWithName("gray100")
    }
    
    /// Returns color with rgb #8E8E93
    public static var gray200: Color {
        return colorWithName("gray200")
    }
    
    /// Returns color with rgb #636366
    public static var gray300: Color {
        return colorWithName("gray300")
    }
    
    /// Returns color with rgb #313136
    public static var gray400: Color {
        return colorWithName("gray400")
    }
    
    /// Returns color with rgb #1C1C1E
    public static var gray500: Color {
        return colorWithName("gray500")
    }
    
    /// Returns color with rgb #252525 and opacity 60%
    public static var gray600: Color {
        return colorWithName("gray600")
    }
    
    /// Returns color with rgb #000000
    public static var black: Color {
        return colorWithName("black")
    }
    
    /// Returns color with rgb #FFFFFF
    public static var white: Color {
        return colorWithName("white")
    }
}

@available(iOS 14, *)
extension Colors {
    static func hexStringToColor(_ hex: String, opacity: Double = 1.0) -> Color {
        var cString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        var rgbValue: UInt64 = 0
        
        if cString.hasPrefix("#") {
            cString.remove(at: cString.startIndex)
        }
        
        if cString.count != 6 {
            return Color.gray
        }
        
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        let color = Color(red: Double((rgbValue & 0xFF0000) >> 16) / 255.0,
                              green: Double((rgbValue & 0x00FF00) >> 8) / 255.0,
                              blue: Double(rgbValue & 0x0000FF) / 255.0,
                              opacity: opacity)
        
        return color
    }
}
