//
//  ContentView.swift
//  basic_login_app
//
//  Created by Arpit Singh on 23/11/24.
//
/*

import SwiftUI
import UserNotifications

struct ContentView: View {

    
    @State var firstname: String = ""
    @State var secondname: String = ""
    @State var age : Double = 0
    @State var password : String = ""
    @State var showNext : Bool = false
    @State var showAlert : Bool = false
    
    
    var body: some View {
            VStack{
                
                Text("APP LOGIN").font(.largeTitle)
                    
                
                Spacer()
                
                Form
                {
                    Section(header:Text("PERSONAL INFORMATION"))
                    {
                            Text("ENTER FIRST NAME")
                        TextField("Enter First name",text: $firstname)
                            
                            .padding()
                        
                        
                            
                        Text("ENTER SECOND NAME")
                        
                        TextField("Enter Second name",text:$secondname)
                            
                            .padding()
                        
                        
                        
                        Text("ENTER THE AGE")
                        
                        Slider(value: $age , in: 1...100,step:1)
                            .padding()
                            .accentColor(Color.green)
                        
                        Text("YOUR AGE \(String(format:"%.1f",age))")
                        
                    
            
                    }
                    
                    Section(header:Text("PASSWORD DETAILS"))
                    {
                        SecureField("ENTER PASSWORD",text:$password)
                            .padding()
                        
                    }
                    
                }
                
                
                
                Button("LOGIN")
                {
                   if(authorize_login(firstname,secondname,password))
                    {
                       showNext = true
                       sendLoginSuccessNotification(firstname)
    
                       
                   }
                    else
                    {
                        showAlert = true
                        //reset the values
                        firstname = ""
                        secondname = ""
                        age = 0
                        password = ""
                        
                    }
                   
                    
                }
                .padding()                     // Add padding around the text
                .foregroundColor(.white)       // White text
                .background(Color.green)       // Green background
                .cornerRadius(10)
                
            
                
            }
        
       
            .alert(isPresented: $showAlert)
            {
                Alert(title: Text("ERROR"),message: Text("Invalid Username or Password"), dismissButton: .default(Text("OK")))

            }
            
          
        }
    }

func authorize_login(_ firstname: String, _ secondname :String ,  _ password: String) -> Bool
{
    if !firstname.isEmpty && !secondname.isEmpty && !password.isEmpty
    {
        return true
    }
    else
    {
        return false
    }
}

func sendLoginSuccessNotification(_ firstname: String) {
     let content = UNMutableNotificationContent()
     content.title = "Login Successful"
     content.body = "Welcome back, \(firstname)! You have successfully logged in."
     content.sound = .default
     
     // Trigger after a 1-second delay
     let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
     
     // Create a notification request
     let request = UNNotificationRequest(identifier: "loginSuccess", content: content, trigger: trigger)
     
     // Add the notification request to the notification center
     UNUserNotificationCenter.current().add(request) { error in
         if let error = error {
             print("Error sending notification: \(error.localizedDescription)")
         } else {
             print("Notification scheduled successfully.")
         }
     }
 }
#Preview{
    ContentView()
}
*/
import SwiftUI
import UserNotifications

struct ContentView: View {

    @State private var firstname: String = ""
    @State private var secondname: String = ""
    @State private var age: Double = 0
    @State private var password: String = ""
    @State private var showNext: Bool = false
    @State private var showAlert: Bool = false

    var body: some View {
        NavigationStack {
            VStack {
                Text("APP LOGIN").font(.largeTitle)

                Spacer()

                Form {
                    Section(header: Text("PERSONAL INFORMATION")) {
                        Text("ENTER FIRST NAME")
                        TextField("Enter First name", text: $firstname)
                            .padding()
                        
                            Text("NAME ENTERED \(firstname)")

                        Text("ENTER SECOND NAME")
                        TextField("Enter Second name", text: $secondname)
                            .padding()

                        Text("ENTER THE AGE")
                        Slider(value: $age, in: 1...100, step: 1)
                            .padding()
                            .accentColor(Color.green)

                        Text("YOUR AGE \(String(format:"%.1f", age))")
                    }

                    Section(header: Text("PASSWORD DETAILS")) {
                        SecureField("ENTER PASSWORD", text: $password)
                            .padding()
                    }
                }

                Button("LOGIN") {
                    // Only proceed if all fields are filled
                    if authorize_login(firstname, secondname, password) {
                        showNext = true
                        sendLoginSuccessNotification(firstname)
                    } else {
                        showAlert = true
                    }
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(10)
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("ERROR"), message: Text("Invalid Username or Password"), dismissButton: .default(Text("OK")))
                }
            }
            .navigationTitle("Login Page")
        }
    }

    func authorize_login(_ firstname: String, _ secondname: String, _ password: String) -> Bool {
        // Simple validation check
        return !firstname.isEmpty && !secondname.isEmpty && !password.isEmpty
    }

    func sendLoginSuccessNotification(_ firstname: String) {
        let content = UNMutableNotificationContent()
        content.title = "Login Successful"
        content.body = "Welcome back, \(firstname)! You have successfully logged in."
        content.sound = .default
        
        // Trigger after a 1-second delay
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        
        // Create a notification request
        let request = UNNotificationRequest(identifier: "loginSuccess", content: content, trigger: trigger)
        
        // Add the notification request to the notification center
        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Error sending notification: \(error.localizedDescription)")
            } else {
                print("Notification scheduled successfully.")
            }
        }
    }
}


#Preview {
    ContentView()
}

