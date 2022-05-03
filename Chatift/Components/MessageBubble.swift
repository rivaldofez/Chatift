//
//  MessageBubble.swift
//  Chatift
//
//  Created by Rivaldo Fernandes on 03/05/22.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing){
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("Gray") : Color("Peach"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(message.received ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "12345", text: "Learn SwiftUI", received: false, timestamp: Date()))
    }
}
