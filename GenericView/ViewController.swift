//
//  ViewController.swift
//  GenericView
//
//  Created by Natasha Murashev on 11/11/15.
//  Copyright © 2015 Natasha Murashev. All rights reserved.
//

import UIKit

struct ViewModel: ColorProtocol {
    var color: UIColor { return .purpleColor() }
}

class ViewController: UIViewController {
    
    let genericView: GenericView<ViewModel> = {
        let view = NSBundle.mainBundle().loadNibNamed("GenericView", owner: nil, options: nil)[0]
        return view as! GenericView<ViewModel>
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        genericView.configure(ViewModel())
    }
}

