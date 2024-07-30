//___FILEHEADER___

import SwiftUI

package struct ___FILEBASENAMEASIDENTIFIER___<Content: View>: View {
    @ViewBuilder private let content: () -> Content

    package init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }

    package var body: some View {
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
