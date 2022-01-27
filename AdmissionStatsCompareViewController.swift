//
//  AdmissionStatsCompareViewController.swift
//  College App (page based)
//
//  Created by Eric Markey on 7/30/19.
//  Copyright © 2019 Eric Markey. All rights reserved.
//

import UIKit








class AdmissionStatsCompareViewController: UIViewController {
   
    
    @IBOutlet weak var school1Name1: UILabel!
    @IBOutlet weak var school2Name1: UILabel!
    @IBOutlet weak var school2Name2: UILabel!
    @IBOutlet weak var school1Name2: UILabel!
    @IBOutlet weak var school1Name3: UILabel!
    @IBOutlet weak var school2Name3: UILabel!
    @IBOutlet weak var school1Name4: UILabel!
    @IBOutlet weak var school2Name4: UILabel!
    @IBOutlet weak var homeBtn: UIButton!
    @IBOutlet weak var newSchoolBtn: UIButton!
    
    
    @IBOutlet weak var school1ACTLabel: UILabel!
    @IBOutlet weak var school1SATLabel: UILabel!
    @IBOutlet weak var school1ADMRateLabel:
        UILabel!
    @IBOutlet weak var school1RetRateLabel: UILabel!
    @IBOutlet weak var school2ACTLabel: UILabel!
    @IBOutlet weak var school2SATLabel: UILabel!
    @IBOutlet weak var school2ADMRateLabel: UILabel!
    @IBOutlet weak var school2RetRateLabel: UILabel!
    
    
    var ret :Double = 0.0
    var retRate :Double = 0.0
    
    var ret2 :Double = 0.0
    var retRate2 :Double = 0.0
    
    var adm :Double = 0.0
    var admRate :Double = 0.0
    
    var adm2 :Double = 0.0
    var admRate2 :Double = 0.0
    
