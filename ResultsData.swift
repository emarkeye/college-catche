//
//  ResultsData.swift
//  College App (page based)
//
//  Created by Eric Markey on 6/20/19.
//  Copyright © 2019 Eric Markey. All rights reserved.
//

import Foundation

struct ResultsData {
    let act :Int
    let State :String
    let SchoolName :String
    let Town :String
    let schoolWebsite :String
    let admissionRate :Double
    let cost :Int
    let sat :Int
    let schoolSize :Int
    let femaleRATE :Double
    let lowerAct :Int
    let upperAct :Int
    let completionRate :Double
    let earnings :Int
    let retRate :Double
    
    
    
    
    init?(json: JSON) {
        self.act = json["latest.admissions.act_scores.midpoint.cumulative"] as? Int ?? 0
        self.sat = json["latest.admissions.sat_scores.average.overall"] as? Int ?? 0
        self.cost = json["latest.cost.attendance.academic_year"] as? Int ?? 0
        self.admissionRate = json["latest.admissions.admission_rate.overall"] as? Double ?? 0.0
        self.Town = json["school.city"] as? String ?? ""
        self.SchoolName = json["school.name"] as? String ?? ""
        self.State = json["school.state"] as? String ?? ""
        self.schoolWebsite = json["school.school_url"] as? String ?? ""
        self.schoolSize = json["latest.student.size"] as? Int ?? 0
        self.femaleRATE = json["latest.student.demographics.female_share"] as? Double ?? 0.0
        self.lowerAct = json["latest.admissions.act_scores.25th_percentile.cumulative"] as? Int ?? 0
        self.upperAct = json["latest.admissions.act_scores.75th_percentile.cumulative"] as? Int ?? 0
        self.completionRate = json["latest.completion.rate_suppressed.four_year"] as? Double ?? 0.0
        self.earnings = json["latest.earnings.10_yrs_after_entry.median"] as? Int ?? 0
        self.retRate = json["latest.student.retention_rate.four_year.full_time"] as? Double ?? 0.0
 
        if (myIndex == self.SchoolName)
        {
            finalACT = self.act
            finalSTATE = self.State
            finalTOWN = self.Town
            finalSchoolName = self.SchoolName
            finalSCHOOLWEBSITE = self.schoolWebsite
            finalADMISSION = self.admissionRate
            finalCOST = self.cost
            finalSAT = self.sat
            finalSCHOOLSIZE = self.schoolSize
            finalFemRate = self.femaleRATE
            finalUpperACT = self.upperAct
            finalLowerACT = self.lowerAct
            finalEarnings = self.earnings
            finalCompletionRate = self.completionRate
            finalretRate = self.retRate
        }
        
        
}
}
