//
//  PlacesTabBarController.swift
//  Places2
//
//  Created by Luis Puentes on 9/6/18.
//  Copyright © 2018 LuisPuentes. All rights reserved.
//

import UIKit

class PlacesTabBarController: UITabBarController {

    let placeController = PlaceController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // If the child view controller conforms to PlacesPresenter, we KNOW there is a placesController property that we can pass the places controller to.
        for childVC in childViewControllers {
            
            if let childVC = childVC as? PlacesPresenter {
                childVC.placeController = placeController
            }
        }
    }
}
