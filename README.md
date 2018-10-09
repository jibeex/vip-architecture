This is a modified version of the templates of the Clean-Swift.

- refactored codes into with Swift extension to made the structure more clear
- renamed viewController to VC
- created a shared protocol Router which facilitates navigations in scene routers
- remove DataPassing/dataStore Protocol
- router has access to interactor
- presenter has access to router
- Event/Data is passed as described on the following diagram 
                           
                           router 
                                  \
                 viewController --  interactor -- presenter -- view controller 
                                                           \ 
                                                             router
                                                             
                          (interpreted from left to right)


You could also download the original templates from https://clean-swift.com/

To learn more about Clean Swift and the VIP cycle, read:

http://clean-swift.com/clean-swift-ios-architecture

There is a sample app available at:

https://github.com/Clean-Swift/CleanStore

To install the Clean Swift Xcode templates, run:

> make install_templates

To uninstall the Clean Swift Xcode templates, run:

> make uninstall_templates
