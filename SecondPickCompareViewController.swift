//
//  SecondPickCompareViewController.swift
//  College App (page based)
//
//  Created by Eric Markey on 6/23/19.
//  Copyright © 2019 Eric Markey. All rights reserved.
//

import UIKit


var school2Index = ""
var api2urlCompare = ""

var urlSchool2 = URL(string: api2urlCompare)


class SecondPickCompareViewController: UIViewController, UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource
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
        print(school1Index)
        
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
    
    @IBAction func backBtn(_ sender: UIButton)
    {
        performSegue(withIdentifier: "backtoFirst", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
        
    {
        if searching
        {
            school2Index = searchSchool[indexPath.row]
        }else{
            school2Index = colleges[indexPath.row]
        }
        
        var school2api = school2Index.replacingOccurrences(of: " ", with: "%20")
        let school2api2 = school2api.replacingOccurrences(of: "&", with: "%26")
        
        api2urlCompare = "https://api.data.gov/ed/collegescorecard/v1/schools.json?api_key=ceJBpf0s677Lpd4bV96zgSNfvyAF2jxspyQi7RzJ&school.name=\(school2api)&_fields=school.name,school.school_url,latest.admissions.admission_rate.overall,latest.admissions.act_scores.midpoint.cumulative,latest.cost.attendance.academic_year,school.city,school.state,latest.admissions.sat_scores.average.overall,latest.student.size,latest.student.demographics.female_share,latest.admissions.act_scores.25th_percentile.cumulative,latest.admissions.act_scores.75th_percentile.cumulative,latest.earnings.10_yrs_after_entry.median,latest.completion.rate_suppressed.four_year,latest.admissions.admission_rate.overall,latest.student.retention_rate.four_year.full_time,latest.student.size"
        
        
        urlSchool2 = URL(string: api2urlCompare)!
        
        performSegue(withIdentifier: "compareScreen", sender: nil)
        print(school2Index)
    }
    


}
