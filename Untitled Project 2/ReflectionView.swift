import SwiftUI

struct ReflectionView: View {
    // متغير لتحديد التبويب النشط في الشريط السفلي
    @State private var currentTab = "Reflection"
    
    var body: some View {
        ZStack {
            // 1. خلفية التطبيق (لو عندك كلاس للخلفية أو لون ثابت)
          BackgroundImage()
               // .ignoresSafeArea()

            VStack {
                
                // 2. الهيدر في الأعلى (ثابت ولا يتحرك مع السكرول)
                HeaderTitleView(title: "Reflection") {
                    // هنا تحطين أكشن زر الرجوع، مثلاً:
                }
               // .padding(.bottom, 10)

                // 3. المحتوى القابل للتمرير في المنتصف (هو الوحيد اللي يتحرك)
                ScrollableContentView {
                    
                    
                }

                // 4. الشريط السفلي في الأسفل (ثابت ولا يتحرك مع السكرول)
                BottomBarView(
                    onCategoryTapped: {
                        currentTab = "Category"
                    },
                    onReflectionTapped: {
                        currentTab = "Reflection"
                    },
                    selectedTab: $currentTab
                )
               // .padding(.bottom, 1)
            }
        }
    }
}

#Preview {
    ReflectionView()
}
