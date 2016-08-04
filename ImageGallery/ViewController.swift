//
//  ViewController.swift
//  ImageGallery
//
//  Created by THUC NHI on 8/4/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageGallery: UIImageView!
    var i: Int = 0
    let gallery : [UIImage] = [
        UIImage(named: "backgroundprofile.png")!,
        UIImage(named: "backgroundedu.png")!,
        UIImage(named: "backgroundexp.png")!,
        UIImage(named: "backgroundaward.png")!,
        UIImage(named: "backgroundskill")!
    ]
    override func viewDidLoad() {
        imageGallery.image = gallery[0]
        let right = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.rightSwiped(_:)) )
        right.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(right)
        
        
        let left = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.leftSwiped(_:)) )
        left.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(left)
        super.viewDidLoad()
    }
 
    func rightSwiped(recognizer: UISwipeGestureRecognizer){
        print("Right Swiped")
        if i < gallery.count && i > 0 {
            i = i - 1
            imageGallery.image = gallery[i]
        }
        

    }
    
    
    func leftSwiped(recognizer: UISwipeGestureRecognizer)
    {
        print("Left Swiped")
        var a = gallery.count - 1
        if i < a {
            i = i + 1
            imageGallery.image = gallery[i]
            
            
        }
        
    }

   
    


}

