//
//  Place.swift
//  VacationInVegas
//
//  Created by Kingsleeeey on 2024/8/16.
//

import SwiftData
import SwiftUI
import MapKit

@Model
class Place {
    // 确保唯一
    #Unique<Place>([\.name, \.latitude, \.longitude])
    
    @Attribute(.unique) var name: String
    var latitude: Double
    var longitude: Double
    var interested: Bool
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var image: Image {
        Image(name.lowercased().replacingOccurrences(of: " ", with: ""))
    }
    
    init(name: String, latitude: Double, longitude: Double, interested: Bool) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.interested = interested
    }
    
    @MainActor
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: Place.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        for place in previewPlaces {
            container.mainContext.insert(place)
        }
        
        return container
    }
    
    static var previewPlaces: [Place] {
        [
            Place(name: "Bei Jing", latitude: 39.915119, longitude: 116.403963, interested: true),
            Place(name: "Shang Hai", latitude: 31.245414, longitude: 121.506379, interested: true),
            Place(name: "Guang Zhou", latitude: 23.112047, longitude: 113.331075, interested: false),
            Place(name: "Cheng Du", latitude: 30.574844, longitude: 104.069852, interested: true),
            Place(name: "Le Shan", latitude: 29.55099, longitude: 103.78022, interested: true),
            Place(name: "Xia Men", latitude: 24.441974, longitude: 118.09515, interested: false),
        ]
    }
    
}
