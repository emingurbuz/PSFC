# Scrum FlashCards

A professional iOS flashcard application designed to help users master Scrum concepts and prepare for certifications.

## 🚀 Overview

Scrum FlashCards provides an interactive way to learn Scrum through categorized flashcards (Basic, Intermediate, Advanced). The app tracks your progress, identifies areas that need review, and uses a mastery system to ensure long-term retention.

## 🛠 Tech Stack

- **Language:** Swift
- **Framework:** SwiftUI
- **Data Persistence:** SwiftData
- **Analytics:** TelemetryDeck (Setup required)
- **Minimum iOS Version:** iOS 17.0+ (Required for SwiftData)

## 📁 Project Structure

```text
.
├── Scrum FlashCards/              # Main application source code
│   ├── Assets.xcassets/           # App icons, colors, and images
│   ├── basic.json                 # Flashcard content for Basic level
│   ├── intermediate.json          # Flashcard content for Intermediate level
│   ├── advanced.json              # Flashcard content for Advanced level
│   ├── CardProgress.swift         # SwiftData model for individual card progress
│   ├── LevelProgress.swift        # SwiftData model for level-specific progress
│   ├── GlobalStats.swift          # SwiftData model for overall statistics
│   ├── Scrum_FlashCardsApp.swift  # App entry point
│   ├── TelemetryManager.swift     # Analytics management (Mock by default)
│   └── Views/                     # SwiftUI views (ContentView, PracticeView, etc.)
└── Scrum FlashCards.xcodeproj     # Xcode project file
```

## ⚙️ Setup & Run

1. **Requirements:**
   - macOS with the latest version of Xcode installed.
   - iOS 17.0+ compatible device or simulator.

2. **Opening the project:**
   - Double-click `Scrum FlashCards.xcodeproj` to open it in Xcode.

3. **Running the app:**
   - Select a simulator (e.g., iPhone 15) or a connected device.
   - Press `Cmd + R` or click the **Play** button in Xcode.

## 📜 Scripts & Commands

- **Testing:** No automated tests are currently implemented. 
- **TODO:** Add Unit and UI tests.

## 📊 Features

- **Release Notes:** Detailed history of changes can be found in [RELEASE_NOTES.md](./RELEASE_NOTES.md).
- **Levels of Difficulty:** Basic, Intermediate, and Advanced sets of questions.
- **Progress Tracking:** Tracks your "best percentage" and "last attempt" for each level.
- **Mastery System:** Cards are considered "mastered" after 3 consecutive correct answers and are removed from the review pool.
- **Review Mode:** Specifically target cards you've previously missed.
- **Daily Goals:** Track your daily study streaks and total cards answered.

## 🛰 Telemetry & Analytics

The app is integrated with **TelemetryDeck** for privacy-focused analytics.
- **Status:** Enabled.
- **Current App ID:** Configured in `TelemetryManager.swift`.
- **Tracked Events:** Sessions, card answers, mastery achievements, and level resets.

## 🔐 Environment Variables

No environment variables are required for basic operation.

## 📄 License

TODO: Add license information.
