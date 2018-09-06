//
//  MapViewController.swift
//  Places2
//
//  Created by Luis Puentes on 9/6/18.
//  Copyright © 2018 LuisPuentes. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet weak var mapView: MKMapView!
    
    var location: (latitude: Double, longitude: Double)? {
        didSet {
            updateMapViewLocation()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateMapViewLocation()
    }

    private func updateMapViewLocation() {
        guard let location = location, isViewLoaded else { return }
        
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        mapView.setRegion(region, animated: true)
    }
}
