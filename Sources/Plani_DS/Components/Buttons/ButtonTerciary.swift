import SwiftUI

public enum ButtonTerciaryType {
    case destructive
    case link
}

@available(iOS 13.0, *)
public struct ButtonTerciary: View {
    var title: String
    var icon: String
    var type: ButtonTerciaryType
    var action: () -> Void

    public init(title: String, icon: String = "", type: ButtonTerciaryType, action: @escaping () -> Void = {}) {
        self.title = title
        self.icon = icon
        self.type = type
        self.action = action
    }

    public var body: some View {
        GeometryReader { geometry in
            Button(action: action, label: {
                VStack {
                    HStack {
                        if icon != ""{
                            Image(systemName: icon)
                                .foregroundColor(type == .destructive ? .red : Colors.gray300)
                                .frame(width: 20, height: 20, alignment: .center)
                                .padding(.vertical, 10)
                        }

                        Text(title)
                            .font(.system(size: 18))
                            .foregroundColor(type == .destructive ? .red : Colors.gray300)
                            .padding(.vertical, 8)
                    }
                }
                .frame(minWidth: geometry.size.width, maxHeight: 40, alignment: .center)
            })
        }
    }
}

