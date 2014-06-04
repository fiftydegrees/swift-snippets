//
//  InternalHelper.swift
//  eiyt-ipad
//
//  Created by Hervé Droit on 04/06/2014.
//  Copyright (c) 2014 Hervé Heurtault de Lammerville. All rights reserved.
//

import Foundation
import UIKit

class InternalHelper {
    
    class func dataToJson(data: NSData) -> NSDictionary
    {
        var error: NSError?
        var jsonDictionary: NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary
        return jsonDictionary
    }
    
    class func downloadImage(url: NSURL, handler: ((image: UIImage, NSError!) -> Void))
    {
        var imageRequest: NSURLRequest = NSURLRequest(URL: url)
        NSURLConnection.sendAsynchronousRequest(imageRequest,
                                                queue: NSOperationQueue.mainQueue(),
                                                completionHandler:{response, data, error in
            handler(image: UIImage(data: data), error)
        })
    }
}