//
//  ViewController.swift
//  MapKitKullanimi
//
//  Created by İlker Kaya on 5.12.2022.
//

import UIKit
import MapKit
class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //39.7484572,36.96089
        
        let konum = CLLocationCoordinate2D(latitude: 39.7484572, longitude: 36.96089)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let bolge = MKCoordinateRegion(center: konum, span: span)
        mapView.setRegion(bolge, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = konum
        pin.title = "Sivas"
        pin.subtitle = "Züvas"
        
        mapView.addAnnotation(pin)
    }


}

