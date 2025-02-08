import SwiftUI

struct LoginView: View {
    @State private var main = false
    @State private var navigate = false
    @State private var hello = ""
    
    var body: some View {
            VStack {
                Spacer(minLength: 50)
                Image(icon: .mainIcon)
                    .resizable()
                    .frame(width: 170, height: 68)
                
                VStack {
                    WavyTextField(image: .human, text: "이메일을 입력해주세요", posttext: $hello)
                    WavySecureField(image: .lock, text: "비밀번호를 입력해주세요", postText: $hello)
                }
                .padding(.top, 50)
                
                AuthButton(text: "로그인", action: {
                    
                }, bool: hello.isEmpty)
                .padding(.top, 40)
                
                Spacer()
                
                HStack {
                    Text("계정이 없으신가요?")
                    Button {
                        navigate = true
                    } label: {
                        Text("가입하기")
                    }
                }
                .font(.regular(16))
                .padding(.bottom, 20)
                
            }
            .frame(maxHeight: .infinity)
            .navigationBarBackButtonHidden()
            .navigationDestination(isPresented: $navigate) {
                SignupView()
            }
        }
    }

#Preview {
    LoginView()
}
