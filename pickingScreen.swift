//
//  pickingScreen.swift
//  College App (page based)
//
//  Created by Eric Markey on 6/20/19.
//  Copyright © 2019 Eric Markey. All rights reserved.
//

import UIKit

var myIndex = ""
var indexApi = ""
var apiUrl  = ""
var url :URL = URL(string: apiUrl)!
typealias JSONF = [String: Any]




let colleges :Array =  ["Adelphi University" , "Agnes Scott College" , "The University of Alabama" , "Albion College" , "Albright College" , "Alfred University" , "Allegheny College" , "Amherst College" ,"American International College" , "American University", "Antioch College" , "Appalachian State University", "University of Arizona", "Arizona State University-Tempe" , "University of Arkansas" , "Assumption College" , "College of the Atlantic", "Auburn University", "Austin College", "Ball State University", "Babson College", "Bard College", "Barnard College", "Bates College", "Baylor University", "Belmont University", "Beloit College", "Bennington College", "Bentley University", "Berea College", "Birmingham Southern College", "Boston College", "Boston University", "Bowdoin College", "Bowling Green State University-Main Campus", "Bradley University", "Brandeis University", "Brigham Young University-Provo", "CUNY Brooklyn College", "Brown University", "Bryant University", "Bryn Mawr College", "Bucknell University", "Butler University", "California State Polytechnic University-Pomona", "California Polytechnic State University-San Luis Obispo", "University of California-Berkeley", "University of California-Davis", "University of California-Irvine", "University of California-Los Angeles", "University of California-Merced", "University of California-Riverside", "University of California-San Diego", "University of California-Santa Barbara", "University of California-Santa Cruz", "California Institute of Technology", "California Lutheran University", "California State University-Fresno", "California State University-Fullerton", "California State University-Long Beach", "California State University-Los Angeles", "California State University-Monterey Bay", "California State University-Northridge", "Carleton College", "Carnegie Mellon University", "Carroll College", "Case Western Reserve University", "Catholic University of America", "Central Connecticut State University", "University of Central Florida", "Centre College", "Champlain College", "Chapman University", "University of Chicago", "Christopher Newport University", "University of Cincinnati-Main Campus", "Claremont McKenna College", "Clark University", "Clarkson University", "Clemson University", "Coe College", "Colby College", "Colgate University","College of Charleston", "University of Colorado Boulder", "Colorado College", "Colorado School of Mines", "Colorado State University-Fort Collins", "Columbia College Chicago", "Columbia University in the City of New York", "University of Connecticut", "Connecticut College", "Cornell College", "Cornell University", "Creighton University", "Dartmouth College", "Davidson College", "University of Dayton", "University of Delaware", "Denison University", "University of Denver", "DePaul University", "DePauw University", "Dickinson College", "Dominican University of California", "Drew University", "Drexel University", "Duke University", "Duquesne University", "East Carolina University", "Earlham College", "Eckerd College", "Elon University", "Elizabethtown College", "Embry-Riddle Aeronautical University-Daytona Beach", "Emerson College", "Emory University", "Fairfield University", "Fashion Institute of Technology", "Fisk University", "Flagler College-St Augustine", "University of Florida", "Florida Atlantic University", "Florida Institute of Technology", "Florida International University", "Florida State University", "Fordham University", "Furman", "George Mason University", "George Washington University", "Georgetown University", "University of Georgia", "Georgia Institute of Technology-Main Campus", "Georgia State University", "Gettysburg College", "Goddard College", "Golden Gate University-San Francisco", "Gonzaga University", "Goucher College", "Grinnell College", "Grove City College", "Gustavus Adolphus College", "Hanover College", "Hamilton College", "Hampden-Sydney College", "Hampshire College", "Hampton University", "University of Hartford", "Hartwick College", "Harvard University", "Harvey Mudd College", "Haverford College", "Hendrix College", "High Point University", "Hillsdale College", "Hiram College", "Hobart William Smith Colleges", "Hofstra University", "Hollins University", "College of the Holy Cross", "Hope College", "University of Houston", "Howard University", "Humboldt State University", "University of Illinois at Chicago", "University of Illinois at Urbana-Champaign", "Indiana University-Bloomington", "Indiana University of Pennsylvania-Main Campus", "University of Indianapolis", "Indiana University-South Bend", "University of Iowa", "Iowa State University", "Illinois Wesleyan University", "Illinois Institute of Technology", "Ithaca College","James Madison University", "Johns Hopkins University", "The Juilliard School", "Juniata College","Kalamazoo College",  "University of Kansas",  "Kansas State University", "Kent State University at Kent",  "University of Kentucky", "Kenyon College", "Knox College", "Lafayette College", "Lake Forest College", "La Salle University", "Lawrence University", "Lehigh University", "Linfield College-McMinnville Campus", "Louisiana State University", "University of Louisville", "Loyola University", "Loyola University Maryland", "Loyola Marymount University", "University of Lynchburg", "Macalester College", "University of Maine", "Manhattan College", "Manhattanville College", "Marietta College", "Marist College", "Marlboro College", "Marquette University", "University of Mary Washington", "University of Maryland-Baltimore County", "University of Maryland-College Park", "Marymount Manhattan College" , "University of Massachusetts-Amherst", "University of Massachusetts-Boston", "Massachusetts Institute of Technology",  "Mercer University", "Merrimack College", "University of Miami", "Miami University-Oxford", "University of Michigan-Ann Arbor", "Michigan State University", "Michigan Technological University", "Middlebury College", "Mills College", "Millsaps College", "University of Minnesota-Twin Cities", "University of Mississippi", "Mississippi State University", "University of Missouri-Columbia", "University of Missouri-Kansas City", "Missouri University of Science and Technology", "Monmouth University", "The University of Montana", "Montclair State University", "Moravian College", "Morehouse College", "Mount Holyoke College", "Muhlenberg College","University of Nebraska-Lincoln", "University of Nevada-Reno", "New College of Florida", "New England College", "University of New Hampshire-Main Campus", "University of New Haven", "The College of New Jersey", "New Jersey Institute of Technology", "University of New Mexico-Main Campus", "University of New Orleans", "New York University", "University of North Carolina-Asheville", "University of North Carolina at Chapel Hill", "University of North Carolina School of the Arts", "North Carolina State University at Raleigh", "University of North Dakota", "University of North Florida", "Northeastern University", "Northern Arizona University", "Northwestern University", "University of Notre Dame",  "Oberlin College" , "Occidental College" , "Oglethorpe University" , "Ohio University-Main Campus", "Ohio Northern University", "Ohio State University-Main Campus", "Ohio Wesleyan University", "University of Oklahoma-Norman Campus", "Oklahoma State University-Main Campus", "Old Dominion University", "University of Oregon", "Oregon State University", "Pace University", "University of the Pacific", "Penn State University", "University of Pennsylvania", "Pepperdine University", "University of Pittsburgh-Pittsburgh Campus", "Pitzer College", "Pomona College", "Pratt Institute-Main", "Princeton University", "Providence College", "University of Puget Sound", "Purdue University-Main Campus", "Randolph College", "Randolph-Macon College", "University of Redlands", "Reed College", "Regis University", "Rensselaer Polytechnic Institute", "University of Rhode Island", "Rhode Island School of Design", "Rhodes College", "Rice University", "University of Richmond", "Rider University", "Ripon College", "University of Rochester", "Rochester Institute of Technology", "Rollins College", "Rose-Hulman Institute of Technology", "Rowan University", "Rutgers University-New Brunswick", "Sacred Heart University", "College of Saint Benedict", "St John's University-New York", "St Bonaventure University", "Saint Joseph's University", "St Lawrence University", "Saint Louis University", "Saint Mary's College of California", "St. Mary's College of Maryland", "Saint Michael's College", "St Olaf College", "Salisbury University", "Salve Regina University", "Samford University", "University of San Diego", "San Diego State University", "San Francisco State University", "University of San Francisco", "San Jose State University", "Santa Clara University", "Sarah Lawrence College", "Savannah College of Art and Design", "School of Visual Arts", "University of Scranton", "Saint Anselm College", "Scripps College", "Seattle University", "Seton Hall University", "Siena College", "Simmons University", "Skidmore College", "Smith College", "Soka University of America", "Sonoma State University", "University of South Carolina-Columbia", "University of South Florida", "University of Southern California", "Southern Methodist University", "Southwestern University", "Spelman College", "Stanford University", "Stephens College", "Stetson University", "Stevens Institute of Technology", "Stevenson University", "Stonehill College", "Swarthmore College", "Sweet Briar College", "Syracuse University", "The University of Tampa", "Temple University", "The University of Tennessee-Knoxville", "The University of Texas at Austin", "Texas A & M University-College Station", "Texas Christian University", "Texas Tech University", "Towson University", "Trinity College", "Trinity University", "Truman State University", "Tufts University", "Tulane University of Louisiana", "University of Tulsa", "Tuskegee University", "United States Air Force Academy", "United States Merchant Marine Academy", "United States Military Academy", "United States Naval Academy", "Ursinus College", "Ursuline College", "University of Utah",  "Valparaiso University", "Vanderbilt University", "Vassar College", "University of Vermont", "Villanova University", "University of Virginia-Main Campus", "Virginia Commonwealth University", "Virginia Polytechnic Institute and State University", "West Virginia Wesleyan College", "Wabash College", "Wagner College", "Wake Forest University", "Warren Wilson College", "Washington University in St Louis", "University of Washington-Seattle Campus", "Washington and Lee University", "Washington College", "Washington State University", "Webb Institute", "Wellesley College", "Wells College", "West Virginia University", "Western Michigan University", "Western Washington University","Wheaton College", "Whitman College", "Whittier College", "College of William and Mary", "Willamette University", "William Jewell College", "Williams College", "University of Wisconsin-Madison", "Wittenberg University", "Wofford College", "The College of Wooster", "Worcester Polytechnic Institute", "Wright State University-Main Campus", "University of Wyoming",  "Yale University", "Yeshiva University", "Xavier University"]

