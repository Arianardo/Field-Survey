//
//  FieldSurveyDetailViewController.swift
//  Field Survey
//
//  Created by Ryan Stephens on 5/3/19.
//  Copyright © 2019 Ryan Stephens. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {

    var fieldSurvey: FieldSurvey?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var DesriptionLabel: UILabel!
    @IBOutlet weak var FieldIconImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        FieldIconImageView.image = fieldSurvey?.observation.image
        DateLabel.text = fieldSurvey.date
        
        if let date = fieldSurvey?.date {
            DateLabel.text = dateFormatter.string(from: date)
        } else {
            DateLabel.text = ""
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
