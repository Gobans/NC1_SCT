//
//  doorView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct doorView: View {
    @State var gotoView6 = false
    @Binding var gotostartView: Bool
    let LottieOpenDoorView = LottieOpenDoor(filename: "DoorOpen")
    var body: some View {
        VStack{
                Text("03 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
            LottieOpenDoorView
                .frame(height:320)
                .onTapGesture {
                    LottieOpenDoorView.animationView.play()
                    PlayBGM.playSoundsOnce(soundfile: "DoorOpenSound.mp3")
                }
            //button
            VStack(spacing: 50){
                Button(action: {
                    gotoView6 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("A   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("기다리던 사람이 돌아왔다")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView),
                    isActive: $gotoView6,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView6 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("B   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("원치않은 침입을 당했다")
                            .frame(maxWidth:170,alignment: .leading)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView),
                    isActive: $gotoView6,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView6 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("C   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("바람 때문에 열렸을 것이다")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView),
                    isActive: $gotoView6,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView6 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("D   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("무엇 때문인지 확인하러 간다")
                            .frame(maxWidth:210,alignment: .trailing)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView),
                    isActive: $gotoView6,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
            }
        }
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
    }
}

struct doorView_Previews: PreviewProvider {
    static var previews: some View {
        doorView(gotostartView: .constant(false))
    }
}
