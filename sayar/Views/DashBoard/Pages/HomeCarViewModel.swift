//
//  HomeCarViewModel.swift
//  sayar
//
//  Created by anwar on 02/11/1443 AH.
//

import SwiftUI

struct HomeCarViewModel: View {
    
    
    //For image picker
    @EnvironmentObject var vImage: ViewModel
   
  
    
  // For testing
//    @StateObject var vm = TiresViewModel()
    //For image picker
    @EnvironmentObject var authvm : AuthViewModel
    //--------
    
    
    
    
    @State var showLoginPage = false
   
    @StateObject var vmOil = OilViewModel()
    @StateObject var vmBattery = BatteryViewModel()
    @StateObject var vmTires = TiresViewModel()
    
    @State var isPresentedNewPost = false
    @State var titel = ""
    @State var post = ""
 
  @State  var kmCar  = ""
  

    var body: some View {
  
        NavigationView{
            ScrollView{
                
                
                
                
    
        ZStack {
              VStack {
                Rectangle()
                    .fill(Color("TabMyCar"))
                    .frame( width: 400,   height:341)
                    .shadow(radius: 8)
                    .cornerRadius(16)
                    .navigationTitle("My Garage")
                
                
         
            
            .toolbar{
            
            Button {
                isPresentedNewPost = true
        } label: {
            plusBotton
         
        }
 
                    
            }//tollbar
                
          
            }//vastack
            //color for pluse
            .font(.title2)
            .accentColor(.red)
            
         
         
                VStack{
            
                    Spacer()
                    Image("LineCar3D")
                        .padding(20)
                      
        
                
                    
                 
            }//VSTACK
            VStack{
                Spacer()
                Image("Cardefault")
                    .padding(60)
         
   
            }//hstack
          
  
     
        }//Zstack Part1
            
            
 //---------------------------------------------
   //Part 2
            
        
            HStack{
             
                Text("My car")
              
                    .font(.title2)
                    .fontWeight(.semibold)
               
                
                
            
            Spacer()
            
//          
//                
//                Text("-- km")
//                
//                    .fontWeight(.light)
//                    .foregroundColor(Color.gray)
//                
//                Image("penKM")
   
            }//hstack
            .padding(.horizontal,30)
            .padding(8)
         
            
            
            
//--------------------------------------------
            
//part 3
                
                
                //Fuel
     
                
                VStack(alignment: .center, spacing: 16){
               
                NavigationLink(destination: FuelView()) {
                    
VStack(alignment: .center){
            

                          
                ZStack{
                Rectangle()
                    .fill(Color("TabMyCar"))
             
                    .frame( width: 345,   height:69)
                    .shadow(radius: 8)
                    .cornerRadius(16)
             

                HStack{

                    ZStack{
                        Image("trangle")
                        Image("IconFuel")
                            .font(.body)
                    }
                    VStack(alignment: .leading, spacing: 10){
                    Text("Fuel")
                        .font(.title3)
                        .fontWeight(.medium)
                       
                   
                    }


                  Spacer()
           
                    Image("chevron")
                   
                }
                .padding(.horizontal,40)
               }//ZSTACK
         

            }//Vstack
           
                }//nav linke Fuel
               .accentColor(.black)
    
//-----------------------
            
            
                
                   //Oil
        
                NavigationLink(destination: OilView()) {
                    
VStack(alignment: .center){
            

                          
                ZStack{
                Rectangle()
                    .fill(Color("TabMyCar"))
             
                    .frame( width: 345,   height:69)
                    .shadow(radius: 8)
                    .cornerRadius(16)
             

                HStack{

                    ZStack{
                        Image("trangle")
                        Image("IconOil")
                            .font(.body)
                    }
                    VStack(alignment: .leading, spacing: 10){
                    Text("Oil")
                        .font(.title3)
                        .fontWeight(.medium)
                       
                        ZStack{
                            Rectangle()
                                .fill(Color("ColorOilOpa"))
                                .frame( width: 125,   height:25)
                                .shadow(radius: 10)
                                .cornerRadius(8)
                            Text(vmOil.formatedDate())

                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ColorOil"))
                        }
                    }


                  Spacer()
                    //.font(.bold)
                    Image("chevron")
                   
                }
                .padding(.horizontal,40)

              

                }//ZSTACK
         
            }//Vstack
                    
             
                }//nav linke Fuel
             
             .accentColor(.black)
   
//-----------------------
            
        
        
          
                   //tiers
        
                NavigationLink(destination: TiresView()) {
                    
VStack(alignment: .center){
            

                          
                ZStack{
                Rectangle()
                    .fill(Color("TabMyCar"))
             
                    .frame( width: 345,   height:69)
                    .shadow(radius: 8)
                    .cornerRadius(16)
             

                HStack{

                    ZStack{
                        Image("trangle")
                        Image("IconTiers")
                            .font(.body)
                    }
                    VStack(alignment: .leading, spacing: 10){
                    Text("Tiers")
                        .font(.title3)
                        .fontWeight(.medium)
                       
                        ZStack{
                            Rectangle()
                                .fill(Color("ColorTiersOpa"))
                                .frame( width: 125,   height:25)
                                .shadow(radius: 10)
                                .cornerRadius(8)
                            Text(vmTires.formatedDate())

                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ColorTiers"))
                        }
                    }


                  Spacer()
                    //.font(.bold)
                    Image("chevron")
                   
                }
                .padding(.horizontal,40)


                }//ZSTACK
         

            }//Vstack
           
                }//nav linke Fuel
             
                    
            
              .accentColor(.black)
    
//-----------------------
            
                
            
         
                
                
                   //battery
        
                NavigationLink(destination: BatteryView()) {
                    
VStack(alignment: .center){
            

                          
                ZStack{
                Rectangle()
                    .fill(Color("TabMyCar"))
             
                    .frame( width: 345,   height:69)
                    .shadow(radius: 8)
                    .cornerRadius(16)
             

                HStack{

                    ZStack{
                        Image("trangle")
                        Image("IconBattery")
                            .font(.body)
                    }
                    VStack(alignment: .leading, spacing: 10){
                    Text("Bettery")
                        .font(.title3)
                        .fontWeight(.medium)
                       
                        ZStack{
                            Rectangle()
                                .fill(Color("ColorBatteryOpa"))
                                .frame( width:125,   height:25)
                                .shadow(radius: 10)
                                .cornerRadius(8)
                            Text(vmBattery.formatedDate())

                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ColorBattery"))
                        }
                    }


                  Spacer()
                    //.font(.bold)
                    Image("chevron")
                   
                }
                .padding(.horizontal,40)

                }//ZSTACK
         

            }//Vstack
           
                }//nav linke Fuel
             
                    
            
              .accentColor(.black)
    
//-----------------------
            
                
                
                
                }//vStack padding All
                
            
//-----------------------
                
                
                
                
                
                
                
        
        
//---------Sheet
                .fullScreenCover(isPresented: $vImage.showPicker) {
                    ImagePicker(sourceType: vImage.source == .library ? .photoLibrary : .camera, selectedImage: $vImage.image)
                        .ignoresSafeArea()
                }
               
                
                
        
        .sheet(isPresented: $isPresentedNewPost, content: {
            
            AddCar(isPresented: $isPresentedNewPost, titel: $titel, post: $post,kmCar: $kmCar)
            
        })
        .fullScreenCover(isPresented: $showLoginPage, content: {
            AuthView(showLoginPage: $showLoginPage, isPresentedNewPost: $isPresentedNewPost)
        })
        
        .onAppear{
            authvm.fetchCar()
            
//            calculateExpiredDate()
//           (completion:@escaping ()->()){
//            vm.uploadTires {
//                print("Successfully!")
//            }
        }
            
       
        
        
        
        
        
        
        
            }// scroll
          .edgesIgnoringSafeArea(.top)
          
        }//nav

      

    }//Var Body 1
    
    
  

    //Button Pluse
    var plusBotton: some View {
        
        
        
        Button(action: {
            if authvm.isAouthenticatting{
                isPresentedNewPost.toggle()
            }
            else{
                showLoginPage.toggle()
            }
            
        }, label:  {
            
            Image(systemName: "plus")
            
       
        })
        
        
        
        
    }//VarBody2
    
    
    
    
    
    
}//strct








func calculateExpiredDate()->(Date){
    let today = Date()
    print(today,"📍")
    let modifiedDate = Calendar.current.date(byAdding: .day, value: 60, to: today)!
    print(modifiedDate,"📍")
     return modifiedDate
}








struct HomeCarViewModel_Previews: PreviewProvider {
    static var previews: some View {
        HomeCarViewModel()
    }
}
