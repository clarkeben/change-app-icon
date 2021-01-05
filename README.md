# 📱 Changing iOS App Icon programmatically using iOS 10.3+

This simple app is to demonstrate how you can change an app icon using iOS 10.3+. The app uses a simple UITableView tapping into the delegate method tableView(_:didSelectRowAt:).

Changing your app icon provides users a nice bit of customisation, allowing them to personalise the icon at their leisure. Feel free to add this to your existing projects, a UICollectionView with a grid layout would have also worked nicely.

## ✨ Steps for recreating this project
1. Add icon files to the project - these will need to be added into a separate folder, not to the Assets folder
2. Register in your info.plist
3. Use instance methods to check if system allows for app icons to be changed
4. Update icon through UI using methods or by creating an app icon manager

## 📸 Screenshots
![change-ios-app-icon-swift-xcode](https://user-images.githubusercontent.com/40464267/103650461-f967a380-4f57-11eb-8164-9e7ebe38c9d8.GIF)

## 🏃🏽‍♀️ How to get started 

### Setup

1) Fork this project
2) Clone the forked project to your machine
3) In your project directory open Terminal and Run  `$ pod install`  and  `$ pod update`
4) Open the `.xcworkspace` file in Xcode to start working on the App

The following guide will help you get started and download the repo:
* [Cloning a repo](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository)

### Requirements
* Xcode 9+
* iOS 10.3+
* Swift 5.2
