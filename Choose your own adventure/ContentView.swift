//
//  ContentView.swift
//  Choose your own adventure
//
//  Created by Colin Joyce on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VStack {
                HStack {
                    Text("Choose your own adventure").fixedSize(horizontal: true, vertical: false)
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                }
                Text("Intro")
                Button("Choice 1", action: {})
            }
                .padding()
            VStack {
                HStack {
                    Text("Choose your own adventure").fixedSize(horizontal: true, vertical: false)
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                }
                Text("Intro")
                Button("Choice 1", action: {})
            }
                .padding()
        } .tabViewStyle(.page)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
