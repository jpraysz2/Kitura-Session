// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

/**
 * Copyright IBM Corporation and the Kitura project authors 2017-2020
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import PackageDescription

let package = Package(
    name: "Kitura-Session",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "KituraSession",
            targets: ["KituraSession"]
        )
    ],
    dependencies: [
        .package(name: "KituraJP", url: "https://gitlab.everial.com/jpraysz/kiturajp.git", from: "1.1.6"),
        .package(name: "Cryptor", url: "https://github.com/Kitura/BlueCryptor.git", from: "2.0.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "KituraSession",
            dependencies: ["KituraJP", "Cryptor"]
        ),
        .testTarget(
            name: "KituraSessionTests",
            dependencies: ["KituraSession"]
        )
    ]
)
