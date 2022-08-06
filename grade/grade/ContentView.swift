
import SwiftUI

struct ContentView: View {
    @State var grade = ""
    @State var finalgrade = ""
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            Color.black
                .ignoresSafeArea()
                .opacity(0.4)
            VStack{
                Text("حاسبة الدرجات")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                Spacer()
                Image("cal")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .shadow(radius: 20)
                    .padding()
                Spacer()
                ZStack{
                    Color.white
                        .frame(width: 275, height: 50)
                        .cornerRadius(50)
                    TextField("ضع درجتك هنا", text: $finalgrade)
                        .frame(width: 260, height: 45)
                        .foregroundColor(.black)
                        .padding()
                }
                .shadow(radius: 10)
                
                ZStack{
                    Color.yellow
                        .frame(width: 130, height: 50)
                        .cornerRadius(50)
                        .shadow(radius: 10)
                        Text("احسب درجتي")
                        .onTapGesture {
                            if (Double(finalgrade) ?? 0) >= 90 {
                                grade = "امتياز"
                            }
                            if (Double(finalgrade) ?? 0) <= 89 && (Double(finalgrade) ?? 0) >= 80 {
                                grade = "جيد جدا"
                            }
                            if (Double(finalgrade) ?? 0) <= 79 && (Double(finalgrade) ?? 0) >= 70 {
                                grade = "جيد"
                            }
                            if (Double(finalgrade) ?? 0) <= 69 && (Double(finalgrade) ?? 0) >= 60 {
                                grade = "مقبول"
                            }
                            if (Double(finalgrade) ?? 0) <= 59 {
                                grade = "راسب"
                            }
                        }

                }
                Spacer()
                Text("لقد حصلت على درجة")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding()
                Text(grade)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 100))
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
