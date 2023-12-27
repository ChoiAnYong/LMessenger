//
//  SearchButton.swift
//  LMessenger
//
//  Created by 최안용 on 12/27/23.
//

import SwiftUI

struct SearchButton: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(height: 36)
                .background(Color.GreyCool)
                .cornerRadius(5)
            
            HStack {
                Text("검색")
                    .font(.system(size: 12))
                    .foregroundColor(.GreyLightVer2)
                Spacer()
            }
            .padding(.leading, 22)
        }
        .padding(.horizontal, 30)
    }
}

#Preview {
    SearchButton()
}
