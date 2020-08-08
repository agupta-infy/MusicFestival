//
//  ViewController.swift
//  MusicFestival
//
//  Created by Anil Gupta on 08/08/20.
//  Copyright © 2020 Anil Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var bandVieModel = FestivalViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "BandTableViewCell", bundle: nil), forCellReuseIdentifier: "BandTableViewCell")
        bandVieModel.vc = self
        bandVieModel.getMusicFestivalData()
    }
}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        bandVieModel.bandArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BandTableViewCell", for: indexPath) as? BandTableViewCell
        cell?.musicModel = bandVieModel.bandArray[indexPath.row]
        return cell!
    }
}

