//
//  MainView.swift
//  SastoTickets
//
//  Created by Skybase on 16/05/2022.
//

import SwiftUI
//import SastoTickets

@available(iOS 13.0, *)
public struct SastoTicketsView: View {
    let clientId:String
    let clientSecret:String
    let callback: (_ response: [String:Any]?, _ error: Error?)->()
    
    @State var view:AnyView?
    @Environment(\.presentationMode) var presentationMode
    
    public var body: some View {
        
        ZStack{
            Color.black.opacity(0.0).edgesIgnoringSafeArea(.all)
            view != nil
            ? view
            : AnyView(VStack{if #available(iOS 14.0, *) {
                ProgressView()
            } else {
                // Fallback on earlier versions
            }})
        }
//        .background(BackgroundBlurView())
//        .onAppear {
//            SastoTickets.bookFlight(
//                clientId: clientId,
//                clientSecret: clientSecret) { view, error in
//                    if error != nil {
//                        callback(nil, error)
//                        presentationMode.wrappedValue.dismiss()
//                    }
//                    self.view = view
//                } completion: { response, error in
//                    if error != nil {
//                        //CALL CALLBACK
//                        callback(nil, error)
//                        presentationMode.wrappedValue.dismiss()
//                        return
//                    }
//
//                    if response != nil {
//                        //CALL CALLBACK
//                        if response!["exit"] as! Bool == true {
//                            callback(response, nil)
//                            presentationMode.wrappedValue.dismiss()
//                        }
//                        else {
//                            callback(response, nil)
//                        }
//                    }
//                    else {
//                        //CALL CALLBACK
//                        presentationMode.wrappedValue.dismiss()
//                    }
//
//
//
//                }
//
//        }
    }
}

@available(iOS 13.0, *)
struct SastoTicketsView_Previews: PreviewProvider {
    static var previews: some View {
        SastoTicketsView(clientId: "", clientSecret: ""){ response, error in
            
        }
    }
}


//struct BackgroundBlurView: UIViewRepresentable {
//    func makeUIView(context: Context) -> UIView {
//        let view = UIVisualEffectView(effect: UIBlurEffect(style: .light))
//        DispatchQueue.main.async {
//            view.superview?.superview?.backgroundColor = .clear
//        }
//        return view
//    }
//
//    func updateUIView(_ uiView: UIView, context: Context) {}
//}
