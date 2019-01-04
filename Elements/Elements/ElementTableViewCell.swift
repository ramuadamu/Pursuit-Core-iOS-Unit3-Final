//
//  ElementTableViewCell.swift
//  Elements
//
//  Created by Ramu on 1/4/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ElementTableViewCell: UITableViewCell {

    @IBOutlet weak var elementImage: UIImageView!
    
    @IBOutlet weak var elementName: UILabel!
    @IBOutlet weak var elementSymbol: UILabel!
    
    
    
    
    
    
    var elements: Element!
    
    func fetchThumbImage() {
        let imageEndpoint = "http://www.theodoregray.com/periodictable/Tiles/\(elements.threeDigitNum)/s7.JPG"
        ImageHelper.shared.fetchImage(urlString: imageEndpoint) { (appError, imageData) in
            if appError != nil {
                
            } else if let data = imageData {
                self.elementImage.image = data
            }
        }
    }
    
    
    
    }


