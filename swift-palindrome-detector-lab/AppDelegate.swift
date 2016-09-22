//
//  AppDelegate.swift
//  swift-palindrome-detector-lab
//
//  Created by Flatiron School on 9/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        var arguementVariable = "Hello, You!"
        arguementVariable = arguementVariable.replacingOccurrences(of: " ", with: "")
        
        let characters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        
        var reveresedString = ""
        
        
        //            arguementVariable = arguementVariable.replacingOccurrences(of: ".", with: "")
        //            arguementVariable = arguementVariable.replacingOccurrences(of: ",", with: "")
        //            arguementVariable = arguementVariable.replacingOccurrences(of: "!", with: "")
        //            arguementVariable = arguementVariable.replacingOccurrences(of: ":", with: "")
        //            arguementVariable = arguementVariable.replacingOccurrences(of: ";", with: "")
        //            arguementVariable = arguementVariable.replacingOccurrences(of: "-", with: "")
        //            arguementVariable = arguementVariable.replacingOccurrences(of: "?", with: "")
        
        
        func stringIsPalindrome(arguement: String) -> Bool {
            
            if arguement == reveresedString {
                return true
            }
            else {
                return false
            }
            
        }
        
        
        
        func stringByReversingString(arguement: String) -> String {
            
            var stringArray: [String] = []
            var reversedArray: [String] = []
            let stringChar = arguement.lowercased().characters
            
            for element in stringChar {
                if characters.contains("\(element)") {
                    stringArray.append("\(element)")
                }
            }
            
            
            for letter in stringArray.reversed() {
                reversedArray.append(letter)
            }
            
            reveresedString += reversedArray.joined()
            
            print(reveresedString)
            
            return "\(reveresedString)"
        }
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    


}

