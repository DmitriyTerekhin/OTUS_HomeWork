//
//  ListRow.swift
//  OTUS_HomeWork
//
//  Created by Дмитрий Терехин on 17.12.2023.
//

import SwiftUI

struct ListRow: View {
    var number: Int
    
    var body: some View {
        Text("\(number)")
        Spacer()
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(number: 1)
    }
}
