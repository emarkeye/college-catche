//
//  Item1ViewController.swift
//  College App (page based)
//
//  Created by Eric Markey on 6/20/19.
//  Copyright © 2019 Eric Markey. All rights reserved.
//

import UIKit
import SafariServices

typealias JSON = [String: Any]
var finalACT = 0
var finalLowerACT = 0
var finalUpperACT = 0
var finalSAT = 0
var finalADMISSION = 0.0
var finalretRate = 0.0

var finalSTATE = ""
var finalTOWN = ""

var finalSchoolName = ""
var finalSCHOOLWEBSITE = ""
var finalCOST = 0
var finalSCHOOLSIZE = 0
var finalFemRate = 0.0
var finalCompletionRate = 0.0
var finalEarnings = 0

let texas :String = "The University of Texas"
let BGSU :String = "Bowling Green State University"
let Cin :String = "University of Cincinnati"
let GIT :String = "Georgia Institute of Technology"
let Penn :String = "Indiana University of Pennsylvania"
let NH :String = "University of New Hampshire"
let NM :String = "University of New Mexico"
let Ohio :String = "Ohio University"
let ohioState :String = "Ohio State University"
let Okla :String = "Oklahoma State University"
let Purd :String = "Purdue University"
let Virg :String = "University of Virginia"
let wright :String = "Wright State University"




class Item1ViewController: UIViewController {
    @IBOutlet weak var schoolName: UILabel!
    @IBOutlet weak var schoolLocation: UILabel!
    @IBOutlet weak var enrollment: UILabel!
    @IBOutlet weak var percentOfFemale: UILabel!
    @IBOutlet weak var percentOfMale: UILabel!
    @IBOutlet weak var annualCost: UILabel!
    @IBOutlet weak var websiteBTN: UIButton!
    @IBOutlet weak var completionRateLabel: UILabel!
    @IBOutlet weak var backBtn: UIButton!
    
@IBOutlet weak var postSchoolEarningsLabel: UILabel!
    @IBOutlet weak var logoView: UIImageView!
    
    
    
     let numberFormatter = NumberFormatter()
    
    
    var male :Double = 0.0
    var female :Double = 0.0
    var finalmale :Double = 0.0
    var finalfemale :Double = 0.0
   
