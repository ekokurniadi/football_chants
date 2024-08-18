//
//  Manager.swift
//  Footbal Chants
//
//  Created by Mac on 19/08/24.
//

import Foundation

enum JobType{
    case manager
    case headCoach
}

struct Manager {
    let name: String
    let job:JobType
}
