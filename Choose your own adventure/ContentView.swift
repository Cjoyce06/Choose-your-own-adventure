//
//  ContentView.swift
//  Choose your own adventure
//
//  Created by Colin Joyce on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    let pages: [Page] = [
        Page(text: "1", choices: [
            Choice(title: "run", tag: 2),
            Choice(title: "fight", tag: 3)
        ], tag: 1),
        Page(text: "you choose to run", choices: [
            Choice(title: "run", tag: 3),
            Choice(title: "fight", tag: 5)
        ], tag: 2),
        Page(text: "you choose to fight", choices: [
            Choice(title: "run", tag: 3),
            Choice(title: "fight", tag: 5)
        ], tag: 3),
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


