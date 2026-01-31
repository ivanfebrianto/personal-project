//
//  ContentMediaRow.swift
//  MooPics
//
//  Created by Ivan F on 31/01/26.
//

import SwiftUI

struct ContentMediaRow: View {
    let titleKey: LocalizedStringKey
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(titleKey)
                .font(.title3)
                .bold()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
//                    ForEach(0..<5) { _ in
//                        MovieCardView()
//                    }
                }
            }
        }
    }
}
