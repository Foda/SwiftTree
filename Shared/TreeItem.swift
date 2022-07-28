//
//  TreeItem.swift
//  PlaygroundApp
//
//  Created by Mike Corsaro on 7/11/22.
//

import Foundation
import SwiftUI

struct TreeItem: View {
    @ObservedObject var modelData: TreeItemData
    
    let monospacedFont = Font
        .system(size: 18)
        .monospaced()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if self.modelData.children.count > 0 {
                    Button() {
                        self.modelData.isExpanded.toggle()
                    }
                    label: {
                        Label("", systemImage: self.modelData.isExpanded ? "chevron.down" : "chevron.right")
                    }
                    .frame(width: 16.0)
                    .font(monospacedFont)
                }
                
                Text(modelData.text)
                    .padding([.horizontal, .leading], self.modelData.children.count > 0 ? 0 : 24)
                    .font(monospacedFont)
                
                Spacer()
            }
            if self.modelData.isExpanded {
                ForEach (self.modelData.children) { item in
                    TreeItem(modelData: item)
                        .padding(.leading, 20.0)
                        
                }
            }
        }
    }
}
