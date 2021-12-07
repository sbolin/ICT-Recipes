//
//  BaseType.swift
//  ICT Recipes
//
//  Created by Scott Bolin on 8-Dec-21.
//

import Foundation

enum BaseType: String, CaseIterable{
    case milk, yogurt, sorbet

    func displayBaseType() -> String {
        return self.rawValue.capitalized + " Base"
    }
}
