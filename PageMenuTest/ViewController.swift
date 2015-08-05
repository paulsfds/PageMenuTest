//
//  ViewController.swift
//  PageMenuTest
//
//  Created by Paul Wong on 8/5/15.
//  Copyright (c) 2015 ppp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UIViewController()
        vc1.title = "Page 1"
        vc1.view.backgroundColor = UIColor.redColor()
        let vc2 = UIViewController()
        vc2.title = "Page 2"
        vc2.view.backgroundColor = UIColor.blueColor()
        
        let viewControllers = [vc1, vc2]

        let parameters: [CAPSPageMenuOption] = [
            .CenterMenuItems(true),
//            .MenuItemSeparatorColor(UIColor(netHex:0x0066FF)),
//            .ScrollMenuBackgroundColor(UIColor(netHex:0xEDEDED)),
//            .ViewBackgroundColor(UIColor(netHex:0xEDEDED)),
//            .SelectionIndicatorColor(UIColor(netHex:0x0066FF)),
            .AddBottomMenuHairline(true),
            .MenuHeight(50.0),
            .EnableHorizontalBounce(true),
            .MenuItemFont(UIFont.systemFontOfSize(20, weight: UIFontWeightLight)),
//            .BottomMenuHairlineColor(UIColor(netHex:0x0066FF)),
            .SelectionIndicatorHeight(1.0),
            .MenuItemWidthBasedOnTitleTextWidth(true),
//            .SelectedMenuItemLabelColor(UIColor(netHex:0x0066FF)),
            .MenuItemSeparatorWidth(4.3),
            .MenuItemSeparatorPercentageHeight(0.5),
            .MenuMargin(20.0)
        ]
        
        let pageMenu = CAPSPageMenu(viewControllers: viewControllers, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters)
        self.addChildViewController(pageMenu)
        self.view.addSubview(pageMenu.view)
        pageMenu.didMoveToParentViewController(self)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

