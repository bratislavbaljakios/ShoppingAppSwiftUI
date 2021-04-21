//
//  ShoppingCardItem.swift
//  ShoppingApp
//
//  Created by Bratislav Baljak on 16.4.21..
//

import SwiftUI

struct ShoppingCardItem: View {
    var product: ProductModel
    var quantity: Int = 1
    
    var body: some View {
        HStack(spacing: 20) {
            Image("\(product.id)-0")
                .resizable()
                .scaledToFit()
                .cornerRadius(5)
                .frame(width: 70, height: 70, alignment: .center)
            VStack(alignment: .leading) {
                Text(product.name)
                
                if quantity > 1 {
                    Text("\(quantity) x \(product.price) $")
                } else {
                    Text("\(product.price) $")
                }
            }
            Spacer()
            Text("$ \(quantity * product.price)")
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70, maxHeight: 70)
    }
}
