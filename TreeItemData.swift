//
//  TreeItemData.swift
//  PlaygroundApp
//
//  Created by Mike Corsaro on 7/11/22.
//

import Foundation
import SwiftUI

class TreeItemData: ObservableObject, Identifiable {
    var children: [TreeItemData]
    var text: String
    @Published var isExpanded: Bool
    
    init(text: String, children: [TreeItemData]) {
        self.text = text
        self.children = children
        self.isExpanded = false
    }
}
