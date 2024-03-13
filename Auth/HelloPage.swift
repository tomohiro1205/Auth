//
//  HelloPage.swift
//  Auth
//
//  Created by 木村朋広 on 2024/03/13.
//

import SwiftUI

// ログイン後の画面
struct HelloPage: View {
    var viewModel: AuthViewModel

    var body: some View {
        VStack {
            Text("Hello, you're logged in!")
                .font(.title)
                .padding()
            Button("Log Out") {
                // ログアウトしてログイン画面へ遷移する
                viewModel.signOut()
            }
        }
    }
}
