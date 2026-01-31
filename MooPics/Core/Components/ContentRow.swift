//
//  ContentMediaRow.swift
//  MooPics
//
//  Created by Ivan F on 31/01/26.
//

import SwiftUI

struct ContentRow: View {
    let titleKey: LocalizedStringKey
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(titleKey)
                    .font(.system(size: 20, weight: .bold))
                Spacer() // push arrow to the right
                Button(action: {
                    // action for "See More"
                    print("See more tapped for \(titleKey)")
                }) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.primary)
                }
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(0..<9) { _ in
                        ContentCardView()
                    }
                }
                .padding(.vertical, 8) // optional: add top/bottom padding for row
            }
        }
    }
}
