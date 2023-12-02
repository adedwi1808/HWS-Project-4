//
//  HomeTableViewController.swift
//  HWS-Project-4
//
//  Created by Ade Dwi Prayitno on 02/12/23.
//

import UIKit

class HomeTableViewController: UITableViewController {
    private let links: [String] = [
        "Apple.com",
        "hackingwithswift.com",
        "linkedin.com",
        "facebook.com",
        "fiverr.com",
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Challange P4"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return links.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LinkCell", for: indexPath)
        
        cell.textLabel?.text = links[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "DetailLink") as? ViewController else { return }
        vc.selectedLink = links[indexPath.row]
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
