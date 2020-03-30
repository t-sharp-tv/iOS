import SwiftUI

struct ContentView: View {
    @State var showText = false
    @State var name = ""
    @State var pwd = ""
    @State var pound: Double = 0
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
            TextField("氏名を入力してください", text:$name)
            Text("こんにちは！\(name)")
            SecureField("パスワードを入力してください", text:$pwd)
            Text("パスワードは\(pwd)")
            Slider(value: $pound, in: 0...10, step: 1)
            Text("\(pound)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
