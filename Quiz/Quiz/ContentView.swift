//
//  ContentView.swift
//  Quiz
//
//  Created by Jaisika Singh on 2022-02-16.
//

import SwiftUI

struct  Person{
    
    var name: String = ""
    var age: Int = 0
   
    
}

struct ContentView: View {
    
    @State var person: Person = Person()
    @State var name: String = ""
    @State var age: String = ""
    @State private var selection = "White"
    let colors = ["Red", "Green", "Blue", "Black"]
    
    @State var isSubmitted = false
    
    
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
                   VStack {
                       //title
                       Text("Person")
                           .padding()
                           .font(.headline)
                       
                       //color picker
                       VStack {
                                   Picker("Select a paint color", selection: $selection) {
                                       ForEach(colors, id: \.self) {
                                           Text($0)
                                       }
                                   }
                                   .pickerStyle(.menu)
                                   .frame(width: 200, height: 40)
                                   .padding(.horizontal)
                                   .clipShape(RoundedRectangle(cornerRadius: 10))
                           
                       }
                       
                       //name
                        HStack {
                            Text("Name").frame(width: 100, alignment: .leading)
                            TextField("name ", text: $name)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 200, height: 40)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding(.horizontal)
                        }
                       // age
                        HStack {
                            Text("Age").frame(width: 100, alignment: .leading)
                            TextField("age", text: $age)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 200, height: 40)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding(.horizontal)
                        }
                       
                       
                       
                       //display text
                       if isSubmitted{
                           VStack(alignment: .leading){
                               Text("Name: " + person.name)
                                   .frame(width:200, alignment:.leading)
                               Text("Age:  \(person.age)")
                                   .frame(width:200, alignment:.leading)
                               
                              
                                
                           }
                           .frame(maxWidth: .infinity, alignment: .leading)
                           .padding()
                           .overlay(
                               RoundedRectangle(cornerRadius: 10)
                                   .stroke(Color.green, lineWidth: 1)
                           )
                           .padding()
                       }
                       Spacer()

                       // submit button
                       switch selection{
                       case "Red":
                           Color.red;
                           Button(action: {
                               guard !name.isEmpty, !age.isEmpty, !selection.isEmpty else { return }
                               
                               let s_age:Int = Int(age) ?? 0
                                 // add person
                               person = Person(name:name, age:s_age)
                               isSubmitted.toggle()
                           }, label: {
                               Text("Submit")
                                   .frame(width: 80, height: 40, alignment: .center)
                                   .foregroundColor(.white)
                                   .background(.green)
                                   .clipShape(RoundedRectangle(cornerRadius: 10))
                                   .padding()
                                            
                                        })
                                    
                       case "Blue":
                           Color.blue;
                           Button(action: {
                               guard !name.isEmpty, !age.isEmpty else { return }
                               
                               let s_age:Int = Int(age) ?? 0
                                 // add person
                               person = Person(name:name, age:s_age)
                               isSubmitted.toggle()
                           }, label: {
                               Text("Submit")
                                   .frame(width: 80, height: 40, alignment: .center)
                                   .foregroundColor(.white)
                                   .background(.green)
                                   .clipShape(RoundedRectangle(cornerRadius: 10))
                                   .padding()
                                            
                                        })
                                    
                       case "Black":
                           Color.black;
                           Button(action: {
                               guard !name.isEmpty, !age.isEmpty else { return }
                               
                               let s_age:Int = Int(age) ?? 0
                                 // add person
                               person = Person(name:name, age:s_age)
                               isSubmitted.toggle()
                           }, label: {
                               Text("Submit")
                                   .frame(width: 80, height: 40, alignment: .center)
                                   .foregroundColor(.white)
                                   .background(.green)
                                   .clipShape(RoundedRectangle(cornerRadius: 10))
                                   .padding()
                                            
                                        })
                                    
                       case "Green":
                           Color.green;
                           Button(action: {
                               guard !name.isEmpty, !age.isEmpty else { return }
                               
                               let s_age:Int = Int(age) ?? 0
                                 // add person
                               person = Person(name:name, age:s_age)
                               isSubmitted.toggle()
                           }, label: {
                               Text("Submit")
                                   .frame(width: 80, height: 40, alignment: .center)
                                   .foregroundColor(.white)
                                   .background(.green)
                                   .clipShape(RoundedRectangle(cornerRadius: 10))
                                   .padding()
                                            
                                        })
                                    
                       default:
                    
                           
                        Button(action: {
                            guard !name.isEmpty, !age.isEmpty else { return }
                            
                            let s_age:Int = Int(age) ?? 0
                              // add person
                            person = Person(name:name, age:s_age)
                            isSubmitted.toggle()
                        }, label: {
                            Text("Submit")
                                .frame(width: 80, height: 40, alignment: .center)
                                .foregroundColor(.white)
                                .background(.green)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding()
                                         
                                     })
                                 }
                               //  .padding()
                   }
        }
    }
}
            
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
