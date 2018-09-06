//
//  PlaceController.swift
//  Places2
//
//  Created by Luis Puentes on 9/6/18.
//  Copyright © 2018 LuisPuentes. All rights reserved.
//

import Foundation

class PlaceController {
    
    private(set) var places = [Place]()
    
    // Create
    func createPlace(with name: String, latitude: Double, longitude: Double) {
        let place = Place(name: name, latitude: latitude, longitude: longitude)
        places.append(place)
    }
}
