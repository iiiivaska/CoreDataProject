//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Василий Буланов on 11/11/21.
//

import SwiftUI
import CoreData

struct Student: Hashable {
    let name: String
}

struct ContentView: View {
    
    let students = [Student(name: "Harry Potter"), Student(name: "Hermione Granger")]
    
    var body: some View {
        List(students, id: \.self) { student in
            Text(student.name)
                .onTapGesture {
                    print(student.hashValue)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
