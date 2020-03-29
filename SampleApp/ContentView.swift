import SwiftUI

struct ContentView: View {
    @State var showText = false
    var body: some View {
        VStack{
            Toggle(isOn: $showText){
                Text("テキストを表示する")
            }
            if showText{
                Text("詳しくはWebで！")
            }else{
                Text("・・・")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
