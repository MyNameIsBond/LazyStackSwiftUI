
import SwiftUI

var rows = [
   GridItem(.flexible())
]

struct HViewGrid: View {
    var title: String
    @State var seeMore = false
    let rows = [
        GridItem(.flexible()),GridItem(.flexible())
    ]
    
    let row = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text(title).bold()
                Spacer()
                Button(action: {
                    withAnimation {
                        self.seeMore.toggle()
                    }
                }, label: {
                    Text( seeMore ? "See Less..." : "See More...")
                })
            }.padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: seeMore ? rows : row, alignment: .firstTextBaseline) {
                        ForEach(cocktails) { m in
                            doubleColumn(m: m).frame(width: 150)
                        }
                    }.padding(.leading).frame(height: seeMore ? 410 : 200)
            }.ignoresSafeArea(edges: .vertical)
            Divider().padding(.all)
            
            LazyHGrid(rows: [GridItem(.fixed(20))], alignment: .center, spacing: nil, pinnedViews: [.sectionHeaders, .sectionFooters], content: {
                Text("Placeholder")
                Text("Placeholder")
            })
        }
    }
}

struct HView_Previews: PreviewProvider {
    static var previews: some View {
        HViewGrid(title: "Your Favourites")
    }
}
