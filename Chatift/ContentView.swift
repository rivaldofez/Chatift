//
//  ContentView.swift
//  Chatift
//
//  Created by Rivaldo Fernandes on 03/05/22.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["Hello you", "How Are you doing", "Iam building swiftui chat apps"]
    
    
    var body: some View {
        VStack {
            TitleRow()
            
            ScrollView {
                ForEach(messageArray, id: \.self) { text in
                    MessageBubble(message: Message(id: "12345", text: text, received: true, timestamp: Date()))
                }
            }
            .padding(.top, 10)
            .background(.white)
            
        }
        .background(Color("Peach"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