    override func viewDidLoad()
{
        super.viewDidLoad()
      homeBtn.layer.cornerRadius = 8
      newSchoolBtn.layer.cornerRadius = 8
    
    
    if (school1Index == "Virginia Polytechnic Institute and State University")
    {
        school1Name1.text = "Virginia Tech:"
        school1Name2.text = "Virginia Tech:"
        school1Name3.text = "Virginia Tech:"
        school1Name4.text = "Virginia Tech:"
    } else if (school1Index == "Arizona State University-Tempe")
    {
        school1Name1.text = "Arizona State University:"
        school1Name2.text = "Arizona State University:"
        school1Name3.text = "Arizona State University:"
        school1Name4.text = "Arizona State University:"
    } else if (school1Index == "Brigham Young University-Provo")
    {
        school1Name1.text = "Brigham Young University:"
        school1Name2.text = "Brigham Young University:"
        school1Name3.text = "Brigham Young University:"
        school1Name4.text = "Brigham Young University:"
    } else if (school1Index == "Embry-Riddle Aeronautical University-Daytona Beach")
    {
        school1Name3.text = "Embry-Riddle Aeronautical University:"
        school1Name2.text = "Embry-Riddle Aeronautical University:"
        school1Name1.text = "Embry-Riddle Aeronautical University:"
        school1Name4.text = "Embry-Riddle Aeronautical University:"
    } else if (school1Index == "University of Michigan-Ann Arbor")
    {
        school1Name1.text = "University of Michigan:"
        school1Name2.text = "University of Michigan:"
        school1Name3.text = "University of Michigan:"
        school1Name4.text = "University of Michigan:"
    } else if (school1Index == "University of Minnesota-Twin Cities")
    {
        school1Name1.text = "University of Minnesota:"
        school1Name2.text = "University of Minnesota:"
        school1Name3.text = "University of Minnesota:"
        school1Name4.text = "University of Minnesota:"
    } else if (school1Index == "University of Nebraska-Lincoln")
    {
        school1Name1.text = "University of Nebraska:"
        school1Name2.text = "University of Nebraska:"
        school1Name3.text = "University of Nebraska:"
        school1Name4.text = "University of Nebraska:"
    } else if (school1Index == "University of Oklahoma-Norman Campus")
    {
        school1Name1.text = "University of Oklahoma:"
        school1Name2.text = "University of Oklahoma:"
        school1Name3.text = "University of Oklahoma"
        school1Name4.text = "University of Oklahoma:"
    } else if (school1Index == "University of Pittsburgh-Pittsburgh Campus")
    {
        school1Name1.text = "University of Pittsburgh:"
        school1Name2.text = "University of Pittsburgh:"
        school1Name3.text = "University of Pittsburgh:"
        school1Name4.text = "University of Pittsburgh:"
    } else if (school1Index == "Rutgers University-New Brunswick")
    {
        school1Name1.text = "Rutgers University:"
        school1Name2.text = "Rutgers University:"
        school1Name3.text = "Rutgers University:"
        school1Name4.text = "Rutgers University:"
    } else if (school1Index == "University of South Carolina-Columbia")
    {
        school1Name1.text = "University of South Carolina:"
        school1Name2.text = "University of South Carolina:"
        school1Name3.text = "University of South Carolina:"
        school1Name4.text = "University of South Carolina:"
    } else if (school1Index == "The University of Tennessee-Knoxville")
    {
        school1Name1.text = "The University of Tennessee:"
        school1Name2.text = "The University of Tennessee:"
        school1Name3.text = "The University of Tennessee:"
        school1Name4.text = "The University of Tennessee:"
    } else if (school1Index == "University of Washington-Seattle Campus")
    {
        school1Name1.text = "University of Washington:"
        school1Name2.text = "University of Washington:"
        school1Name3.text = "University of Washington:"
        school1Name4.text = "University of Washington:"
    } else if (school1Index == "University of Wisconsin-Madison")
    {
        school1Name1.text = "University of Wisconsin:"
        school1Name3.text = "University of Wisconsin:"
        school1Name2.text = "University of Wisconsin:"
        school1Name4.text = "University of Wisconsin:"
    } else if (school1Index == "Ohio State University-Main Campus")
    {
        school1Name1.text = "\(ohioState):"
        school1Name2.text = "\(ohioState):"
        school1Name3.text = "\(ohioState):"
        school1Name4.text = "\(ohioState):"
    } else if (school1Index == "The University of Texas at Austin")
    {
        school1Name1.text = "\(texas):"
        school1Name2.text = "\(texas):"
        school1Name3.text = "\(texas):"
        school1Name4.text = "\(texas):"
    } else if (school1Index == "Bowling Green State University-Main Campus")
    {
        school1Name4.text = "\(BGSU):"
        school1Name3.text = "\(BGSU):"
        school1Name2.text = "\(BGSU):"
        school1Name1.text = "\(BGSU):"
    } else if (school1Index == "University of Cincinnati-Main Campus")
    {
        school1Name4.text = "\(Cin):"
        school1Name3.text = "\(Cin):"
        school1Name2.text = "\(Cin):"
        school1Name1.text = "\(Cin):"
    } else if (school1Index == "Georgia Institute of Technology-Main Campus")
    {
        school1Name3.text = "\(GIT):"
        school1Name4.text = "\(GIT):"
        school1Name1.text = "\(GIT):"
        school1Name2.text = "\(GIT):"
    } else if (school1Index == "Indiana University of Pennsylvania-Main Campus")
    {
        school1Name1.text = "\(Penn):"
        school1Name3.text = "\(Penn):"
        school1Name2.text = "\(Penn):"
        school1Name4.text = "\(Penn):"
    } else if (school1Index == "University of New Hampshire-Main Campus")
    {
        school1Name1.text = "\(NH):"
        school1Name2.text = "\(NH):"
        school1Name3.text = "\(NH)"
        school1Name4.text = "\(NH)"
    } else if (school1Index == "University of New Mexico-Main Campus")
    {
        school1Name3.text = "\(NM):"
        school1Name1.text = "\(NM):"
        school1Name2.text = "\(NM):"
        school1Name4.text = "\(NM):"
    } else if (school1Index == "Ohio University-Main Campus")
    {
        school2Name3.text = "\(Ohio):"
        school2Name1.text = "\(Ohio):"
        school2Name2.text = "\(Ohio):"
        school2Name4.text = "\(Ohio):"
    } else if (school1Index == "Oklahoma State University-Main Campus")
    {
        school1Name4.text = "\(Okla):"
        school1Name3.text = "\(Okla):"
        school1Name2.text = "\(Okla):"
        school1Name1.text = "\(Okla)"
    } else if (school1Index == "Purdue University-Main Campus")
    {
        school1Name4.text = "\(Purd):"
        school1Name3.text = "\(Purd):"
        school1Name2.text = "\(Purd):"
        school1Name1.text = "\(Purd):"
    } else if (school1Index == "University of Virginia-Main Campus")
    {
        school1Name3.text = "\(Virg):"
        school1Name4.text = "\(Virg):"
        school1Name2.text = "\(Virg):"
        school1Name1.text = "\(Virg):"
    } else if (school1Index == "Wright State University-Main Campus")
    {
        school1Name4.text = "\(wright):"
        school1Name3.text = "\(wright):"
        school1Name2.text = "\(wright):"
        school1Name1.text = "\(wright):"
    } else if (school1Index == "Indiana University-Bloomington")
    {
        school1Name4.text = "Indiana University:"
        school1Name3.text = "Indiana University:"
        school1Name2.text = "Indiana University:"
        school1Name1.text = "Indiana University:"
        
    } else if (school1Index == "University of Colorado Boulder")
    {
        school1Name1.text = "University of Colorado:"
        school1Name2.text = "University of Colorado:"
        school1Name3.text = "University of Colorado:"
        school1Name4.text = "University of Colorado:"
    } else if (school1Index == "University of Illinois at Urbana-Champaign")
    {
        school1Name3.text = "University of Illinois:"
        school1Name2.text = "University of Illinois:"
        school1Name1.text = "University of Illinois:"
        school1Name4.text = "University of Illinois:"
    } else if (school1Index == "Flagler College-St Augustine")
    {
        school1Name4.text = "Flagler College:"
        school1Name1.text = "Flagler College:"
        school1Name2.text = "Flagler College:"
        school1Name3.text = "Flagler College:"
    } else if (school1Index == "Golden Gate University-San Francisco")
    {
        school1Name4.text = "Golden Gate University:"
        school1Name1.text = "Golden Gate University:"
        school1Name3.text = "Golden Gate University:"
        school1Name2.text = "Golden Gate University:"
    } else if (school1Index == "Kent State University at Kent")
    {
        school1Name4.text = "Kent State University:"
        school1Name3.text = "Kent State University:"
        school1Name2.text = "Kent State University:"
        school1Name1.text = "Kent State University:"
    } else if (school1Index == "Linfield College-McMinnville Campus")
    {
        school1Name4.text = "Linfield College:"
        school1Name1.text = "Linfield College:"
        school1Name2.text = "Linfield College:"
        school1Name3.text = "Linfield College:"
    } else if (school1Index == "University of Maryland-College Park")
    {
        school1Name4.text = "University of Maryland:"
        school1Name3.text = "University of Maryland:"
        school1Name2.text = "University of Maryland:"
        school1Name1.text = "University of Maryland:"
    } else if (school1Index == "Miami University-Oxford")
    {
        school1Name4.text = "Miami University:"
        school1Name1.text = "Miami University:"
        school1Name3.text = "Miami University:"
        school1Name2.text = "Miami University:"
    } else if (school1Index == "University of Nevada-Reno")
    {
        school1Name4.text = "University of Nevada:"
        school1Name1.text = "University of Nevada:"
        school1Name2.text = "University of Nevada:"
        school1Name3.text = "University of Nevada:"
    } else if (school1Index == "North Carolina State University at Raleigh")
    {
        school1Name4.text = "North Carolina State University:"
        school1Name1.text = "North Carolina State University:"
        school1Name3.text = "North Carolina State University:"
        school1Name2.text = "North Carolina State University:"
    } else if (school1Index == "California State Polytechnic University-Pomona")
    {
        school1Name4.text = "California State Polytechnic University:"
        school1Name2.text = "California State Polytechnic University:"
        school1Name1.text = "California State Polytechnic University:"
        school1Name3.text = "California State Polytechnic University:"
    } else if (school1Index == "California Polytechnic State University-San Luis Obispo")
    {
        school1Name4.text = "California Polytechnic State University:"
        school1Name1.text = "California Polytechnic State University:"
        school1Name3.text = "California Polytechnic State University:"
        school1Name2.text = "California Polytechnic State University:"
        
    } else if (school1Index == "University of North Carolina at Chapel Hill")
    {
        school1Name1.text = "University of North Carolina:"
        school1Name2.text = "University of North Carolina:"
        school1Name3.text = "University of North Carolina:"
        school1Name4.text = "University of North Carolina:"
    } else if (school1Index == "Texas A & M University-College Station")
    {
        school1Name1.text = "Texas A&M University:"
        school1Name2.text = "Texas A&M University:"
        school1Name3.text = "Texas A&M University:"
        school1Name4.text = "Texas A&M University:"
    } else {
        
        school1Name1.text = "\(school1Index):"
        school1Name2.text = "\(school1Index):"
        school1Name3.text = "\(school1Index):"
        school1Name4.text = "\(school1Index):"
    }
        

    school1Name1.adjustsFontSizeToFitWidth = true
    school1Name1.minimumScaleFactor = 0.5
    school1Name2.adjustsFontSizeToFitWidth = true
    school1Name3.minimumScaleFactor = 0.5
    school1Name3.adjustsFontSizeToFitWidth = true
    school1Name3.minimumScaleFactor = 0.5
    school1Name4.adjustsFontSizeToFitWidth = true
    school1Name4.minimumScaleFactor = 0.5
    
     
    
    if (school2Index == "Virginia Polytechnic Institute and State University")
    {
        school2Name1.text = "Virginia Tech:"
        school2Name2.text = "Virginia Tech:"
        school2Name3.text = "Virginia Tech:"
        school2Name4.text = "Virginia Tech:"
    } else if (school2Index == "Arizona State University-Tempe")
    {
        school2Name1.text = "Arizona State University:"
        school2Name2.text = "Arizona State University:"
        school2Name3.text = "Arizona State University:"
        school2Name4.text = "Arizona State University:"
    } else if (school2Index == "Brigham Young University-Provo")
    {
        school2Name1.text = "Brigham Young University:"
        school2Name2.text = "Brigham Young University:"
        school2Name3.text = "Brigham Young University:"
        school2Name4.text = "Brigham Young University:"
    } else if (school2Index == "Embry-Riddle Aeronautical University-Daytona Beach")
    {
        school2Name3.text = "Embry-Riddle Aeronautical University:"
        school2Name2.text = "Embry-Riddle Aeronautical University:"
        school2Name1.text = "Embry-Riddle Aeronautical University:"
        school2Name4.text = "Embry-Riddle Aeronautical University:"
    } else if (school2Index == "University of Michigan-Ann Arbor")
    {
        school2Name1.text = "University of Michigan:"
        school2Name2.text = "University of Michigan:"
        school2Name3.text = "University of Michigan:"
        school2Name4.text = "University of Michigan:"
    } else if (school2Index == "University of Minnesota-Twin Cities")
    {
        school2Name1.text = "University of Minnesota:"
        school2Name2.text = "University of Minnesota:"
        school2Name3.text = "University of Minnesota:"
        school2Name4.text = "University of Minnesota:"
    } else if (school2Index == "University of Nebraska-Lincoln")
    {
        school2Name1.text = "University of Nebraska:"
        school2Name2.text = "University of Nebraska:"
        school2Name3.text = "University of Nebraska:"
        school2Name4.text = "University of Nebraska:"
    } else if (school2Index == "University of Oklahoma-Norman Campus")
    {
        school2Name1.text = "University of Oklahoma:"
        school2Name2.text = "University of Oklahoma:"
        school2Name3.text = "University of Oklahoma"
        school2Name4.text = "University of Oklahoma:"
    } else if (school2Index == "University of Pittsburgh-Pittsburgh Campus")
    {
        school2Name1.text = "University of Pittsburgh:"
        school2Name2.text = "University of Pittsburgh:"
        school2Name3.text = "University of Pittsburgh:"
        school2Name4.text = "University of Pittsburgh:"
    } else if (school2Index == "Rutgers University-New Brunswick")
    {
        school2Name1.text = "Rutgers University:"
        school2Name2.text = "Rutgers University:"
        school2Name3.text = "Rutgers University:"
        school2Name4.text = "Rutgers University:"
    } else if (school2Index == "University of South Carolina-Columbia")
    {
        school2Name1.text = "University of South Carolina:"
        school2Name2.text = "University of South Carolina:"
        school2Name3.text = "University of South Carolina:"
        school2Name4.text = "University of South Carolina:"
    } else if (school2Index == "The University of Tennessee-Knoxville")
    {
        school2Name1.text = "The University of Tennessee:"
        school2Name2.text = "The University of Tennessee:"
        school2Name3.text = "The University of Tennessee:"
        school2Name4.text = "The University of Tennessee:"
    } else if (school2Index == "University of Washington-Seattle Campus")
    {
        school2Name1.text = "University of Washington:"
        school2Name2.text = "University of Washington:"
        school2Name3.text = "University of Washington:"
        school2Name4.text = "University of Washington:"
    } else if (school2Index == "University of Wisconsin-Madison")
    {
        school2Name1.text = "University of Wisconsin:"
        school2Name3.text = "University of Wisconsin:"
        school2Name2.text = "University of Wisconsin:"
        school2Name4.text = "University of Wisconsin:"
    } else if (school2Index == "Ohio State University-Main Campus")
    {
        school2Name1.text = "\(ohioState):"
        school2Name2.text = "\(ohioState):"
        school2Name3.text = "\(ohioState):"
        school2Name4.text = "\(ohioState):"
    } else if (school2Index == "The University of Texas at Austin")
    {
        school2Name1.text = "\(texas):"
        school2Name2.text = "\(texas):"
        school2Name3.text = "\(texas):"
        school2Name4.text = "\(texas):"
    } else if (school2Index == "Bowling Green State University-Main Campus")
    {
        school2Name4.text = "\(BGSU):"
        school2Name3.text = "\(BGSU):"
        school2Name2.text = "\(BGSU):"
        school2Name1.text = "\(BGSU):"
    } else if (school2Index == "University of Cincinnati-Main Campus")
    {
        school2Name4.text = "\(Cin):"
        school2Name3.text = "\(Cin):"
        school2Name2.text = "\(Cin):"
        school2Name1.text = "\(Cin):"
    } else if (school2Index == "Georgia Institute of Technology-Main Campus")
    {
        school2Name3.text = "\(GIT):"
        school2Name4.text = "\(GIT):"
        school2Name1.text = "\(GIT):"
        school2Name2.text = "\(GIT):"
    } else if (school2Index == "Indiana University of Pennsylvania-Main Campus")
    {
        school2Name1.text = "\(Penn):"
        school2Name3.text = "\(Penn):"
        school2Name2.text = "\(Penn):"
        school2Name4.text = "\(Penn):"
    } else if (school2Index == "University of New Hampshire-Main Campus")
    {
        school2Name1.text = "\(NH):"
        school2Name2.text = "\(NH):"
        school2Name3.text = "\(NH)"
        school2Name4.text = "\(NH)"
    } else if (school2Index == "University of New Mexico-Main Campus")
    {
        school2Name3.text = "\(NM):"
        school2Name1.text = "\(NM):"
        school2Name2.text = "\(NM):"
        school2Name4.text = "\(NM):"
    } else if (school2Index == "Ohio University-Main Campus")
    {
        school2Name3.text = "\(Ohio):"
        school2Name1.text = "\(Ohio):"
        school2Name2.text = "\(Ohio):"
        school2Name4.text = "\(Ohio):"
    } else if (school2Index == "Oklahoma State University-Main Campus")
    {
        school2Name4.text = "\(Okla):"
        school2Name3.text = "\(Okla):"
        school2Name2.text = "\(Okla):"
        school2Name1.text = "\(Okla)"
    } else if (school2Index == "Purdue University-Main Campus")
    {
        school2Name4.text = "\(Purd):"
        school2Name3.text = "\(Purd):"
        school2Name2.text = "\(Purd):"
        school2Name1.text = "\(Purd):"
    } else if (school2Index == "University of Virginia-Main Campus")
    {
        school2Name3.text = "\(Virg):"
        school2Name4.text = "\(Virg):"
        school2Name2.text = "\(Virg):"
        school2Name1.text = "\(Virg):"
    } else if (school2Index == "Wright State University-Main Campus")
    {
        school2Name4.text = "\(wright):"
        school2Name3.text = "\(wright):"
        school2Name2.text = "\(wright):"
        school2Name1.text = "\(wright):"
    } else if (school2Index == "Indiana University-Bloomington")
    {
        school2Name1.text = "Indiana University:"
        school2Name2.text = "Indiana University:"
        school2Name3.text = "Indiana University:"
        school2Name4.text = "Indiana University"
    } else if (school2Index == "University of Colorado Boulder")
    {
        school2Name1.text = "University of Colorado:"
        school2Name2.text = "University of Colorado:"
        school2Name3.text = "University of Colorado:"
        school2Name4.text = "University of Colorado:"
    } else if (school2Index == "University of Illinois at Urbana-Champaign")
    {
        school2Name3.text = "University of Illinois:"
        school2Name2.text = "University of Illinois:"
        school2Name1.text = "University of Illinois:"
        school2Name4.text = "University of Illinois:"
    } else if (school2Index == "Flagler College-St Augustine")
    {
        school2Name4.text = "Flagler College:"
        school2Name1.text = "Flagler College:"
        school2Name2.text = "Flagler College:"
        school2Name3.text = "Flagler College:"
    } else if (school2Index == "Golden Gate University-San Francisco")
    {
        school2Name4.text = "Golden Gate University:"
        school2Name1.text = "Golden Gate University:"
        school2Name3.text = "Golden Gate University:"
        school2Name2.text = "Golden Gate University:"
    } else if (school2Index == "Kent State University at Kent")
    {
        school2Name4.text = "Kent State University:"
        school2Name3.text = "Kent State University:"
        school2Name2.text = "Kent State University:"
        school2Name1.text = "Kent State University:"
    } else if (school2Index == "Linfield College-McMinnville Campus")
    {
        school2Name4.text = "Linfield College:"
        school2Name1.text = "Linfield College:"
        school2Name2.text = "Linfield College:"
        school2Name3.text = "Linfield College:"
    } else if (school2Index == "University of Maryland-College Park")
    {
        school2Name4.text = "University of Maryland:"
        school2Name3.text = "University of Maryland:"
        school2Name2.text = "University of Maryland:"
        school2Name1.text = "University of Maryland:"
    } else if (school2Index == "Miami University-Oxford")
    {
        school2Name4.text = "Miami University:"
        school2Name1.text = "Miami University:"
        school2Name3.text = "Miami University:"
        school2Name2.text = "Miami University:"
    } else if (school2Index == "University of Nevada-Reno")
    {
        school2Name4.text = "University of Nevada:"
        school2Name1.text = "University of Nevada:"
        school2Name2.text = "University of Nevada:"
        school2Name3.text = "University of Nevada:"
    } else if (school2Index == "North Carolina State University at Raleigh")
    {
        school2Name4.text = "North Carolina State University:"
        school2Name1.text = "North Carolina State University:"
        school2Name3.text = "North Carolina State University:"
        school2Name2.text = "North Carolina State University:"
    } else if (school2Index == "California State Polytechnic University-Pomona")
    {
        school2Name4.text = "California State Polytechnic University:"
        school2Name2.text = "California State Polytechnic University:"
        school2Name1.text = "California State Polytechnic University:"
        school2Name3.text = "California State Polytechnic University:"
    } else if (school2Index == "California Polytechnic State University-San Luis Obispo")
    {
        school2Name4.text = "California Polytechnic State University:"
        school2Name1.text = "California Polytechnic State University:"
        school2Name3.text = "California Polytechnic State University:"
        school2Name2.text = "California Polytechnic State University:"
        
    } else if (school2Index == "University of North Carolina at Chapel Hill")
    {
        school2Name1.text = "University of North Carolina:"
        school2Name2.text = "University of North Carolina:"
        school2Name3.text = "University of North Carolina:"
        school2Name4.text = "University of North Carolina:"
    } else if (school2Index == "Texas A & M University-College Station")
    {
        school2Name1.text = "Texas A&M University:"
        school2Name2.text = "Texas A&M University:"
        school2Name3.text = "Texas A&M University:"
        school2Name4.text = "Texas A&M University:"
    } else {
        
        school2Name1.text = "\(school2Index):"
        school2Name2.text = "\(school2Index):"
        school2Name3.text = "\(school2Index):"
        school2Name4.text = "\(school2Index):"
    }
    
    school2Name1.adjustsFontSizeToFitWidth = true
    school2Name1.minimumScaleFactor = 0.5
    school2Name2.adjustsFontSizeToFitWidth = true
    school2Name2.minimumScaleFactor = 0.5
    school2Name3.adjustsFontSizeToFitWidth = true
    school2Name3.minimumScaleFactor = 0.5
    school2Name4.adjustsFontSizeToFitWidth = true
    school2Name4.minimumScaleFactor = 0.5
    
    school1ACTLabel.layer.masksToBounds = true
    school1ACTLabel.layer.cornerRadius = 6
    school1SATLabel.layer.masksToBounds = true
    school1SATLabel.layer.cornerRadius = 6
    school1ADMRateLabel.layer.masksToBounds = true
    school1ADMRateLabel.layer.cornerRadius = 6
    school2ACTLabel.layer.masksToBounds = true
    school2ACTLabel.layer.cornerRadius = 6
    school2SATLabel.layer.masksToBounds = true
    school2SATLabel.layer.cornerRadius = 6
    school2ADMRateLabel.layer.masksToBounds = true
    school2ADMRateLabel.layer.cornerRadius = 6
    school1RetRateLabel.layer.masksToBounds = true
    school1RetRateLabel.layer.cornerRadius = 6
    school2RetRateLabel.layer.masksToBounds = true
    school2RetRateLabel.layer.cornerRadius = 6
    
    
    DispatchQueue.main.async {
        if school1ACTINT == 0 {
            self.school1ACTLabel.text = "Data Not Available"
            self.school1ACTLabel.font = UIFont(name: "kefa", size: 14.0)
        } else {
            self.school1ACTLabel.text = "\(school1ACTINT)"
        }
        
        
        if school1SAT == 0 {
            self.school1SATLabel.text = "Data Not Available"
            self.school1SATLabel.font = UIFont(name: "kefa", size: 14.0)
        } else {
            self.school1SATLabel.text = "\(school1SAT)"
        }
        
        
        if school1AdmRate == 0.0 {
            self.school1ADMRateLabel.text = "Data Not Available"
            self.school1SATLabel.font = UIFont(name: "kefa", size: 14.0)
        } else {
            self.adm = school1AdmRate * 100
            self.admRate = Double(round(100 * self.adm) / 100)
            
            self.school1ADMRateLabel.text = "\(self.admRate)%"
        }
        
        if school2ACTINT == 0 {
            self.school2ACTLabel.text = "Data Not Available"
            self.school2ACTLabel.font = UIFont(name: "kefa", size: 14.0)
        } else {
            self.school2ACTLabel.text = "\(school2ACTINT)"
        }
        
        
        if school2SAT == 0 {
            self.school2SATLabel.text = "Data Not Available"
            self.school2SATLabel.font = UIFont(name: "kefa", size: 14.0)
        } else {
            self.school2SATLabel.text = "\(school2SAT)"
        }
        
        if school2AdmRate == 0.0 {
            self.school2ADMRateLabel.text = "Data Not Available"
            self.school2ADMRateLabel.font = UIFont(name: "kefa", size: 14.0)
        } else {
            self.adm2 = school2AdmRate * 100
            self.admRate2 = Double(round(100 * self.adm2) / 100)
            
            self.school2ADMRateLabel.text = "\(self.admRate2)%"
        }
        
        if school1RETRATE == 0.0 {
            self.school1RetRateLabel.text = "Data Not Available"
            self.school1RetRateLabel.font = UIFont(name: "kefa", size: 14.0)
            
        } else {
            self.ret = school1RETRATE * 100
            self.retRate = Double(round(100 * self.ret) / 100)
            self.school1RetRateLabel.text = "\(self.retRate)%"
        }
        
        if school2RetentionRate == 0.0 {
            self.school2RetRateLabel.text = "Data Not Available"
            self.school2RetRateLabel.font =  UIFont(name: "kefa", size: 14.0)
        } else {
            self.ret2 = school2RetentionRate * 100
            self.retRate2 = Double(round(100 * self.ret2) / 100)
            self.school2RetRateLabel.text = "\(self.retRate2)%"
        }
        
        
    }
    
    
    }
    
