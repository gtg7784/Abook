//
//  OnBoarding.swift
//  Abook
//
//  Created by 고태건 on 2021/01/10.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Text("시작하기")
            .frame(width: 248, height: 48, alignment: .center)
            .font(.system(size: 21, weight: .heavy, design: .default))
            .foregroundColor(.white)
            .background(Color(UIColor(named: "AccentColor")!))
            .cornerRadius(24.0)
            .padding(.bottom, 34)
    }
}

struct OnBoarding: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("onBoardingImage")
                    .padding(.top, 85)
                Group {
                    Text("Abook에 오신 것을")
                        .padding(.top, 53)
                    Text("환영합니다!")
                        .padding(.bottom, 21)
                }
                .font(.system(size: 22, weight: .heavy, design: .default))
                .foregroundColor(Color(UIColor(named: "black")!))
                Group {
                    Text("누구나 편리하게 이용할 수 있는 Abook으로")
                    Text("가계부 관리를 시작해보세요!")
                }
                .font(.system(size: 15, weight: .regular, design: .default))
                .foregroundColor(Color(UIColor(named: "black")!))
                Spacer()
                
                NavigationLink (destination: HomeView()) {
                    ButtonView()
                }
            }
        }
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
