//
//  SecondTabView.swift
//  Lesson5_HW1_3
//
//  Created by vaksakalov on 04.08.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

struct SecondTabView: View {

    let persons: [Person]

    var body: some View {
        NavigationView {

            List(persons) { person in
                VStack {
                    Section(header:
                        ZStack {
                            Color(.lightGray)
                                .opacity(0.4)
                            HStack {
                                Text("\(person.fullName)")
                                    .bold()
                                Spacer()
                            }
                        }
                    ) {
                        HStack {
                            Image(systemName: Contacts.email.rawValue)
                                .foregroundColor(.blue)
                            Text("\(person.email)")
                            Spacer()
                        }
                        HStack {
                            Image(systemName: Contacts.phone.rawValue)
                                .foregroundColor(.blue)
                            Text("\(person.phoneNumber)")
                            Spacer()
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Contact List"))
        }
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView(persons: Person.getContactList())
    }
}
