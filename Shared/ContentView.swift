//
//  ContentView.swift
//  Shared
//
//  Created by Mike Corsaro on 7/7/22.
//

import SwiftUI

struct ContentView: View {
    @State var treeData: TreeItemData = loadTree()
    
    var body: some View {
        VStack(alignment: .leading) {
            TreeItem(modelData: treeData)
                .frame(width: 300)
            
            Spacer()
        }
    }
}

func loadTree() -> TreeItemData {
    let root = TreeItemData(text: "Item 1", children: [])
    root.children.append(TreeItemData(text: "Item A", children: []))
    root.children.append(TreeItemData(text: "Item B", children: []))
    root.children.append(TreeItemData(text: "Item C", children: []))
    
    root.children.append(TreeItemData(
        text: "Item With Children",
        children: [
            TreeItemData(text: "Child A", children: []),
            TreeItemData(text: "Child B", children: [
                TreeItemData(text: "Baby A", children: []),
                TreeItemData(text: "Baby B", children: [])
            ])
        ]))
    return root
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
