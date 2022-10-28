//
//  SearchBarView.swift
//  NewTest
//
//  Created by Ahrorbek Abdullayev on 28/10/22.
//

import SwiftUI

struct SearchBarView: View {
    var placeholder: String
    @Binding var text: String
    @Environment(\.colorScheme) var colorScheme
    var backgroundColor: Color {
      if colorScheme == .dark {
           return Color(.systemGray5)
       } else {
           return Color(.systemGray6)
       }
    }
  
    var body: some View {

        HStack {
            Image(systemName: "magnifyingglass")
                .imageScale(.medium)
                .foregroundColor(.secondary)
                .padding(3)
            TextField(placeholder, text: $text)
                .keyboardType(.alphabet)
                .autocorrectionDisabled(true)
            if text != "" {
                    Image(systemName: "xmark.circle.fill")
                        .imageScale(.medium)
                        .foregroundColor(.secondary)
                        .padding(3)
                        .onTapGesture {
                            withAnimation {
                                self.text = ""
                              }
                        }
                }
        }    .padding(8)
            .background(Color(.systemGray6))
            .cornerRadius(12)
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(placeholder: "Search..", text: .constant(""))
    }
}
