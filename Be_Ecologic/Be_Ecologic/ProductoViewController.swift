//
//  ProductoViewController.swift
//  Be_Ecologic
//
//  Created by Eric García on 23/03/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

import UIKit

class ProductoViewController: UIViewController {

    var productoImage: NSData!
    var boteImage: String!
    var textoText: String!
    var productoNombre: String!
    
    @IBOutlet weak var productoImageView: UIImageView!
    @IBOutlet weak var boteImageView: UIImageView!
    @IBOutlet weak var textoTextView: UITextView!
    
    @IBOutlet weak var productoNombreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //productoImageView.image = productoImage
        boteImageView.image = UIImage(named: boteImage)
        productoImageView.image = UIImage(data: productoImage)
        productoNombreLabel.text = productoNombre
        textoTextView.text = textoText
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
