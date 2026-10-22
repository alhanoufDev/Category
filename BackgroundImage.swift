//
//  BackgroundImage.swift
//  MyApp
//
//  Created by Alhanouf Sultan on 11/05/1448 AH.
//

import SwiftUI

struct BackgroundImage: View {
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ZStack{
            Image("BackgroungImage")
                //.resizable()
                //.scaledToFill()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    BackgroundImage()
}
