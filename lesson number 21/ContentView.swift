//
//  ContentView.swift
//  lesson number 21
//
//  Created by vladimir gennadievich on 03.02.2021.
//

import SwiftUI

struct ContentView: View {
   @State private var selected = 0
    
    var body: some View {
        VStack {
            Spacer()
        
            ZStack {
                HStack {
                    Button(action: {
                        self.selected = 0
                    }, label: {
                        Image(systemName: "house.circle")
                            .font(.system(size: 34))
                            .foregroundColor(self.selected == 0 ? .black:.gray)
                    })
                    Spacer(minLength: 14)
                    Button(action: {
                        self.selected = 1
                    }, label: {
                        Image(systemName: "magnifyingglass.circle")
                            .foregroundColor(self.selected == 1 ? .black:.gray)
                            .font(.system(size: 34))

                    })
                    Spacer().frame(width: 120)
                    Button(action: {
                        self.selected = 2
                    }, label: {
                        Image(systemName: "person.crop.square")
                            .foregroundColor(self.selected == 2 ? .black:.gray)
                            .font(.system(size: 34))

                    })
                    Spacer(minLength: 14)
                    Button(action: {
                        self.selected = 3
                    }, label: {
                        Image(systemName: "filemenu.and.selection")
                            .foregroundColor(self.selected == 3 ? .black:.gray)
                            .font(.system(size: 34))

                })
                }
                .padding(17)
                .padding(.horizontal,10)
                .background(CurvedShape())
                
                Button(action: {
                    print("Heart")
                }, label: {
                    Image(systemName: "suit.heart")
                        .renderingMode(.original)
                        .padding(18)
                      
                })
                .font(.system(size: 35))
                .background(Color.yellow)
                .clipShape(Circle())
                .offset(x: 0, y: -35)
                .shadow(radius: 5)
                
            }
            
        }.background(Color.purple).edgesIgnoringSafeArea(.top)
        
}

}
struct CurvedShape:View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 60))
            
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width/2, y: 60), radius: 38, startAngle: .zero, endAngle: .init(degrees:180), clockwise: true)
            
            path.addLine(to: CGPoint(x: 0, y: 60))
        }.fill(Color.white)
        .rotationEffect(Angle(degrees: 180))
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
