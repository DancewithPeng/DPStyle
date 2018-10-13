//
//  ViewController.swift
//  DPStyleExample
//
//  Created by DancewithPeng on 2018/3/14.
//  Copyright © 2018年 dancewithpeng@gmail.com. All rights reserved.
//

import UIKit
import DPStyle

// 推荐用法
extension UIColor {
    static let hexFF00FF = UIColor.hex(0xFF00FF)!
}

// 推荐用法
extension UIFont {
    static let pt18 = UIFont.size(18)
    static let pt20 = UIFont.size(20)
    static let pt24 = UIFont.size(24)
    static let pt30 = UIFont.size(30)
    static let pt66 = UIFont.size(66)
    
    static let pt66_medium  = UIFont.medium(size: 66)
    static let pt66_bold    = UIFont.bold(size: 66)
}

class ViewController: UITableViewController {
    
    // MARK: - Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "DPStyle Example"

//        if let a = UIColor.hex(0xFF00FF) {
//            print(String(format: "%p", a))
//        }
//        if let b = UIColor.hex(0xFF00FF) {
//            print(String(format: "%p", b))
//        }
//
//        if let c = UIColor.hex(0xFF00FF) {
//            print(String(format: "%p", c))
//        }
        
        print(String(format: "%p", UIColor.hex(0xFF00FF)!))
        print(String(format: "%p", UIColor.hex(0xFF00FF)!))
        print(String(format: "%p", UIColor.hex(0xFF00FF)!))
        
        print(String(format: "%p", UIColor.hexFF00FF))
        print(String(format: "%p", UIColor.hexFF00FF))
        print(String(format: "%p", UIColor.hexFF00FF))
        
        if UIColor.hexFF00FF == UIColor.hexFF00FF {
            print("==")
        } else {
            print("!=")
        }
        
        print(String(format: "%p", UIFont.size(18)))
        print(String(format: "%p", UIFont.size(18)))
        print(String(format: "%p", UIFont.size(18)))
        print(String(format: "%p", UIFont.medium(size: 18)))
        print(String(format: "%p", UIFont.medium(size: 18)))
        print(String(format: "%p", UIFont.medium(size: 18)))
        print(String(format: "%p", UIFont.regular(size: 18)))
        print(String(format: "%p", UIFont.regular(size: 18)))
        print(String(format: "%p", UIFont.regular(size: 18)))
        
        print(String(format: "%p", UIFont.pt18))
        print(String(format: "%p", UIFont.pt18))
        print(String(format: "%p", UIFont.pt18))
        

        
//        print(String(format: "%p", p1))
//        print(String(format: "%p", &Person()))
//        print(String(format: "%p", &Person()))
        
//        UIFont.pt24
//
//        UIColor.hexFF00FF
        
        UIFont.pt66_medium
        
        UIFont.medium(size: 15)
        UIFont.size(15)
        UIFont.medium(size: 15)
        
        UIFont.medium(size: 15)
        UIFont.medium(size: 15)
        UIFont.medium(size: 15)
        UIFont.medium(size: 15)
        
        UIFont.medium(size: 15);
        UIFont.medium(size: 15)
        
        UIFont.bold(size: 15)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - TableView DataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 3
        case 1:
            return 9
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "UIColor Hex"
        case 1:
            return "UIFont 28pt"
        default:
            return "Unknown"
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        switch indexPath.section {
        case 0:
            
            cell.textLabel?.text        = "Color hex value: "
            
            switch indexPath.item {
            case 0:
                cell.detailTextLabel?.text      = "FF0000"
                cell.detailTextLabel?.textColor = UIColor.hex(0xFF0000)
                cell.textLabel?.textColor       = UIColor.hex(0xFF0000)
            case 1:
                cell.detailTextLabel?.text      = "00FF00"
                cell.detailTextLabel?.textColor = UIColor.hex(0x00FF00)
                cell.textLabel?.textColor       = UIColor.hex(0x00FF00)
            case 2:
                cell.detailTextLabel?.text      = "0000FF"
                cell.detailTextLabel?.textColor = UIColor.hex(0x0000FF)
                cell.textLabel?.textColor       = UIColor.hex(0x0000FF)
            default:
                cell.detailTextLabel?.text      = "Unknown"
                cell.detailTextLabel?.textColor = UIColor.hex(0x12343142)
                cell.textLabel?.textColor       = UIColor.hex(0x12343142)
            }
            
            cell.textLabel?.font        = UIFont.size(28)
            cell.detailTextLabel?.font  = UIFont.size(28)
        case 1:
            switch indexPath.item {
            case 0:
                cell.textLabel?.text        = "regular"
                cell.detailTextLabel?.text  = "标准体"
                cell.textLabel?.font        = UIFont.regular(size: 28)
                cell.detailTextLabel?.font  = UIFont.regular(size: 28)
            case 1:
                cell.textLabel?.text        = "ultraLight"
                cell.detailTextLabel?.text  = "超轻体"
                cell.textLabel?.font        = UIFont.ultraLight(size: 28)
                cell.detailTextLabel?.font  = UIFont.ultraLight(size: 28)
            case 2:
                cell.textLabel?.text        = "thin"
                cell.detailTextLabel?.text  = "细体"
                cell.textLabel?.font        = UIFont.thin(size: 28)
                cell.detailTextLabel?.font  = UIFont.thin(size: 28)
            case 3:
                cell.textLabel?.text        = "light"
                cell.detailTextLabel?.text  = "轻体"
                cell.textLabel?.font        = UIFont.light(size: 28)
                cell.detailTextLabel?.font  = UIFont.light(size: 28)
            case 4:
                cell.textLabel?.text        = "medium"
                cell.detailTextLabel?.text  = "中体"
                cell.textLabel?.font        = UIFont.medium(size: 28)
                cell.detailTextLabel?.font  = UIFont.medium(size: 28)
            case 5:
                cell.textLabel?.text        = "semibold"
                cell.detailTextLabel?.text  = "半粗体"
                cell.textLabel?.font        = UIFont.semibold(size: 28)
                cell.detailTextLabel?.font  = UIFont.semibold(size: 28)
            case 6:
                cell.textLabel?.text        = "bold"
                cell.detailTextLabel?.text  = "粗体"
                cell.textLabel?.font        = UIFont.bold(size: 28)
                cell.detailTextLabel?.font  = UIFont.bold(size: 28)
            case 7:
                cell.textLabel?.text        = "heavy"
                cell.detailTextLabel?.text  = "重体"
                cell.textLabel?.font        = UIFont.heavy(size: 28)
                cell.detailTextLabel?.font  = UIFont.heavy(size: 28)
            case 8:
                cell.textLabel?.text        = "black"
                cell.detailTextLabel?.text  = "黑体"
                cell.textLabel?.font        = UIFont.black(size: 28)
                cell.detailTextLabel?.font  = UIFont.black(size: 28)
            default:
                cell.textLabel?.font        = UIFont.size(28)
                cell.detailTextLabel?.font  = UIFont.size(28)
            }
            
            cell.textLabel?.textColor       = UIColor.hex(0x333333)
            cell.detailTextLabel?.textColor = UIColor.hex(0x333333)
        default:
            cell.textLabel?.text = "Unknown"
        }
        
        return cell
    }
}

