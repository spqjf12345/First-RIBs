//
//  ActionableItem.swift
//  First-RiBs
//
//  Created by JoSoJeong on 2022/05/16.
//

import Foundation
import RxSwift

public protocol RootActionableItem: AnyObject {
    func waitForLogin() -> Observable<(LoggedInActionableItem, ())>
}

public protocol LoggedInActionableItem: AnyObject {
    func launchGame(with id: String?) -> Observable<(LoggedInActionableItem, ())>
}
