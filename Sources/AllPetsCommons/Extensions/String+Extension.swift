//
//  String+Extension.swift
//
//
//  Created by Gerardo Bautista Castaneda on 21/02/24.
//

#warning("change this to english")
public extension String {
    
    func getDistanceDescription(of distance: Int) -> String {
        var distanceOnKm: Float = Float(distance)
        var distanceMetrics: String = "Mtrs."
        
        if distanceOnKm >= 1000 {
            distanceOnKm = Float(distance / 1000)
            distanceMetrics = "KMs."
        }
        
        return "a \(distanceOnKm.description) \(distanceMetrics)"
    }
    
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
