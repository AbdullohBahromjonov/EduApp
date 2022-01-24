//
//  File.swift
//  EduApp
//
//  Created by Zafarjon on 24/01/22.
//

import SwiftUI
import PDFKit
import WebKit

struct PDFReader: View {
    var body: some View {
        VStack {
            PDFView(request: openPDF())
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                )
        }
    }
    
    func openPDF() -> URLRequest {
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: "Uzbekistan", ofType: "pdf")!)
        return URLRequest(url: url)
    }
    
}

struct PDFReader_Previews: PreviewProvider {
    static var previews: some View {
        PDFReader()
    }
}

struct PDFView: UIViewRepresentable {
    let request: URLRequest
    func makeUIView(context: Context) -> some WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.load(request)
    }
}
