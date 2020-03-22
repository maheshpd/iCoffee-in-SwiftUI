//
//  FirebaseReference.swift
//  iCoffee
//
//  Created by Mahesh Prasad on 22/03/20.
//  Copyright © 2020 CreatesApps. All rights reserved.
//

import Foundation
import FirebaseFirestore

enum FCollectionReference: String {
    case User
    case Menu
    case Order
    case Basket
}

func FirebaseReference(_ collectionReference: FCollectionReference) -> CollectionReference {
    
    return Firestore.firestore().collection(collectionReference.rawValue)
    
    
    
}

