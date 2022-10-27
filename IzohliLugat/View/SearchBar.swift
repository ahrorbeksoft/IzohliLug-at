import SwiftUI
 
struct SearchBar: View {
    @Binding var text: String
 
    @State private var isEditing = false
 
    var body: some View {
        HStack {
 
            TextField("Search...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color("InvertColor"))
                .cornerRadius(8)
                .padding(.horizontal, 10)
                .padding(.bottom, 10)
                .onTapGesture {
                    self.isEditing = true
                }
 
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
 
                }) {
                    Text("Cancel")
                }
//                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(Animation.default, value: 200.0)
                
        
            }
        }
    }
}


struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
