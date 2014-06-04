//
//  ViewController.swift
//  BasicProtocol
//
//  Created by Hervé Droit on 04/06/2014.
//  Copyright (c) 2014 Hervé Heurtault de Lammerville. All rights reserved.
//

import UIKit

class ViewController: UIViewController, HLRequestDelegate {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var productRequest: HLRequest = HLRequest()
        productRequest.delegate = self;
        productRequest.executeRequest()
    }
    
    //HLRequestDelegate
    func doNothing() {
        println("Useless method")
    }
    
    //HLRequestDelegate
    func request(request: HLRequest, didSucceedWithData data: NSData)
    {
        var stringData: NSString = NSString(data: NSData(data: data), encoding: 4)
        println("Response body: \(stringData)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

