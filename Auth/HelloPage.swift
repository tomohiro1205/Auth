//
//  HelloPage.swift
//  Auth
//
//  Created by 木村朋広 on 2024/03/13.
//

import SwiftUI
import Firebase
// ログイン後の画面
struct HelloPage: View {
    var viewModel: AuthViewModel
    @State var userUID: String? = nil

    var body: some View {
        VStack {


            Text("Hello, you're logged in!")
                .font(.title)
                .padding()
            if let uid = userUID {
                Text("Your UID: \(uid)")
            }
            Button("Log Out") {
                // ログアウトしてログイン画面へ遷移する
                viewModel.signOut()
            }
        }
        .onAppear {
                   // ユーザーがログインしているかを確認し、ログインしている場合はUIDを取得する
                   if let currentUser = Auth.auth().currentUser {
                       self.userUID = currentUser.uid
                    }
                }
    }
}
