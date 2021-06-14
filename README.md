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
<img src="https://user-images.githubusercontent.com/49377210/121942990-67a76200-cd51-11eb-88d5-04a339eb747a.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121943001-6aa25280-cd51-11eb-9ce8-bee6ce99b202.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121943010-6ece7000-cd51-11eb-8b92-59385b347da1.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121943020-7130ca00-cd51-11eb-89d0-13115438e7be.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121943063-7b52c880-cd51-11eb-9e80-35057f13d845.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121943080-7f7ee600-cd51-11eb-979d-db21ae3360da.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121943097-83126d00-cd51-11eb-989e-a785ae387ed7.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121943106-860d5d80-cd51-11eb-8fab-3b9857438df7.png" width=200> <img src="https://user-images.githubusercontent.com/49377210/121943113-886fb780-cd51-11eb-8ba0-7f6be5fccada.png" width=200> 

## Acknowledgment 
Credit to Sean Allen for putting together a great course with so much to learn and practice.
