import SwiftUI

@available(iOS 13.0, *)
public struct OverlayWarning: View {
    var title: String
    var subtitle: String
    var icon: String

    @Environment(\.colorScheme) var colorScheme: ColorScheme

    public init(title: String, subtitle: String, icon: String) {
        self.title = title
        self.subtitle = subtitle
        self.icon = icon
    }

    public var body: some View {
        VStack {
            VStack {
                Image(icon)
                    .foregroundColor(colorScheme == .light ? Colors.purple300 : Colors.orange300)
                    .padding(.bottom, Spacing.small)

                Text(title)
                    .font(.system(size: 14).bold())
                    .foregroundColor(colorScheme == .light ? Colors.blue400 : .white)
                    .padding(.bottom, Spacing.xSmall)

                Text(subtitle)
                    .font(.system(size: 12))
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
