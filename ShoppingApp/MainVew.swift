//
//  MainVew.swift
//  ShoppingApp
//
//  Created by Bratislav Baljak on 16.4.21..
//

import SwiftUI

struct MainVew: View {
    var body: some View {
        TabView {
            let selectedItemsController = SelectedItemsModelController()
            
            ProductList(selectedItemsController: selectedItemsController).tabItem {
                Label("Products", systemImage: "house")
                    .foregroundColor(Color.primaryColor)
            }
            ShoppingCardList(selectedItemsController: selectedItemsController).tabItem {
                Label("Cart", systemImage: "cart.fill.badge.plus")
                    .foregroundColor(Color.primaryColor)
            }
        }
        .accentColor(Color.primaryColor)
    }
}
