//
//  MaterialItem.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/21/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation
import UIKit


struct Item {
    
    var name = ""
    var edition = 0
    var materialThumbnail = UIImage(named: "")
    var materialThumbnailGrayed = UIImage(named: "")
    var materialImage = UIImage(named: "")
    var hasBeenSent = false
}