    @IBAction func newSchools(_ sender: UIButton)
    {
        performSegue(withIdentifier: "selectNewSchools2", sender: nil)
    }
    
    @IBAction func home(_ sender: UIButton)
    {
        performSegue(withIdentifier: "home2", sender: nil)
    }
    
    @IBAction func actInfo(_ sender: UIButton) {
       let actAlert = UIAlertController(title: "Average ACT", message: "ACT Midpoint of accepted applicants to this institution", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Done", style: .cancel)
        actAlert.addAction(ok)
        present(actAlert, animated: true, completion: nil)
        }
    
    
    @IBAction func satInfo(_ sender: Any)
    {
        let satAlert = UIAlertController(title: "Average SAT", message: "SAT Midpoint of accepted applicants to this institution", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Done", style: .cancel)
        satAlert.addAction(ok)
        present(satAlert, animated: true, completion: nil)
    }
    
    @IBAction func admRateInfo(_ sender: UIButton)
    {
        let admRateAlert = UIAlertController(title: "Admission Rate", message: "The percentage of the total applications  that this institution offers admission to", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Done", style: .cancel)
        admRateAlert.addAction(ok)
        present(admRateAlert, animated: true, completion: nil)
    }
    
    @IBAction func retRateInfo(_ sender: UIButton)
    {
        let retRateAlert = UIAlertController(title: "Retention Rate", message: "The share of first-time, full-time undergraduate students who returned to the institution after their freshman year.", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Done", style: .cancel)
        retRateAlert.addAction(ok)
        present(retRateAlert, animated: true, completion: nil)
    }
    
}
