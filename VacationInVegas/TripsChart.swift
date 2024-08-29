//
//  ContentView.swift
//  VacationInVegas
//
//  Created by Kingsleeeey on 2024/8/15.
//

import SwiftUI
import Charts

struct SampleTripRating {
    let trip: Int
    let rating: Int
    
    static let ratings: [SampleTripRating] = [
        SampleTripRating(trip: 1, rating: 55),
        SampleTripRating(trip: 2, rating: 27),
        SampleTripRating(trip: 3, rating: 67),
        SampleTripRating(trip: 4, rating: 72),
        SampleTripRating(trip: 5, rating: 81),
    ]
}

struct TripsChart: View {
    var body: some View {
        Chart(SampleTripRating.ratings, id: \.trip) { rating in
            //PointMark
            BarMark(
                x: .value("Year", rating.trip),
                y: .value("Rating", rating.rating)
            )
            
            LinePlot(x: "Years", y: "Ratings") { x in
                return x * 6 + 50
            }
            .foregroundStyle(.purple)
        }
        .chartXScale(domain: 1...5)
        .chartYScale(domain: 1...100)
        .padding()
    }
}

#Preview {
    TripsChart()
}
