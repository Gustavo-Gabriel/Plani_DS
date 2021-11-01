import UIKit
import SwiftUI

public enum OverlayType {
    case defaultOverlay(String, String)
    case warning(String, String, String)
}

@available(iOS 13.0, *)
public class Overlay {
    public static func getView (type: OverlayType) -> AnyView {
        switch type {
        case .defaultOverlay(let title, let icon):
            return AnyView(OverlayDefault(title: title, icon: icon))
        case .warning(let title, let subtitle, let icon):
            return AnyView(OverlayWarning(title: title, subtitle: subtitle, icon: icon))
        }
    }
}
