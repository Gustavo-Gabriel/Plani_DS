import SwiftUI

@available(iOS 13.0, *)
public struct ButtonPrimary: View {
    var title: String
    var icon: String

    public init(title: String, icon: String = "") {
        self.title = title
        self.icon = icon
    }

    public var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Image(icon)
                        .foregroundColor(Colors.orange300)
                        .padding(.bottom, Spacing.medium)
            
                    Text(title)
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                }
                .padding(.horizontal, Spacing.medium)
                .padding(.vertical, 8)
            }
            .frame(minWidth: geometry.size.width, idealHeight: 40, alignment: .center)
            .background(Colors.purple300)
            .cornerRadius(Radius.large)
        }
    }
}

