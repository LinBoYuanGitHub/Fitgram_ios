//
//  ReceipeDetailView.swift
//  PhotoAlbumFullAnalysis
//
//  Created by boyuan lin on 11/9/19.
//  Copyright © 2019 boyuan lin. All rights reserved.
//

import UIKit
import Stevia
import Kingfisher

class RecipeDetailView:UIView, UITableViewDelegate {
    let scrollView = UIScrollView() //scrollable container
    let contentView = RecipeHeaderView() //container inside the UIView
    let footerView = RecipeFooterView()
    let headerImage = UIImageView()
    let recipeTitle = UILabel(frame: CGRect(x:0,y:300,width:UIScreen.main.bounds.size.width,height:50))
    let recipeTitleShadowContainer = UIView(frame: CGRect(x:0,y:138,width:UIScreen.main.bounds.size.width,height:100))
    let playButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    let recipeDetailTable = UITableView.init(frame: CGRect.zero, style: .plain)
//    let customBackButton = UIButton(frame: CGRect(x: 0, y: 42, width: 48, height: 48))
    //cover view to replace navigation view
    let naviCoverView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 44 + (UIApplication.shared.keyWindow?.safeAreaInsets.top)!))
  
    convenience init(){
        self.init(frame: CGRect.zero)
        sv(
            recipeDetailTable
        );
        layout(
            0,
            |recipeDetailTable|,
            0
        )
        self.backgroundColor = .white
        //setting for uiback button
//        let whiteBackBtn = UIImage(named: "backbutton_white")?.resizeImageWith(newSize: CGSize(width: 16, height: 16))
//        customBackButton.setImage(whiteBackBtn, for: .normal)
//        customBackButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
//        self.addSubview(customBackButton)
        //setting for header image
        headerImage.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        contentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height:  1000)
//        contentView.backgroundColor = UIColor.clear
        headerImage.image = UIImage()
        headerImage.contentMode = .scaleAspectFill
        headerImage.clipsToBounds = true
//        let sampleImageUrl = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Narcissus_tazetta.jpg/250px-Narcissus_tazetta.jpg")
//        headerImage.kf.setImage(with: sampleImageUrl)
        self.addSubview(headerImage)
        self.headerImage.addSubview(playButton)
        //set up table view
        recipeDetailTable.register(RecipeDetailTableCell.self, forCellReuseIdentifier: "RecipeDetailCell")
        recipeDetailTable.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
        recipeDetailTable.tableHeaderView = contentView
        recipeDetailTable.tableFooterView = footerView
        recipeDetailTable.backgroundColor = UIColor.clear
        //set shadow for header
        let gradientColors = [UIColor.clear.cgColor,UIColor.black.cgColor]
        let gradientLocations:[NSNumber] = [0.0,1.0]
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        contentView.emptyViewHead.addSubview(recipeTitleShadowContainer)
        gradientLayer.frame = recipeTitleShadowContainer.frame
        recipeTitleShadowContainer.layer.insertSublayer(gradientLayer, at: 0)
        recipeTitleShadowContainer.alpha = 0.5
        //header title
        recipeTitle.font = UIFont(name: "ArialRoundedMTBold", size: 25)
        recipeTitle.textAlignment = .center
        recipeTitle.textColor = UIColor.white
        contentView.emptyViewHead.addSubview(recipeTitle)
        //play button
        let playImage = UIImage(named: "playbutton_white")?.resizeImageWith(newSize: CGSize(width: 100, height: 100))
        playButton.setImage(playImage, for: .normal)
        playButton.center = CGPoint(x: UIScreen.main.bounds.size.width/2, y: contentView.emptyViewHead.frame.height/2)
        recipeDetailTable.tableHeaderView!.addSubview(playButton)
        //cover view setting
        naviCoverView.backgroundColor = UIColor.white
        naviCoverView.layer.masksToBounds = false
        naviCoverView.layer.shadowColor = UIColor.black.cgColor
        naviCoverView.layer.shadowOffset = CGSize(width: 0.0, height: 0.1)
        naviCoverView.layer.shadowOpacity = 1.0
        naviCoverView.layer.shadowRadius = 0.0
        
        self.addSubview(naviCoverView)
        //bring view to the front
        self.bringSubviewToFront(recipeDetailTable)
        self.bringSubviewToFront(contentView)
        self.bringSubviewToFront(naviCoverView)
//        self.bringSubviewToFront(customBackButton)
    }

    
}

extension UIImage {
    
    func resizeImageWith(newSize: CGSize) -> UIImage? {
        let horizontalRatio = newSize.width / size.width
        let verticalRatio = newSize.height / size.height
        let ratio = max(horizontalRatio, verticalRatio)
        let newSize = CGSize(width: size.width * ratio, height: size.height * ratio)
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0)
        defer { UIGraphicsEndImageContext() }
        draw(in: CGRect(origin: .zero, size: newSize))
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    
}
