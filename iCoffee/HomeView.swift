//
//  HomeView.swift
//  iCoffee
//
//  Created by Mahesh Prasad on 22/03/20.
//  Copyright © 2020 CreatesApps. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView {
            
            Text("Hi")
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
