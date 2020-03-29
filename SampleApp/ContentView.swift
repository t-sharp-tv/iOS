import SwiftUI

struct ContentView: View {
    var body: some View {
        var showDetails = true
        return VStack{
            Button(action: {
                showDetails.toggle()
            }) {
                Text("詳細表示")
            }
            
            if showDetails {
                Text("詳しくはWebで！")
                    .font(.largeTitle)
                    .lineLimit(nil)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
