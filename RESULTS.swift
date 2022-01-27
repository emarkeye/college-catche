//
//  RESULTS.swift
//  College App (page based)
//
//  Created by Eric Markey on 6/20/19.
//  Copyright © 2019 Eric Markey. All rights reserved.
//

import Foundation

struct  Results {
    let resultsData: [ResultsData]
   
    
    init?(json: JSON) {
        guard let results = json["results"] as? [JSON] else {return nil}
        let resultsDataz = results.map({ ResultsData(json: $0) })
        self.resultsData = resultsDataz as! [ResultsData]
        }
    
    }



struct compareResults
{
     let CompareResultsData: [compareResultsData]
    
    init?(json: JSON) {
      
        guard let compareResults = json["results"] as? [JSON] else {return nil}
        
        let compareResultsDataz = compareResults.map({ compareResultsData(json: $0) })
        
        self.CompareResultsData = compareResultsDataz as! [compareResultsData]
    }
    
}

struct secondCompareResults
{
    let SecondCompareResultsData: [secondCompareResultsData]

    init?(json: JSON)
    {
        guard let Results = json["results"] as? [JSON] else {return nil}
        let compareResultsDataz = Results.map({ secondCompareResultsData(json: $0)})
        self.SecondCompareResultsData = compareResultsDataz as! [secondCompareResultsData]

    

}
}
