//
//  ContentView.swift
//  PreventScreenShot
//
//  Created by Bilal SIMSEK on 16.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List{
                NavigationLink {
                    PreventScreenshotView{
                        GeometryReader{
                            let size = $0.size
                            Image(.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: size.width,height: size.width)
                            
                            
                        }
                        .padding(15)
                    }
                    .navigationTitle("Image")
                } label: {
                    Text("Show Image")
                }
                
                NavigationLink {
                    List{
                        Section("Some Key") {
                            PreventScreenshotView {
                                Text("1LolB5Lslo9kjllnKL4")
                            }
                        }
                        
                        Section("Other Key") {
                            PreventScreenshotView {
                                Text("1Q2W3e4r5T")
                            }
                        }
                        
                    }.navigationTitle("Keys")
                    
                } label: {
                    Text("Show Api Keys")
                }

            }
            .navigationTitle("My List")
                
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
