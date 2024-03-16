//
//  AuthApp.swift
//  Auth
//
//  Created by 木村朋広 on 2024/03/13.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()

        return true
    }
}


@main
struct AuthApp: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var viewModel = AuthViewModel()

    var body: some Scene {
        WindowGroup {
            if viewModel.isAuthenticated {
                HelloPage(viewModel: viewModel)
            } else {
                SignInView(viewModel: viewModel)
            }
        }
    }
}
