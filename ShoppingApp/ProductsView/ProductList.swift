//
//  ProductList.swift
//  ShoppingApp
//
//  Created by Bratislav Baljak on 16.4.21..
//

import SwiftUI

let products = ProductRepository.getProdcuts()

struct ProductList: View {
    @ObservedObject var selectedItemsController: SelectedItemsModelController

    var body: some View {
        List(products, id: \.name) { product in
            ProductItem(product: product, selectedItemsController: selectedItemsController)
        }
        .buttonStyle(BorderlessButtonStyle()) //Important to add if you want buttons inside a list. https://stackoverflow.com/questions/56576298/swiftui-two-buttons-in-a-list
        .listStyle(SidebarListStyle())
        .accentColor(.none)
    }
}

//struct ProductList_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductList()
//    }
//}
