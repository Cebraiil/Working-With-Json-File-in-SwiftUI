//
//  Model.swift
//  WorkingWithJson
//
//  Created by Abdul Adl on 11.06.2022.
//

import Foundation

struct Language: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case name
        case website

    }
    
    var id = UUID()
    var name: String
    var website: String
}


class ReadData: ObservableObject  {
    @Published var languages = [Language]()
    
        
    init(){
        loadData()
    }
    
    func loadData()  {
        guard let url = Bundle.main.url(forResource: "languages", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let data = try? Data(contentsOf: url)
        let languages = try? JSONDecoder().decode([Language].self, from: data!)
        self.languages = languages!
        
    }
     
}
