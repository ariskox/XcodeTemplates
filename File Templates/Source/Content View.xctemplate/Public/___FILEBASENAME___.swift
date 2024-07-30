//___FILEHEADER___

import SwiftUI

public struct ___FILEBASENAMEASIDENTIFIER___<Content: View>: View {
    @ViewBuilder private let content: () -> Content

    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }

    public var body: some View {
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
