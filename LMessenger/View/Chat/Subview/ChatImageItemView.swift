//
//  ChatImageItemView.swift
//  LMessenger
//
//  Created by 최안용 on 12/28/23.
//

import SwiftUI

struct ChatImageItemView: View {
    let urlString: String
    let direction: ChatItemDirection
    let date: Date
    
    var body: some View {
        HStack(alignment: .bottom) {
            if direction == .right {
                Spacer()
                dateView
            }
            
            URLImageView(urlString: urlString)
                .frame(width: 146, height: 146)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            if direction == .left {
                dateView
                Spacer()
            }
        }
        .padding(.horizontal, 35)
        .padding(.bottom)
    }
    
    var dateView: some View {
        Text(date.toChatTime)
            .font(.system(size: 10))
            .foregroundColor(.GreyDeep)
            .accessibilityLabel(Text(date.toChatTimeAccessibility))
    }
}

#Preview {
    ChatImageItemView(urlString: "", direction: .left, date: Date())
}
