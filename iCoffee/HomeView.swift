//
//  HomeView.swift
//  iCoffee
//
//  Created by Mahesh Prasad on 22/03/20.
//  Copyright © 2020 CreatesApps. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var categories: [String: [Drink]] {
        
        .init(
        grouping: drinkData,
        by: {$0.category.rawValue})
        
    }
    var body: some View {
        
        NavigationView {
            
            List(categories.keys.sorted(), id: \String.self) {
                key in
                DrinkRow(categoryName: "\(key) Drink".uppercased(), drinks: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
            }
                
                
                .navigationBarTitle(Text("iCoffee"))
                .navigationBarItems(leading:
                    
                    Button(action: {
                        //Code
                        
                        print("log out")
                    }, label: {
                        Text("Log Out")
                    })
                    
                    , trailing:
                    Button(action: {
                        //Code
                        
                        print("basket")
                        
                    }, label: {
                        Image("basket")
                    }))
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
