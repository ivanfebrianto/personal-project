import SwiftUI

struct HomeButton: View {
    let titleKey: LocalizedStringKey
    let iconName: String? // optional SF Symbol
    let action: () -> Void
    
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 6) {
                if let iconName {
                    Image(systemName: iconName)
                        .font(.system(size: 16, weight: .semibold))
                }
                Text(titleKey)
                    .font(.system(size: 16, weight: .semibold))
               
            }
            .frame(width: 130, height: 50) // adjust width if icon added
            .foregroundColor(colorScheme == .dark ? .black : .white)
            .background(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(colorScheme == .dark ? .white : .black)
            )
        }
    }
}
