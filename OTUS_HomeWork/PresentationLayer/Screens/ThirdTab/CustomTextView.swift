//
//  CustomTextView.swift
//  OTUS_HomeWork
//
//  Created by Дмитрий Терехин on 18.12.2023.
//

#if os(iOS)
import UIKit
import SwiftUI

struct TextView: UIViewRepresentable {
    @Binding var text: NSMutableAttributedString

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.textAlignment = .center
        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = text
    }
}
#endif
