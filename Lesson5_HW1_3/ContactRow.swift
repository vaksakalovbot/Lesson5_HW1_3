//
//  ContactRow.swift
//  Lesson5_HW1_3
//
//  Created by vaksakalov on 04.08.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

struct ContactRow: View {
    @State private var isPresented = false

    let person: Person
    
    var body: some View {
        Button(action: { self.isPresented.toggle() }) {
            Text("\(person.fullName)")
            .sheet(isPresented: $isPresented, onDismiss: {
                print("Modal dismissed. State now \(self.isPresented)")
            }) {
                DetailContactInfoView(showModal: self.$isPresented, person: self.person)
            }
        }

    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(person: Person.getContactList()[0])
    }
}
