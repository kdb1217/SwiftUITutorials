//
//  CherryBlossom.swift
//  SoTired
//
//  Created by 김다빈 on 2023/03/29.
//

import SwiftUI
import WebKit

struct CherryBlossom: UIViewRepresentable {
    private let name: String
    
    init(_ name: String){
        self.name = name
    }
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        
        webView.load(
            data,
            mimeType: "image/gif",
            characterEncodingName: "UTF-8",
            baseURL: url.deletingLastPathComponent()
        )
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
}

struct CherryBlossom_Previews: PreviewProvider {
    static var previews: some View {
        CherryBlossom("cherryBlossom")
    }
}
