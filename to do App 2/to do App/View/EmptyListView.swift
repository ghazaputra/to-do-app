//
//  EmptyListView.swift
//  to do App
//
//  Created by ADMIN on 19/02/21.
//

import SwiftUI

struct EmptyListView: View {
    
    //Mark: Properties
    
    let image: [String] = [
        "illustration-no3",
        "illustration-no3",
        "illustration-no3"
    ]
    
    let tips: [String] = [
        "Gunakan Waktu mu Dengan Baik",
        "Lambat dan mantap memenangkan perlombaan",
        "Tetap ada umtuk mu",
        "Setiap malam jadwal untuk besok"
    ]
    
    var body: some View {
        ZStack{
            VStack{
                Image("\(image.randomElement() ?? self.image[0])")
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .resizable()
                    .scaleEffect()
                    .frame(minWidth: 256, idealWidth: 280, maxWidth: 360, minHeight: 256, idealHeight: 280, maxHeight: 360, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .layoutPriority(1)
                Text("\(tips.randomElement() ?? self.image[0])")
                    .layoutPriority(0.5)
                    .font(.system(.headline,design: .rounded))
            }//: VStack
        }//: ZStack
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color("ColorBase"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyListView()
    }
}
