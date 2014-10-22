//
//  Materials.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 10/2/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation
import UIKit

class Materials {
    
    
class func setOfMailingMaterials()-> [Material] {
    
    var volumeI_a = Material()
    volumeI_a.name = "Volume I - Memorial Urn Catalog"
    volumeI_a.edition = 1
    volumeI_a.materialImage = UIImage(named: "")
    volumeI_a.hasBeenSent = false
    volumeI_a.withPriceList = true
    
    var volumeI_b = Material()
    volumeI_b.name = "Volume I - Memorial Urn Catalog"
    volumeI_b.edition = 2
    volumeI_b.materialImage = UIImage(named: "")
    volumeI_b.hasBeenSent = false
    volumeI_b.withPriceList = true
    
    var volumeII = Material()
    volumeII.name = "Volume II - Memorial Urn Catalog"
    volumeII.edition = 0
    volumeII.materialImage = UIImage(named: "")
    volumeII.hasBeenSent = false
    volumeII.withPriceList = true
    
    var pet = Material()
    pet.name = "Pet Memorial Urns & Appliques"
    pet.edition = 0
    pet.materialImage = UIImage(named: "")
    pet.hasBeenSent = true
    pet.withPriceList = true
    
    var applique_a = Material()
    applique_a.name = "The Encyclopedia of Appliques"
    applique_a.edition = 1
    applique_a.materialImage = UIImage(named: "")
    applique_a.hasBeenSent = false
    applique_a.withPriceList = true
    
    var applique_b = Material()
    applique_b.name = "The Encyclopedia of Appliques & Engraving"
    applique_b.edition = 2
    applique_b.materialImage = UIImage(named: "")
    applique_b.hasBeenSent = false
    applique_b.withPriceList = true
    
    var unique_a = Material()
    unique_a.name = "Unique Funeral Supplies"
    unique_a.edition = 1
    unique_a.materialImage = UIImage(named: "")
    unique_a.hasBeenSent = false
    unique_a.withPriceList = true
    
    var unique_b = Material()
    unique_b.name = "Unique Funeral Supplies"
    unique_b.edition = 2
    unique_b.materialImage = UIImage(named: "")
    unique_b.hasBeenSent = false
    unique_b.withPriceList = true
    
    var businessCard = Material()
    businessCard.name = "Business Card"
    businessCard.edition = 0
    businessCard.materialImage = UIImage(named: "")
    businessCard.hasBeenSent = false
    businessCard.withPriceList = false
    
    var whoWhat = Material()
    whoWhat.name = "Who/What is Halo"
    whoWhat.edition = 0
    whoWhat.materialImage = UIImage(named: "")
    whoWhat.hasBeenSent = false
    whoWhat.withPriceList = false
    
    var arrayOfMaterials = [volumeI_a, volumeI_b, applique_a, applique_b, pet, unique_a, unique_b, businessCard, whoWhat]
    
    return arrayOfMaterials
}

}









