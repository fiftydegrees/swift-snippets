//
//  HLRequestDelegate.swift
//  BasicProtocol
//
//  Created by Hervé Droit on 04/06/2014.
//  Copyright (c) 2014 Hervé Heurtault de Lammerville. All rights reserved.
//

import Foundation

protocol HLRequestDelegate {
    
    func doNothing()
    func request(request: HLRequest, didSucceedWithData data: NSData)
}