class pickingScreen: UIViewController, UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    var searchSchool = [String]()
    var searching :Bool = false
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchSchool.count
        } else {
            return(colleges.count)
        }
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        
        if searching {
            cell.textLabel?.text = searchSchool[indexPath.row]
        } else {
            cell.textLabel?.text = colleges[indexPath.row]
        }
        return(cell)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
        searchSchool = colleges.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})

        searching = true
        tableView.reloadData()

    }


    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if searching
        {
            myIndex = searchSchool[indexPath.row]
        }else{
            myIndex = colleges[indexPath.row]
        }


        indexApi = myIndex.replacingOccurrences(of: " ", with: "%20")
        let secondIndAPi = indexApi.replacingOccurrences(of: "&", with: "%26")
        
        

        apiUrl = "https://api.data.gov/ed/collegescorecard/v1/schools.json?api_key=ceJBpf0s677Lpd4bV96zgSNfvyAF2jxspyQi7RzJ&school.name=\(secondIndAPi)&_fields=school.name,school.school_url,latest.admissions.admission_rate.overall,latest.admissions.act_scores.midpoint.cumulative,latest.cost.attendance.academic_year,school.city,school.state,latest.admissions.sat_scores.average.overall,latest.student.size,latest.student.demographics.female_share,latest.admissions.act_scores.25th_percentile.cumulative,latest.admissions.act_scores.75th_percentile.cumulative,latest.earnings.10_yrs_after_entry.median,latest.completion.rate_suppressed.four_year,latest.student.retention_rate.four_year.full_time"

        url = URL(string: apiUrl)!





       performSegue(withIdentifier: "segue", sender: self)
        tableView.reloadData()
        
    }
    
    @IBAction func back(_ sender: Any)
    {
        performSegue(withIdentifier: "home", sender: nil)
    }
    

}
