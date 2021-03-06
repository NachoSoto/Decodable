//
//  Vehicle.swift
//  Decodable
//
//  Created by Charlotte Tortorella on 12/04/2016.
//  Copyright © 2016 anviking. All rights reserved.
//

@testable import Decodable

protocol Vehicle {
	var driverless: Bool {get}
}

struct Car: Vehicle {
	let driverless: Bool
}

extension Car: Decodable {
	static func decode(json: AnyObject) throws -> Car {
		return try Car(driverless: json => "driverless")
	}
}

struct Train: Vehicle {
	let driverless: Bool
	let electric: Bool
}

extension Train: Decodable {
	static func decode(json: AnyObject) throws -> Train {
		return try Train(driverless: json => "driverless",
		                 electric: json => "electric")
	}
}

struct Truck: Vehicle {
	let driverless: Bool
	let wheels: UInt8
}

extension Truck: Decodable {
	static func decode(json: AnyObject) throws -> Truck {
		return try Truck(driverless: json => "driverless",
		             wheels: json => "wheels")
	}
}

