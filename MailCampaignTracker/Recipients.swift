//
//  Recipients.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/22/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation

class Recipients {
    
    class func createRecipients() -> [Recipient] {
        
        var recipient1 = Recipient(name: "Joe & Joe's Funeral Home", firstName: "Joe", lastName: "Fabeats" , address1: "9324 Ravenna Road", address2: "", city: "Twinsburg", state: "OH", zipcode: 44087, customerType: "FH Prospect", groups: [Group]?())
        
        var recipient2 = Recipient(name: "Ray, Ray's Funeral Homes", firstName: "Ray", lastName: "Kay", address1: "5543 55th & Harvard", address2: "apt 33", city: "Cleveland", state: "OH", zipcode: 44114, customerType: "FH Prospect", groups: [Group]?())
        
        var recipient3 = Recipient(name: "Howard's Funeral Supply Company", firstName: "Howard", lastName: "Johnsons", address1: "23456 Chigrin Town Road", address2: "", city: "Atlanta", state: "GA", zipcode: 54545, customerType: "Distributor Prospect", groups: [Group]?())
        
        var recipient4 = Recipient(name: "Ambassador Associates", firstName: "Carol", lastName: "Poole", address1: "3434 Somewhere South Dr.", address2: "", city: "SomeWhere", state: "NC", zipcode: 01234, customerType: "Current Distributor", groups: [Group]?())
        
        var recipient5 = Recipient(name: "Christiansen Funeral Home", firstName: "Rob", lastName: "Christiansen", address1: "2134 Michigan Road", address2: "", city: "Grand Rapids", state: "MI", zipcode: 23132, customerType: "Current FH Discount", groups: [Group]?())

        
        
        
        
        var arrayOfRecipients = [recipient1, recipient2, recipient3, recipient4, recipient5]
        
        
        return arrayOfRecipients
    }
    
    
// Helper Method
    func returnFullName(firstName:String, lastName:String) -> String {
        
        let fullName = "\(firstName) \(lastName)"
        
        return fullName
    }
    
}
