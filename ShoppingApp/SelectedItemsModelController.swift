//
//  SelectedItemsModelController.swift
//  ShoppingApp
//
//  Created by Bratislav Baljak on 18.4.21..
//

import SwiftUI

class SelectedItemsModelController: ObservableObject {
    @Published var items: [ProductModel] = []
}
