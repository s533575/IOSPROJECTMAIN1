//
//  FirstViewController.swift
//  IOSProject
//
//  Created by student on 2/24/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit
 import MapKit

class FirstViewController: UIViewController {
    @IBOutlet weak var maps: MKMapView!
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            createMap(map: listOfMaps)
        }
        let listOfMaps = [
            ["title": "Burger King", "latitude":40.330568, "longitude" : -94.873193],
            ["title": "Mc Donalds", "latitude":  40.334557, "longitude" : -94.874222],
            ["title": "Dominos Pizaa", "latitude":  40.335339, "longitude" : -94.874247]
        ]
        func createMap(map : [[String : Any]])
            
        {
            for maps1 in map{
                let annotation = MKPointAnnotation()
                annotation.title = maps1["title"] as? String
                annotation.coordinate = CLLocationCoordinate2D(latitude: maps1["latitude"] as! CLLocationDegrees, longitude: maps1["longitude"] as! CLLocationDegrees)
                
                maps.addAnnotation(annotation)
                
            }
            
        }
        
    }
    



