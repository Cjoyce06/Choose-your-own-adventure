//
//  ContentView.swift
//  Choose your own adventure
//
//  Created by Colin Joyce on 12/7/22.
//

import SwiftUI

struct ContentView: View {
    let pages: [Page] = [
        Page(text: "Your plane crashed in the middle of the woods, you are the only survivor. What do you do?", choices: [
            Choice(title: "Leave the plane", tag: 2),
            Choice(title: "wait and try to survive", tag: 3)
        ], tag: 1),
        Page(text: "You choose to leave the plane, you've been walking for almost two hours without any sign of humanity, what do you do?", choices: [
            Choice(title: "Keep walking", tag: 4),
            Choice(title: "Stay here and try to set up camp", tag: 5)
        ], tag: 2),
        Page(text: "you choose to stay at the crash site, what should you do?", choices: [
            Choice(title: "Search the plane", tag: 6),
            Choice(title: "Search for food or water in the forest", tag: 7)
        ], tag: 3),
        Page(text: "You keep walking and stumble upon a wooden cabin. You are getting tired, what do you do?", choices: [
            Choice(title: "Enter the cabin", tag: 8),
            Choice(title: "Keep walking", tag: 9)
        ], tag: 4),
        Page(text: "You set up a little camp, and made a fire. Although it kept you warm, it attracted the attention of a pack of wolves.", choices: [
            Choice(title: "You lose! (Ending one of", tag: 1),
        ], tag: 5),
        Page(text: "You search the plane and find plenty of food and water, this will last you weeks! What do you do next?", choices: [
            Choice(title: "Stay here and wait", tag: 10),
            Choice(title: "wait and try to survive", tag: 11)
        ], tag: 6),
    ]
    @State private var currentPage = 1
    var body: some View {
        TabView(selection: $currentPage) {
            ForEach(pages, content: { page in
                VStack {
                        HStack {
                            Text("Choose your own adventure").fixedSize(horizontal: true, vertical: false)
                                .font(.title)
                                .bold()
                                .multilineTextAlignment(.center)
                        }
                    Text(page.text)
                    ForEach(page.choices, content:  { choice in
                        Button(choice.title, action: {
                            withAnimation {
                                currentPage = choice.tag
                            }
                        })
                    })
                }.padding().tag(page.tag)
            })
            
        } .tabViewStyle(.page)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


