////
////  ContentView.swift
////  Test
////
////  Created by Basel Baragabah on 10/10/2021.
////
//
import SwiftUI


struct ContentView: View {
    @State var openChangeFont = false
    @State var currentFontSize = 16
    
    var body: some View {
        
        NavigationView {
            
            Text("Test")
                .font(.system(size: CGFloat(currentFontSize)))
            
            
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    Button(action: {
                        openChangeFont.toggle()
                    }, label: {
                        Text("Popover")
                    })
                        .foregroundColor(.blue)
                        .cocoaPopover(isPresented: $openChangeFont, content: {
                            HStack {
                                
                                Button(action: {
                                    if currentFontSize != 0 {
                                        currentFontSize -= 2
                                    }
                                    
                                }, label: {
                                    
                                    
                                    HStack {
                                        Text("A")
                                            .font(.system(size: 18))
                                            .padding(.leading)
                                            .fixedSize()
                                        
                                        Divider()
                                            .frame(height:40)
                                            .padding(.horizontal)
                                    }
                                })
                                
                                Text("\(currentFontSize)")
                                    .padding(.horizontal,5)
                                    .fixedSize()
                                
                                Button(action: {
                                    currentFontSize += 2
                                    
                                }, label: {
                                    HStack {
                                        
                                        Divider()
                                            .frame(height:40)
                                            .padding(.horizontal)
                                        
                                        
                                        Text("A")
                                            .font(.system(size: 25))
                                            .padding(.trailing)
                                            .fixedSize()
                                    }
                                    
                                })
                                
                            }.padding(.horizontal)
                        })
                       
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
