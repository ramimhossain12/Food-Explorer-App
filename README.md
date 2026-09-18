# 🍔 Food Explorer App

**Food Explorer App** is a modern and visually appealing iOS application built with SwiftUI. This project demonstrates core and advanced SwiftUI concepts, including layout composition, state management, screen navigation, modal sheets, and interactive alerts.

---

## 🚀 Key Features

* **Explore Tab:** 
  * Horizontal scrollable custom category cards (`ScrollView`).
  * Display of popular food items along with ratings.
  * Seamless navigation to detail pages upon tapping a specific item.
  * Modal interface accessible via the `+` toolbar button to add new recipes.

* **Favorites Tab:**
  * Clean UI interface dedicated to storing and displaying saved favorite food items.

* **Profile Tab:**
  * User profile details and configuration settings.
  * Account logout workflow backed by a confirmation alert.

---

## 🛠 Technologies & Concepts Used

This application implements several core SwiftUI concepts:

1. **Navigation & App Structure:**
   * `TabView` (Root bottom navigation bar)
   * `NavigationStack` & `NavigationLink` (Hierarchical screen transitions)
   * `.sheet` (Modal form presentation for adding recipes)
   * `.alert` (Confirmation dialogs)

2. **Layout & View Composition:**
   * `VStack`, `HStack`, `ZStack`
   * `ScrollView` (Horizontal & Vertical directions)
   * `Spacer`, `Padding`, `Frame`, custom shadows, and corner radii.

3. **Data Flow & Forms:**
   * `@State` and `@Binding` (State management and data flow across views)
   * `Form`, `TextField`, `Picker`, and `Toggle`

---

## 📁 Project Architecture

```text
Food Explorer App/
│
├── ContentView.swift             # Root view with TabView structure
├── ExploreView.swift             # Main explore screen with list & scrollable views
├── RecipeDetailView.swift        # Detailed view for a selected item
├── AddRecipeSheetView.swift      # Modal sheet for adding a new recipe
├── FavoritesView.swift           # Favorites list screen
├── ProfileView.swift             # Profile screen with logout alert
└── FoodItem.swift                # Data model structure



📱 How to Run
1. Clone or download this project repository.
2. Open the .xcodeproj file in Xcode.
3. Select an iOS Simulator (e.g., iPhone 15 / 16 / 17 Pro).
4. Press Command + R to build and run the application.
👨‍💻 Developer: Ramim Hossain
🛠 Platform: iOS 17+ (SwiftUI)

