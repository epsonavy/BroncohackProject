//
//  RegisterViewController.swift
//  VolunteerMe
//
//  Created by Pei Liu on 4/14/17.
//  Copyright © 2017 Pei Liu. All rights reserved.
//

import UIKit

class RegisterViewController: UITableViewController {
    let screenWidth: CGFloat = UIScreen.mainScreen().bounds.width
    let screenHeight: CGFloat = UIScreen.mainScreen().bounds.height
    
    var userInfo: UserInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 500.0
        
        initializeUI()
    }
    
    func initializeUI() {
        self.userInfo = UserInfo(email: "test@gmail.com", firstName: "kevin", lastName : "Liu", address : "homeless", phone : 5103430303, points : 0, x : 100, y : 200, photo: "Toast", photoWidth: 300, photoHeight: 208)
        
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("HeaderViewCell", forIndexPath: indexPath) as! HeaderViewCell
            cell.header.text = "Photo"
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCellWithIdentifier("PhotoViewCell", forIndexPath: indexPath) as! PhotoViewCell
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCellWithIdentifier("HeaderViewCell", forIndexPath: indexPath) as! HeaderViewCell
            cell.header.text = "About Your Self"
            return cell
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCellWithIdentifier("InputViewCell", forIndexPath: indexPath) as! InputViewCell
            //cell.title.text = "First Name"
            return cell
        } else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCellWithIdentifier("Input2ViewCell", forIndexPath: indexPath) as! Input2ViewCell
            return cell
        } else if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCellWithIdentifier("Input3ViewCell", forIndexPath: indexPath) as! Input3ViewCell

            return cell
        } else if indexPath.row == 6 {
            let cell = tableView.dequeueReusableCellWithIdentifier("Input4ViewCell", forIndexPath: indexPath) as! Input4ViewCell

            return cell
        }  else if indexPath.row == 7 {
            let cell = tableView.dequeueReusableCellWithIdentifier("CheckViewCell", forIndexPath: indexPath) as! CheckViewCell
            return cell
        } else if indexPath.row == 8 {
            let cell = tableView.dequeueReusableCellWithIdentifier("ButtonViewCell", forIndexPath: indexPath) as! ButtonViewCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("BottomViewCell", forIndexPath: indexPath) as! BottomViewCell
            return cell
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
     
        // for header
        if indexPath.row == 0 || indexPath.row == 2 {
            return 25
        }
        
        // for photo
        if indexPath.row == 1 {
            if let width = userInfo?.photoWidth, height = userInfo?.photoHeight {
                let heightRatio = height / width
                return screenWidth * heightRatio / 2 + 20
            }
        }
        
        // for button
        if indexPath.row == 8 {
            return 80
        }
        return UITableViewAutomaticDimension
    }
}
