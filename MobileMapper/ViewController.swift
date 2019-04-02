//
//  ViewController.swift
//  MobileMapper
//
//  Created by Teacher on 4/1/19.
//  Copyright © 2019 SHS. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    var currentLocation: CLLocation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        currentLocation = locations[0]
        print(currentLocation)
    }

    @IBAction func zoomButtonTapped(_ sender: UIBarButtonItem) {
        
    }
    
    @IBAction func searchButtonTapped(_ sender: UIBarButtonItem) {
        
    }
    
}

