//
//  HomeButtonView.swift
//  MooPics
//
//  Created by Ivan F on 31/01/26.
//

import SwiftUI

struct HomeButton: View {
    let titleKey: LocalizedStringKey
    let action: () -> Void
    
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        Button(action: action){
            Text(titleKey)
                .frame(width: 100, height: 50)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(colorScheme == .dark ? .black : .white)
                .background(
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(colorScheme == .dark ? .white : .black)
                )
        }
        
    }
}
