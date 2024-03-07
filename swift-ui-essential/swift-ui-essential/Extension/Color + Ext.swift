//
//  Color + Ext.swift
//  swift-ui-essential
//
//  Created by Osinnowo Emmanuel on 07/03/2024.
//

import SwiftUI

// Define an enumeration representing color options
enum ColorEnum: String {
    case grey
    case lightGrey
}

// Extend the Color struct
extension Color {
    // Define a static property to represent the grey color
    public static let greyColor: Color = .init(.grey)
    public static let lightGreyColor: Color = .init(.lightGrey)
    
    
    // Initialize a Color instance using a ColorEnum value
    init(color: ColorEnum) {
        // Initialize the Color instance with the raw value corresponding to the ColorEnum value
        // Default bundle is set to main bundle
        self.init(color.rawValue, bundle: .main)
    }
}
