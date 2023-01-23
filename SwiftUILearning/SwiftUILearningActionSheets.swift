//
//  SwiftUILearningActionSheets.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 23/01/2023.
//

import SwiftUI

struct SwiftUILearningActionSheets: View {
    
    // MARK: - PROPERTY
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption : ActionSheetOptions = .isMyPost
    
    
    
    enum ActionSheetOptions {
        case isMyPost
        case isUserPost
    }
    
    var body: some View {
        VStack{
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                
                Button(action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }


    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")){
            //Add code to share button
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")){
            //Add code to report button
        }
        
        let deleteButton: ActionSheet.Button = .default(Text("Delete")){
            //Add code to delete button
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title = Text("What do you like to do")
        
        switch actionSheetOption {
        case .isUserPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton])
        
        }
        
        
//        let button1: ActionSheet.Button = .default(Text("default".uppercased()))
//        let button2: ActionSheet.Button = .destructive(Text("destractive".uppercased()))
//        let button3: ActionSheet.Button = .cancel()
//
//        // return ActionSheet(title: Text("this is title".uppercased()))
//
//        return ActionSheet(
//            title: Text("Title"),
//            message: Text("This is the message!"),
//            buttons: [button1, button2, button3])
    }
}

struct SwiftUILearningActionSheets_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningActionSheets()
    }
}
