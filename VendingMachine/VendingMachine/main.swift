//
//  main.swift
//  VendingMachine
//
//  Created by JK on 11/10/2017.
//  Copyright © 2017 JK. All rights reserved.
//

import Foundation

func main() {
    let bananaMilk = BananaMilk(brand: "빙그레", ml: 200, price: 1300, productDate: "20190301", farmCode: 5)
    let strawberryMilk = StrawberryMilk(brand: "빙그레", ml: 200, price: 1300, productDate: "20190405", farmCode: 3)
    let fanta = Fanta(brand: "롯데", ml: 350, price: 2000, productDate: "20190505")
    let top = TOP(brand: "맥심", ml: 400, price: 3000, productDate: "20190606", hot: false)
    
    print("bananaMilk - \(bananaMilk)")
    print("strawberryMilk - \(strawberryMilk)")
    print("fanta - \(fanta)")
    print("top - \(top)")
}

main()
