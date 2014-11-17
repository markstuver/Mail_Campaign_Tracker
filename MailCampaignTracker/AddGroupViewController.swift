//
//  AddGroupViewController.swift
//  MailCampaignTracker
//
//  Created by Mark Stuver on 11/9/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

class AddGroupViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var groupNameTextField: UITextField!
    
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBOutlet weak var customerTypeLabel: UILabel!
    
    @IBOutlet weak var customerTypePickerLabel: UIPickerView!
    
    @IBOutlet weak var dateCreatedLabel: UILabel!
    
    let customerTypeLabels = CustomerTypes.createSetOfCustomerTypes()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func todaysDateButtonPressed(sender: AnyObject) {
        
    }
    
    
    
    @IBAction func cancelAddGroupButtonPressed(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

    @IBAction func addGroupButtonPressed(sender: AnyObject) {
        
        self.addNewGroupToPlist()
        
        
        
        
        // Dismiss addGroupVC view
        self.dismissViewControllerAnimated(true, completion: nil)

        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: - Delegates and data sources
    
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return customerTypeLabels.count
    }
    
    
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        let currentType = customerTypeLabels[row]
        let currentTitle = currentType.title
        return currentTitle
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let currentType = customerTypeLabels[row]
       // testLabel.text = currentType.title
    }
    
    
    
    func addNewGroupToPlist() {
        
        var dictionaryOfNewGroupInfo : [String:String] = ["GroupName":self.groupNameTextField.text, "Discription":self.descriptionTextField.text, "CustomerType": "", "DateCreated":""]
        
        var arrayOfGroupsFromPlist = LoadSavePlist.loadDataFromPlist()
        
        arrayOfGroupsFromPlist += dictionaryOfNewGroupInfo
        
        
        exsistingGroupsFromPlist =
        
        
        LoadSavePlist.saveDataToPlist(<#dataToSave: [AnyObject]#>)
        
        
        
        println("\(exsistingGroupsFromPlist.description)")
        println("\(dictionaryOfNewGroupInfo.description)")

    }
    
//    -(void)AddTaskToSavedTasks
//    {
//    /// Create instance of NSDictionary and load with values from textField, textView & date picked
//    NSDictionary *dictionary = @{TASK_NAME: self.taskNameTextField.text, TASK_DETAIL : self.taskDetailTextView.text, TASK_DATE : self.taskDatePicker.date};
//    
//    /// Create mutableArray from the exsisting tasks in NSUserDefaults
//    NSMutableArray *tasksAddedAsPropertyList =
//    [[[NSUserDefaults standardUserDefaults] ///returns NSUserDefaults propertylist with current saved tasks
//    arrayForKey:ADDED_TASK_TO_PLIST] ///get array from ADDED_TASK_TO_PLIST key in returned propertyList
//    mutableCopy]; ///make a mutable copy of the array to set it as the value of the mutableArray
//    
//    /// if tasksAddedAsPropertyList has not been created... create it.
//    if (!tasksAddedAsPropertyList) {
//    tasksAddedAsPropertyList = [[NSMutableArray alloc] init];
//    }
//    /// if already created... do this:
//    ///add the dictionary to the tasksAddedAsPropertyList array
//    [tasksAddedAsPropertyList addObject:dictionary];
//    
//    /// Set the tasksAddedAsPropertyList array as an object in the NSUserDefaults
//    [[NSUserDefaults standardUserDefaults] setObject:tasksAddedAsPropertyList forKey:ADDED_TASK_TO_PLIST];
//    
//    /// Save the data to the NSUserDefault
//    [[NSUserDefaults standardUserDefaults] synchronize];
//    }




}
