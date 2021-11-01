import SwiftUI

@available(iOS 13, *)
public class PlaniCard {
    private var card: PlaniCardType
    
    init(card: PlaniCardType) {
        self.card = card
    }
}

@available(iOS 14, *)
extension PlaniCard {
    public func createAddCard(title: String, icon: String) -> some View {
        VStack {
            Image(systemName: icon)
            Text("Adicionar")
        }
        .foregroundColor(Colors.orange100)
        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 4)
        .cornerRadius(20)
    }
}
