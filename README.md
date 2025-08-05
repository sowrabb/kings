# KingStock - Mobile Stock Trading PWA

A modern, mobile-first Progressive Web App (PWA) for stock trading and market tracking, built with Next.js 14, TypeScript, and shadcn/ui.

![KingStock App](https://img.shields.io/badge/Next.js-15.4.5-black?style=for-the-badge&logo=next.js)
![TypeScript](https://img.shields.io/badge/TypeScript-5.0-blue?style=for-the-badge&logo=typescript)
![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-4.0-38B2AC?style=for-the-badge&logo=tailwind-css)
![PWA](https://img.shields.io/badge/PWA-Ready-green?style=for-the-badge)

## ✨ Features

### 📱 **Mobile-First Design**
- Optimized for mobile devices with touch-friendly interface
- Responsive design that works on all screen sizes
- PWA capabilities for app-like experience

### 📊 **Stock Trading Features**
- **SL/PP Analysis**: Support and resistance level tracking
- **Position Management**: Portfolio overview and position tracking
- **Wishlist**: Personal stock watchlist with real-time updates
- **Trade History**: Recent trades and transaction history
- **Profile Management**: User account and settings

### 🎨 **Modern UI/UX**
- Clean, professional interface built with shadcn/ui
- Dark/light theme support
- Smooth animations and transitions
- Intuitive navigation with bottom tab bar

### ⚡ **PWA Capabilities**
- ✅ **Installable**: Can be installed on mobile devices
- ✅ **Offline Support**: Works offline with cached data
- ✅ **App-like Experience**: Full-screen standalone mode
- ✅ **Fast Loading**: Optimized for performance
- ✅ **Push Notifications**: Ready for price alerts

## 🚀 Quick Start

### Prerequisites

- Node.js 18+ 
- npm or yarn

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/kingstock.git
cd kingstock/kings
```

2. **Install dependencies**
```bash
npm install
```

3. **Run the development server**
```bash
npm run dev
```

4. **Open your browser**
Navigate to [http://localhost:3000](http://localhost:3000)

### Building for Production

```bash
npm run build
npm start
```

## 📱 PWA Installation

### On Mobile Devices

1. Open the app in your mobile browser (Chrome/Safari)
2. Tap the "Add to Home Screen" option in your browser menu
3. The app will be installed and accessible from your home screen

### On Desktop

1. Open the app in Chrome/Edge
2. Click the install icon in the address bar
3. The app will be installed and accessible from your desktop

## 🛠 Tech Stack

- **Framework**: Next.js 14 with App Router
- **Language**: TypeScript
- **Styling**: Tailwind CSS
- **UI Components**: shadcn/ui
- **Icons**: Lucide React
- **PWA**: next-pwa
- **Charts**: Recharts (ready for implementation)

## 📁 Project Structure

```
kings/
├── app/
│   ├── globals.css          # Global styles with PWA optimizations
│   ├── layout.tsx           # Root layout with PWA meta tags
│   └── page.tsx            # Main app page with all features
├── components/
│   └── ui/                 # shadcn/ui components
├── public/
│   ├── manifest.json       # PWA manifest
│   ├── sw.js              # Service worker
│   └── icon-*.png         # PWA icons
├── types/
│   └── next-pwa.d.ts      # TypeScript declarations
└── next.config.ts         # Next.js config with PWA settings
```

## 🎯 Key Features

### **SL/PP Analysis**
- Support and resistance level tracking
- Price analysis and recommendations
- Technical indicators

### **Position Management**
- Portfolio overview with total value
- Individual stock positions
- Profit/loss tracking

### **Wishlist**
- Add/remove stocks from watchlist
- Real-time price updates
- Stock search functionality

### **Trade History**
- Recent trading activity
- Transaction details
- Performance tracking

### **Profile**
- User account information
- Trading statistics
- Account settings

## 🔮 Future Enhancements

- [ ] Real-time stock data API integration
- [ ] Interactive stock charts and graphs
- [ ] Advanced portfolio analytics
- [ ] Push notifications for price alerts
- [ ] Social trading features
- [ ] News feed integration
- [ ] Advanced order types
- [ ] Multi-currency support

## 🤝 Contributing

We welcome contributions! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Next.js](https://nextjs.org/) for the amazing React framework
- [shadcn/ui](https://ui.shadcn.com/) for the beautiful UI components
- [Tailwind CSS](https://tailwindcss.com/) for the utility-first CSS framework
- [Lucide](https://lucide.dev/) for the beautiful icons

---

**Made with ❤️ for the trading community**
