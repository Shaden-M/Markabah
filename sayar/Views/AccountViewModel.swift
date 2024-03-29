//Account


////
////  AccountViewModel.swift
////  sayar
////
////  Created by anwar on 02/11/1443 AH.
////
//
//import SwiftUI
//
//struct AccountViewModel: View {
//
//    var body: some View {
//        NavigationView {
//                       NavigationLink(destination: MyGarageH()) {
//
//                           Text("Choose Heads")
//                       }
//                       .navigationBarTitle("")
//               }//nav
//    }
//}
//
//
////struct ResultView: View {
////   // var choice: String
////
////    var body: some View {
////        Text("HGHGHG")
////
////
////    }
////}
////
//
//struct AccountViewModel_Previews: PreviewProvider {
//    static var previews: some View {
//        AccountViewModel()
//    }
//}

//
//  AccountViewModel.swift
//  sayar
//
//  Created by anwar on 02/11/1443 AH.
//


//
//
//
//
//
//
//
//  personalInformation.swift
//  Melah123
//
//  Created by Shaden Almuhaidib on 12/06/2022.
//

import SwiftUI

struct AccountViewModel: View {
   
        init() {
            UITableView.appearance().backgroundColor = .clear
            
        }
        
        var body: some View {

            NavigationView {

                VStack(alignment: .leading){
                    Text("")
                    Text("")

                    Form{
                        Section{
                            Button{
                                print("Go to Personal information")
                            } label: {
                                HStack{
                                    Image("person.crop.circle")
                                        .resizable()
                                        .frame(width: 35, height: 35);                                    VStack(alignment: .leading){
                                        Text("Personal information")
                                                .padding(.horizontal,10)
                                        Text("+966000000000")
                                            .foregroundColor(.gray)
                                            .padding(.horizontal,10)
                                    }
                                    
                                    Spacer()
//                                    Image("chevron.down")
//                                        .padding()
                                }.padding(3)
                            
                            }
                
                        
                            
                        
            NavigationLink(destination: MyGarageH()) {
                       //
                 
                               
                            
                            
                
                            Button{
                                print("Go to Garage")
                            } label: {
                                HStack{
                                    Image("sports-car 1")
                                        .padding(.horizontal,-10)
                                    
                                    Text("My Garage")
                                 .padding(.horizontal,25)
                                      
//                                    Spacer()
//                                    Image("chevron.down")
//                                       .padding(.horizontal,-1)
                                }
                                
                                .padding()
                                .padding(.horizontal,2)
                            }
           
            }//nav
              
                            
                        }//section one
                        
             .listRowBackground(Color.gray
                             .opacity(0.1))
                        Section(header: Text("Support")){
                         
                            NavigationLink(destination: HelpView().navigationTitle("Help")){
                            Button{
                                print("Help")
                            } label:{
                                HStack{
                                    Image("help 2")
                                        .padding(.horizontal,-7)
                                    Text("Help")
                                        .padding(.horizontal,22)
//                                    Spacer()
//                                    Image("chevron.down")
//                                        .padding()
                                }.padding()
                            }

                            }.listRowBackground(Color.gray
                            .opacity(0.1))
                        }
                        Section{
                            
                            Text("")
                            //                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.852))
                            //                    .offset(x: 10, y: 0)
                            //
                            Button{
                                print("Sign Out")
                            } label: {
                                HStack{
                                    
                                    Image("Group 1724")
                                    Text("Sign Out")
                                    //
                                        .foregroundColor(.red)
                                }
                            }
                        }
                    }
                    
                    
                    //            .padding()
                    //            .offset(x: 5, y: -180)
                    //                }
                    //                }
                    //                .listRowInsets(EdgeInsets())
                    //.background(Color.green)
                    //   .listRowBackground(Color.blue)
                    
                    .navigationTitle("Account")
                    .navigationBarBackButtonHidden(true)
                    
                }
            }
            
            
            .accentColor(.black)
            }
           
          //  .ignoresSafeArea(.all)
            //.background(.blue)
            
        }


struct AccountViewModel_Previews: PreviewProvider {
    static var previews: some View {
        AccountViewModel()
    }
}
