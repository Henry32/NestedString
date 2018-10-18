//
//  AppDelegate.swift
//  StringCheck
//
//  Created by LinhND on 10/17/18.
//  Copyright © 2018 LinhND. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        self.check()
//        self.test()
        return true
    }
    func check(hi: String) -> [NSRange] {
        let regex = try! NSRegularExpression(pattern: "([\\\(hi)])", options: [])
        
        let input = "I'm looking for { {[]} ][ } {}"
        let range = NSRange(location: 0, length: input.utf16.count)
        var arrayRange: [NSRange]
        for match in regex.matches(in: input, options: [], range: range) {
            print(match.range)
            arrayRange.append(match.range)
        }
        return arrayRange
    }
    
    func checkString(string: String) {
        // find {
        let rang1 = self.check(hi: "{")
        // find }
        let rang2 = self.check(hi: "}")
        // if number of character between is odd then fail else true
        
        // find [
        
        // find ]
        // if number of character between is odd then fail else true
        
        // find <
        
        // find >
        // if number of character between is odd then fail else true
        
        // find {
        
        // find }
        // if number of character between is odd then fail else true
    }
    
    func checkCorrect(rang1: [NSRange], rang2: [NSRange]) -> Bool {
        var correctString = false
        for i in 0..<rang1.count {
            for j in 0..<rang2.count {
                if (rang1[i].location - rang2[j].location) % 2 == 0 {
                    if
                }
            }
        }
        
    }
    
    func test() {
        print("------------")
        let regex = try! NSRegularExpression(pattern: "([\\(][)])", options: [])
        
        let input = "I'm looking for { {[]} ][ } {}"
        let range = NSRange(location: 0, length: input.utf16.count)
        
        for match in regex.matches(in: input, options: [], range: range) {
            print(match.range)
        }
    }
    
//    func check() {
//        let regex = try! NSRegularExpression(pattern: "@\\{(\\d+) ?\\| ?(\\w+ *?\\w*?)\\}", options: [])
//        
//        let input = "I'm looking for @{1 | Tom @{2 | Cristal Dawn} Lofe} and @{2 | Cristal Dawn}"
//        let range = NSRange(location: 0, length: input.utf16.count)
//        
//        for match in regex.matches(in: input, options: [], range: range) {
//            print(match.range)
//        }
//    }
    
    func checkString(strCheck:inout String){
        let arrayCheckStr = ["([]{})","(())","(<>)"]
        strCheck = "({[<<>>]} ([([])]{}) (()) (<()>) )"
        var isCheck = true
        var stringCheck = strCheck
        stringCheck.removeFirst()
        stringCheck.removeLast()
        let arrayString = stringCheck.components(separatedBy: ")(")
        for i in 0..<arrayString.count {
            if i == 0 {
                let strFirst = arrayString[i]+")"
                if !arrayCheckStr.contains(strFirst) {
                    isCheck = false
                    break
                }
                print(strFirst)
            } else if i == arrayString.count-1 {
                let strLast = "("+arrayString[i]
                if !arrayCheckStr.contains(strLast) {
                    isCheck = false
                    break
                }
                print(strLast)
            } else{
                let strMid = "("+arrayString[i]+")"
                if !arrayCheckStr.contains(strMid) {
                    isCheck = false
                    break
                }
                print(strMid)
            }
        }
        if isCheck {
            print("chuoi string")
        }else {
            print("k phai")
        }
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

