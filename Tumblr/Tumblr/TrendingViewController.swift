//
//  TrendingViewController.swift
//  Tumblr
//
//  Created by Jenn Leung on 2/26/16.
//  Copyright © 2016 Jenn Leung. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {
    
    @IBOutlet var feedView: UIImageView!
    @IBOutlet var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //scrollView.contentSize = feedView.image!.size
        scrollView.contentSize = feedView.image!.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
