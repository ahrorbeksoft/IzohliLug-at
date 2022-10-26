//
//  Model.swift
//  IzohliLugat
//
//  Created by Ahrorbek Abdullayev on 25/10/22.
//

import Foundation
import SQLite
class DataBaseManager {
    private var db: Connection!
    private var izohlar: Table!
    private var id: Expression<Int64>!
    private var word: Expression<String>!
    private var definition: Expression<String>!
    private var fulldefiniton: Expression<String>!
    // File path to the database
    private var path = Bundle.main.path(forResource: "words", ofType: "db")!
    
    init() {
        do {
            db = try Connection(path, readonly: true)
            izohlar = Table("izohlar")
        }catch {
            print("fuck it")
            
        }
      
    }

    public func getWords(word: String) -> [IzohModel] {
        
        var izohModels: [IzohModel] = []
        do {
//            for izoh in try db.prepare(izohlar.limit(10)) {
            for izoh in try db.prepare("SELECT * FROM izohlar WHERE word LIKE '"+word+"%' LIMIT 20") {
                let izohModel: IzohModel = IzohModel()
                izohModel.id = izoh[0] as? Int64 ?? 1
                izohModel.word = izoh[1] as? String ?? "no word"
                izohModel.definition = izoh[2] as? String ?? "no definition"
                izohModel.fulldefinition = izoh[3] as? String ?? "no fulldefinition"
                
                izohModels.append(izohModel)
                
            }
        } catch {
            print(error.localizedDescription)
        }
        
        return izohModels
    }
}

