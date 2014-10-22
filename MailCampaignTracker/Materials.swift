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
    
    
class func setOfMailingMaterials()-> [Item] {
    
    
    var volumeI_a = Item()
    volumeI_a.name = "Volume I - Memorial Urn Catalog"
    volumeI_a.edition = 1
    volumeI_a.materialThumbnail = UIImage(named: "missing_image.png")
    volumeI_a.materialThumbnailGrayed = UIImage(named: "missing_image.png")
    volumeI_a.materialImage = UIImage(named: "")
    volumeI_a.hasBeenSent = false
    
    var volumeI_b = Item()
    volumeI_b.name = "Volume I - Memorial Urn Catalog"
    volumeI_b.edition = 2
    volumeI_b.materialThumbnail = UIImage(named: "missing_image.png")
    volumeI_b.materialThumbnailGrayed = UIImage(named: "missing_image.png")
    volumeI_b.materialImage = UIImage(named: "")
    volumeI_b.hasBeenSent = false
    
    var volumeII = Item()
    volumeII.name = "Volume II - Memorial Urn Catalog"
    volumeII.edition = 0
    volumeII.materialThumbnail = UIImage(named: "missing_image.png")
    volumeII.materialThumbnailGrayed = UIImage(named: "missing_image.png")
    volumeII.materialImage = UIImage(named: "")
    volumeII.hasBeenSent = false
    
    var pet = Item()
    pet.name = "Pet Memorial Urns & Appliques"
    pet.edition = 0
    pet.materialThumbnail = UIImage(named: "PetCatalogCover.jpg")
    pet.materialThumbnailGrayed = UIImage(named: "PetCatalogGray.jpg")
    pet.materialImage = UIImage(named: "")
    pet.hasBeenSent = true
    
    var applique_a = Item()
    applique_a.name = "The Encyclopedia of Appliques"
    applique_a.edition = 1
    applique_a.materialThumbnail = UIImage(named: "missing_image.png")
    applique_a.materialThumbnailGrayed = UIImage(named: "missing_image.png")
    applique_a.materialImage = UIImage(named: "")
    applique_a.hasBeenSent = false
    
    var applique_b = Item()
    applique_b.name = "The Encyclopedia of Appliques & Engraving"
    applique_b.edition = 2
    applique_b.materialThumbnail = UIImage(named: "missing_image.png")
    applique_b.materialThumbnailGrayed = UIImage(named: "missing_image.png")
    applique_b.materialImage = UIImage(named: "")
    applique_b.hasBeenSent = false
    
    var unique_a = Item()
    unique_a.name = "Unique Funeral Supplies"
    unique_a.edition = 1
    unique_a.materialThumbnail = UIImage(named: "missing_image.png")
    unique_a.materialThumbnailGrayed = UIImage(named: "missing_image.png")
    unique_a.materialImage = UIImage(named: "")
    unique_a.hasBeenSent = false
    
    var unique_b = Item()
    unique_b.name = "Unique Funeral Supplies"
    unique_b.edition = 2
    unique_b.materialThumbnail = UIImage(named: "missing_image.png")
    unique_b.materialThumbnailGrayed = UIImage(named: "missing_image.png")
    unique_b.materialImage = UIImage(named: "")
    unique_b.hasBeenSent = false
    
    
    var arrayOfMaterials = [volumeI_a, volumeI_b, applique_a, applique_b, pet, unique_a, unique_b]
    
    
    return arrayOfMaterials
}

}









