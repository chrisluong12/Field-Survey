//
//  FieldSurveyJSONLoader.swift
//  Field Survey
//
//  Created by Christopher Luong on 4/6/18.
//  Copyright © 2018 Christopher Luong. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    class func load (fileName: String) -> [FieldSurvey]{
        var surveys = [FieldSurvey]()
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            surveys = FieldSurveyJSONParser.parse(data)
        }
        
        return surveys
    }
}
