# 🧠 Flutter Quiz App

A dynamic, interactive quiz application built with Flutter. This project demonstrates core Flutter concepts including state management, widget lifecycles, conditional rendering, and passing functions/data across different widget layers.

## 🚀 Features

* **Interactive Quiz Flow:** Seamlessly navigate from the start screen to questions, and finally to a results summary screen.
* **State Management (Lifting State Up):** Centralized state handling to manage the active screen and track the user's selected answers.
* **Dynamic Content Rendering:** Questions and answers are dynamically generated from a structured data model.
* **Result Analysis:** A detailed results screen that compares the user's chosen answers against the correct answers, complete with visual indicators for correct (✅) and incorrect (❌) choices.
* **Restart Functionality:** Allows users to easily reset the state and take the quiz again without restarting the application.
* **Custom UI Elements:** Styled buttons, gradient backgrounds, and responsive layouts.

## 🛠️ Tech Stack

* **Framework:** [Flutter](https://flutter.dev/)
* **Language:** [Dart](https://dart.dev/)

## 📂 Project Structure

The codebase is organized to separate UI from data and logic:

* `lib/main.dart`: The entry point of the application.
* `lib/quiz.dart`: The core stateful widget that manages the active screen and answer list.
* `lib/screens/`: Contains the individual UI screens (`start_screen.dart`, `questions_screen.dart`, `results_screen.dart`).
* `lib/models/`: Contains the data models (e.g., `quiz_question.dart`).
* `lib/data/`: Houses the dummy data or question banks used in the app.

## 🏁 Getting Started

To run this project locally, ensure you have the Flutter SDK installed on your machine.

### Prerequisites
* Flutter SDK (v3.0.0 or higher recommended)
* Dart SDK
* An IDE (VS Code, Android Studio, etc.)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/YourUsername/quiz_app.git
   ```
2. Navigate to the project directory:
   ```bash
   cd quiz_app
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app on your connected device or emulator:
   ```bash
   flutter run
   ```

## 💡 What I Learned

Building this project was a deep dive into fundamental Flutter mechanics:
* Managing complex widget trees and understanding when to use `StatefulWidget` vs `StatelessWidget`.
* Passing pointers to functions down the widget tree to trigger state updates in parent widgets.
* Utilizing `map()` and spread operators (`...`) to dynamically generate lists of widgets from Dart objects.

---
*Developed as part of my journey mastering the Flutter SDK and Cross-Platform App Development.*