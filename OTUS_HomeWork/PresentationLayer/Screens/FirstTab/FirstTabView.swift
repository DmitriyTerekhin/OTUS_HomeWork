//
//  FirstTabView.swift
//  OTUS_HomeWork
//
//  Created by Дмитрий Терехин on 16.12.2023.
//

import SwiftUI

struct FirstTabView: View {
    
    @Binding var tabSelection: Int
    @Binding var secondTabListSelection: ListItem?

    var body: some View {
        // ДЗ 1.5
        Button("Open 1 row in list on tab 2") {
            self.tabSelection = 1
            self.secondTabListSelection = ListItem(number: 1)
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView(
            tabSelection: .constant(1),
            secondTabListSelection: .constant(ListItem(number: 1))
        )
    }
}
