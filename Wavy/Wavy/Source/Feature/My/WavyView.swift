import SwiftUI

struct WavyView: View {
    var body: some View {
        VStack{
            HStack{
                Image(icon: .mainIcon)
                    .resizable()
                    .frame(width: 90, height: 42)
                    .padding(.leading, 15)
                Spacer()
            }
            .padding(.top, 15)
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(.white)
                    .stroke(.gray)
                    .frame(width: 361, height: 108.21)
                HStack{
                    Image(.profile)
                        .resizable()
                        .cornerRadius(500)
                        .frame(width: 90, height: 90)
                        .padding(.trailing, 20)
                    VStack{
                        Text("딸기맛요플레")
                            .font(.bold(Font.system(size: 18))())
                            .foregroundColor(.black)
                            .padding(.trailing, 90)
                            .padding(.bottom, 6)
                        Text("대구광역시 달성군 | 18세 여")
                    }
                }
            }
            .padding(.all, 10)
            HStack{
                VStack{
                    Text("좋아요")
                        .padding(3)
                    Text("802 개")
                        .font(.bold(Font.system(size: 20))())
                        .foregroundColor(.blue)
                }
                RoundedRectangle(cornerRadius: 2)
                    .frame(width: 2, height: 50)
                    .foregroundColor(.gray)
                    .padding(.trailing, 40)
                    .padding(.leading, 40)
                VStack{
                    Text("힐링 한 스푼")
                        .padding(3)
                    Text("32 회")
                        .font(.bold(Font.system(size: 20))())
                        .foregroundColor(.blue)
                }
                
            }
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 393, height: 15)
                .background(Color(red: 0.96, green: 0.96, blue: 0.96))
            
            NavigationLink {
                ReportView()
            } label: {
                HStack {
                    Image(systemName: "pencil.and.outline")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.black)
                        .padding(.leading, 20)
                    Text("나의 여행 기록")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 10, height: 20)
                        .foregroundStyle(.black)
                        .padding(.trailing, 15)
                }
                .padding(15)
            }
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 380, height: 1)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
            
            
            NavigationLink {
                SpoonView()
            } label: {
                HStack {
                    Image(systemName: "text.bubble")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.black)
                        .padding(.leading, 20)
                    Text("나의 여행 중 힐링 한 스푼 후기")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 10, height: 20)
                        .foregroundStyle(.black)
                        .padding(.trailing, 15)
                }
                .padding(15)
            }
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 380, height: 1)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
            
            
            
            NavigationLink {
                SpoonList()
            } label: {
                HStack{
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.black)
                        .padding(.leading, 20)
                    Text("내가 좋아한 힐링 한 스푼 목록")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 10, height: 20)
                        .foregroundStyle(.black)
                        .padding(.trailing, 15)
                }
                .padding(15)
            }
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 393, height: 15)
                .background(Color(red: 0.96, green: 0.96, blue: 0.96))
            
            NavigationLink {
                Settingview()
            } label: {
                HStack{
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.black)
                        .padding(.leading, 20)
                    Text("내 정보 관리")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .resizable()
                        .foregroundStyle(.black)
                        .frame(width: 10, height: 20)
                        .padding(.trailing, 15)
                }
                .padding(15)
            }
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 380, height: 1)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
            
            Spacer()
        }
    }
}

#Preview {
    WavyView()
}