    var completion :Double = 0.0
    var completionRate :Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
      backBtn.layer.cornerRadius = 6
        print(finalSchoolName)
        print(myIndex)
        
        
            if (myIndex == "Ohio State University-Main Campus")
            {
                logoView.image = UIImage(named: "OSUImage")
            } else if (myIndex == "Adelphi University")
            {
                logoView.image = UIImage(named: "Adelphi")
            } else if (myIndex == "Agnes Scott College")
            {
                logoView.image = UIImage(named: "AgnesScott")
            } else if (myIndex == "The University of Alabama")
            {
                logoView.image = UIImage(named: "Bama")
            } else if (myIndex == "Albion College")
            {
                logoView.image = UIImage(named: "Albion")
            } else if (myIndex == "Albright College")
            {
                logoView.image = UIImage(named: "Albright")
            } else if (myIndex == "Alfred University")
            {
                logoView.image = UIImage(named: "alfred")
            } else if (myIndex == "Allegheny College")
            {
                logoView.image = UIImage(named: "allegheny")
            } else if (myIndex == "Amherst College")
            {
                logoView.image = UIImage(named: "Amherst")
            } else if (myIndex == "American International College")
            {
                logoView.image = UIImage(named: "AIC")
            } else if (myIndex == "American University")
            {
                logoView.image = UIImage(named: "AmericanUniversity")
            } else if (myIndex == "Antioch College")
            {
                logoView.image = UIImage(named: "AntiochCollege")
            } else if (myIndex == "Appalachian State University")
            {
                logoView.image = UIImage(named: "Appalachian")
            } else if (myIndex == "University of Arizona")
            {
                logoView.image = UIImage(named: "UofArizona")
            } else if (myIndex == "Arizona State University-Tempe")
            {
                logoView.image = UIImage(named: "ASU")
            } else if (myIndex == "University of Arkansas")
            {
                logoView.image = UIImage(named:"UofArkansas")
            } else if (myIndex == "Assumption College")
            {
                logoView.image = UIImage(named: "assumptionCollege")
            } else if (myIndex == "College of the Atlantic")
            {
                logoView.image = UIImage(named: "collegeOfTheAtlantic")
            } else if (myIndex == "Auburn University")
            {
                logoView.image = UIImage(named: "Auburn")
            } else if (myIndex == "Austin College")
            {
                logoView.image = UIImage(named: "AustinCollege")
            } else if (myIndex == "Ball State University")
            {
                logoView.image = UIImage(named: "BallState")
            } else if (myIndex == "Babson College")
            {
                logoView.image = UIImage(named: "Babson")
            } else if (myIndex == "Bard College")
            {
                logoView.image = UIImage(named: "Bard")
            } else if (myIndex == "Barnard College")
            {
                logoView.image = UIImage(named: "Barnard")
            } else if (myIndex == "Bates College")
            {
                logoView.image = UIImage(named: "Bates")
            } else if (myIndex == "Baylor University")
            {
                logoView.image = UIImage(named: "Baylor")
            } else if (myIndex == "Belmont University")
            {
                logoView.image = UIImage(named: "Belmont")
            } else if (myIndex == "Beloit College")
            {
                logoView.image = UIImage(named: "Beliot")
            } else if (myIndex == "Bennington College")
            {
                logoView.image = UIImage(named: "Bennington")
            } else if (myIndex == "Bentley University")
            {
                logoView.image = UIImage(named: "Bentley")
            } else if (myIndex == "Berea College")
            {
                logoView.image = UIImage(named: "BereaReal")
            } else if (myIndex == "Birmingham Southern College")
            {
                logoView.image = UIImage(named: "BirminghamSouthern")
            } else if (myIndex == "Boston College")
            {
                logoView.image = UIImage(named: "BostonCollege")
            } else if (myIndex == "Boston University")
            {
                logoView.image = UIImage(named: "BostonUniversity")
            } else if (myIndex == "Bowdoin College")
            {
                logoView.image = UIImage(named: "Bowdoin")
            } else if (myIndex == "Bowling Green State University-Main Campus")
            {
                logoView.image = UIImage(named: "BGSU")
            } else if (myIndex == "Bradley University")
            {
                logoView.image = UIImage(named: "Bradley")
            } else if (myIndex == "Brandeis University")
            {
                logoView.image = UIImage(named: "Brandeis")
            } else if (myIndex == "Brigham Young University-Provo")
            {
                logoView.image = UIImage(named: "BYU")
            } else if (myIndex == "CUNY Brooklyn College")
            {
                logoView.image = UIImage(named: "CUNY")
            } else if (myIndex == "Brown University")
            {
                logoView.image = UIImage(named: "Brown")
            } else if (myIndex == "Bryant University")
            {
                logoView.image = UIImage(named: "Bryant")
            } else if (myIndex == "Bryn Mawr College")
            {
                logoView.image = UIImage(named: "Bryn")
            } else if (myIndex == "Bucknell University")
            {
                logoView.image = UIImage(named: "Bucknell")
            } else if (myIndex == "Butler University")
            {
                logoView.image = UIImage(named: "Butler")
            } else if (myIndex == "California State Polytechnic University-Pomona")
            {
                logoView.image = UIImage(named: "CalStatePoly")
            } else if (myIndex == "California Polytechnic State University-San Luis Obispo")
            {
                logoView.image = UIImage(named: "CalPolyState")
            } else if (myIndex == "University of California-Berkeley")
            {
                logoView.image = UIImage(named: "Cal")
            } else if (myIndex == "University of California-Davis")
            {
                logoView.image = UIImage(named: "UCDavis")
            } else if (myIndex == "University of California-Irvine")
            {
                logoView.image = UIImage(named: "UCIrvine")
            } else if (myIndex == "University of California-Los Angeles")
            {
                logoView.image = UIImage(named: "UCLA")
            } else if (myIndex == "University of California-Merced")
            {
                logoView.image = UIImage(named: "UCMerced")
            } else if (myIndex == "University of California-Riverside")
            {
                logoView.image = UIImage(named: "UCRiverside")
            } else if (myIndex == "University of California-San Diego")
            {
                logoView.image = UIImage(named: "UCSD")
            } else if (myIndex == "University of California-Santa Barbara")
            {
                logoView.image = UIImage(named: "UCSB")
            } else if (myIndex == "University of California-Santa Cruz")
            {
                logoView.image = UIImage(named: "UCsantaCruz")
            } else if (myIndex == "California Institute of Technology")
            {
                logoView.image = UIImage(named: "calTech")
            } else if (myIndex == "California Lutheran University")
            {
                logoView.image = UIImage(named: "CalLutheran")
            } else if (myIndex == "California State University-Fresno")
            {
                logoView.image = UIImage(named: "CaliforniaStateFresno")
            } else if (myIndex == "California State University-Fullerton")
            {
                logoView.image = UIImage(named: "CaliforniaStateFullerton")
            } else if (myIndex == "California State University-Long Beach")
            {
                logoView.image = UIImage(named: "CalStateLongBeach")
            } else if (myIndex == "California State University-Los Angeles")
            {
                logoView.image = UIImage(named: "CalStateLA")
            } else if (myIndex == "California State University-Monterey Bay")
            {
                logoView.image = UIImage(named: "CalStateMontereyBay")
            } else if (myIndex == "California State University-Northridge")
            {
                logoView.image = UIImage(named: "CalStateNorthridge")
            } else if (myIndex == "Carleton College")
            {
                logoView.image = UIImage(named: "Carleton")
            } else if (myIndex == "Carnegie Mellon University")
            {
                logoView.image = UIImage(named: "CarnegieMellon")
            } else if (myIndex == "Caroll College")
            {
                logoView.image = UIImage(named: "Carrol")
            } else if (myIndex == "Case Western Reserve University")
            {
                logoView.image = UIImage(named: "CaseWestern")
            } else if (myIndex == "Catholic University of America")
            {
                logoView.image = UIImage(named: "CatholicUniversity")
            } else if (myIndex == "Central Connecticut State University")
            {
                logoView.image = UIImage(named: "centralConn")
            } else if (myIndex == "University of Central Florida")
            {
                logoView.image = UIImage(named: "UCF")
            } else if (myIndex == "Centre College")
            {
                logoView.image = UIImage(named: "Centre")
            } else if (myIndex == "Champlain College")
            {
                logoView.image = UIImage(named: "Champlain")
            } else if (myIndex == "Chapman University")
            {
                logoView.image = UIImage(named: "Chapman")
            } else if (myIndex == "University of Chicago")
            {
                logoView.image = UIImage(named: "Chi")
            } else if (myIndex == "Christopher Newport University")
            {
                logoView.image = UIImage(named: "ChrisNewport")
            } else if (myIndex == "University of Cincinnati-Main Campus")
            {
                logoView.image = UIImage(named: "Cincinnati")
            } else if (myIndex == "Claremont Mckenna College")
            {
                logoView.image = UIImage(named: "ClaremontMckenna")
            } else if (myIndex == "Clark University")
            {
                logoView.image = UIImage(named: "clark")
            } else if (myIndex == "Clarkson University")
            {
                logoView.image = UIImage(named: "Clarkson")
            } else if (myIndex == "Clemson University")
            {
                logoView.image = UIImage(named: "clemson")
            } else if (myIndex == "Coe College")
            {
                logoView.image = UIImage(named: "coe")
            } else if (myIndex == "Colby College")
            {
                logoView.image = UIImage(named: "Colby")
            } else if (myIndex == "Colgate University")
            {
                logoView.image = UIImage(named: "colgate")
            } else if (myIndex == "College of Charleston")
            {
                logoView.image = UIImage(named: "charleston")
            } else if (myIndex == "University of Colorado Boulder")
            {
                logoView.image = UIImage(named: "boulder")
            } else if (myIndex == "Colorado College")
            {
                logoView.image = UIImage(named: "ColoradoCollege")
            } else if (myIndex == "Colorado School of Mines")
            {
                logoView.image = UIImage(named: "ColMines")
            } else if (myIndex == "Colorado State University-Fort Collins")
            {
                logoView.image = UIImage(named: "ColState")
            } else if (myIndex == "Columbia College Chicago")
            {
                logoView.image = UIImage(named: "ColumbiaChi")
            } else if (myIndex == "Columbia University in the City of New York")
            {
                logoView.image = UIImage(named: "ColumbiaNY")
                schoolName.text = "Columbia University"
            } else if (myIndex == "University of Connecticut")
            {
                logoView.image = UIImage(named: "Uconn")
            } else if (myIndex == "Connecticut College")
            {
                logoView.image = UIImage(named: "ConnCollege")
            } else if (myIndex == "Cornell College")
            {
                logoView.image = UIImage(named: "cornellCollege")
            } else if (myIndex == "Cornell University")
            {
                logoView.image = UIImage(named: "cornellUniversity")
            } else if (myIndex == "Creighton University")
            {
                logoView.image = UIImage(named: "creighton")
            } else if (myIndex == "Dartmouth College")
            {
                logoView.image = UIImage(named: "dartmouth")
            } else if (myIndex == "Davidson College")
            {
                logoView.image = UIImage(named: "davidson")
            } else if (myIndex == "University of Dayton")
            {
                logoView.image = UIImage(named: "dayton")
            } else if (myIndex == "University of Delaware")
            {
                logoView.image = UIImage(named: "Delaware")
            } else if (myIndex == "Denison University")
            {
                logoView.image = UIImage(named: "denison")
            } else if (myIndex == "University of Denver")
            {
                logoView.image = UIImage(named: "denver")
            } else if (myIndex == "DePaul University")
            {
                logoView.image = UIImage(named: "depaul")
            } else if (myIndex == "DePauw University")
            {
                logoView.image = UIImage(named: "Depauw")
            } else if (myIndex == "Dickinson University")
            {
                logoView.image = UIImage(named: "dickinson")
            } else if (myIndex == "Dominican University of California")
            {
                logoView.image = UIImage(named: "dominicanCal")
            } else if (myIndex == "Drew University")
            {
                logoView.image = UIImage(named: "Drew")
            } else if (myIndex == "Drexel University")
            {
                logoView.image = UIImage(named: "drexel")
            } else if (myIndex == "Duke University")
            {
                logoView.image = UIImage(named: "duke")
            } else if (myIndex == "Duquesne University")
            {
                logoView.image = UIImage(named: "duquesne")
            } else if (myIndex == "East Carolina University")
            {
                logoView.image = UIImage(named: "eastCarolina")
            } else if (myIndex == "Earlham College")
            {
                logoView.image = UIImage(named: "earlham")
            } else if (myIndex == "Eckerd College")
            {
                logoView.image = UIImage(named: "eckerd")
            } else if (myIndex == "Elon University")
            {
                logoView.image = UIImage(named: "Elon")
            } else if (myIndex == "Elizabethtown College")
            {
                logoView.image = UIImage(named: "elizabethtown")
            } else if (myIndex == "Embry-Riddle Aeronautical University-Daytona Beach")
            {
                logoView.image = UIImage(named: "Embry-Riddle")
            } else if (myIndex == "Emerson College")
            {
                logoView.image = UIImage(named: "emerson")
            } else if (myIndex == "Emory University")
            {
                logoView.image = UIImage(named: "Emory")
            } else if (myIndex == "Fairfield University")
            {
                logoView.image = UIImage(named: "fairfield")
            } else if (myIndex == "Fashion Institute of Technology")
            {
                logoView.image = UIImage(named: "FIT")
            } else if (myIndex == "Fisk University")
            {
                logoView.image = UIImage(named: "fisk")
            } else if (myIndex == "Flagler College-St Augustine")
            {
                logoView.image = UIImage(named: "flagler")
            } else if (myIndex == "University of Florida")
            {
                logoView.image = UIImage(named: "florida")
            } else if (myIndex == "Florida A&M University")
            {
                logoView.image = UIImage(named: "floridaA&M")
            } else if (myIndex == "Florida Atlantic University")
            {
                logoView.image = UIImage(named: "FAU")
                
            } else if (myIndex == "Florida Institute of Technology")
            {
                logoView.image = UIImage(named: "floridaTech")
            } else if (myIndex == "Florida International University")
            {
                logoView.image = UIImage(named: "FIU")
            } else if (myIndex == "Florida State University")
            {
                logoView.image = UIImage(named: "FSU")
            } else if (myIndex == "Fordham University")
            {
                logoView.image = UIImage(named: "fordham")
            } else if (myIndex == "Furman")
            {
                logoView.image = UIImage(named: "furman")
            } else if (myIndex == "George Mason University")
            {
                logoView.image = UIImage(named: "georgeM")
            } else if (myIndex == "George Washington University")
            {
                logoView.image = UIImage(named: "GeorgeWashington")
            } else if (myIndex == "Georgetown University")
            {
                logoView.image = UIImage(named: "georgetown")
            } else if (myIndex == "University of Georgia")
            {
                logoView.image = UIImage(named: "georgia")
            } else if (myIndex == "Georgia Institute of Technology-Main Campus")
            {
                logoView.image = UIImage(named: "GT")
            } else if (myIndex == "Georgia State University")
            {
                logoView.image = UIImage(named: "GSU")
            } else if (myIndex == "Gettysburg College")
            {
                logoView.image = UIImage(named: "gettysburg")
            } else if (myIndex == "Goddard College")
            {
                logoView.image = UIImage(named: "goddard")
            } else if (myIndex == "Golden Gate University-San Francisco")
            {
                logoView.image = UIImage(named: "goldenGateUniversity")
            } else if (myIndex == "Gonzaga University")
            {
                logoView.image = UIImage(named: "zags")
            } else if (myIndex == "Goucher College")
            {
                logoView.image = UIImage(named: "goucher")
            } else if (myIndex == "Grinnell College")
            {
                logoView.image = UIImage(named: "grinnell")
            } else if (myIndex == "Grove City College")
            {
                logoView.image = UIImage(named: "groveCity")
            } else if (myIndex == "Gustavus Adolphus College")
            {
                logoView.image = UIImage(named: "gustavus")
            } else if (myIndex == "Hanover College")
            {
                logoView.image = UIImage(named: "hanover")
            } else if (myIndex == "Hamilton College")
            {
                logoView.image = UIImage(named: "hamilton")
            } else if (myIndex == "Hampden-Sydney College")
            {
                logoView.image = UIImage(named: "hampden")
            } else if (myIndex == "Hampshire College")
            {
                logoView.image = UIImage(named: "Hampshire")
            } else if (myIndex == "Hampton University")
            {
                logoView.image = UIImage(named: "hampton")
            } else if (myIndex == "University of Hartford")
            {
                logoView.image = UIImage(named: "hartford")
            } else if (myIndex == "Hartwick College")
            {
                logoView.image = UIImage(named: "hartwick")
            } else if (myIndex == "Harvard University")
            {
                logoView.image = UIImage(named: "harvard")
            } else if (myIndex == "Harvey Mudd College")
            {
                logoView.image = UIImage(named: "harveyMudd")
            } else if (myIndex == "Haverford College")
            {
                logoView.image = UIImage(named: "haverford")
            } else if (myIndex == "Hendrix College")
            {
                logoView.image = UIImage(named: "hendrix")
            } else if (myIndex == "High Point University")
            {
                logoView.image = UIImage(named: "highPoint")
            } else if (myIndex == "Hillsdale College")
            {
                logoView.image = UIImage(named: "hillsdale")
            } else if (myIndex == "Hiram College")
            {
                logoView.image = UIImage(named: "hiram")
            } else if (myIndex == "Hobart William Smith Colleges")
            {
                logoView.image = UIImage(named: "HandW")
            } else if (myIndex == "Hofstra University")
            {
                logoView.image = UIImage(named: "hofstra")
            } else if (myIndex == "Hollins University")
            {
                logoView.image = UIImage(named: "hollins")
            } else if (myIndex == "College of the Holy Cross")
            {
                logoView.image = UIImage(named: "HolyCross")
            } else if (myIndex == "Hope College")
            {
                logoView.image = UIImage(named: "hope")
            } else if (myIndex == "University of Houston")
            {
                logoView.image = UIImage(named: "houston")
            } else if (myIndex == "Howard University")
            {
                logoView.image = UIImage(named: "howard")
            } else if (myIndex == "Humboldt State University")
            {
                logoView.image = UIImage(named: "humboldt")
            } else if (myIndex == "University of Illinos at Chicago")
            {
                logoView.image = UIImage(named: "UIC")
            } else if (myIndex == "University of Illinois at Urbana-Champaign")
            {
                logoView.image = UIImage(named: "illinois")
            } else if (myIndex == "Indiana University-Bloomington")
            {
                logoView.image = UIImage(named: "indiana")
            } else if (myIndex == "Indiana University of Pennsylvania-Main Campus")
            {
                logoView.image = UIImage(named: "IUP")
            } else if (myIndex == "University of Indianapolis")
            {
                logoView.image = UIImage(named: "Indianapolis")
            } else if (myIndex == "Indiana University-South Bend")
            {
                logoView.image = UIImage(named: "SouthBend")
            } else if (myIndex == "University of Iowa")
            {
                logoView.image = UIImage(named: "iowa")
            } else if (myIndex == "Iowa State University")
            {
                logoView.image = UIImage(named: "IowaState")
            } else if (myIndex == "Illinois Wesleyan University")
            {
                logoView.image = UIImage(named: "illinoisWes")
            } else if (myIndex == "Illinois Institute of Technology")
            {
                logoView.image = UIImage(named: "illinoisTech")
            } else if (myIndex == "Ithaca College")
            {
                logoView.image = UIImage(named: "ithaca")
            } else if (myIndex == "James Madison University")
            {
                logoView.image = UIImage(named: "jamesMadison")
            } else if (myIndex == "Johns Hopkins University")
            {
                logoView.image = UIImage(named: "JohnsHopkins")
            } else if (myIndex == "The Juilliard School")
            {
                logoView.image = UIImage(named: "juilliard")
            } else if (myIndex == "Juniata College")
            {
                logoView.image = UIImage(named: "juniata")
            } else if (myIndex == "Kalamazoo College")
            {
                logoView.image = UIImage(named: "kalamazoo")
            } else if (myIndex == "University of Kansas")
            {
                logoView.image = UIImage(named: "kansas")
            } else if (myIndex == "Kansas State University")
            {
                logoView.image = UIImage(named: "kState")
            } else if (myIndex == "Kent State University at Kent")
            {
                logoView.image = UIImage(named: "kentState")
            } else if (myIndex == "University of Kentucky")
            {
                logoView.image = UIImage(named: "kentucky")
            } else if (myIndex == "Kenyon College")
            {
                logoView.image = UIImage(named: "kenyon")
            } else if (myIndex == "Knox College")
            {
                logoView.image = UIImage(named: "knox")
            } else if (myIndex == "Lafayette College")
            {
                logoView.image = UIImage(named: "lafayette")
            } else if (myIndex == "Lake Forest College")
            {
                logoView.image = UIImage(named: "lakeForest")
            } else if (myIndex == "La Salle University")
            {
                logoView.image = UIImage(named: "laSalle")
            } else if (myIndex == "Lawrence University")
            {
                logoView.image = UIImage(named: "lawrence")
            } else if (myIndex == "Lehigh University")
            {
                logoView.image = UIImage(named: "lehigh")
            } else if (myIndex == "Linfield College-McMinnville Campus")
            {
                logoView.image = UIImage(named: "linfield")
            } else if (myIndex == "Louisiana State University")
            {
                logoView.image = UIImage(named: "LSU")
            } else if (myIndex == "University of Louisville")
            {
                logoView.image = UIImage(named: "louisville")
            } else if (myIndex == "Loyola University")
            {
                logoView.image = UIImage(named: "LoyolaChicago")
            } else if (myIndex == "Loyola University Maryland")
            {
                logoView.image = UIImage(named: "loyola")
            } else if (myIndex == "Loyola Marymount University")
            {
                logoView.image = UIImage(named: "LMU")
            } else if (myIndex == "University of Lymchburg")
            {
                logoView.image = UIImage(named: "lynchburg")
            } else if (myIndex == "Macalester College")
            {
                logoView.image = UIImage(named: "Macalester")
            } else if (myIndex == "University of Maine")
            {
                logoView.image = UIImage(named: "maine")
            } else if (myIndex == "Manhattan College")
            {
                logoView.image = UIImage(named: "manhattan")
            } else if (myIndex == "Manhattanville College")
            {
                logoView.image = UIImage(named: "manhattanville")
            } else if (myIndex == "Marietta College")
            {
                logoView.image = UIImage(named: "Marietta")
            } else if (myIndex == "Marist College")
            {
                logoView.image = UIImage(named: "maristCollege")
            } else if (myIndex == "Marlboro College")
            {
                logoView.image = UIImage(named: "marlboro")
            } else if (myIndex == "Marquette University")
            {
                logoView.image = UIImage(named: "marquette")
            } else if (myIndex == "University of Mary Washington")
            {
                logoView.image = UIImage(named: "UMW")
            } else if (myIndex == "University of Maryland-Baltimore County")
            {
                logoView.image = UIImage(named: "Maryland")
            } else if (myIndex == "Marymount Manhattan College")
            {
                logoView.image = UIImage(named: "MarymountMan")
            } else if (myIndex == "University of Massachusetts-Amherst")
            {
                logoView.image = UIImage(named: "UMass")
            } else if (myIndex == "University of Massachusetts-Boston")
            {
                logoView.image = UIImage(named: "UMassBos")
            } else if (myIndex == "Massachusetts Institute of Technology")
            {
                logoView.image = UIImage(named: "MIT")
            } else if (myIndex == "Mercer University")
            {
                logoView.image = UIImage(named: "mercer")
            } else if (myIndex == "Merrimack College")
            {
                logoView.image = UIImage(named: "merrimack")
            } else if (myIndex == "University of Miami")
            {
                logoView.image = UIImage(named: "miami")
            } else if (myIndex == "Miami University-Oxford")
            {
                logoView.image = UIImage(named: "miamiUniversity")
            } else if (myIndex == "University of Michigan-Ann Arbor")
            {
                logoView.image = UIImage(named: "Michigan")
            } else if (myIndex == "Michigan State University")
            {
                logoView.image = UIImage(named: "michiganState")
            } else if (myIndex == "Michigan Technological University")
            {
                logoView.image = UIImage(named: "MichTech")
            } else if (myIndex == "Middlebury College")
            {
                logoView.image = UIImage(named: "middlebury")
            } else if (myIndex == "Mills College")
            {
                logoView.image = UIImage(named: "mills")
            } else if (myIndex == "Millsaps College")
            {
                logoView.image = UIImage(named: "millsaps")
            } else if (myIndex == "University of Minnesota-Twin Cities")
            {
                logoView.image = UIImage(named: "minnesota")
            } else if (myIndex == "University of Mississippi")
            {
                logoView.image = UIImage(named: "OleMiss")
            } else if (myIndex == "Mississippi State University")
            {
                logoView.image = UIImage(named: "MissState")
            } else if (myIndex == "University of Missouri-Columbia")
            {
                logoView.image = UIImage(named: "MissColumbia")
            } else if (myIndex == "University of Missouri-Kansas City")
            {
                logoView.image = UIImage(named: "UMKC")
            } else if (myIndex == "Missouri University of Science and Technology")
            {
                logoView.image = UIImage(named: "MissST")
            } else if (myIndex == "Monmouth University")
            {
                logoView.image = UIImage(named: "monmouth")
            } else if (myIndex == "The University of Montana")
            {
                logoView.image = UIImage(named: "montana")
            } else if (myIndex == "Montclair State University")
            {
                logoView.image = UIImage(named: "montclair")
            } else if (myIndex == "Moravian College")
            {
                logoView.image = UIImage(named: "moravian")
            } else if (myIndex == "Morehouse College")
            {
                logoView.image = UIImage(named: "morehouse")
            } else if (myIndex == "Mount Holyoke College")
            {
                logoView.image = UIImage(named: "holyoke")
            } else if (myIndex == "Muhlenberg College")
            {
                logoView.image = UIImage(named: "muhlenberg")
            } else if (myIndex == "University of Nebraska-Lincoln")
            {
                logoView.image = UIImage(named: "nebraska")
            } else if (myIndex == "University of Nevada-Reno")
            {
                logoView.image = UIImage(named: "Nevada")
            } else if (myIndex == "New College of Florida")
            {
                logoView.image = UIImage(named: "newCollegeFlorida")
            } else if (myIndex == "New England College")
            {
                logoView.image = UIImage(named: "newEngland")
            } else if (myIndex == "University of New Hampshire-Main Campus")
            {
                logoView.image = UIImage(named: "UNH")
                
            } else if (myIndex == "University of New Haven")
            {
                logoView.image = UIImage(named: "newHaevn")
            } else if (myIndex == "The College of New Jersey")
            {
                logoView.image = UIImage(named: "newJersey")
            } else if (myIndex == "New Jersey Institute of Technology")
            {
                logoView.image = UIImage(named: "NewJerseyTech")
            } else if (myIndex == "University of New Mexico-Main Campus")
            {
                logoView.image = UIImage(named: "newMexicoLobos")
            } else if (myIndex == "University of New Orleans")
            {
                logoView.image = UIImage(named: "UNO")
            } else if (myIndex == "New York University")
            {
                logoView.image = UIImage(named: "NYU")
            } else if (myIndex == "University of North Carolina-Asheville")
            {
                logoView.image = UIImage(named: "UNCAsheville")
            } else if (myIndex == "University of North Carolina at Chapel Hill")
            {
                schoolName.text = "University of North Carolina"
                logoView.image = UIImage(named: "UNC")
            } else if (myIndex == "University of North Carolina School of the Arts")
            {
                logoView.image = UIImage(named: "UNSCA")
            } else if (myIndex == "North Carolina State University at Raleigh")
            {
                logoView.image = UIImage(named: "NCState")
                schoolName.text = "North Carolina State"
            } else if (myIndex == "University of North Dakota")
            {
                logoView.image = UIImage(named: "NorthDakota")
            } else if (myIndex == "University of North Florida")
            {
                logoView.image = UIImage(named: "northFlorida")
            } else if (myIndex == "Northeastern University")
            {
                logoView.image = UIImage(named: "northEastern")
            } else if (myIndex == "Northern Arizona University")
            {
                logoView.image = UIImage(named: "NorthernArizona")
            } else if (myIndex == "Northwestern University")
            {
                logoView.image = UIImage(named: "northWestern")
            } else if (myIndex == "University of Notre Dame")
            {
                logoView.image = UIImage(named: "ND")
            } else if (myIndex == "Oberlin College")
            {
                logoView.image = UIImage(named: "Oberlin")
            } else if (myIndex == "Occidental College")
            {
                logoView.image = UIImage(named: "OXY")
            } else if (myIndex == "Oglethorpe University")
            {
                logoView.image = UIImage(named: "oglethorpe")
            } else if (myIndex == "Ohio University-Main Campus")
            {
                logoView.image = UIImage(named: "ohioUniversity")
            } else if (myIndex == "Ohio Northern University")
            {
                logoView.image = UIImage(named: "ONU")
            } else if (myIndex == "Ohio Wesleyan University")
            {
                logoView.image = UIImage(named: "OhioWesleyan")
            } else if (myIndex == "University of Oklahoma-Norman Campus")
            {
                logoView.image = UIImage(named: "oklahoma2")
            } else if (myIndex == "Oklahoma State University-Main Campus")
            {
                logoView.image = UIImage(named: "OklahomaState")
            } else if (myIndex == "Old Dominion University")
            {
                logoView.image = UIImage(named: "OldDominion")
            } else if (myIndex == "University of Oregon")
            {
                logoView.image = UIImage(named: "oregon")
            } else if (myIndex == "Oregon State University")
            {
                logoView.image = UIImage(named: "OregonState")
            } else if (myIndex == "Pace University")
            {
                logoView.image = UIImage(named: "Pace")
            } else if (myIndex == "University of the Pacific")
            {
                logoView.image = UIImage(named: "Pacific")
            } else if (myIndex == "Penn State University")
            {
                logoView.image = UIImage(named: "PennState")
            } else if (myIndex == "University of Pennsylvania")
            {
                logoView.image = UIImage(named: "penn")
            } else if (myIndex == "Pepperdine University")
            {
                logoView.image = UIImage(named: "pepperdine")
            } else if (myIndex == "University of Pittsburgh-Main Campus")
            {
                logoView.image = UIImage(named: "pitt")
            } else if (myIndex == "Pitzer College")
            {
                logoView.image = UIImage(named: "Pitzer")
            } else if (myIndex == "Pomona College")
            {
                logoView.image = UIImage(named: "pomona")
            } else if (myIndex == "Pratt Institute-Main")
            {
                logoView.image = UIImage(named: "pratt")
            } else if (myIndex == "Princeton University")
            {
                logoView.image = UIImage(named: "princeton")
            } else if (myIndex == "Providence College")
            {
                logoView.image = UIImage(named: "providence")
            } else if (myIndex == "University of Puget Sound")
            {
                logoView.image = UIImage(named: "pugetSound")
            } else if (myIndex == "Purdue University-Main Campus")
            {
                logoView.image = UIImage(named: "Purdue")
            } else if (myIndex == "Randolph College")
            {
                logoView.image = UIImage(named: "Randolph")
            } else if (myIndex == "Randolph-Macon College")
            {
                logoView.image = UIImage(named: "randolph-macon")
            } else if (myIndex == "University of Redlands")
            {
                logoView.image = UIImage(named: "redlands")
            } else if (myIndex == "Reed College")
            {
                logoView.image = UIImage(named: "reed")
            } else if (myIndex == "Regis University")
            {
                logoView.image = UIImage(named: "regis")
            } else if (myIndex == "Rensselaer Polytechnic Institute")
            {
                logoView.image = UIImage(named: "rensselaer")
            } else if (myIndex == "University of Rhode Island")
            {
                logoView.image = UIImage(named: "rhodeIsland")
            } else if (myIndex == "Rhode Island School of Design")
            {
                logoView.image = UIImage(named: "RISD")
            } else if (myIndex == "Rhodes College")
            {
                logoView.image = UIImage(named: "rhodes")
            } else if (myIndex == "Rice University")
            {
                logoView.image = UIImage(named: "rice")
            } else if (myIndex == "University of Richmond")
            {
                logoView.image = UIImage(named: "richmond")
            } else if (myIndex == "Rider University")
            {
                logoView.image = UIImage(named: "rider")
            } else if (myIndex == "Ripon College")
            {
                logoView.image = UIImage(named: "ripon")
            } else if (myIndex == "University of Rochester")
            {
                logoView.image = UIImage(named: "rochester")
            } else if (myIndex == "Rochester Institute of Technology")
            {
                logoView.image = UIImage(named: "rochTech")
            } else if (myIndex == "Rollins College")
            {
                logoView.image = UIImage(named: "rollins")
            } else if (myIndex == "Rose-Hulman Institute of Technology")
            {
                logoView.image = UIImage(named: "rose-H")
            } else if (myIndex == "Rowan University")
            {
                logoView.image = UIImage(named: "rowanUniversity")
            } else if (myIndex == "Rutgers University-New Brunswick")
            {
                logoView.image = UIImage(named: "rutgers")
            } else if (myIndex == "Sacred Heart University")
            {
                logoView.image = UIImage(named: "SHU")
            } else if (myIndex == "College of Saint Benedict")
            {
                logoView.image = UIImage(named: "saintBenedict")
            } else if (myIndex == "St John's University-New York")
            {
                logoView.image = UIImage(named: "stJohnsNY")
            } else if (myIndex == "St Bonaventure University")
            {
                logoView.image = UIImage(named: "bonaventure")
            } else if (myIndex == "Saint Joseph's University")
            {
                logoView.image = UIImage(named: "SJU")
            } else if (myIndex == "St Lawrence University")
            {
                logoView.image = UIImage(named: "lawrence")
            } else if (myIndex == "Saint Louis University")
            {
                logoView.image = UIImage(named: "SLU")
            } else if (myIndex == "Saint Mary's College of California")
            {
                logoView.image = UIImage(named: "stMarysCali")
            } else if (myIndex == "Saint Michael's College")
            {
                logoView.image = UIImage(named: "michaels")
            } else if (myIndex == "St Olaf College")
            {
                logoView.image = UIImage(named: "olaf")
            } else if (myIndex == "St. Mary's College of Maryland")
            {
                logoView.image = UIImage(named: "stMarysMaryland")
            } else if (myIndex == "Salisbury University")
            {
                logoView.image = UIImage(named: "salisbury")
            } else if (myIndex == "Salve Regina University")
            {
                logoView.image = UIImage(named: "salve")
            } else if (myIndex == "Samford University")
            {
                logoView.image = UIImage(named: "samford")
            } else if (myIndex == "University of San Diego")
            {
                logoView.image = UIImage(named: "sanDiego")
            } else if (myIndex == "San Diego State University")
            {
                logoView.image = UIImage(named: "SanDiegoState")
            } else if (myIndex == "San Francisco State University")
            {
                logoView.image = UIImage(named: "sanfranState")
            } else if (myIndex == "University of San Francisco")
            {
                logoView.image = UIImage(named: "USF")
            } else if (myIndex == "San Jose State University")
            {
                logoView.image = UIImage(named: "sanJoseState")
            } else if (myIndex == "Santa Clara University")
            {
                logoView.image = UIImage(named: "santaClara")
            } else if (myIndex == "Sarah Lawrence College")
            {
                logoView.image = UIImage(named: "sarahLawrence")
            } else if (myIndex == "Savannah College of Art and Design")
            {
                logoView.image = UIImage(named: "SCAD")
            } else if (myIndex == "School of Visual Arts")
            {
                logoView.image = UIImage(named: "visualArts")
            } else if (myIndex == "University of Scranton")
            {
                logoView.image = UIImage(named: "scranton")
            } else if (myIndex == "Saint Anselm College")
            {
                logoView.image = UIImage(named: "Anselm")
            } else if (myIndex == "Scripps College")
            {
                logoView.image = UIImage(named: "scrippsCollege")
            } else if (myIndex == "Seattle University")
            {
                logoView.image = UIImage(named: "seattleUniversity")
            } else if (myIndex == "Seton Hall University")
            {
                logoView.image = UIImage(named: "setonHall")
            } else if (myIndex == "Siena College")
            {
                logoView.image = UIImage(named: "sienaCollege")
            } else if (myIndex == "Simmons University")
            {
                logoView.image = UIImage(named: "simmons")
            } else if (myIndex == "Skidmore College")
            {
                logoView.image = UIImage(named: "skidmore")
            } else if (myIndex == "Smith College")
            {
                logoView.image = UIImage(named: "smithCollege")
            } else if (myIndex == "Soka University of America")
            {
                logoView.image = UIImage(named: "soka")
            } else if (myIndex == "Sonoma State University")
            {
                logoView.image = UIImage(named: "sonoma")
            } else if (myIndex == "University of South Carolina-Columbia")
            {
                logoView.image = UIImage(named: "SouthCarolina")
            } else if (myIndex == "University of South Florida")
            {
                logoView.image = UIImage(named: "southFlorida")
            } else if (myIndex == "University of Southern California")
            {
                logoView.image = UIImage(named: "USC")
            } else if (myIndex == "Southern Methodist University")
            {
                logoView.image = UIImage(named: "SMU")
            } else if (myIndex == "Southwestern University")
            {
                logoView.image = UIImage(named: "southWestern")
            } else if (myIndex == "Spelman College")
            {
                logoView.image = UIImage(named: "spelman")
            } else if (myIndex == "Stanford University")
            {
                logoView.image = UIImage(named: "stanford")
            } else if (myIndex == "Stephens College")
            {
                logoView.image = UIImage(named: "stephens")
            } else if (myIndex == "Stetson University")
            {
                logoView.image = UIImage(named: "stetson")
            } else if (myIndex == "Stevens Institute of Technology")
            {
                logoView.image = UIImage(named: "stevensTech")
            } else if (myIndex == "Stevenson University")
            {
                logoView.image = UIImage(named: "stevenson")
            } else if (myIndex == "Stonehill College")
            {
                logoView.image = UIImage(named: "stonehill")
            } else if (myIndex == "Swarthmore College")
            {
                logoView.image = UIImage(named: "swarthmore")
            } else if (myIndex == "Sweet Briar College")
            {
                logoView.image = UIImage(named: "sweetBriar")
            } else if (myIndex == "Syracuse University")
            {
                logoView.image = UIImage(named: "syracuse")
            } else if (myIndex == "The University of Tampa")
            {
                logoView.image = UIImage(named: "tampa")
            } else if (myIndex == "Temple University")
            {
                logoView.image = UIImage(named: "temple")
            } else if (myIndex == "The University of Tennessee-Knoxville")
            {
                logoView.image = UIImage(named: "tennessee")
        } else if (myIndex == "The University of Texas at Austin")
            {
            logoView.image = UIImage(named: "texas")
        } else if (myIndex == "Texas A & M University-College Station")
            {
                logoView.image = UIImage(named: "texasA&M")
        } else if (myIndex == "Texas Christian University")
            {
                logoView.image = UIImage(named: "TCU")
        } else if (myIndex == "Texas Tech University")
            {
                logoView.image = UIImage(named: "texastech")
        } else if (myIndex == "Towson University")
            {
                logoView.image = UIImage(named: "towson")
        } else if (myIndex == "Trinity College")
            {
                logoView.image = UIImage(named: "trinity")
        } else if (myIndex == "Trinity University")
            {
                logoView.image = UIImage(named: "trinityU")
        } else if (myIndex == "Truman State University")
            {
                logoView.image = UIImage(named: "truman")
        } else if (myIndex == "Tufts Universtiy")
            {
                logoView.image = UIImage(named: "tufts")
        } else if (myIndex == "Tulane University of Louisiana")
            {
              logoView.image = UIImage(named: "tulane")
        } else if (myIndex == "University of Tulsa")
            {
                logoView.image = UIImage(named: "tulsa")
        } else if (myIndex == "Tuskegee University")
            {
                logoView.image = UIImage(named: "tuskegee")
        } else if (myIndex == "United States Air Force Academy")
            {
                logoView.image = UIImage(named: "airForce")
        } else if (myIndex == "United States Merchant Marine Academy")
            {
                logoView.image = UIImage(named: "marine")
        } else if (myIndex == "United States Military Academy")
            {
                logoView.image = UIImage(named: "marine")
        } else if (myIndex == "United States Naval Academy")
            {
                logoView.image = UIImage(named: "navy")
        } else if (myIndex == "Ursinus College")
            {
                logoView.image = UIImage(named: "ursinus")
        } else if (myIndex == "Ursuline College")
            {
                logoView.image = UIImage(named: "ursuline")
        } else if (myIndex == "University of Utah")
            {
                logoView.image = UIImage(named: "utah")
        } else if (myIndex == "Valparaiso University")
            {
                logoView.image = UIImage(named: "valpo")
        } else if (myIndex == "Vanderbilt University")
            {
                logoView.image = UIImage(named: "vanderbilt")
        } else if (myIndex == "Vassar College")
            {
                logoView.image = UIImage(named: "vassar")
        } else if (myIndex == "University of Vermont")
            {
                logoView.image = UIImage(named: "vermont")
        } else if (myIndex == "Villanova University")
            {
                logoView.image = UIImage(named: "villanova")
        } else if (myIndex == "University of Virginia-Main Campus")
            {
                logoView.image = UIImage(named: "virginia")
        } else if (myIndex == "Virginia Commonwealth University")
            {
                logoView.image = UIImage(named: "VCU")
        } else if (myIndex == "Virginia Polytechnic Institute and State University")
            {
                logoView.image = UIImage(named: "virginiaTech")
        } else if (myIndex == "West Virginia Wesleyan College")
            {
                logoView.image = UIImage(named: "WVwesleyan")
        } else if (myIndex == "Wabash College")
            {
                logoView.image = UIImage(named: "wabash")
        } else if (myIndex == "Wagner College")
            {
                logoView.image = UIImage(named: "wagner")
        } else if (myIndex == "Wake Forest University")
            {
                logoView.image = UIImage(named: "wakeForest")
        } else if (myIndex == "Warren Wilson College")
            {
                logoView.image = UIImage(named: "warrenWilson")
        } else if (myIndex == "Washington University in St Louis")
            {
                logoView.image = UIImage(named: "washingtonUniversityLouis")
        } else if (myIndex == "University of Washington-Seattle Campus")
            {
                logoView.image = UIImage(named: "washington")
            } else if (myIndex == "Washington and Lee University")
            {
                logoView.image = UIImage(named: "washingtonAndLee")
        } else if (myIndex == "Washington College")
            {
                logoView.image = UIImage(named: "washingtonCollege")
        } else if (myIndex == "Washington State University")
            {
                logoView.image = UIImage(named: "washingtonState")
        } else if (myIndex == "Webb Institute")
            {
                logoView.image = UIImage(named: "webbInstitute")
        } else if (myIndex == "Wellesley College")
            {
                logoView.image = UIImage(named: "wellesley")
        } else if (myIndex == "Wells College")
            {
                logoView.image = UIImage(named: "wells")
        } else if (myIndex == "West Virginia University")
            {
                logoView.image = UIImage(named: "westVirginia")
        } else if (myIndex == "Western Michigan University")
            {
                logoView.image = UIImage(named: "westMichiganU")
        } else if (myIndex == "Wheaton College")
            {
                logoView.image = UIImage(named: "wheaton")
        } else if (myIndex == "Whitman College")
            {
                logoView.image = UIImage(named: "whitman")
        } else if (myIndex == "Whittier College")
            {
                logoView.image = UIImage(named: "whitter")
        } else if (myIndex == "College of William and Mary")
            {
                logoView.image = UIImage(named: "william&Mary")
        } else if (myIndex == "Willamette University")
            {
                logoView.image = UIImage(named: "willamette")
        } else if (myIndex == "William Jewell College")
            {
                logoView.image = UIImage(named: "williamJewel")
        } else if (myIndex == "Williams College")
            {
                logoView.image = UIImage(named: "williamsCollege")
        } else if (myIndex == "University of Wisconsin-Madison")
            {
                logoView.image = UIImage(named: "wisconsin")
        } else if (myIndex == "Wittenberg University")
            {
                logoView.image = UIImage(named: "wittenberg")
        } else if (myIndex == "Wofford College")
            {
                logoView.image = UIImage(named: "wofford")
        } else if (myIndex == "The College of Wooster")
            {
                logoView.image = UIImage(named: "wooster")
        } else if (myIndex == "Worcester Polytechnic Institute")
            {
                logoView.image = UIImage(named: "worcester")
        } else if (myIndex == "Wright State University-Main Campus")
            {
                logoView.image = UIImage(named: "wright")
        } else if (myIndex == "University of Wyoming")
            {
                logoView.image = UIImage(named: "wyoming")
        } else if (myIndex == "Yale University")
            {
                logoView.image = UIImage(named: "yale")
        } else if (myIndex == "Yeshiva University")
            {
                logoView.image = UIImage(named: "yeshiva")
        } else if (myIndex == "Xavier University")
            {
                logoView.image = UIImage(named: "xavier")
        } else if (myIndex == "Dickinson College")
            {
                logoView.image = UIImage(named: "dickinson")
        }
        
        
        
        
        
        
        schoolName.adjustsFontSizeToFitWidth = true
        schoolName.minimumScaleFactor = 0.5
        
