# Kings Trading App

A modern, polished Flutter web application for trading and portfolio management with a beautiful Material 3 design.

## 🚀 Features

### 📱 **5 Main Tabs**
- **SL/TP** - Stop Loss/Take Profit management with pending orders
- **Position** - Portfolio overview with live profit/loss tracking
- **Wishlist** - Multi-watchlist stock management with real-time data
- **Trades** - Trade history and order management
- **Profile** - User account management and settings

### 🎨 **Design Highlights**
- **Material 3 Design** - Modern, clean UI with consistent theming
- **Responsive Layout** - Works perfectly on desktop and mobile
- **PWA Ready** - Progressive Web App with offline capabilities
- **Optimized Performance** - Fast loading with tree-shaking and caching
- **Professional Polish** - Subtle shadows, proper spacing, and typography

### 🛠 **Technical Features**
- **Flutter Web** - Cross-platform compatibility
- **Service Worker** - Offline functionality and caching
- **Web Manifest** - Installable as a native app
- **Optimized Assets** - Compressed fonts and images
- **Clean Architecture** - Well-organized, maintainable code

## 🚀 Quick Start

### Prerequisites
- Flutter SDK (latest stable)
- Dart SDK
- Web browser

### Installation
```bash
# Clone the repository
git clone https://github.com/sowrabb/kings.git
cd kings

# Get dependencies
flutter pub get

# Run in development mode
flutter run -d chrome

# Build for production
flutter build web --release
```

### Deployment
```bash
# Build the app
flutter build web --release

# Serve locally (for testing)
cd build/web
python3 -m http.server 8080
```

## 📱 **App Structure**

```
lib/
├── main.dart              # Main application entry point
├── components/            # UI components (if any)
└── utils/                # Utility functions

web/
├── index.html            # Web entry point with PWA setup
├── manifest.json         # PWA manifest
├── sw.js                # Service worker for caching
└── icons/               # App icons for different sizes
```

## 🎯 **Key Components**

### **Navigation**
- Bottom navigation bar with 5 tabs
- Smooth transitions between sections
- Active state indicators

### **SL/TP Tab**
- Pending orders overview
- Status cards (ALL, Pending, Executed, Rejected)
- Clean empty state design

### **Position Tab**
- Live profit/loss display
- Portfolio summary cards
- "Square Off All" action button

### **Wishlist Tab**
- Multiple watchlists (Watchlist 1, 2, 3)
- Real-time stock data display
- Search and add functionality
- Fund management interface

### **Trades Tab**
- Trade history management
- Order status tracking
- Professional data presentation

### **Profile Tab**
- User information display
- Account balance overview
- Action buttons (Deposit, Withdraw, History)
- Settings grid (My Account, Rejection Logs, etc.)

## 🎨 **Design System**

### **Colors**
- **Primary**: Deep Blue (#1E3A8A)
- **Secondary**: Green (#10B981)
- **Tertiary**: Orange (#F59E0B)
- **Error**: Red (#EF4444)
- **Surface**: Clean whites and grays

### **Typography**
- **Headlines**: Bold, large fonts for emphasis
- **Body**: Clean, readable text
- **Labels**: Small, subtle text for metadata

### **Components**
- **Cards**: Elevated with subtle shadows
- **Buttons**: Rounded corners with proper padding
- **Icons**: Consistent sizing and spacing
- **Navigation**: Smooth, intuitive interactions

## 🌐 **PWA Features**

### **Service Worker**
- Caches essential app files
- Enables offline functionality
- Automatic cache updates

### **Web Manifest**
- App-like installation
- Custom icons and branding
- Full-screen experience

### **Performance**
- Optimized asset loading
- Tree-shaking for unused code
- Compressed fonts and images

## 📊 **Performance Metrics**

- **Initial Load**: ~2-3 seconds
- **Bundle Size**: Optimized with tree-shaking
- **Caching**: Service worker for faster subsequent loads
- **Mobile**: Responsive design with touch-friendly interactions

## 🔧 **Development**

### **Code Quality**
- Clean, maintainable Flutter code
- Consistent naming conventions
- Proper widget organization
- Material 3 design compliance

### **Optimization**
- Minimal dependencies
- Efficient state management
- Optimized asset loading
- PWA best practices

## 📱 **Browser Support**

- ✅ Chrome (recommended)
- ✅ Firefox
- ✅ Safari
- ✅ Edge
- ✅ Mobile browsers

## 🚀 **Deployment Options**

### **GitHub Pages**
```bash
# Build the app
flutter build web --release

# Deploy to GitHub Pages
# (Configure in repository settings)
```

### **Netlify**
```bash
# Build the app
flutter build web --release

# Deploy to Netlify
# (Drag and drop build/web folder)
```

### **Vercel**
```bash
# Build the app
flutter build web --release

# Deploy to Vercel
# (Connect repository for auto-deployment)
```

## 📄 **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 **Contributing**

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📞 **Support**

For support and questions:
- Create an issue in this repository
- Contact the development team

---

**Built with ❤️ using Flutter and Material 3**
