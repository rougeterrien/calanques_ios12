//
//  MonAnnotationView.swift
//  Les Calanques
//
//  Created by seb on 01/01/2019.
//  Copyright © 2019 seb. All rights reserved.
//

import UIKit
import MapKit

class MonAnnotationView: MKAnnotationView {

    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        setupAnnotation()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAnnotation()
    }
    
    func setupAnnotation() {
        image = UIImage(named: "placeholder")
        canShowCallout = true
        
        // construit le layout quand on presse une annotation sur la carte
        leftCalloutAccessoryView = setupLeft()
        rightCalloutAccessoryView = setupRight()
        detailCalloutAccessoryView = setupCenter()
    }
    
    // fabrication des différent components du popup de MKannotationView
    func setupLeft() -> UIButton {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        button.setImage(UIImage(named: "distance"), for: .normal)
        button.addTarget(self, action: #selector(gps), for: .touchUpInside)
        return button
    }
    
    func setupRight() -> UIButton {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        button.setImage(UIImage(named: "detail"), for: .normal)
        button.addTarget(self, action: #selector(detail), for: .touchUpInside)
        return button
    }
    
    func setupCenter() -> UIView? {
        guard let anno = annotation as? MonAnnotation else { return nil }
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 125, height: 125))
        
        // ce rajout n'est pas vraiment nécessaire pour faire aparaître le carré rouge
        // les Anchor suffisent avec translatesAutoresizingMaskIntoConstraints = true ou false
        //view.translatesAutoresizingMaskIntoConstraints = true
        view.widthAnchor.constraint(equalToConstant: 125).isActive = true
        view.heightAnchor.constraint(equalToConstant: 125).isActive = true
        
        let imageView = UIImageView(frame: view.bounds)
        imageView.image = anno.calanque.image
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        return view
    }
    

    @objc  func detail() {
        
    }

    @objc func gps() {
        
    }

}
