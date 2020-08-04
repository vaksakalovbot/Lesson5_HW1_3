//
//  DetailContactInfoView.swift
//  Lesson5_HW1_3
//
//  Created by vaksakalov on 04.08.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

struct DetailContactInfoView: View {
    @Binding var showModal: Bool

    let person: Person
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Spacer()
                Button("Done") {
                    self.showModal = false
                }
            }
            Spacer()
            
            Text("\(person.fullName)")
                .font(.largeTitle)
                        
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .opacity(0.5)
            
            Text("Email: \(person.email)")
                .padding()
            Text("Phone: \(person.phoneNumber)")
                .padding()
            
            Spacer()
        }
        .font(.headline)
        .padding(10)
    }
}

struct DetailContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactInfoView(showModal: .constant(true), person: Person.getContactList()[0])
    }
}
