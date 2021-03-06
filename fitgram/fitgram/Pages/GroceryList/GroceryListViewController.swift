//
//  GroceryListViewController.swift
//  PhotoAlbumFullAnalysis
//
//  Created by boyuan lin on 10/10/19.
//  Copyright © 2019 boyuan lin. All rights reserved.
//

import UIKit
import SwiftGRPC

class GroceryListViewController: UIViewController {
    var date = Int()
    
    var groceryList = [GroceryItem]()
    var rootView:GroceryListView! = nil
    var isSelectAll = true
    
    func initMockUpGroceryListData(){
        var ingredientList = [IngredientModel]()
        let item1 = IngredientModel(ingredientName: "面粉", portionDesc: "250克", isChecked: false)
        let item2 = IngredientModel(ingredientName: "胡萝卜", portionDesc: "约1/3根", isChecked: false)
        let item3 = IngredientModel(ingredientName: "鸡胸肉", portionDesc: "100克", isChecked: false)
        let item4 = IngredientModel(ingredientName: "木耳", portionDesc: "8朵", isChecked: false)
        let item5 = IngredientModel(ingredientName: "番茄", portionDesc: "一个", isChecked: false)
        let item6 = IngredientModel(ingredientName: "彩椒", portionDesc: "一个", isChecked: false)
        let item7 = IngredientModel(ingredientName: "洋葱", portionDesc: "一个", isChecked: false)
        ingredientList.append(item1)
        ingredientList.append(item2)
        ingredientList.append(item3)
        ingredientList.append(item4)
        ingredientList.append(item5)
        ingredientList.append(item6)
        ingredientList.append(item7)
        for _ in 0...5 {
            let groceryItem = GroceryItem(groceryItemId: 0, dishImageUrl: "https://i2.chuimg.com/ac6aa49e873d4aaa926e89d42c8a022b_1920w_1920h.jpg?imageView2/2/w/300/interlace/1/q/90", dishTitle: "酸奶南瓜碗", ingredientList: ingredientList, isChecked: true)
            groceryList.append(groceryItem)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    
    override func loadView() {
        rootView = GroceryListView()
        rootView.groceryTableView.delegate = self
        rootView.groceryTableView.dataSource = self
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "食谱列表"
//        self.navigationController?.navigationBar.topItem?.title = "食谱列表"
//        self.initMockUpGroceryListData()
        self.navigationItem.leftBarButtonItem  = UIBarButtonItem(image: UIImage(imageLiteralResourceName: "backbutton_black"), style: .plain, target: self, action: #selector(onBackPressed))
        self.navigationItem.leftBarButtonItem?.tintColor = UIColor.black
        self.rootView.allIngredientBtn.addTarget(self, action: #selector(requestForAllIngredientList), for: .touchUpInside)
        self.countRecipeNumber()
        on("INJECTION_BUNDLE_NOTIFICATION") {
            self.loadView()
        }
    }
    
    @objc func onBackPressed(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func requestForAllIngredientList() {
        let req = Apisvr_GetAllIngredientsReq()
        do{
            guard let token = UserDefaults.standard.string(forKey: Constants.tokenKey) else {
                return
            }
            let metaData = try Metadata(["authorization": "Token " + token])
            try RecommendationDataManager.shared.client.getAllIngredients(req, metadata: metaData) { (resp, result) in
                if result.statusCode == .ok {
                    let targetVC = GroceryDetailViewController()
                    let groceryDetailItem = Apisvr_GetCheckListItemResp()
//                    groceryDetailItem.ingredients = resp?.ingredients
                    targetVC.groceryDetailItem = groceryDetailItem
                    self.navigationController?.pushViewController(targetVC, animated: true)
                }
            }
        } catch {
            print(error)
        }
    }
    
    @objc func navigateToSelectedRecipeIngredientPage() {
        let targetVC = GroceryDetailViewController()
        targetVC.isAllIngredient = true
        self.navigationController?.pushViewController(targetVC, animated: true)
    }
    
}

extension GroceryListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.rootView.groceryTableView.dequeueReusableCell(withIdentifier: "GroceryTableCell") as? GroceryTableCell else {
            return UITableViewCell()
        }
        cell.dishLabel.text = groceryList[indexPath.row].dishTitle
        cell.dishImage.kf.setImage(with: URL(string: groceryList[indexPath.row].dishImageUrl))
        cell.checkBox.isSelected =  groceryList[indexPath.row].isChecked
        cell.checkBox.tag = indexPath.row
        cell.checkBox.addTarget(self, action: #selector(onGroceryItemCheck), for: .touchUpInside)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .white
        let headerLabel = UILabel(frame: CGRect(x: 42, y: 0, width: 181, height: 20))
        let headerCheckBox = UIButton(frame: CGRect(x: 16, y: 0, width: 20, height: 20))
        headerCheckBox.setImage(UIImage(named: "checkbox_selected_yellow"), for: .selected)
        headerCheckBox.setImage(UIImage(named: "checkbox_unselected"), for: .normal)
        headerLabel.text = "选择全部"
        headerLabel.font = UIFont(name: "PingFangSC-Regular", size: 17)
        headerView.addSubview(headerCheckBox)
        headerView.addSubview(headerLabel)
        headerCheckBox.isSelected = isSelectAll
        headerCheckBox.addTarget(self, action: #selector(selectAllItem), for: .touchUpInside)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //view the ingreident list
//        self.requestForGroceryListItem(groceryId:groceryList[indexPath.row].groceryItemId)
    }
    
    func requestForGroceryListItem(groceryId:Int){
        var req = Apisvr_GetCheckListItemReq()
        let calendar = Calendar(identifier: .chinese)
        let components = calendar.dateComponents([.year,.month,.day],from: Date())
        req.date =  Int64(calendar.date(from: components)!.timeIntervalSince1970)
        req.recommendedRecipeID = Int32(groceryId)
        do{
            guard let token = UserDefaults.standard.string(forKey: Constants.tokenKey) else {
                return
            }
            let metaData = try Metadata(["authorization": "Token " + token])
            try RecommendationDataManager.shared.client.getCheckListItem(req, metadata: metaData, completion: { (resp, result) in
                if result.statusCode == .ok {
                    let targetVC = GroceryDetailViewController()
                    targetVC.groceryDetailItem = resp!
                    targetVC.detailItemId = groceryId
                    self.navigationController?.pushViewController(targetVC, animated: true)
                }
            })
        }catch {
            print(error)
        }
    }
    
    @objc func onGroceryItemCheck(sender:UIButton){
        let indexPath = IndexPath(row: sender.tag, section: 0)
        groceryList[indexPath.row].isChecked = !groceryList[indexPath.row].isChecked
        self.rootView.groceryTableView.reloadData()
        self.countRecipeNumber()
    }
    
    @objc func selectAllItem(sender:UIButton){
//      self.rootView.groceryTableView.headerView(forSection: 0)
        isSelectAll = !isSelectAll
        for index in 0...groceryList.count-1 {
            groceryList[index].isChecked = isSelectAll
        }
        self.countRecipeNumber()
        self.rootView.groceryTableView.reloadData()
    }
    
    func countRecipeNumber(){
        var count = 0
        for groceryItem in groceryList {
            if groceryItem.isChecked {
                count += 1
            }
        }
        if count == 0 {
            self.rootView.allIngredientBtn.isEnabled = false
        } else {
            self.rootView.allIngredientBtn.isEnabled = true
        }
        self.rootView.recipeCounterLabel.text = String(count) + "食谱"
    }
    
    
}
