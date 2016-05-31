//
//  EditPasswordPasswordScreen.swift
//  FinalProjectEvalue
//
//  Created by Fady Ramzy on 5/27/16.
//  Copyright © 2016 JETS. All rights reserved.
//

import UIKit

class EditPasswordPasswordScreen: UIViewController {

    //An Object From The App Delegate
    
     var appDele: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    @IBOutlet var oldPasswordTextField:UITextField!
    
    
    @IBOutlet var newPasswordTextField: UITextField!
    
    @IBOutlet var confirmPasswordTextField: UITextField!
    
    
    var userEmail:String!
    var userName:String!
    var userGender:String!
    var userImageSelected:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitInfoButton(sender: AnyObject) {
        
        
        //Calling WebService
//        
//        var myUrl:String!
//        
//        myUrl = ""
//        
//        var url = NSURL(string: myUrl)
//        
//        var request = NSURLRequest(URL: url!)
//        
//        var session = NSURLSession.sharedSession()
//        
//        let task = session.dataTaskWithRequest(request) { (data, response, error) in
//            
//            do {
//            
//                var json = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)
//             
//                
//                
//                dispatch_async(dispatch_get_main_queue(), {
//                    <#code#>
//                })
//            
//            }
//            
//            catch let error as NSError{
//            
//                print(error.localizedDescription)
//            }
//        }
//        
//        task.resume()
        
        print(userEmail)
        print(userName)
        print(userGender)
        print(userImageSelected)
        print(oldPasswordTextField.text!)
        print(newPasswordTextField.text!)
        print(confirmPasswordTextField.text!)
        print("Your Data Has Been Updated")
        
         var loginScreen = storyboard?.instantiateViewControllerWithIdentifier("myLoginScreen") as! LoginScreen
        
        var myNav = appDele.centerContainer?.centerViewController as! UINavigationController
        
        //self.dismissViewControllerAnimated(true, completion: nil)
        //self.presentViewController(loginScreen, animated: true, completion: nil)
        
        
        self.navigationController?.pushViewController(loginScreen, animated: true)
        
        //self.navigationController?.pushViewController(loginScreen, animated: true)
        
        //self.presentViewController(view, animated: true, completion: nil)
     
    }
    
    
    @IBAction func declineButton(sender: AnyObject) {
        
//       var loginScreen = storyboard?.instantiateViewControllerWithIdentifier("LoginScreen") as! LoginScreen
//        
//        var myNav = appDele.centerContainer?.centerViewController as! UINavigationController
//        
//        myNav.pushViewController(loginScreen, animated: true)
        
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

}
