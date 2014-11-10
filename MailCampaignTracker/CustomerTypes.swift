//
//  CustomerTypes.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 11/9/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation

class CustomerTypes {
    
    
    class func createSetOfCustomerTypes() -> [CustomerType] {
        
        
        let customerType1 = CustomerType(title:"Prospect")
        
        let customerType2 = CustomerType(title: "Distributor")
        
        let customerType3 = CustomerType(title: "Attendant")
        
        let customerType4 = CustomerType(title: "Current Customer")
        
        var arrayOfCustomerTypes = [customerType1, customerType2, customerType3, customerType4]
        
        return arrayOfCustomerTypes
    }






}