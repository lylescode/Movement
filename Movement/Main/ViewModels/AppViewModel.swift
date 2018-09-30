//
//  AppViewModel.swift
//  Movement
//
//  Created by CMR on 16/09/2018.
//  Copyright © 2018 lyle. All rights reserved.
//

internal protocol AppViewModelInputs {
    
}
internal protocol AppViewModelOutputs {
    
}
internal protocol AppViewModelType {
    var inputs: AppViewModelInputs { get }
    var outputs: AppViewModelOutputs { get }
}
internal final class AppViewModel: AppViewModelType, AppViewModelInputs, AppViewModelOutputs {
    
    internal var inputs: AppViewModelInputs { return self }
    internal var outputs: AppViewModelOutputs { return self }
}
