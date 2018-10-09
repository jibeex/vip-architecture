//
//  Router.swift
//  Univadis
//
//  Created by Lin, Jianbin on 10/10/17.
//  Copyright © 2017 Aptus Health. All rights reserved.
//

protocol Router: class {

    var prepareForSegueConfigurations: [String: ((_ segue: UIStoryboardSegue) -> Void)] { get set }
    func performSegue(identifier: String, sender: Any?)
}

extension Router {

    func performSegue(identifier: String, sender: Any?, prepareForSegue: ((_ segue: UIStoryboardSegue) -> Void)?) {
        prepareForSegueConfigurations[identifier] = prepareForSegue
        performSegue(identifier: identifier, sender: sender)
    }

    func prepareForSegue(segue: UIStoryboardSegue) {
        guard let identifier = segue.identifier,
            let configuration = prepareForSegueConfigurations[identifier] else { return }

        configuration(segue)
        prepareForSegueConfigurations[identifier] = nil
    }
}
