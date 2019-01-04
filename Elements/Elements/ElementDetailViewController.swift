//
//  ElementDetailViewController.swift
//  Elements
//
//  Created by Ramu on 1/4/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ElementDetailViewController: UIViewController {
    
    @IBOutlet weak var favoriteButton: UIBarButtonItem!
    @IBOutlet weak var elementImage: UIImageView!
    @IBOutlet weak var elementSymbol: UILabel!
    @IBOutlet weak var elementNumber: UILabel!
    @IBOutlet weak var elementMeltingPoint: UILabel!
    @IBOutlet weak var elementBoilingPoint: UILabel!
    @IBOutlet weak var elementDiscoveryBy: UILabel!
    
    public var element: Element!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = element.name
        
    }
    

}
