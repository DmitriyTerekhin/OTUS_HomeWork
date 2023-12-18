//
//  ModalView.swift
//  OTUS_HomeWork
//
//  Created by Дмитрий Терехин on 17.12.2023.
//

import SwiftUI

struct ModalView: View {

    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            Text("You see modal view")
            Button("Click here to dismiss") {
                dismiss()
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
