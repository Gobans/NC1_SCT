//
//  streetView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct streetView: View {
    @State var gotoView7 = false
    @Binding var gotostartView: Bool
    var body: some View {
        VStack{
                Text("05 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
            LottieStreet(filename: "Street")
                .frame(height:320)
            //button
            VStack(spacing: 50){
                Button(action: {
                    gotoView7 = true
                    
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: whaleView(gotostartView: $gotostartView),
                    isActive: $gotoView7,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView7 = true
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: whaleView(gotostartView: $gotostartView),
                    isActive: $gotoView7,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView7 = true
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: whaleView(gotostartView: $gotostartView),
                    isActive: $gotoView7,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView7 = true
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: whaleView(gotostartView: $gotostartView),
                    isActive: $gotoView7,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
            }
        }
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
    }
}

struct streetView_Previews: PreviewProvider {
    static var previews: some View {
        streetView(gotostartView: .constant(false))
    }
}
