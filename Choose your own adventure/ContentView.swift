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
        Page(text: "You choose to stay at the crash site, what should you do?", choices: [
            Choice(title: "Search the plane", tag: 6),
            Choice(title: "Search for food or water in the forest", tag: 7)
        ], tag: 3),
        Page(text: "You keep walking and stumble upon a wooden cabin. You are getting tired, what do you do?", choices: [
            Choice(title: "Enter the cabin", tag: 8),
            Choice(title: "Keep walking", tag: 9)
        ], tag: 4),
        Page(text: "You set up a little camp, and made a fire. Although it kept you warm, it attracted the attention of a pack of wolves.", choices: [
            Choice(title: "Eeaten by the wolves ending! (Ending one of )", tag: 1),
        ], tag: 5),
        Page(text: "You search the plane and find plenty of food and water, this will last you weeks! What do you do next?", choices: [
            Choice(title: "Stay here and wait", tag: 10),
            Choice(title: "Eat some cool looking berries you found in the wild", tag: 11)
        ], tag: 6),
        Page(text: "You start searching the forest and end falling into a ravine, with both your legs broken you stand no chance of surviving.", choices: [
            Choice(title: "Ravine ending (Ending two of )", tag: 1),
        ], tag: 7),
        Page(text: "You enter the plane, and find an evil witch, she knocks you out, and uses you in her stew", choices: [
            Choice(title: "Witch ending (Ending three of )", tag: 1),
        ], tag: 8),
        Page(text: "You walk for another three hours, and you stumble upon a road! Someone picks you up and brings you to the closest town.", choices: [
            Choice(title: "Hitch Hike ending (Ending four of )", tag: 1),
        ], tag: 9),
        Page(text: "You stay at the plane, surviving on the food you found for a few days, when a helicopter comes and saves you! It brings you home to your family", choices: [
            Choice(title: "Home sweet home ending! (Ending five of )", tag: 1),
        ], tag: 10),
        Page(text: "The berries you eat gave you superpowers! You fly home and become the protector of humanity", choices: [
            Choice(title: "SuperHero ending (Ending six of six)", tag: 1),
        ], tag: 11),
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


