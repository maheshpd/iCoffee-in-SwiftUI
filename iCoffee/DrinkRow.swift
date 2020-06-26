//
//  DrinkRow.swift
//  iCoffee
//
//  Created by Mahesh Prasad on 23/03/20.
//  Copyright © 2020 CreatesApps. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    var categoryName: String
    var drinks: [Drink]
    var body: some View {
      
        VStack(alignment: .leading) {
        
            Text(self.categoryName)
                .font(.title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    ForEach(self.drinks) { drink in
                        DrinkItem(drink: drink)
                        .frame(width: 300)
                            .padding(.trailing, 30)
                    }
                }
                
                
            }
            
        }
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "HOT DRINKS", drinks: drinkData)
    }
}
