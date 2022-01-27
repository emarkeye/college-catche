//
//  SecondCompareResults.swift
//  College App (page based)
//
//  Created by Eric Markey on 8/7/19.
//  Copyright © 2019 Eric Markey. All rights reserved.
//

import Foundation

struct secondCompareResultsData
{
    let school2ActRes :Int
    let school2SATRes :Int
    let school2GradRateRes :Double
    let school2SalaryRes :Int
    let school2CostRes :Int
    let school2Name :String
    let school2AdmissionRate :Double
    let school2RetRate :Double
    let school2E :Int
    
    init?(json: JSON)
    {
        self.school2ActRes = json["latest.admissions.act_scores.midpoint.cumulative"] as? Int ?? 0
        self.school2SATRes = json["latest.admissions.sat_scores.average.overall"] as? Int ?? 0
        self.school2CostRes = json["latest.cost.attendance.academic_year"] as? Int ?? 0
        self.school2AdmissionRate = json["latest.admissions.admission_rate.overall"] as? Double ?? 0.0
        self.school2GradRateRes = json["latest.completion.rate_suppressed.four_year"] as? Double ?? 0.0
        self.school2SalaryRes = json["latest.earnings.10_yrs_after_entry.median"] as? Int ?? 0
        self.school2Name = json["school.name"] as? String ?? ""
        self.school2RetRate = json["latest.student.retention_rate.four_year.full_time"] as? Double ?? 0.0
        self.school2E = json["latest.student.size"] as? Int ?? 0
        
        if (school2Index == self.school2Name)
        {
            school2ACTINT = self.school2ActRes
            school2SAT = self.school2SATRes
            school2Cost = self.school2CostRes
            school2GradRate = self.school2GradRateRes
            school2Salary = self.school2SalaryRes
            school2AdmRate = self.school2AdmissionRate
            school2RetentionRate = self.school2RetRate
            school2Enroll = self.school2E
        }
        
        
        
        
    }
    
}
