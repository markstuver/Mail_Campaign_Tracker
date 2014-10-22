//
//  groupOfRecipients.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/21/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation

class groupOfRecipients {
    
    func createGroupOfRecipients() -> [Recipient] {
        
        var recipient1 = Recipient()
        recipient1.companyName = "Joe Joe's Funeral Home"
        recipient1.contactName = "\(recipient1.contactFirstName) \(recipient1.contactLastName)"
        recipient1.address1 = "9324 Ravenna Road"
        recipient1.city = "Twinsburg"
        recipient1.state = "OH"
        recipient1.zipcode = 44087
        recipient1.customerType = "Funeral Home Prospect"
        
        var recipient2 = Recipient()
        recipient2.companyName = "Joe Joe's Funeral Home"
        recipient2.contactName = "\(recipient1.contactFirstName) \(recipient1.contactLastName)"
        recipient2.address1 = "9324 Ravenna Road"
        recipient2.city = "Twinsburg"
        recipient2.state = "OH"
        recipient2.zipcode = 44087
        recipient2.customerType = "Funeral Home Prospect"

        var recipient3 = Recipient()
        recipient3.companyName = "Joe Joe's Funeral Home"
        recipient3.contactName = "\(recipient1.contactFirstName) \(recipient1.contactLastName)"
        recipient3.address1 = "9324 Ravenna Road"
        recipient3.city = "Twinsburg"
        recipient3.state = "OH"
        recipient3.zipcode = 44087
        recipient3.customerType = "Funeral Home Prospect"

        var recipient4 = Recipient()
        recipient4.companyName = "Joe Joe's Funeral Home"
        recipient4.contactName = "\(recipient1.contactFirstName) \(recipient1.contactLastName)"
        recipient4.address1 = "9324 Ravenna Road"
        recipient4.city = "Twinsburg"
        recipient4.state = "OH"
        recipient4.zipcode = 44087
        recipient4.customerType = "Funeral Home Prospect"

        var recipient5 = Recipient()
        recipient5.companyName = "Joe Joe's Funeral Home"
        recipient5.contactName = "\(recipient1.contactFirstName) \(recipient1.contactLastName)"
        recipient5.address1 = "9324 Ravenna Road"
        recipient5.city = "Twinsburg"
        recipient5.state = "OH"
        recipient5.zipcode = 44087
        recipient5.customerType = "Funeral Home Prospect"

        var recipient6 = Recipient()
        recipient6.companyName = "Joe Joe's Funeral Home"
        recipient6.contactName = "\(recipient1.contactFirstName) \(recipient1.contactLastName)"
        recipient6.address1 = "9324 Ravenna Road"
        recipient6.city = "Twinsburg"
        recipient6.state = "OH"
        recipient6.zipcode = 44087
        recipient6.customerType = "Funeral Home Prospect"

        var arrayOfRecipients = [recipient1, recipient2, recipient3, recipient4, recipient5, recipient6]
        
        
        return arrayOfRecipients
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}