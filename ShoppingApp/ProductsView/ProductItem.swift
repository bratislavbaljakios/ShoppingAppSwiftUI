//
//  ProductItem.swift
//  ShoppingApp
//
//  Created by Bratislav Baljak on 15.4.21..
//

import SwiftUI

struct ProductItem: View {
    var product: ProductModel
    @ObservedObject var selectedItemsController: SelectedItemsModelController
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image("\(product.id)-0")
                .resizable()
                .scaledToFit()
            Text("\(product.name)")
                .font(.title2)
                .foregroundColor(Color.secondaryLightColor)
            Text("\(product.price) $")
                .font(.subheadline)
                .foregroundColor(Color.primaryDarkColor)
            HStack(alignment: .center, spacing: 100) {
                Button(action: {
                }) {
                    Image(systemName: "square.and.arrow.up.fill")
                        .foregroundColor(Color.primaryColor)
                }
                Button(action: {
                    var exist: Bool = false
                    for (index, element) in selectedItemsController.items.enumerated() where element.id == product.id {
                        exist = true
                        selectedItemsController.items[index].quantity += 1
                    }
                    
                    if !exist {
                        selectedItemsController.items.append(product)
                    }
                }) {
                    Image(systemName: "folder.fill.badge.plus")
                        .foregroundColor(Color.primaryColor)
                }
            }
            Spacer()
        }
        .background(Color.primaryLightColor)
        .cornerRadius(25)
        .shadow(radius: 5)
    }
}

//struct ProductItem_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductItem(product: products.first!)
//    }
//}
