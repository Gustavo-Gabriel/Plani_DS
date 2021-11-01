import SwiftUI

@available(iOS 13.0, *)
public enum PlaniCardType {
    case add(title: String, icon: Image)
    case calendar(time: String, title: String, subtitle: String)
    case caption(text: String, attributtedString: [String])
    case idea(title: String, subtitle: String)
    case warning(title: String, message: String)
    case feedback(title: String, icon: Image)
}