        if (myIndex == "Virginia Polytechnic Institute and State University")
        {
            schoolName.text = "Virginia Tech"
        }else if (myIndex == "Arizona State University-Tempe")
        {
            schoolName.text = "Arizona State University"
        } else if (myIndex == "Brigham Young University-Provo")
        {
            schoolName.text = "Brigham Young University"
        } else if (myIndex == "Embry-Riddle Aeronautical University-Daytona Beach")
        {
            schoolName.text = "Embry-Riddle Aeronautical University"
        } else if (myIndex == "University of Michigan-Ann Arbor")
        {
        schoolName.text = "University of Michigan"
        } else if (myIndex == "University of Minnesota-Twin Cities")
        {
            schoolName.text = "University of Minnesota"
        } else if (myIndex == "University of Nebraska-Lincoln")
        {
            schoolName.text = "University of Nebraska"
        } else if (myIndex == "University of Oklahoma-Norman Campus")
        {
            schoolName.text = "University of Oklahoma"
        } else if (myIndex == "University of Pittsburgh-Pittsburgh Campus")
        {
            schoolName.text = "University of Pittsburgh"
        } else if (myIndex == "Rutgers University-New Brunswick")
        {
            schoolName.text = "Rutgers University"
        } else if (myIndex == "University of South Carolina-Columbia")
        {
            schoolName.text = "University of South Carolina"
        } else if (myIndex == "The University of Tennessee-Knoxville")
        {
            schoolName.text = "The University of Tennessee"
        } else if (myIndex == "University of Washington-Seattle Campus")
        {
            schoolName.text = "University of Washington"
        } else if (myIndex == "University of Wisconsin-Madison")
        {
            schoolName.text = "University of Wisconsin"
        } else if (myIndex == "Ohio State University-Main Campus")
        {
            schoolName.text = ohioState
        } else if (myIndex == "Bowling Green State University-Main Campus")
        {
            schoolName.text = BGSU
        } else if (myIndex == "University of Cincinnati-Main Campus")
        {
            schoolName.text = Cin
        } else if (myIndex == "Georgia Institute of Technology-Main Campus")
        {
            schoolName.text = GIT
        } else if (myIndex == "Indiana University of Pennsylvania-Main Campus")
        {
            schoolName.text = Penn
        } else if (myIndex == "University of New Hampshire-Main Campus")
        {
            schoolName.text = NH
        } else if (myIndex == "University of New Mexico-Main Campus")
        {
            schoolName.text = NM
        } else if (myIndex == "Ohio University-Main Campus")
        {
            schoolName.text = Ohio
        } else if (myIndex == "Oklahoma State University-Main Campus")
        {
            schoolName.text = Okla
        } else if (myIndex == "Purdue University-Main Campus")
        {
            schoolName.text = Purd
        } else if (myIndex == "University of Virginia-Main Campus")
        {
            schoolName.text = Virg
        } else if (myIndex == "Wright State University-Main Campus")
        {
            schoolName.text = wright
        } else if (myIndex == "The University of Texas at Austin")
        {
            schoolName.text = texas
  
        } else if (myIndex == "Indiana University-Bloomington")
        {
            schoolName.text = "Indiana University"
        } else if (myIndex == "Indiana University-South Bend")
            {
            schoolName.text = "Indiana University"
        } else if (myIndex == "California State Polytechnic University-Pomona")
        {
            schoolName.text = "California State Polytechnic University"
        } else if (myIndex == "California Polytechnic State University-San Luis Obispo")
        {
            schoolName.text = "California Polytechnic State University"
        } else if (myIndex == "University of Massachusetts-Amherst")
        {
            schoolName.text = "University of Massachusetts"
        } else if (myIndex == "University of Massachusetts-Boston")
        {
            schoolName.text = "University of Massachusetts"
        } else if (myIndex == "University of Colorado Boulder")
        {
            schoolName.text = "University of Colorado"
        } else if (myIndex == "University of Illinois at Urbana-Champaign")
        {
            schoolName.text = "University of Illinois"
        } else if (myIndex == "Flagler College-St Augustine")
        {
            schoolName.text = "Flagler College"
        } else if (myIndex == "Golden Gate University-San Francisco")
        {
            schoolName.text = "Golden Gate University"
        } else if (myIndex == "Kent State University at Kent")
        {
            schoolName.text = "Kent State University"
        } else if (myIndex == "Linfield College-McMinnville Campus")
        {
            schoolName.text = "Linfield College"
        } else if (myIndex == "University of Maryland-College Park")
        {
            schoolName.text = "University of Maryland"
        } else if (myIndex == "Miami University-Oxford")
        {
            schoolName.text = "Miami University"
        } else if (myIndex == "University of Nevada-Reno")
        {
            schoolName.text = "University of Nevada"
        } else if (myIndex == "North Carolina State University at Raleigh")
        {
            schoolName.text = "North Carolina State University"
        } else if (myIndex == "University of North Carolina at Chapel Hill")
        {
            schoolName.text = "University of North Carolina"
        } else if (myIndex == "Texas A & M University-College Station")
        {
            schoolName.text = "Texas A&M University"
        } else {
              schoolName.text = "\(myIndex)"
        }
        
        
        websiteBTN.layer.cornerRadius = 8
        
