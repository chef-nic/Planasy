//
//  ContentView.swift
//  Planasy
//
//  Created by Nicholas Johnson on 7/31/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query var planasys: [Planasy]
    @State private var planasy = Planasy.example
    
    var body: some View {
        NavigationStack {
            Form {
                VStack {
                    Text("Five Year")
                        .font(.headline)
                    TextField("Five Year", text: $planasy.fiveYear)
                        .textFieldStyle(.roundedBorder)
                }
                VStack {
                    Text("One Year")
                        .font(.headline)

                    TextField("One Year", text: $planasy.oneYear)
                        .textFieldStyle(.roundedBorder)
                }
                VStack {
                    Text("One Month")
                        .font(.headline)

                    TextField("One Month", text: $planasy.oneMonth)
                        .textFieldStyle(.roundedBorder)
                }
                VStack {
                    Text("One Week")
                        .font(.headline)

                    TextField("One Week", text: $planasy.oneWeek)
                        .textFieldStyle(.roundedBorder)
                }
                VStack {
                    Text("One Day")
                        .font(.headline)

                    TextField("One Day", text: $planasy.oneDay)
                        .textFieldStyle(.roundedBorder)
                }
            }
            .navigationTitle("Planasy")
            .onAppear {
                if let planasy = planasys.first {
                    self.planasy = planasy
                } else {
                    self.planasy = .new
                    modelContext.insert(planasy)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
