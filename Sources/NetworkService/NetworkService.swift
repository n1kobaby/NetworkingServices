// The Swift Programming Language
// https://docs.swift.org/swift-book


import Foundation

public class PincodeService {
    public func generatePincode(completion: @escaping (Int)->() )  {
        
        var random: Int = 0
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            
            random = Int.random(in: 1111...9999)
            completion(random)
        }
    }
}