        enrollment.layer.masksToBounds = true
        enrollment.layer.cornerRadius = 6
        annualCost.layer.masksToBounds = true
        annualCost.layer.cornerRadius = 6
        percentOfFemale.layer.masksToBounds = true
        percentOfFemale.layer.cornerRadius = 6
        percentOfMale.layer.masksToBounds = true
        percentOfMale.layer.cornerRadius = 6
        completionRateLabel.layer.masksToBounds = true
        completionRateLabel.layer.cornerRadius = 6
        postSchoolEarningsLabel.layer.masksToBounds = true
        postSchoolEarningsLabel.layer.cornerRadius = 6
        
        
        
        
        ///to return a clump of Data ***********
        let jsonUrlString = url
        
        URLSession.shared.dataTask(with: jsonUrlString) { (data, response, err) in
            
            guard let data = data else {return}
            
            do {
                guard let json1 = try JSONSerialization.jsonObject(with: data, options: []) as? JSON else {return}
                let results = Results(json: json1)
                
                
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
            }
            
            var finalMaleRate = 1 - finalFemRate
            
            DispatchQueue.main.async
            {
                self.schoolLocation.text = "\(finalTOWN), \(finalSTATE)"
                
                if finalCOST == 0 {
                    self.annualCost.text = "Data Not Available"
                    self.annualCost.font = UIFont(name: "kefa", size: 12.0)
                } else {
                    let result = NumberFormatter.localizedString(from: NSNumber(value: finalCOST), number:.currency )
                    self.annualCost.text = "\(result)"
                }
                
                if finalSCHOOLSIZE == 0 {
                    self.enrollment.text = "Data Not Avialable"
                    self.enrollment.font = UIFont(name: "kefa", size: 12.0)
                } else {
                    self.numberFormatter.numberStyle = .decimal
                    let formatEnrollment = self.numberFormatter.string(from: NSNumber(value: finalSCHOOLSIZE))
                    self.enrollment.text = formatEnrollment
                }
                
                if finalFemRate == 0.0 {
                    self.percentOfFemale.text = "Data Not Available"
                    self.percentOfFemale.font = UIFont(name: "kefa", size: 12.0)
                    self.percentOfMale.text = "Data Not Available"
                    self.percentOfMale.font = UIFont(name: "kefa", size: 12.0)
                } else {
                    self.male = finalMaleRate * 100
                    self.female = finalFemRate * 100
                  
                    self.finalmale = Double(round(100 * self.male) / 100)
                    self.finalfemale = Double(round(100 * self.female) / 100)
                   
                    self.percentOfFemale.text = "\(self.finalfemale)%"
                    self.percentOfMale.text = "\(self.finalmale)%"
                }
                
                if finalCompletionRate == 0.0 {
                    self.completionRateLabel.text = "Data Not Available"
                        self.completionRateLabel.font = UIFont(name: "kefa", size: 12.0)
                } else {
                    self.completion = finalCompletionRate * 100
                    self.completionRate = Double(round(100 * self.completion) / 100)
                    self.completionRateLabel.text = "\(self.completionRate)%"
                }
                
                if finalEarnings == 0 {
                    self.postSchoolEarningsLabel.text = "Data Not Available"
                    self.postSchoolEarningsLabel.font = UIFont(name: "kefa", size: 12.0)
                } else {
                    
                    let earn = NumberFormatter.localizedString(from: NSNumber(value: finalEarnings), number: .currency)
                    self.postSchoolEarningsLabel.text = earn
                }
                

            }
        
        
    }.resume()
       
    }
    
