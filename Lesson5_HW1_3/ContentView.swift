//
//  ContentView.swift
//  Lesson5_HW1_3
//
//  Created by vaksakalov on 04.08.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            FirstTabView(persons: persons)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Simple List")
                }
            SecondTabView(persons: persons)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Segmented List")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
