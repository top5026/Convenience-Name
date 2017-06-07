//
//  ViewController.swift
//  abc
//
//  Created by ios on 2017/6/7.
//  Copyright © 2017年 pcschool.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var 簡介相片: UIImageView!
    
    @IBOutlet weak var 文章簡介: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        簡介相片.image = UIImage.init(named: "下載.jpeg")
        文章簡介.text=""
        let file = "abc.txt" //this is the file. we will write to and read from it
        
        do {
            
            
            
            
            if let file = Bundle.main.url(forResource: "abc", withExtension: "txt"){
                
                
//                let data = try Data(contentsOf: file)
                  let  text2=try String(contentsOf: file)
                
                文章簡介.text=text2

            } else {
                print("no file")
            }
        } catch {
            print(error.localizedDescription)
        }
    

        
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

