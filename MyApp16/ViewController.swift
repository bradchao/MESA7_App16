//
//  ViewController.swift
//  MyApp16
//
//  Created by iii on 2017/6/30.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let fmgr = FileManager.default
    let home = NSHomeDirectory()
    var appdata:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(home)
        
        appdata = home + "/Documents/mydaya"
        
        if !fmgr.fileExists(atPath: appdata!){
            do {
                try fmgr.createDirectory(atPath: appdata!, withIntermediateDirectories: true, attributes: nil)
                print("create Dir")
            }catch{
                
            }
        }else {
            print("Dir OK")
        }
        
        
//        do {
////            try fmgr.createDirectory(atPath: newdir, withIntermediateDirectories: true, attributes: nil)
//            
////            try fmgr.copyItem(atPath: newdir, toPath: copydir)
//            
//            try fmgr.removeItem(atPath: copydir)
//            
//            
//            print("OK")
//        }catch {
//            print(error)
//        }
    }


}

