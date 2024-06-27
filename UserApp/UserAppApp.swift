//
//  UserAppApp.swift
//  UserApp
//
//  Created by admin on 22/05/24.
//

import SwiftUI

@main
struct UserAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelgate.self) var appDelgate 
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelgate: NSObject,UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
}
