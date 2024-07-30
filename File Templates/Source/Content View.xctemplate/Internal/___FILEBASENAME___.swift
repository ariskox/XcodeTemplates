//___FILEHEADER___

import SwiftUI

struct ___FILEBASENAMEASIDENTIFIER___<Content: View>: View {
    @ViewBuilder private let content: () -> Content

    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }

    var body: some View {
        VStack {
            Text("Header!")
            content()
            Text("Footer!")
        }
    }
}

#Preview {
    ___FILEBASENAMEASIDENTIFIER___ {
        Text("Hello, World!")
    }
}
