//
//  SecondTabModels.swift
//  OTUS_HomeWork
//
//  Created by Дмитрий Терехин on 17.12.2023.
//

import Foundation

class NavRouteModel: ObservableObject {
    @Published var currentTagItem: ListItem?
}

struct ListItem: Identifiable, Hashable, Equatable {
    var id: Int { return number}
    var number: Int
}
