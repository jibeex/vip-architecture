//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol ___VARIABLE_sceneName___RoutingLogic {

//     func routeToSomewhere(dataToPass: Int)
}

class ___VARIABLE_sceneName___Router {

    weak var viewController: ___VARIABLE_sceneName___VC?
    var interactor: ___VARIABLE_sceneName___Interactor?
    var prepareForSegueConfigurations: [String: ((_ segue: UIStoryboardSegue) -> Void)] = [:]
}

extension ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___RoutingLogic {

    func prepareForSegueConfiguration(for key: String) -> ((UIStoryboardSegue) -> Void)? {
        return prepareForSegueConfigurations[key]
    }

    func setPrepareForSegueConfiguration(for key: String, configuration: ((UIStoryboardSegue) -> Void)?) {
        prepareForSegueConfigurations[key] = configuration
    }
}

extension ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___DataPassing {

        // MARK: Passing data

//      func passDataToSomewhere(someData: Int) {
//      }
}
