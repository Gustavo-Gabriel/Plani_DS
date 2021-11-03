import SwiftUI

@available(iOS 13.0, *)
public struct ButtonSecondary: View {
    var title: String
    var icon: String
    var action: () -> Void

    public init(title: String, icon: String = "", action: @escaping () -> Void = {}) {
        self.title = title
        self.icon = icon
        self.action = action
    }

    public var body: some View {
        GeometryReader { geometry in
            Button(action: action, label: {
                VStack {
                    HStack {
                        if icon != ""{
                            Image(systemName: icon)
                                .foregroundColor(.black)
                                .frame(width: 20, height: 20, alignment: .center)
                                .padding(.vertical, 10)
                        }

                        Text(title)
                            .font(.system(size: 18))
                            .foregroundColor(Color.black)
                            .padding(.vertical, 8)
                    }
                }
                .frame(minWidth: geometry.size.width, maxHeight: 40, alignment: .center)
                .background(Color.white)
                .cornerRadius(28)
                .overlay(RoundedRectangle(cornerRadius: 28)
                            .stroke(Color.black, lineWidth: 1)
                )
            })
        }
    }
}

