//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Ramiro Andres on 5/03/16.
//  Copyright © 2016 Ramiro Andres. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var strollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.addSubview(strollView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        strollView.contentSize = CGSizeMake(414, 1000)
    }
}
