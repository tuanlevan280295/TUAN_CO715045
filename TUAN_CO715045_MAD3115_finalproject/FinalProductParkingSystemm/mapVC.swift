//
//  LocationViewController.swift
//  FinalProductParkingSystemm
//
//  Created by levantuan on 2018-03-02.
//  Copyright © 2018 levantuan. All rights reserved.
//

import UIKit
import MapKit

class mapVC: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    var locationManager = CLLocationManager ()
    let regionRadius: CLLocationDistance = 300
    var resultSearchController : UISearchController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //embeb search bar to viewcontroller
        let locationSearchTable = storyboard!.instantiateViewController(withIdentifier: "SearchResultScreen") as! locationsTVC
        resultSearchController = UISearchController(searchResultsController: locationSearchTable)
        resultSearchController?.searchResultsUpdater = locationSearchTable
        
        //appearance of search bar
        let searchBar = resultSearchController!.searchBar
        searchBar.sizeToFit()
        searchBar.placeholder = "Search for places"
        navigationItem.titleView = resultSearchController?.searchBar
        resultSearchController?.hidesNavigationBarDuringPresentation = false
        resultSearchController?.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        
        //set map appearance
        myMap.mapType = MKMapType.hybrid
        myMap.isZoomEnabled = true
        myMap.isScrollEnabled = true
        
        //set location manager properties
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        
        //start getting location updates
        if (CLLocationManager.locationServicesEnabled()){
            locationManager.startUpdatingLocation()
        }
        
        //set the mapview for tableViewController
        locationSearchTable.mapView = myMap
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension mapVC : CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error:: \(error.localizedDescription)")
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            locationManager.requestLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if locations.first != nil {
            print("location:: \(locations)")
        }
        
        print("Updating location")
        
        let center = CLLocationCoordinate2D(latitude: (locationManager.location?.coordinate.latitude)!, longitude: (locationManager.location?.coordinate.longitude)!)
        print("Center : \(center)")
        
        let region = MKCoordinateRegionMakeWithDistance(center,regionRadius, regionRadius)
        self.myMap.setRegion(region, animated: true)
        
        // Drop a pin at user's Current Location
        let myAnnotation: MKPointAnnotation = MKPointAnnotation()
        myAnnotation.coordinate = center
        myAnnotation.title = "Goone Paking"
        myMap.addAnnotation(myAnnotation)
    }
    
    
}
