//
//  LoadSaveFromPlist.swift
//  Saving Data with plist
//
//  Created by Mark Stuver on 11/15/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation

// Use this class to call it's class methods that will load and save data to a plist
class LoadSavePlist {
    
    
    // MARK: - Load Data Function
    class func loadDataFromPlist() -> [[String:String]] {
        
        // using helper method, grab the directory/filename
        let fileAtPath = self.grabPlistPath()
        
        // Load data from plist into an Array
        var arrayData : [String:String] = NSArray(contentsOfFile: fileAtPath)
        
        // Return Array
        return arrayData
    }
    
    
    // MARK: - Save Data Function
    class func saveDataToPlist(dataToSave:[[String:String]]){
        
        // using helper method, grab the directory/filename
        let filePath = self.grabPlistPath()
        
        // load current data from plist
        let currentFileData: [String:String] = self.loadDataFromPlist()
        
        // create new array equal to the data in the plist and the data passed into the function, cast as NSArray
        var newFileData = (currentFileData + dataToSave) as NSArray
        
        // write data to the file
        newFileData.writeToFile(filePath, atomically: true)
        
        println("data saved: \(newFileData)")
    }
    
    // MARK: - Helper Function
    class func grabPlistPath() ->String {
        
        // create constant equal to the ...DirectoriesInDomains Array
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as Array
        
        // Create constant equal to the string object at the 0 index of the paths Array
        let documentDirectory = paths[0] as String
       
        // Create constant equal to the filename MyDataFile.plist
        let path = documentDirectory.stringByAppendingPathComponent("groupData.plist")
        
        // Create instant of the NSFileManager which returns the shared object
        let  fileManager = NSFileManager.defaultManager()
        
        // Check to see if fileManager exists...
        if (!fileManager.fileExistsAtPath(path)) {
            
            // If file does not exsist, create one by getting a copy of the defaultFile.plist
            let bundle = NSBundle.mainBundle().pathForResource("defaultFile", ofType: "plist")
            
            // If Bundle is not nil
            if bundle != nil {
                
                // Create instance of NSError for use in copyItemAtPath function below
                var fileCopyError : NSError? = NSError()
                
                // Copy the defaultFile.plist's data to the MyDataFile.plist
                fileManager.copyItemAtPath(bundle!, toPath: path, error: &fileCopyError)
        
            }
                // Else, defaultFile.plist does not exsist
            else    {
                // Print Error Message to Console
                println("Error: defaultFile.plist does not exsist. No file to copy")
                
            }

    }
 
        return path

}

}
