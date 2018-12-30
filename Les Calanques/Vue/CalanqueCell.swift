//
//  CalanqueCell.swift
//  Les Calanques
//
//  Created by seb on 30/12/2018.
//  Copyright © 2018 seb. All rights reserved.
//

import UIKit

class CalanqueCell: UITableViewCell {

    @IBOutlet weak var ContainerView: UIView!
    @IBOutlet weak var calanqueIV: ImageRonde!
    @IBOutlet weak var monLabel: UILabel!
    
    var calanque: Calanque!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setupCell(_ calanque: Calanque) {
        self.calanque = calanque
        ContainerView.layer.cornerRadius = 20
        ContainerView.backgroundColor = UIColor.lightGray
        monLabel.text = self.calanque.nom
        calanqueIV.image = self.calanque.image
        
    }

}
