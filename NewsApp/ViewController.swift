//
//  ViewController.swift
//  NewsApp
//
//  Created by Teodor on 19/03/16.
//  Copyright © 2016 TeodorGarzdin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getData() {
        let newsService = NewsService()
        newsService.getNews(1, completion: {
            (article) in
            DispatchQueue.main.async(execute: {
                self.titleLabel.text = article?.title
                self.textLabel.text = article?.text
                self.titleLabel.textColor = UIColor.black()
                self.textLabel.textColor = UIColor.black()
            })
        })
    }

}

