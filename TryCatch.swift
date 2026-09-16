//
//  TryCatch.swift
//
//  Created by Yoma Ozoh
//  Created on 2026-09-16
//  Version 1.0
//  Copyright (c) 2026 Yoma Ozoh. All rights reserved.
//
//  This program demonstrates the use of try-catch blocks in Swift
//

import Foundation
public enum TryCatch {
   

    /// This is the main method.

    public static func main() {

        // Welcome the user

        print("Welcome, we will be calculating the"
        + "volume of a sphere"
        + " based on the radius you provide.")

        print("Enter the radius of the sphere (cm): ", terminator: "")



        // Read input from the user

        guard let radString = readLine() else {

            return

        }

   

        // Attempt to convert the string to a Double

        if let radDouble = Double(radString) {

            // If radius is negative, tell the user

            if radDouble <= 0 {

                print("The radius cannot be negative.")

            } else {

                // Calculate the volume

                let volume = (4/3) * Double.pi * pow(radDouble, 3)



                // Display the volume, rounded to 2 decimal places

                let formattedVolume = String(format: "%.2f", volume)

                print("The volume of a sphere with radius, \(radString)cm, is \(formattedVolume)cm^3.")

            }

        } else {

            // Replicates Java's catch block for invalid numeric input

            print("Invalid input. Please enter a valid radius.")

        }

    }

}



// Execute the main method

TryCatch.main()    
