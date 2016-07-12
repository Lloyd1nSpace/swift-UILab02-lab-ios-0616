//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets
    @IBOutlet var paintBucketView: UIView!
    @IBOutlet weak var firstColor: UISegmentedControl!
    @IBOutlet weak var secondColor: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucketView.paintColorName = "red"
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // This was pretty straightforward however it wasn't working for me at first because I had a capitalized the segmented controls when defining their title but was checking it all lowercase.
        
        var mixPrimary: String = ""
        
        if first == "Red" && second == "Blue" {
            mixPrimary = "purple"
        } else if first == "Blue" && second == "Red" {
            mixPrimary = "purple"
        } else if first == "Red" && second == "Red" {
            mixPrimary = "red"
        } else if first == "Red" && second == "Yellow" {
            mixPrimary = "orange"
        } else if first == "Yellow" && second == "Red" {
            mixPrimary = "orange"
        } else if first == "Yellow" && second == "Yellow" {
            mixPrimary = "yellow"
        } else if first == "Yellow" && second == "Blue" {
            mixPrimary = "green"
        } else if first == "Blue" && second == "Yellow" {
            mixPrimary = "green"
        } else if first == "Blue" && second == "Blue" {
            mixPrimary = "blue"
        }

        return mixPrimary
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // This function has both UISegmentedControls linked to it calling the mixColors function & ensuring the paint bucket's color is reflecting the mix of colors.

        let mixColor = mixColors(withFirst: firstColor.color.name, second: secondColor.color.name)
        paintBucketView.paintColorName = mixColor
        
    }
}