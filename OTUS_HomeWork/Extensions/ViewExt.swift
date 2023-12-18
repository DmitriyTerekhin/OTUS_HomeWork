//
//  ViewExt.swift
//  OTUS_HomeWork
//
//  Created by Дмитрий Терехин on 18.12.2023.
//

#if os(iOS)
import UIKit
import SwiftUI

extension View {
    func hideKeyboardWhenTappedAround() -> some View  {
        return self.onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
}
#endif
