
import SwiftUI

struct ContentView: View {
    @State var track = ""
    @State var opa: Double = 0
    @State var opab: Double = 0
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            Color.white
                .ignoresSafeArea()
                .opacity(opa)
            Color("darkred")
                .ignoresSafeArea()
                .opacity(0.05)
            VStack{
                Text("ما هو المسار المفضل لك؟")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                Image(track)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .padding()
                Spacer()
                ZStack{
                    Color.black
                        .frame(width: 150, height: 50)
                        .cornerRadius(50)
                    Text("IOS")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                .onTapGesture {
                    track = "ap"
                    opa = 0.1
                    opab = 0
                }
                .shadow(radius: 20)
                .padding()
                ZStack{
                    Color("darkred")
                        .frame(width: 150, height: 50)
                        .cornerRadius(50)
                    Text("GameDev")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                .onTapGesture {
                    track = "un"
                    opab = 0.1
                    opa = 0
                }
                .shadow(radius: 20)
                .padding()
                ZStack{
                    Color.blue
                        .frame(width: 150, height: 50)
                        .cornerRadius(50)
                    Text("Web")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                .onTapGesture {
                    track = "vs"
                    opa = 0
                    opab = 0
                }
                .shadow(radius: 20)
                .padding()
                ZStack{
                    Color.green
                        .frame(width: 150, height: 50)
                        .cornerRadius(50)
                    Text("Android")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }

                .onTapGesture {
                    track = "an"
                    opa = 0
                    opab = 0
                }
                .shadow(radius: 20)
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
