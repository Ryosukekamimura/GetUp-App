


import SwiftUI
import BottomBar_SwiftUI




let items: [BottomBarItem] = [
    BottomBarItem(icon: "house.fill", title: "Home", color: .purple),
    BottomBarItem(icon: "plus.circle", title: "Add", color: .pink),
    BottomBarItem(icon: "person.fill", title: "Share", color: .blue)
]

struct BasicView: View {
    let item: BottomBarItem
    
//    var detailText: String {
//        "\(item.title) Detail"
//    }
//
//
//    var destination: some View {
//        Text(detailText)
//            .navigationBarTitle(Text(detailText))
//    }
//
//    var navigateButton: some View {
//        NavigationLink(destination: destination) {
//            ZStack {
//                Rectangle()
//                    .fill(item.color)
//                    .cornerRadius(8)
//                    .frame(height: 52)
//                    .padding(.horizontal)
//
//                Text("Navigate")
//                    .font(.headline)
//                    .foregroundColor(.white)
//            }
//        }
//    }
    
    
    
    var body: some View {
        VStack {
            Spacer()
            
            
            if item.title == "Home"{
                HomeView()
                    .animation(.easeInOut(duration: 100))
            }else if item.title == "Add"{
                AddView()
                    .animation(.easeInOut(duration: 100))
            }else{
                ShareView()
                    .animation(.easeInOut(duration: 100))
            }
            
            
            Spacer()
//
//            navigateButton
        }
    }
}

struct ContentView : View {
    @State private var selectedIndex: Int = 0
    
    var selectedItem: BottomBarItem {
        items[selectedIndex]
    }
    
    var body: some View {
        NavigationView {
            VStack {
                BasicView(item: selectedItem)
                    .navigationBarTitle(Text(selectedItem.title))
                BottomBar(selectedIndex: $selectedIndex, items: items)
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
