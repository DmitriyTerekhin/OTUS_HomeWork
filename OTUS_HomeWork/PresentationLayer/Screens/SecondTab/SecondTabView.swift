//
//  SecondTabView.swift
//  OTUS_HomeWork
//
//  Created by Дмитрий Терехин on 16.12.2023.
//

import SwiftUI

struct SecondTabView: View {
    
    @Binding var selection: ListItem?
    
    let listItems: [ListItem] = [
        ListItem(number: 1),
        ListItem(number: 2),
        ListItem(number: 3),
        ListItem(number: 4),
        ListItem(number: 5)
    ]
    
    var body: some View {
        NavigationView {
            // ДЗ 1.2
            List(listItems) { item in
                // ДЗ 1.3
                NavigationLink(destination: Text("\(item.number)"),
                               tag: item,
                               selection: $selection) {
                    Text("\(item.number)")
                }
            }
        }
    }
    
    private func clearStates() {
        selection = nil
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView(selection: .constant(nil))
    }
}
