//
//  DayScheduleModel.swift
//  EduApp
//
//  Created by Zafarjon on 25/03/22.
//

import SwiftUI

struct DayScheduleModel: Identifiable {
    let id: Int
    let weekDay: String
    let subjects: [SubjectsModel]
}
