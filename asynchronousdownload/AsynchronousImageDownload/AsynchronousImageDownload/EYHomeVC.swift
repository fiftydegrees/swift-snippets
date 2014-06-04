//
//  EYHomeVC.swift
//  eiyt-ipad
//
//  Created by Hervé Droit on 03/06/2014.
//  Copyright (c) 2014 Hervé Heurtault de Lammerville. All rights reserved.
//

import UIKit

class EYHomeVC: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet var collectionView : UICollectionView
    
    //Init
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    //Init
    init(coder aDecoder: NSCoder!)  {
        super.init(coder: aDecoder)
    }
    
    //ViewController
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    //UICollectionViewDataSource
    func collectionView(collectionView: UICollectionView!,
        numberOfItemsInSection section: Int) -> Int
    {
        return 10
    }
    
    //UICollectionViewDataSource
    func collectionView(collectionView: UICollectionView!,
        cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell!
    {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("SingleProductCell", forIndexPath: indexPath) as SingleProductCell;
        
        cell.productImageView.frame = CGRect(x: 0, y: 0, width: cell.frame.size.width, height: cell.frame.size.height);
        
        //H&M Demo Url
        var urlString: NSString = "http://lp2.hm.com/hmprod?set=source[/environment/2014/3AL_0196_015R.jpg],width[3880],height[4537],x[663],y[163],type[FASHION_FRONT]&hmver=0&call=url[file:/product/main]"
        InternalHelper.downloadImage(NSURL(string: urlString), {image, error in
            cell.productImageView.image = image
        })

        return cell;
    }
    
    //UICollectionViewAppearance
    func collectionView(collectionView: UICollectionView!,
        layout collectionViewLayout: UICollectionViewLayout!,
        sizeForItemAtIndexPath indexPath: NSIndexPath!) -> CGSize
    {
        var fWidth: Float32 = (self.view.frame.width - (5 * 4)) / 3.0
        var fHeight: Float32 = fWidth * 1136.0 / 640.0
        
        return CGSize(width: fWidth, height: fHeight)
    }
    
    //System
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
