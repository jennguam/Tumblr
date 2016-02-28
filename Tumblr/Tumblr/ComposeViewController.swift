//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Jenn Leung on 2/26/16.
//  Copyright © 2016 Jenn Leung. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    @IBOutlet var textButton: UIImageView!
    @IBOutlet var photoButton: UIImageView!
    @IBOutlet var quoteButton: UIImageView!
    @IBOutlet var linkButton: UIImageView!
    @IBOutlet var chatButton: UIImageView!
    @IBOutlet var videoButton: UIImageView!
    var origText: CGPoint!
    var origPhoto: CGPoint!
    var origQuote: CGPoint!
    var origLink: CGPoint!
    var origChat: CGPoint!
    var origVideo: CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        origText = CGPoint(x: textButton.center.x, y: textButton.center.y)
        origPhoto = CGPoint(x: photoButton.center.x,y: photoButton.center.y)
        origQuote = CGPoint(x: quoteButton.center.x, y: quoteButton.center.y)
        origLink = CGPoint(x: linkButton.center.x, y: linkButton.center.y)
        origChat = CGPoint(x: chatButton.center.x, y: chatButton.center.y)
        origVideo =  CGPoint(x: videoButton.center.x, y: videoButton.center.y)
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        //    Within the viewWillAppear method, set the initial positions of the compose buttons to below the screen.
        
        let buttonsToMove = [textButton, photoButton, quoteButton, linkButton, chatButton, videoButton]
        for button in buttonsToMove {
            moveButton(button)
        }
        
    }
    
    func moveButton(button: UIImageView){
        button.center.y += 402
    }
    
    override func viewDidAppear(animated: Bool) {
        //super??
        //    Add a viewDidAppear method. Within the viewDidAppear method, schedule the animations of the compose buttons.
        
        
        UIView.animateWithDuration(0.2, delay: 0, options: [], animations: { () -> Void in
            self.photoButton.center.y = self.origPhoto.y
            
            }, completion: { (Bool) -> Void in
                UIView.animateWithDuration(0.2, animations: { () -> Void in
                    self.quoteButton.center.y = self.origQuote.y
                })
                
        })
        
        UIView.animateWithDuration(0.25, delay: 0.1, options: [], animations: { () -> Void in
            self.textButton.center.y = self.origText.y
            
            }, completion: { (Bool) -> Void in
                UIView.animateWithDuration(0.15, animations: { () -> Void in
                    self.chatButton.center.y = self.origChat.y
                })
                
        })
        
        UIView.animateWithDuration(0.35, delay: 0.2, options: [], animations: { () -> Void in
            self.linkButton.center.y = self.origLink.y
            
            }, completion: { (Bool) -> Void in
                UIView.animateWithDuration(0.3, animations: { () -> Void in
                    self.videoButton.center.y = self.origVideo.y
                })
                
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func nevermindButton(sender: AnyObject) {
        //    Tapping the "Nevermind" button should dismiss the ComposeViewController.
        dismissViewControllerAnimated(true, completion: nil)

    }
    
    
    
}
