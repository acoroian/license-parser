//
//  ViewController.swift
//  LicenseParser
//
//  Created by Adrian Coroian on 10/24/18.
//  Copyright © 2018 Adrian Coroian. All rights reserved.
//

import UIKit
import LicenseParser

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // First get the PDF-417 barcode data by scanning the barcode on the license
        let pdf417Data = ""
        
        // Create a parser with that data
        let parser = Parser(data: pdf417Data)
        
        // Ask the parser to parse it
        let parsedLicense = parser.parse()
        
        print(parsedLicense.firstName)
        // => Optional("John")
        print(parsedLicense.middleName)
        // => Optional("Quincy")
        print(parsedLicense.lastName)
        // => Optional("Public")
    }


}

