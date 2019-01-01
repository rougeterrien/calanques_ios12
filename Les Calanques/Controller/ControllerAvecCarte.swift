//
//  ControllerAvecCarte.swift
//  Les Calanques
//
//  Created by seb on 30/12/2018.
//  Copyright © 2018 seb. All rights reserved.
//

import UIKit
import MapKit

class ControllerAvecCarte: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    var calanques: [Calanque] = CalanquesCollection().all()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addAnnotations()
       
    }
    
    func addAnnotations() {
        for calanque in calanques {
            let annotation = MKPointAnnotation()
            annotation.coordinate = calanque.coordonnee
            annotation.title = calanque.nom
            mapView.addAnnotation(annotation)
        }
    }
    @IBAction func segmentedChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: mapView.mapType = MKMapType.standard
        case 1: mapView.mapType = .satellite
        case 2: mapView.mapType = .hybrid
        default: break
        }
    }
    
    @IBAction func getPosition(_ sender: Any) {
    }
  
}
