# Mounts of the World

A Flutter application that showcases stunning mountain destinations from around the globe, providing users with detailed information about each location.

## Features

- Browse through a horizontal scrollable list of mountains
- View detailed information about each mountain
- Interactive UI with smooth animations
- Responsive design that works on both mobile and desktop

## Project Structure

```
lib/
├── models/           # Data models and business logic
├── pages/            # Main application pages
│   ├── detail_page.dart
│   ├── landing_page.dart
│   └── splash_page.dart
├── widgets/          # Reusable UI components
│   ├── app_header.dart
│   ├── app_mount_list_view.dart
│   ├── datail_bottom_action.dart
│   └── detail_rating.dart
└── main.dart         # Application entry point
```

## Getting Started

These instructions will help you set up the project locally.

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK (comes with Flutter)
- Android Studio or VS Code with Flutter extension

### Installation

1. Clone the repository:
```bash
git clone https://github.com/wilfred95/mounts-of-the-world.git
cd mounts-of-the-world
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Demo
<img src="assets/mount-of-the-world.gif" alt="Demo GIF">