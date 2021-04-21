//
//  ShoppingCardList.swift
//  ShoppingApp
//
//  Created by Bratislav Baljak on 16.4.21..
//

import SwiftUI

struct ShoppingCardList: View {
    @StateObject var selectedItemsController: SelectedItemsModelController
    
    var body: some View {
        let withIndex = selectedItemsController.items.enumerated().map { $0 }
        VStack {
            List(withIndex, id: \.element.id) { (index, product) in
                ShoppingCardItem(product: product, quantity: product.quantity)
            }
            .listStyle(SidebarListStyle())
            
            Divider()
            let price = getTotalPrice(selectedItemsController: selectedItemsController)
            Text("Total: \(price)$")
                .font(.title)
            Divider()
        }
        
    }
    
    func getTotalPrice(selectedItemsController: SelectedItemsModelController) -> Int {
        selectedItemsController.items.map { $0.price * $0.quantity }.reduce(0, +)
    }
}
