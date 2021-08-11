//
//  AppDelegate.swift
//  TestAWS
//
//  Created by Antonio Rodrigues on 8/10/21.
//

import UIKit

import AWSS3

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        AWSS3TransferUtility.s3TransferUtility(forKey: "Cellular")

        return true
    }

    // MARK: UISceneSession Lifecycle



}

