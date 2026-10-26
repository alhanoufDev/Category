//
//  HeaderTitleView.swift
//  Untitled Project 2
//
//  Created by Alhanouf Sultan on 14/05/1448 AH.
//

import SwiftUI

struct HeaderTitleView: View {
    var title: String="Reflection"
        var onBackTapped: () -> Void // دالة زر الرجوع
        
        var body: some View {
            HStack(spacing: 20) {
                // زر السهم (العودة)
                Button(action: onBackTapped) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(Color(red: 0.15, green: 0.25, blue: 0.15))
                }
                
                // العنوان الرئيسي
                Text(title)
                    .font(.system(size: 28, weight: .bold)) // مطابق لـ Sketch (28pt)
                    .foregroundColor(Color(red: 0.15, green: 0.25, blue: 0.15))
                
                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.top, 10)
            .padding(.bottom, 1)
               .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
    }

    #Preview {
        HeaderTitleView( onBackTapped: {})
    }
