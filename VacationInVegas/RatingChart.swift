//
//  ContentView.swift
//  VacationInVegas
//
//  Created by Kingsleeeey on 2024/8/15.
//

import SwiftUI
import Charts

struct SampleRating {
    let place: String
    let rating: Int
    
    static let ratings: [SampleRating] = [
        SampleRating(place: "Bei Jing", rating: 80),
        SampleRating(place: "Shang Hai", rating: 68),
        SampleRating(place: "Guang Zhou", rating: 15),
        SampleRating(place: "Cheng Du", rating: 88),
        SampleRating(place: "Le Shan", rating: 99),
        SampleRating(place: "Xia Men", rating: 37),
    ]
}

struct RatingChart: View {
    var body: some View {
        Chart(SampleRating.ratings, id: \.place) { rating in
            SectorMark(angle: .value("Ratings", rating.rating), innerRadius: .ratio(0.35), angularInset: 1)
                .cornerRadius(7)
                .foregroundStyle(by: .value("Place", rating.place))
        }
        .padding()
        .frame(height: 500)
    }
}

#Preview {
    RatingChart()
}
