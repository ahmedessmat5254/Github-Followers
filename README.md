# Github-Followers
This repository contains a practice take home project for an iOS dev job interview.

## Overview of the project
This project involves making network calls to GitHub's API to access its users and followers data. Retrieving, handling, and parsing the JSON data. Displaying and formatting the data within the application's UI that is presentable and coherent in styling.

The UI is built 100% programmatically without the use of Storyboards. The reason for this is to build a deeper understanding and appreciation for UI/UX design implementation.

No 3rd party libraries are used for this project. Understanding the trade offs between using a 3rd party library or not is key. For the purpose of this project only GET URL requests are made and therefore using my own implemtation with Apple's URLSession class is satisfactory.

## Details of the project
* Proper project organization adhering as close as possible to the MVC architecture.
* Having the applications models conform to the Codable protocol for setting up JSON parsing.
* A NetworkManager class created to handle and manage all the funcationality for requests to the API endpoints.
* Proper memory management using capture lists, weak, etc. correctly.
* Image caching to reduce the number of network calls made.
* Pagination of network calls to retrieve sets of GitHub followers of a user as needed.
* Implementation of loading states during our network calls.
* Managing empty states following network calls.
* Handling errors following network calls via a custom reusable alert UIViewController.
* Implementing a UICollectionView using Apple's Diffable Datasource to efficiently setup and manage a dymanic UI/UX for a GitHub user's followers.
* Use of Apple's UISearchController for filtering the collection view on search.
* Implenting a UITableView with swipe to delete for managing the application's favorite GitHub users.
* Composition of child UIViews and child UIViewControllers structured keep the app's viewcontrollers as atomic, encapsulated, and self-managing as possible.
* Persistence management using UserDefaults.
* Dynamic Type.
* Date Formatting.
* Stack Views.
* SFSymbols.
* Delegate Protocol Design Pattern.
* SafariViewController.

## Application Images
<img src="https://user-images.githubusercontent.com/49377210/121732442-91af1900-caf2-11eb-9a2e-85f78c7af561.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121732463-970c6380-caf2-11eb-8d2e-c521e7620b34.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121732470-9a075400-caf2-11eb-854d-726ee2db7b75.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121732488-9d9adb00-caf2-11eb-9f0b-5e231a6fa4ce.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121732512-a390bc00-caf2-11eb-9f32-3ec2c23f05c4.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121732532-a8ee0680-caf2-11eb-863e-ec08affa3bc9.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121732550-ad1a2400-caf2-11eb-81b4-ad503eaa9063.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121732564-b0adab00-caf2-11eb-92ab-2c1e80c90312.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121732581-b60af580-caf2-11eb-960d-34e14b73c198.png" width=200> 

## Acknowledgment 
Credit to Sean Allen for putting together a great course with so much to learn and practice.
