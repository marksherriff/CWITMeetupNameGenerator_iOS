//
//  ViewController.swift
//  CWIT Meetup Name Generator
//
//  Created by sherriff on 8/9/16.
//  Copyright © 2016 Mark Sherriff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    
    @IBAction func generateMeetupName(sender: UIButton) {
        
        var list = [String]()
        list += ["Technology", "Transfer", "Food", "iOS", "Leveraged", "Mobile"]
        let randomWord1 = list[Int(arc4random_uniform(UInt32(list.count)))]
        let randomWord2 = list[Int(arc4random_uniform(UInt32(list.count)))]
        let randomWord3 = list[Int(arc4random_uniform(UInt32(list.count)))]
        let meetupName = randomWord1 + " " + randomWord2 + " " + randomWord3
        print(meetupName)
        
        let alert = UIAlertController(title: "Meetup Name", message: meetupName, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    


}