@IBAction func backBTN(_ sender: UIButton)
    {
        performSegue(withIdentifier: "segue1", sender: nil)
    
      
    }
    
    @IBAction func website(_ sender: UIButton)
    {
        let editSchoolURL = "http://\(finalSCHOOLWEBSITE)"
        guard let schoolURL = URL(string: editSchoolURL) else {return}
        let svc = SFSafariViewController(url: schoolURL)
        present(svc, animated: true, completion: nil)
        print(finalSCHOOLWEBSITE)
    }
    
    let done = UIAlertAction(title: "Done", style: .cancel)
    
    @IBAction func enrollInfo(_ sender: UIButton)
    {
        let enrollAlert = UIAlertController(title: "Enrollment", message: "The total amount Undergraduate students", preferredStyle: .alert)
        enrollAlert.addAction(done)
        present(enrollAlert, animated: true, completion: nil)
    }
    
    @IBAction func costInfo(_ sender: UIButton)
    {
        let costAlert = UIAlertController(title: "Annual Cost", message: "The average annual net price for federal financial aid recipients, after aid from the school, state, or federal governemnt. For public schools, this is only the average cost for in-state students.", preferredStyle: .alert)
     costAlert.addAction(done)
    present(costAlert, animated: true, completion: nil)
    }
    
    @IBAction func femaleInfo(_ sender: UIButton)
    {
     let alert = UIAlertController(title: "Percent of Female", message: "The Percentage of students who are Female at this Institution", preferredStyle: .alert)
    alert.addAction(done)
    present(alert, animated: true, completion: nil)
    }
    
    @IBAction func maleInfo(_ sender: UIButton)
    {
        let alert = UIAlertController(title: "Percent of Male", message: "The Percentage of students who are male at this Institution", preferredStyle: .alert)
        alert.addAction(done)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func gradRateInfo(_ sender: UIButton)
    {
        let gradRateAlert = UIAlertController(title: "Graduation Rate", message: "The share of students who graduated within 150% of the expected time to graduate", preferredStyle: .alert)
        gradRateAlert.addAction(done)
        present(gradRateAlert, animated: true, completion: nil)
    }
    
    @IBAction func salaryInfo(_ sender: UIButton)
    {
         let salaryAlert = UIAlertController(title: "Salary After Attending", message: "The median earnings of former students who recieved federal financial aid, at 10 years after entering the school", preferredStyle: .alert)
        salaryAlert.addAction(done)
        present(salaryAlert, animated: true, completion: nil)
    }
}


