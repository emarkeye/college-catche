//
//  CompareResultsData.swift
//  College App (page based)
//
//  Created by Eric Markey on 7/14/19.
//  Copyright © 2019 Eric Markey. All rights reserved.
//

import Foundation

struct compareResultsData
{
    let school1ActRes :Int
    let school1SATRes :Int
    let school1GradRateRes :Double
    let school1SalaryRes :Int
    let school1CostRes :Int
    let school1Name :String
    let school1AdmissionRate :Double
    let school1RetRate :Double
    let school1E :Int
    
    init?(json: JSON)
    {
        self.school1ActRes = json["latest.admissions.act_scores.midpoint.cumulative"] as? Int ?? 0
        self.school1SATRes = json["latest.admissions.sat_scores.average.overall"] as? Int ?? 0
        self.school1CostRes = json["latest.cost.attendance.academic_year"] as? Int ?? 0
        self.school1AdmissionRate = json["latest.admissions.admission_rate.overall"] as? Double ?? 0.0
        self.school1GradRateRes = json["latest.completion.rate_suppressed.four_year"] as? Double ?? 0.0
        self.school1SalaryRes = json["latest.earnings.10_yrs_after_entry.median"] as? Int ?? 0
        self.school1Name = json["school.name"] as? String ?? ""
        self.school1RetRate = json["latest.student.retention_rate.four_year.full_time"] as? Double ?? 0.0
        self.school1E = json["latest.student.size"] as? Int ?? 0
        
        if (school1Index == self.school1Name)
        {
            school1ACTINT = self.school1ActRes
            school1SAT = self.school1SATRes
            school1Cost = self.school1CostRes
            school1GradRate = self.school1GradRateRes
            school1Salary = self.school1SalaryRes
            school1AdmRate = self.school1AdmissionRate
            school1RETRATE = self.school1RetRate
            school1Enroll = self.school1E
        }
        
        

        
    }
    
    
}
