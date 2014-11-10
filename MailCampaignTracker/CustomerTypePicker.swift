//
//  CustomerTypePicker.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 11/9/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

class CustomerTypePicker: UIPickerView {
    
    let customerTypes = CustomerTypes.createSetOfCustomerTypes()

    

      // returns the # of rows in each component..
    override func numberOfRowsInComponent(component: Int) -> Int {
        
        return customerTypes.count
    }
    
    
    
    
    
    
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
