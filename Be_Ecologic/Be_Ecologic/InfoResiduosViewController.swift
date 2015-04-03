//
//  InfoResiduosViewController.swift
//  Be_Ecologic
//
//  Created by Eric García on 23/03/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

import UIKit

class InfoResiduosViewController: UIViewController {

    var boteImage: String!
    var depositarText: String!
    var noDepositarText: String!
    
    @IBOutlet weak var boteImageView: UIImageView!
    @IBOutlet weak var depositarTextView: UITextView!
    @IBOutlet weak var noDepositarTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        boteImageView.image = UIImage(named: boteImage)
        depositarTextView.text = depositarText
        noDepositarTextView.text = noDepositarText
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
