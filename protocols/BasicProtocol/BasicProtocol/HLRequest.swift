//
//  HLRequest.swift
//  BasicProtocol
//
//  Created by Hervé Droit on 04/06/2014.
//  Copyright (c) 2014 Hervé Heurtault de Lammerville. All rights reserved.
//

import UIKit

class HLRequest: NSObject {
    
    var delegate: HLRequestDelegate?
    
    func executeRequest()
    {
        println("Attempt to execute request")
        
        delegate?.doNothing()
        delegate?.request(self, didSucceedWithData: NSData())
    }
}