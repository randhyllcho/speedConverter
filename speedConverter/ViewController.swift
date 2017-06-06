//
//  ViewController.swift
//  speedConverter
//
//  Created by RYAN CHRISTENSEN on 2/18/16.
//  Copyright © 2016 RYAN CHRISTENSEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var speedLabel: UILabel!
  @IBOutlet weak var speedSlider: UISlider!
  @IBOutlet weak var mphLabel: UILabel!
  @IBOutlet weak var distanceSlider: UISlider!
  @IBOutlet weak var distanceLabel: UILabel!

  var dist = Double()
  var MPH = Double()
  let mound = 60.5
  let convertFactor = 1.47

  override func viewDidLoad() {
    super.viewDidLoad()
    self.MPH = Double(speedSlider.value)
    self.dist = Double(distanceSlider.value)
    getSpeed()
    self.mphLabel.text = "Perceived \(NumberFormatter.sharedInstance.stringForObjectValue(self.speedSlider.value)!)MPH"
    self.distanceLabel.text = "\(NumberFormatter.sharedInstance.stringForObjectValue(self.distanceSlider.value)!)Feet"
  }
  
  @IBAction func speedSliderChanged(sender: AnyObject) {
    self.MPH = Double(speedSlider.value)
    self.mphLabel.text = "Perceived \(NumberFormatter.sharedInstance.stringForObjectValue(self.speedSlider.value)!)MPH"
    getSpeed()
  }
  
  @IBAction func distanceSliderChanged(sender: AnyObject) {
    self.dist = Double(distanceSlider.value)
    self.distanceLabel.text = "\(NumberFormatter.sharedInstance.stringForObjectValue(self.distanceSlider.value)!)Feet"
    getSpeed()
  }

  func getSpeed()  {
    let factor = MPH * convertFactor
    let time = mound / factor
    let newSpeed = NumberFormatter.sharedInstance.stringFromNumber((dist / time) / convertFactor)!
    self.speedLabel.text = "Set Speed to \(newSpeed) MPH"
  }
}

