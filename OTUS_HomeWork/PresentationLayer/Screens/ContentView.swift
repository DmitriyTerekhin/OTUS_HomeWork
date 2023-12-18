//
//  ContentView.swift
//  OTUS_HomeWork
//
//  Created by Дмитрий Терехин on 14.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = NavRouteModel()
    @State private var tabSelection: Int = 0
    
    var body: some View {
        // ДЗ 1.1
        TabView(selection: $tabSelection) {
            FirstTabView(tabSelection: $tabSelection,
                         secondTabListSelection: $viewModel.currentTagItem)
                .tag(0)
                .tabItem {
                    Text("Первый таб")
                }
            SecondTabView(selection: $viewModel.currentTagItem)
                .tag(1)
                .tabItem {
                    Text("Второй таб")
                }
            ThirdTabView()
                .tag(2)
                .tabItem {
                    Text("Третий таб")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
