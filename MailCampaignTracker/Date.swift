//
//  Date.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/21/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation

class Date {

    class func dateMailingCreated(isDateTodays todaysDate: Bool) -> String {
        
        // if dateToday is false
        if todaysDate != true {
            
//TODO - DATEPICKER DATA HERE
            
            // DATEPICKER INFO WILL BE HANDLED HERE
            println("The date was not today. Function will return the date choosen in the date picker")
            
            let date = "October 21, 2014"
            return date
        }
            
        else {
    
            // dateToday is true. Get current date.
            var date:String = Date.currentDate()
        
            return date
    }
        
        
        }
        
    
            
            


// Helper Method

    class func currentDate() -> String {
    
        let timestamp = NSDateFormatter.localizedStringFromDate(NSDate(),
            // Choose from .NoStyle, .ShortStyle, .MediumStyle, .LongStyle & .FullStyle
            dateStyle: .LongStyle,
            timeStyle: .NoStyle)
    
        return timestamp
    }

    
    
    
}