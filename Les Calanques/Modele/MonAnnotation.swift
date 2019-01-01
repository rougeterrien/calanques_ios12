//
//  MonAnnotation.swift
//  Les Calanques
//
//  Created by seb on 01/01/2019.
//  Copyright © 2019 seb. All rights reserved.
//

import UIKit
import MapKit

class MonAnnotation: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var calanque: Calanque
    var title: String?
    
    init(_ calanque: Calanque) {
        self.calanque = calanque
        coordinate = self.calanque.coordonnee
        title = self.calanque.nom
    }
    
}
