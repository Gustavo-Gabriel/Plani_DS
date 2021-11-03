import SwiftUI

@available(iOS 14.0, *)
public struct OverlayDefault: View {
    var title: String
    var icon: String

    @Environment(\.colorScheme) var colorScheme: ColorScheme

    public init(title: String, icon: String) {
        self.title = title
        self.icon = icon
    }

    public var body: some View {
        VStack {
            VStack {
                Image(icon)
                    .foregroundColor(colorScheme == .light ? Colors.purple300 : Colors.orange300)
                    .padding(.bottom, Spacing.medium)
        
                Text(title)
                    .font(.system(size: 14).bold())
                    .foregroundColor(colorScheme == .light ? Colors.blue400 : .white)
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 32)
        }
        .frame(width: 207, height: 164)
        .background(colorScheme == .light ? .white: Colors.blue300)
        .cornerRadius(Radius.medium)
    }
}
