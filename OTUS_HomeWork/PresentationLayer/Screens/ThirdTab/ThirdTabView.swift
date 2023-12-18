//
//  ThirdTabView.swift
//  OTUS_HomeWork
//
//  Created by Дмитрий Терехин on 16.12.2023.
//

import SwiftUI

struct ThirdTabView: View {
    
    @State private var showingSheet = false
    @State var text = NSMutableAttributedString(string: "Some Text")

    var body: some View {
        VStack(alignment: .center) {
            // ДЗ 1.4
            Button("Open modal window") {
                showingSheet.toggle()
            }.sheet(isPresented: $showingSheet) {
                ModalView()
            }
            // ДЗ 1.7
#if os(iOS)
            TextView(text: $text)
                .frame(width: 200, height: 200, alignment: .center)
#endif
        }
        .backgroundStyle(.blue)
#if os(iOS)
        .hideKeyboardWhenTappedAround()
#endif
    }
}

struct ThirdTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTabView()
    }
}
