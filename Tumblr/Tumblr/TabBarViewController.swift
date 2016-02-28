//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Jenn Leung on 2/26/16.
//  Copyright © 2016 Jenn Leung. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet var contentView: UIView!
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var composeViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle:nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        
        homeViewController.view.frame = contentView.bounds
        contentView.addSubview(homeViewController.view)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onHomeButton(sender: AnyObject) {
        homeViewController.view.frame = contentView.bounds
        contentView.addSubview(homeViewController.view)
    }
    
   
    @IBAction func onComposeButton(sender: AnyObject) {
        composeViewController.view.frame = contentView.bounds
//        composeViewController.view.backgroundColor = UIColor.clearColor()
//        presentingViewController.modalPresentationStyle = UIModalPresentationStyle.CurrentContext
//        presentingViewController.presentViewController(self, animated: true completion: nil)

    }
    
    @IBAction func onSearchButton(sender: AnyObject) {
        searchViewController.view.frame = contentView.bounds
        contentView.addSubview(searchViewController.view)
    }
    
    
    @IBAction func onAccountButton(sender: UIButton) {
        accountViewController.view.frame = contentView.bounds
        contentView.addSubview(accountViewController.view)

    }
    
    @IBAction func onTrendingButton(sender: UIButton) {
        trendingViewController.view.frame = contentView.bounds
        contentView.addSubview(trendingViewController.view)

    }
    
    
   

}
