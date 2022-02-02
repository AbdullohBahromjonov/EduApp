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
    @Binding var book: String
    
    var body: some View {
        VStack {
            PDFView(request: openPDF())
        }
        .frame(width: UIScreen.main.bounds.width*0.9)
        .cornerRadius(30)
        .overlay (
            RoundedRectangle(cornerRadius: 30)
                .stroke(lineWidth: 5)
                .foregroundColor(Color("Gray"))
                .frame(width: UIScreen.main.bounds.size.width*0.9)
        )
    }
    
    func openPDF() -> URLRequest {
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: book, ofType: "pdf")!)
        return URLRequest(url: url)
    }
    
}

struct PDFReader_Previews: PreviewProvider {
    static var previews: some View {
        PDFReader(book: .constant("Biology"))
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
