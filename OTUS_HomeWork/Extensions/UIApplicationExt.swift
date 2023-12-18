//
//  UIApplicationExt.swift
//  OTUS_HomeWork
//
//  Created by Дмитрий Терехин on 18.12.2023.
//

#if os(iOS)
import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
