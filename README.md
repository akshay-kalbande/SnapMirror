# 📸 SnapMirror: Social Media Photo Sharing App

[![Flutter](https://img.shields.io/badge/Flutter-v3.24+-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Firebase](https://img.shields.io/badge/Firebase-Auth%20%26%20Firestore-FFCA28?logo=firebase&logoColor=black)](https://firebase.google.com)
[![Architecture](https://img.shields.io/badge/Architecture-Clean%20Architecture-green)](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

SnapMirror is a social media app built with Flutter, offering users a platform to share photos, follow other users, like and comment on posts, and explore a dynamic social feed. The app integrates **Clean Architecture** principles for maintainability, scalability, and testability.

---

## 🚀 Distribution (One-Click Installation)

You can download the latest stable APK build for manual testing:

[<img src="https://img.shields.io/badge/Download-Android%20APK-00C853?style=for-the-badge&logo=android&logoColor=white" />](https://github.com/akshay-kalbande/SnapMirror/releases/download/stable/snap_mirror_v1.apk)

---

## 🏗 Architecture Overview

The project follows a **Layered Clean Architecture** (Domain-Driven Design), organizing the codebase into three main layers:

1. **Presentation Layer**: UI components and state management using `Provider` for smooth user interaction.
2. **Domain Layer**: Core business logic, entities, and repository interfaces (ensuring stability).
3. **Data Layer**: Data sources (Firestore/Firebase Auth) and repository implementations.

![Clean Architecture in Flutter](https://github.com/ResoCoder/flutter-tdd-clean-architecture-course/blob/master/architecture-proposal.png)

### Key Engineering Patterns:
* **Dependency Injection**: Decoupling object creation from usage for easier testing and modularity.
* **Repository Pattern**: Abstracts data access and allows easy switching between local and remote data sources.
* **Reactive UI**: Uses `Streams` for real-time updates (e.g., live notifications, new posts).

---

## 🛠 Tech Stack

SnapMirror uses the following libraries and packages for core functionalities:

- **Flutter SDK**: The base framework for building the app’s UI and cross-platform functionalities.
- **Firebase**:
    - **Firebase Authentication**: Manages user sign-up, login, and authentication flows.
    - **Firestore**: Real-time cloud database for storing and syncing user posts, comments, and user data.
    - **Firebase Storage**: Stores user-uploaded images and videos securely.
    - **Firebase Messaging**: Sends notifications to users for activities like comments, likes, and new followers.

- **State Management**:
    - **Provider**: A simple and efficient state management solution for building scalable apps.
    - **flutter_bloc & hydrated_bloc**: Used for managing app states more effectively, with support for persistence across app restarts.

- **UI & Design**:
    - **flutter_launcher_icons**: Custom app launcher icon generation.
    - **flutter_staggered_grid_view**: To display a social feed in a staggered grid layout.
    - **flutter_svg**: For handling SVG images (useful for scalable icons or illustrations).
    - **shimmer**: Implements shimmer effects for loading states, making the app more user-friendly.
    - **image_picker**: Allows users to select images from their gallery or take photos using the camera.

- **Networking & Utility**:
    - **cached_network_image**: Caches images for offline use and efficient loading.
    - **rxdart**: Enhances the use of Streams in Flutter, especially for reactive programming.
    - **uuid**: Generates unique identifiers (e.g., for posts or comments).
    - **path_provider**: Provides access to file paths for storing user data locally.

- **Additional Libraries**:
    - **flutter_local_notifications**: Displays local notifications for events like new comments or followers.
    - **formz**: Used for form validation (e.g., user registration or login forms).
    - **dropdown_search**: Adds search functionality to dropdown lists (e.g., selecting users to follow).
    - **get_it**: Implements a simple service locator for dependency injection.

---

## 📦 Project Structure

```text
lib/
├── core/                # Core utilities, themes, constants, and helpers
├── common/              # Shared utilities, widgets, and components
├── app/                 # Main app configuration, setup
├── data/                # Data sources, models, and repositories
│   ├── data_sources/    # Firebase Auth, Firestore, and Storage interactions
│   ├── models/          # User, Post, Comment models
│   └── repositories/    # Authentication, Feed, Profile repository implementations
├── domain/              # Business logic (Entities, Repositories, UseCases, Value Objects)
│   ├── repositories/    # Repository interfaces for Feed, Profile, Auth
│   ├── entities/        # User, Post, Comment entities
│   ├── usecases/        # Use cases for Feed, Authentication, Profile
│   └── value_objects/   # Value objects like Email, Password, Post
├── presentation/        # UI-related code, including screens, widgets, and state management
│   ├── widgets/         # Shared UI components (buttons, card views, etc.)
│   ├── pages/           # Different pages/screens (LoginPage, HomePage, ProfilePage)
│   ├── formz/           # Form validation logic using Formz package
│   └── bloc/            # BLoC-related logic and event handling
└── main.dart            # Entry point