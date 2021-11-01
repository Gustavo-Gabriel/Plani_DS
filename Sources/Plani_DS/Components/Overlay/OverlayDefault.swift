import SwiftUI

@available(iOS 13.0, *)
public struct OverlayDefault: View {
    var title: String
    var icon: String

    public init(title: String, icon: String) {
        self.title = title
        self.icon = icon
    }

    public var body: some View {
        VStack {
            VStack {
                Image(icon)
                    .foregroundColor(Colors.orange300)
                    .padding(.bottom, Spacing.medium)
        
                Text(title)
                    .font(.system(size: 14).bold())
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 32)
        }
        .frame(width: 207, height: 164)
        .background(Colors.blue300)
        .cornerRadius(Radius.medium)
    }
}
