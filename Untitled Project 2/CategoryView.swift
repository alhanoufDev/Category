//
//  CategoryView.swift
//  Untitled Project 2
//
//  Created by Alhanouf Sultan on 14/05/1448 AH.
//

import SwiftUI

struct CategoryView: View {
    @State private var currentTab = "Reflection"
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ZStack{
            BackgroundImage()
            
            VStack{
                Text("Category")
                    .font(.system(size: 38, weight: .bold))
                    .foregroundColor(Color(red: 0.15, green: 0.25, blue: 0.15))                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    .padding(40)
              
                CategoryButtonView(title: "Icebreakers ", subtitle: "Start Conversations with Confidence.") {
                    
                }
                CategoryButtonView(title: "Conversational Turn-Taking", subtitle: "Start Conversation with confidence.") {
                    
                }
                CategoryButtonView(title: "Overcoming the Awkward Silence", subtitle: "Start Conversation with confidence.") {
                    
                }
                CategoryButtonView(title: "The Micro-Validation ", subtitle: "Start Conversation with confidence.") {
                    
                }
                BottomBarView(
                    onCategoryTapped: {
                        currentTab = "Category"
                    },
                    onReflectionTapped: {
                        currentTab = "Reflection"
                    },
                    selectedTab: $currentTab
                )
                
            }
        }
    }
}

#Preview {
    CategoryView()
}
