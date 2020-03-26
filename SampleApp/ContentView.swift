import SwiftUI

struct ContentView: View {
    @State var labelText = "Hello, swift"
    
    var body: some View {
        VStack {
            VStack(spacing: 80) {
                Text(labelText)
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                Button(action: {self.labelText = "Yes Tapped"}) {
                    Text("TAP!")
                        .font(.footnote)
                        .fontWeight(.thin)
                        .foregroundColor(Color.black)
                        .frame(width: 70,height: 20)
                        .border(Color.gray)
                        .background(Color.yellow)
                        .padding(50)
                        .background(Color.red)
                
                    
                }
                Circle()
                    .frame(width: 150,height: 150)
                
            }
            Text("Hello")
                .background(Color.yellow)
                .overlay(
                    Color.green
                        .offset(x:10,y:10))
                .overlay(
                    Text("swift")
                        .background(Color.pink)
                        .offset(x:20,y:20))
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
