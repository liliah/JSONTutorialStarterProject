//
//  MovieViewModel.swift
//  JSONTutorial
//
//  Created by Lilian Dias on 27/06/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

struct MovieViewModel{
    let title: String
    let imageURL: String
    let releaseDate:String
    let purchasePrice:String
    let summary:String
    
    init(model:Movie) {
        self.title = model.title.uppercased()
        self.imageURL = model.imageURL
        self.releaseDate = "Release date: \(model.releaseDate)"
        
        if let doublePurchasePrice = Double(model.purchasePrice.amount){
            self.purchasePrice = String(format: "%.2f %@", doublePurchasePrice, model.purchasePrice.currency)
        }else{
            self.purchasePrice = "Not available for Purchase"
        }
        
        self.summary = model.summary == "" ? "No data provided" : model.summary
    }
}
