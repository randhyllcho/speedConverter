//
//  NumberFormatter.swift
//  speedConverter
//
//  Created by RYAN CHRISTENSEN on 2/18/16.
//  Copyright © 2016 RYAN CHRISTENSEN. All rights reserved.
//

import UIKit

class NumberFormatter: NSNumberFormatter {
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)!
  }
  override init() {
    super.init()
    self.maximumFractionDigits = 0
    self.minimumFractionDigits = 0
    self.alwaysShowsDecimalSeparator = false
    self.numberStyle = .DecimalStyle
  }
  static let sharedInstance = NumberFormatter()
}
