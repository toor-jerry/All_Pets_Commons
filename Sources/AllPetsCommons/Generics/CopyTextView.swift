//
//  CopyTextView.swift
//
//
//  Created by Gerardo Bautista Castaneda on 21/02/24.
//

import SwiftUI
import UniformTypeIdentifiers

public struct CopyTextView: View {
    @State private var text: String = ""
    @State private var buttonText  = "Copy"
    @State private var textFieldIsDisabled = false
    var title: String
    private let pasteboard = UIPasteboard.general
    
    public init(_ textInput: String = "", _ title: String = "Use:") {
        textFieldIsDisabled = !textInput.isEmpty
        self.text = textInput
        self.title = title
    }
    
    public var body: some View {
        GroupBox{
            VStack {
                HStack{
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                TextField("Insert text here", text: $text, axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                    .disabled(textFieldIsDisabled)
                    .contextMenu {
                        Button {
                            copyToClipboard()
                        } label: {
                            Text("Copy to clipboard")
                            Image(systemName: "doc.on.doc")
                        }
                    }
                HStack(spacing:10) {
                    Spacer()
                    Button {
                        copyToClipboard()
                    } label: {
                        Label(buttonText, systemImage: "doc.on.doc")
                    }.buttonStyle(.bordered)
                        .foregroundColor(.black)
                    Button {
                        paste()
                    } label: {
                        Label("Paste", systemImage: "doc.on.clipboard")
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(.black)
                }.controlSize(.small)
            }
            .padding()
        }.padding()
    }
    
    func paste(){
        if let string = pasteboard.string {
            text = string
        }
    }
    
    func copyToClipboard() {
        pasteboard.string = self.text
        
        self.buttonText = "Copied!"
        // self.text = "" // clear the text after copy
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.buttonText = "Copy to clipboard"
        }
    }
}

struct CopyTextView_Previews: PreviewProvider {
    static var previews: some View {
        CopyTextView()
    }
}
