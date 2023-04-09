//
//  ContentView.swift
//  Fructus
//
//  Created by Md Abir Hossain on 6/4/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var fruit: [Fruit] = fruitData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruit.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}