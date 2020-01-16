//
//  ViewController.swift
//  AlipayDemo
//
//  Created by Geek on 2020/1/2.
//  Copyright © 2020 myself. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func payAction(_ sender: UIButton) {
        //应用注册scheme,在AliSDKDemo-Info.plist定义URL types
        let appScheme = "WeimifuAlipay"
        // NOTE: 将签名成功字符串格式化为订单字符串,请严格按照该格式
        let orderString = "service=mobile.securitypay.pay&partner=2088911201740274&sign_type=RSA&sign=HoeNp8WmGLxNJzVz6LesIdGc9XItzDsuJj0lbz2UD%2FCz0qh5SyUEJJat940YV0EMCjS5kz%2BS4H3TRV8%2B2L5nmOL%2BtxuTRxdecrB9r6c0s6uwOIcsyw5n5cz4pn30NgkmF8EMEVd4YDrdtccDK7XYyeG5IIegERoteUSX5dCXRjE%3D&notify_url=http://payv3.yangkeduo.com/notify/6&out_trade_no=XP0020010914200497922981004395&subject=订单编号200109-002936341751087&payment_type=1&seller_id=pddzhifubao@yiran.com&total_fee=298&body=订单编号200109-002936341751087&goods_type=0&_input_charset=utf-8"
        // NOTE: 调用支付结果开始支付
        AlipaySDK.defaultService()?.payOrder(orderString, fromScheme: appScheme, callback: { (resultDict) in
            if resultDict != nil {
                print("result = ", resultDict!)
            }
        })
    }
    
}
