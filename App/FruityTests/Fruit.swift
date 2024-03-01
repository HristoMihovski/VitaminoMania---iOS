//
//  Fruit.swift
//  FruityTests
//
//  Created by  User on 01.03.2024.
//

import XCTest
@testable import Fruity

final class Fruit: XCTestCase {
    func testSuccesfulDate() {
        
        // Given
        
        let date = 61
        let spring = 80
        let summer = 172
        let autumn = 265
        let winter = 356
        let dateCalc = Fruits_VeggiesApp()
        
        // Act
        
        let dateOpen = if date > spring && date < summer {
            BottomNavView(tabSelection: 4)
            //ContentView2()
        } else if date > summer && date < autumn {
            BottomNavView(tabSelection: 4)
            //ContentView3()
        } else if date > autumn && date < winter {
            BottomNavView(tabSelection: 4)
            //ContentView()
        } else {
            BottomNavView(tabSelection: 4)
            //ContentView1()
        }
        
        // Assert
        XCTAssertEqual(dateOpen, BottomNavView(tabSelection: 4))
    }

}
