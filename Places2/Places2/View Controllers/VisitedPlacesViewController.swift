//
//  VisitedPlacesViewController.swift
//  Places2
//
//  Created by Luis Puentes on 9/6/18.
//  Copyright © 2018 LuisPuentes. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlacesPresenter, PlaceSelectionDelegate {

    var placeController: PlaceController?
    var placesTableViewController: PlacesTableViewController?
    var mapViewController: MapViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func placeWasSelected(place: Place) {
        mapViewController?.location = place.location
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlacesTable" {
            
            guard let placesTVC = segue.destination as? PlacesTableViewController else { return }
            
            placesTVC.placeController = placeController
            placesTVC.delegate = self
            placesTableViewController = placesTVC
            
        } else if segue.identifier == "MapView" {
            
            guard let mapVC = segue.destination as? MapViewController else { return }
            
            mapViewController = mapVC
        }
    }
}
