//
//  View+Ext.swift
//  ICT Recipes
//
//  Created by Scott Bolin on 8-Dec-21.
//

import SwiftUI

extension View {
    func endTextEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
