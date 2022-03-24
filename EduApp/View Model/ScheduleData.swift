//
//  ScheduleData.swift
//  EduApp
//
//  Created by Zafarjon on 25/03/22.
//

import SwiftUI

let scheduleData = [
    DayScheduleModel(id: 1, weekDay: "Monday", subjects: [
        SubjectsModel(id: 1, image: "Geography", name: "Geography", grade: 9, color: "Red", books: ["Geography"]),
        SubjectsModel(id: 2, image: "English", name: "English", grade: 9, color: "Red", books: ["English"]),
        SubjectsModel(id: 3, image: "Technology", name: "Technology", grade: 9, color: "Red", books: ["Technology"]),
        SubjectsModel(id: 4, image: "History", name: "World History", grade: 9, color: "Red", books: ["World History"]),
        SubjectsModel(id: 5, image: "Algebra", name: "Algebra", grade: 9, color: "Red", books: ["Algebra"]),
        SubjectsModel(id: 6, image: "Laws", name: "Laws", grade: 9, color: "Red", books: ["Laws"])
    ]),
    
    DayScheduleModel(id: 2, weekDay: "Tuesday", subjects: [
        SubjectsModel(id: 1, image: "English", name: "English", grade: 9, color: "Green", books: ["English"]),
        SubjectsModel(id: 2, image: "Russian", name: "Russian", grade: 9, color: "Green", books: ["Russian"]),
        SubjectsModel(id: 3, image: "Uzbek history", name: "Uzbekistan History", grade: 9, color: "Green", books: ["Uzbekistan History"]),
        SubjectsModel(id: 4, image: "Algebra", name: "Algebra", grade: 9, color: "Green", books: ["Algebra"]),
        SubjectsModel(id: 5, image: "Geometry", name: "Geometry", grade: 9, color: "Green", books: ["Geometry"]),
    ]),
    
    DayScheduleModel(id: 3, weekDay: "Wednesday", subjects: [
        SubjectsModel(id: 1, image: "Algebra", name: "Algebra", grade: 9, color: "Blue", books: ["Algebra"]),
        SubjectsModel(id: 2, image: "Biology", name: "Biology", grade: 9, color: "Blue", books: ["Biology"]),
        SubjectsModel(id: 3, image: "Drawing", name: "Drawing", grade: 9, color: "Blue", books: ["Drawing"]),
        SubjectsModel(id: 4, image: "History", name: "World History", grade: 9, color: "Blue", books: ["World History"]),
        SubjectsModel(id: 5, image: "Chemistry", name: "Chemistry", grade: 9, color: "Blue", books: ["Chemistry"]),
        SubjectsModel(id: 6, image: "Uzbek", name: "Uzbek", grade: 9, color: "Blue", books: ["Uzbek"])
    ]),
    
    DayScheduleModel(id: 4, weekDay: "Thursday", subjects: [
        SubjectsModel(id: 1, image: "Physics", name: "Physics", grade: 9, color: "Pink", books: ["Physics"]),
        SubjectsModel(id: 2, image: "Russian", name: "Russian", grade: 9, color: "Pink", books: ["Russian"]),
        SubjectsModel(id: 3, image: "Literature", name: "Literature", grade: 9, color: "Pink", books: ["Literature part 1", "Literature part 2"]),
        SubjectsModel(id: 4, image: "Geometry", name: "Geometry", grade: 9, color: "Pink", books: ["Geometry"]),
        SubjectsModel(id: 5, image: "Biology", name: "Biology", grade: 9, color: "Pink", books: ["Biology"])
    ]),
    
    DayScheduleModel(id: 5, weekDay: "Friday", subjects: [
        SubjectsModel(id: 1, image: "Geography", name: "Geography", grade: 9, color: "Orange", books: ["Geography"]),
        SubjectsModel(id: 2, image: "Computer Science", name: "Informatics", grade: 9, color: "Orange", books: ["Informatics"]),
        SubjectsModel(id: 3, image: "Physics", name: "Physics", grade: 9, color: "Orange", books: ["Physics"]),
        SubjectsModel(id: 4, image: "Uzbek", name: "Uzbek", grade: 9, color: "Orange", books: ["Uzbek"])
    ]),
    
    DayScheduleModel(id: 6, weekDay: "Saturday", subjects: [
        SubjectsModel(id: 1, image: "Uzbek", name: "Uzbek", grade: 9, color: "Purple", books: ["Uzbek"]),
        SubjectsModel(id: 2, image: "English", name: "English", grade: 9, color: "Purple", books: ["English"]),
        SubjectsModel(id: 3, image: "Literature", name: "Literature", grade: 9, color: "Purple", books: ["Literature"]),
        SubjectsModel(id: 4, image: "Chemistry", name: "Chemistry", grade: 9, color: "Purple", books: ["Chemistry"]),
        SubjectsModel(id: 5, image: "Computer Science", name: "Informatics", grade: 9, color: "Purple", books: ["Informatics"])
    ])
]
