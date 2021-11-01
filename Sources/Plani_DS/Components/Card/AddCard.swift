import SwiftUI

@available(iOS 14, *)
public struct AddCard: View {
    var title: String
    var icon: String
    
    init(title: String, icon: String) {
        self.title = title
        self.icon = icon
    }
    
    public var body: some View {
        VStack {
            Image(systemName: icon)
            Text("Adicionar")
        }
        .foregroundColor(Colors.orange100)
        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 4)
        .cornerRadius(20)
    }
}

@available(iOS 14, *)
struct AddCard_Preview: PreviewProvider {
    static var previews: some View {
        AddCard(title: "Adicionar", icon: "square.and.arrow.up")
    }
}
