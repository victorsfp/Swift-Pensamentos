//
//  Quote.swift
//  Pensamentos
//
//  Created by Victor Feitosa on 23/12/21.
//

import Foundation

struct Quote: Codable { //Codable -> Encodable, Decodable
    
    
    let quote: String
    let author: String
    let image: String
    
    var quoteFormated: String {
        return "〝" + quote + "〞"
    }
    
    var authorFormated: String {
        return "- " + author + " _"
    }
    
}
