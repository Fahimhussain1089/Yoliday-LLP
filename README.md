# Portfolio App 📱

A beautiful and responsive Flutter portfolio application with modern UI design, featuring a tabbed interface, search functionality, and custom bottom navigation.

## 🌟 Features

- **Responsive Design** - Adapts to different screen sizes using flutter_screenutil
- **Custom Bottom Navigation** - Interactive navigation with active state indicators
- **Search Functionality** - Real-time filtering of portfolio items
- **Tab Navigation** - Multiple tabs (Project, Saved, Shared, Achievement)
- **Modern UI** - Clean and professional design
- **Custom Fonts** - Poppins font family integration
- **Smooth Animations** - Fluid transitions and interactions

## 📱 Screenshots

| Portfolio Screen | Search Feature | Bottom Navigation |
|------------------|----------------|-------------------|
| ![Portfolio](screenshots/portfolio.png) | ![Search](screenshots/search.png) | ![Navigation](screenshots/navigation.png) |

## 🚀 Getting Started


![WhatsApp Image 2025-06-11 at 17 00 52 (2)](https://github.com/user-attachments/assets/8a3936fb-519d-4824-a629-d740f702baad)
![WhatsApp Image 2025-06-11 at 17 00 52 (1)](https://github.com/user-attachments/assets/a5f876e0-9e7c-43b5-b771-f62ce78bcf32)
![WhatsApp Image 2025-06-11 at 17 00 51](https://github.com/user-attachments/assets/581e37d8-1325-40d5-94ce-a2f8fd935b44)

![WhatsApp Image 2025-06-11 at 17 00 51 (1)](https://github.com/user-attachments/assets/430dcbc2-1d18-4762-95eb-24556aa14821)

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK (>=2.17.0)
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/portfolio-app.git
   cd portfolio-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Add required assets**
   
   Create the following folder structure:
   ```
   assets/
   ├── fonts/
   │   ├── Poppins-Regular.ttf
   │   ├── Poppins-Medium.ttf
   │   ├── Poppins-SemiBold.ttf
   │   └── Poppins-Bold.ttf
   ├── images/
   │   ├── portfolio1.jpg
   │   ├── portfolio2.jpg
   │   ├── portfolio3.jpg
   │   ├── portfolio4.jpg
   │   └── portfolio5.jpg
   └── icons/
       ├── home.svg
       ├── portfolio.svg
       ├── input.svg
       └── profile.svg
   ```

4. **Download Poppins Font**
   - Go to [Google Fonts - Poppins](https://fonts.google.com/specimen/Poppins)
   - Download the font family
   - Extract and place the `.ttf` files in `assets/fonts/`

5. **Add Portfolio Images**
   - Add your portfolio images to `assets/images/`
   - Supported formats: JPG, PNG
   - Recommended size: 400x300px

6. **Add SVG Icons** (Optional)
   - Export icons from your design files
   - Place SVG files in `assets/icons/`
   - Or use the default Material Icons

7. **Run the app**
   ```bash
   flutter run
   ```

## 📂 Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/
│   └── portfolio_item.dart   # Portfolio data model
├── screens/
│   ├── main_screen.dart      # Main screen with bottom navigation
│   ├── portfolio_screen.dart # Portfolio tab content
│   └── empty_screen.dart     # Placeholder screens
├── widgets/
│   ├── custom_bottom_nav.dart # Custom bottom navigation bar
│   └── portfolio_card.dart    # Portfolio item card widget
└── utils/
    └── constants.dart         # App colors and text styles
```

## 🎨 Customization

### Colors

Edit `lib/utils/constants.dart` to customize the app colors:

```dart
class AppColors {
  static const Color primary = Color(0xFFFF6B35);      // Orange
  static const Color secondary = Color(0xFFE0E0E0);    // Light Gray
  static const Color textPrimary = Color(0xFF2D2D2D);  // Dark Gray
  static const Color textSecondary = Color(0xFF7A7A7A); // Medium Gray
  static const Color background = Color(0xFFF8F8F8);   // Light Background
  static const Color white = Color(0xFFFFFFFF);        // White
  static const Color inactive = Color(0xFFBDBDBD);     // Inactive Gray
}
```

### Portfolio Data

Update the portfolio items in `lib/screens/portfolio_screen.dart`:

```dart
void _initializeData() {
  _allItems = [
    PortfolioItem(
      id: '1',
      title: 'Your Project Title',
      subtitle: 'Project Description\nBy Author Name',
      imagePath: 'assets/images/your_image.jpg',
      grade: 'A+',
    ),
    // Add more items...
  ];
}
```

### Text Styles

Modify text styles in `lib/utils/constants.dart`:

```dart
class AppTextStyles {
  static TextStyle heading = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  // Customize other text styles...
}
```

## 📦 Dependencies

| Package | Version | Description |
|---------|---------|-------------|
| [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) | ^5.9.0 | Responsive UI adaptation |
| [flutter_svg](https://pub.dev/packages/flutter_svg) | ^2.0.7 | SVG rendering support |

## ✨ Key Features Implementation

### Search Functionality
- Real-time filtering as you type
- Searches through portfolio item titles
- Case-insensitive matching

### Bottom Navigation
- Custom implementation with active state
- Color changes for selected tab
- Smooth indicator animation
- Four main sections: Home, Portfolio, Input, Profile

### Responsive Design
- Uses flutter_screenutil for consistent sizing
- Adapts to different screen densities
- Maintains design proportions across devices

## 🐛 Troubleshooting

### Common Issues

1. **Font not displaying correctly**
   ```
   Solution: Ensure font files are in assets/fonts/ and properly declared in pubspec.yaml
   ```

2. **Images not loading**
   ```
   Solution: Check image paths in assets/images/ and verify pubspec.yaml asset declarations
   ```

3. **Build errors**
   ```
   Solution: Run 'flutter clean' then 'flutter pub get' and try again
   ```

### Asset Loading Issues

If assets aren't loading properly:

1. Run `flutter clean`
2. Delete `pubspec.lock`
3. Run `flutter pub get`
4. Restart your IDE/editor
5. Run `flutter run`

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Contribution Guidelines

- Follow the existing code style
- Add comments for complex logic
- Update README if you add new features
- Test on multiple devices/screen sizes
- Ensure responsive design principles

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📧 Contact

Your Name - [@yourusername](https://twitter.com/yourusername) - your.email@example.com

Project Link: [https://github.com/yourusername/portfolio-app](https://github.com/yourusername/portfolio-app)

## 🙏 Acknowledgments

- [Flutter Team](https://flutter.dev/) for the amazing framework
- [Google Fonts](https://fonts.google.com/) for the Poppins font family
- Design inspiration from modern portfolio applications
- Community contributors and testers

## 📱 Download

[<img src="https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png" alt="Get it on Google Play" height="80">](https://play.google.com/store)

## 🔄 Version History

- **v1.0.0** - Initial release
  - Basic portfolio display
  - Search functionality
  - Custom bottom navigation
  - Responsive design

---

**Made with ❤️ using Flutter**
