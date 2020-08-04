//
//  FirstTabView.swift
//  Lesson5_HW1_3
//
//  Created by vaksakalov on 04.08.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

struct FirstTabView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {            
            List(persons) { person in
                ContactRow(person: person)
            }
            .navigationBarTitle(Text("Contacts"))
        }

    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView(persons: Person.getContactList())
    }
}
