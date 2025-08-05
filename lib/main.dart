import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Optimize for PWA - preload critical resources
  if (kIsWeb) {
    // Web-specific optimizations
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kings Trading App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF1E3A8A),
          onPrimary: Color(0xFFFFFFFF),
          primaryContainer: Color(0xFFE8F2FF),
          onPrimaryContainer: Color(0xFF1E3A8A),
          secondary: Color(0xFF10B981),
          onSecondary: Color(0xFFFFFFFF),
          secondaryContainer: Color(0xFFE6F7F0),
          onSecondaryContainer: Color(0xFF10B981),
          tertiary: Color(0xFFF59E0B),
          onTertiary: Color(0xFFFFFFFF),
          tertiaryContainer: Color(0xFFFFF3E0),
          onTertiaryContainer: Color(0xFFF59E0B),
          error: Color(0xFFEF4444),
          onError: Color(0xFFFFFFFF),
          errorContainer: Color(0xFFFEE2E2),
          onErrorContainer: Color(0xFFEF4444),
          surface: Color(0xFFFFFFFF),
          onSurface: Color(0xFF1F2937),
          surfaceVariant: Color(0xFFF8FAFC),
          onSurfaceVariant: Color(0xFF64748B),
          outline: Color(0xFFE2E8F0),
          outlineVariant: Color(0xFFF1F5F9),
          shadow: Color(0xFF000000),
          scrim: Color(0xFF000000),
          inverseSurface: Color(0xFF1F2937),
          onInverseSurface: Color(0xFFFFFFFF),
          inversePrimary: Color(0xFF3B82F6),
          surfaceTint: Color(0xFF1E3A8A),
        ),
        cardTheme: CardTheme(
          elevation: 2,
          shadowColor: const Color(0xFF000000).withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 2,
            shadowColor: const Color(0xFF000000).withOpacity(0.1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF1E3A8A), width: 2),
          ),
          filled: true,
          fillColor: const Color(0xFFF8FAFC),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF3B82F6),
          onPrimary: Color(0xFFFFFFFF),
          primaryContainer: Color(0xFF1E3A8A),
          onPrimaryContainer: Color(0xFFE8F2FF),
          secondary: Color(0xFF10B981),
          onSecondary: Color(0xFFFFFFFF),
          secondaryContainer: Color(0xFF065F46),
          onSecondaryContainer: Color(0xFFE6F7F0),
          tertiary: Color(0xFFF59E0B),
          onTertiary: Color(0xFFFFFFFF),
          tertiaryContainer: Color(0xFF92400E),
          onTertiaryContainer: Color(0xFFFFF3E0),
          error: Color(0xFFEF4444),
          onError: Color(0xFFFFFFFF),
          errorContainer: Color(0xFF7F1D1D),
          onErrorContainer: Color(0xFFFEE2E2),
          surface: Color(0xFF1F2937),
          onSurface: Color(0xFFF9FAFB),
          surfaceVariant: Color(0xFF374151),
          onSurfaceVariant: Color(0xFFD1D5DB),
          outline: Color(0xFF4B5563),
          outlineVariant: Color(0xFF374151),
          shadow: Color(0xFF000000),
          scrim: Color(0xFF000000),
          inverseSurface: Color(0xFFF9FAFB),
          onInverseSurface: Color(0xFF1F2937),
          inversePrimary: Color(0xFF1E3A8A),
          surfaceTint: Color(0xFF3B82F6),
        ),
        cardTheme: CardTheme(
          elevation: 4,
          shadowColor: const Color(0xFF000000).withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 4,
            shadowColor: const Color(0xFF000000).withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF4B5563)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF4B5563)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF3B82F6), width: 2),
          ),
          filled: true,
          fillColor: const Color(0xFF374151),
        ),
      ),
      home: const KingsPage(),
    );
  }
}

class KingsPage extends StatefulWidget {
  const KingsPage({super.key});

  @override
  State<KingsPage> createState() => _KingsPageState();
}

class _KingsPageState extends State<KingsPage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    SLTPTab(),
    PositionTab(),
    WishlistTab(),
    TradesTab(),
    ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kings',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: NavigationBar(
            onDestinationSelected: _onItemTapped,
            selectedIndex: _selectedIndex,
            height: 72,
            elevation: 0,
            backgroundColor: Colors.transparent,
            indicatorColor: Theme.of(context).colorScheme.primaryContainer,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            destinations: const <NavigationDestination>[
              NavigationDestination(
                icon: Icon(Icons.access_time_outlined),
                selectedIcon: Icon(Icons.access_time),
                label: 'SL/TP',
              ),
              NavigationDestination(
                icon: Icon(Icons.pie_chart),
                selectedIcon: Icon(Icons.pie_chart),
                label: 'Position',
              ),
              NavigationDestination(
                icon: Icon(Icons.bookmark_outline),
                selectedIcon: Icon(Icons.bookmark),
                label: 'Wishlist',
              ),
              NavigationDestination(
                icon: Icon(Icons.business_outlined),
                selectedIcon: Icon(Icons.business),
                label: 'Trades',
              ),
              NavigationDestination(
                icon: Icon(Icons.person_outline),
                selectedIcon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SLTPTab extends StatelessWidget {
  const SLTPTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'MEBEN786',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Pending Orders',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'View Your Pending Orders Here',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: _buildStatusCard(context, 'ALL', '0',
                        Theme.of(context).colorScheme.surfaceVariant,
                        Theme.of(context).colorScheme.onSurface),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildStatusCard(context, 'Pending', '0',
                        Theme.of(context).colorScheme.surface,
                        Theme.of(context).colorScheme.onSurfaceVariant),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildStatusCard(context, 'Executed', '0',
                        Theme.of(context).colorScheme.surface,
                        Theme.of(context).colorScheme.tertiary),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildStatusCard(context, 'Rejected', '0',
                        Theme.of(context).colorScheme.surface,
                        Theme.of(context).colorScheme.error),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.description_outlined,
                        size: 64,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No Pending Orders',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Your pending orders will appear here',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusCard(BuildContext context, String title, String count,
      Color backgroundColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            count,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class PositionTab extends StatelessWidget {
  const PositionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Row(
                children: [
                  // Overview Icon
                  Column(
                    children: [
                      Icon(
                        Icons.pie_chart,
                        color: Theme.of(context).colorScheme.primary,
                        size: 24,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Overview',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Title Section
                  Column(
                    children: [
                      Text(
                        'Positions',
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'My Holdings',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Margins Icon
                  Column(
                    children: [
                      Icon(
                        Icons.bar_chart,
                        color: Theme.of(context).colorScheme.primary,
                        size: 24,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Margins',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),
              
              // Live Profit/Loss Section
              Center(
                child: Column(
                  children: [
                    Text(
                      '0',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Live Profit Loss',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              
              // Summary Cards Row
              Row(
                children: [
                  Expanded(
                    child: _buildSummaryCard(
                      context,
                      'Booked',
                      '0',
                      Theme.of(context).colorScheme.error,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildSummaryCard(
                      context,
                      'Balance',
                      '0.0',
                      Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildSummaryCard(
                      context,
                      'Sq. Off All',
                      '',
                      Theme.of(context).colorScheme.error,
                      isAction: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              
              // Empty State
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surfaceVariant,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.warning_amber_rounded,
                          size: 64,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No active positions at the moment.',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Your holdings will appear here once you make some trades!',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryCard(
    BuildContext context,
    String title,
    String value,
    Color textColor, {
    bool isAction = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isAction)
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: textColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.close,
                color: textColor,
                size: 20,
              ),
            )
          else
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          const SizedBox(height: 12),
          Text(
            isAction ? title : value,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class WishlistTab extends StatefulWidget {
  const WishlistTab({super.key});

  @override
  State<WishlistTab> createState() => _WishlistTabState();
}

class _WishlistTabState extends State<WishlistTab> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            // Search and Actions Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Search Bar Row
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Theme.of(context).colorScheme.outline.withOpacity(0.3),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                size: 20,
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Search Script',
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add, color: Theme.of(context).colorScheme.primary),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit, color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Add Fund Button
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Theme.of(context).colorScheme.outline.withOpacity(0.3),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.monetization_on,
                                size: 20,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '0',
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '+ Add Fund',
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Account Details Banner
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'ACCOUNT DETAILS UNDER "PROFILE > DEPOSIT" BEFO',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // Tab Bar
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceVariant,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TabBar(
                controller: _tabController,
                onTap: (index) {
                  setState(() {
                    _selectedTabIndex = index;
                  });
                },
                indicator: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(6),
                ),
                labelColor: Theme.of(context).colorScheme.onPrimary,
                unselectedLabelColor: Theme.of(context).colorScheme.onSurfaceVariant,
                labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
                tabs: const [
                  Tab(text: 'Watchlist 1'),
                  Tab(text: 'Watchlist 2'),
                  Tab(text: 'Watchlist 3'),
                ],
              ),
            ),
            
            // Content Area
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildWatchlistContent(context, _getStockData()),
                  _buildWatchlistContent(context, []),
                  _buildWatchlistContent(context, []),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWatchlistContent(BuildContext context, List<Map<String, dynamic>> stocks) {
    return Column(
      children: [
        // Header Row
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'SCRIPT',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'BID',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Text(
                  'ASK',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        
        // Stock List
        Expanded(
          child: stocks.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bookmark_border,
                        size: 64,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No stocks in watchlist',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Add stocks to your watchlist to track them',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  itemCount: stocks.length,
                  itemBuilder: (context, index) {
                    final stock = stocks[index];
                    return _buildStockRow(context, stock);
                  },
                ),
        ),
      ],
    );
  }

  Widget _buildStockRow(BuildContext context, Map<String, dynamic> stock) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.1),
          ),
        ),
      ),
      child: Row(
        children: [
          // Script Column
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      stock['name'],
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      stock['date'],
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'LTP:${stock['ltp']}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Chng:${stock['change']}(${stock['changePercent']}%)',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'TICK: ${stock['tick']}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          
          // Bid Column
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    stock['bid'].toString(),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'H: ${stock['high']}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          
          // Ask Column
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    stock['ask'].toString(),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'L: ${stock['low']}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> _getStockData() {
    return [
      {
        'name': 'NIFTY',
        'date': '28-Aug',
        'ltp': '24803',
        'change': '175.80',
        'changePercent': '0.71',
        'tick': '15:30:01',
        'bid': '24800',
        'ask': '24803.1',
        'high': '24812.9',
        'low': '24630',
      },
      {
        'name': 'ADANIENT',
        'date': '28-Aug',
        'ltp': '2373.5',
        'change': '17.10',
        'changePercent': '0.73',
        'tick': '15:30:05',
        'bid': '2372.5',
        'ask': '2374.9',
        'high': '2383.8',
        'low': '2343.8',
      },
      {
        'name': 'AMBUJACEM',
        'date': '28-Aug',
        'ltp': '608.9',
        'change': '1.55',
        'changePercent': '0.26',
        'tick': '15:30:05',
        'bid': '608.1',
        'ask': '608.9',
        'high': '616.45',
        'low': '606.25',
      },
      {
        'name': 'ANGELONE',
        'date': '28-Aug',
        'ltp': '2640.9',
        'change': '66.60',
        'changePercent': '2.59',
        'tick': '15:29:59',
        'bid': '2637.3',
        'ask': '2641',
        'high': '2647',
        'low': '2560.5',
      },
      {
        'name': 'ASIANPAINT',
        'date': '28-Aug',
        'ltp': '2457',
        'change': '19.40',
        'changePercent': '0.80',
        'tick': '15:30:05',
        'bid': '2456.6',
        'ask': '2457.9',
        'high': '2472',
        'low': '2445',
      },
      {
        'name': 'BAJAJ-AUTO',
        'date': '28-Aug',
        'ltp': '8223',
        'change': '162.50',
        'changePercent': '2.02',
        'tick': '15:30:05',
        'bid': '8222',
        'ask': '8230',
        'high': '8246',
        'low': '8060.5',
      },
      {
        'name': 'BAJFINANCE',
        'date': '28-Aug',
        'ltp': '889.2',
        'change': '5.20',
        'changePercent': '0.59',
        'tick': '15:30:05',
        'bid': '889.2',
        'ask': '890',
        'high': '895.5',
        'low': '880.1',
      },
    ];
  }
}

class TradesTab extends StatelessWidget {
  const TradesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Row(
                children: [
                  Text(
                    'MEBEN786',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              
              // Title Section
              Text(
                'Pending Orders',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'View Your Pending Orders Here',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 24),
              
              // Status Cards Row
              Row(
                children: [
                  Expanded(
                    child: _buildStatusCard(
                      context,
                      'ALL',
                      '0',
                      Theme.of(context).colorScheme.surfaceVariant,
                      Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildStatusCard(
                      context,
                      'Pending',
                      '0',
                      Theme.of(context).colorScheme.surface,
                      Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildStatusCard(
                      context,
                      'Executed',
                      '0',
                      Theme.of(context).colorScheme.surface,
                      Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildStatusCard(
                      context,
                      'Rejected',
                      '0',
                      Theme.of(context).colorScheme.surface,
                      Theme.of(context).colorScheme.error,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              
              // Empty State
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.description_outlined,
                        size: 64,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No Pending Orders',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Your pending orders will appear here',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusCard(
    BuildContext context,
    String title,
    String count,
    Color backgroundColor,
    Color textColor,
  ) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 12),
          Text(
            count,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            // Header Section with Dark Background
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  // Top Row - User Info and Actions
                  Row(
                    children: [
                      // User Info
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            child: Icon(
                              Icons.person,
                              color: Theme.of(context).colorScheme.onPrimary,
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'MEBEN786',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.onSurface,
                                ),
                              ),
                              Text(
                                'Username',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      // App Actions
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.refresh,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          Text(
                            'Reload App',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.logout,
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                          Text(
                            'Logout',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  
                  // IP Address
                  Text(
                    '152.59.199.232',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // App Version
                  Text(
                    'App Version',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 24),
                  
                  // Available Balance
                  Text(
                    'Available Balance',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.monetization_on,
                        color: Theme.of(context).colorScheme.primary,
                        size: 32,
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        Icons.monetization_on,
                        color: Theme.of(context).colorScheme.primary,
                        size: 32,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        '0',
                        style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
                                 // Main Content Area (White Card)
                     Expanded(
                       child: Container(
                         margin: const EdgeInsets.all(16.0),
                         decoration: BoxDecoration(
                           color: Theme.of(context).colorScheme.surface,
                           borderRadius: BorderRadius.circular(16),
                           boxShadow: [
                             BoxShadow(
                               color: Theme.of(context).colorScheme.shadow.withOpacity(0.1),
                               blurRadius: 10,
                               offset: const Offset(0, 2),
                             ),
                           ],
                         ),
                         child: SingleChildScrollView(
                           padding: const EdgeInsets.all(20.0),
                           child: Column(
                             children: [
                               // Top Row of Actions
                               Row(
                                 children: [
                                   Expanded(
                                     child: _buildActionButton(
                                       context,
                                       Icons.flash_on,
                                       'Deposit',
                                       Theme.of(context).colorScheme.primary,
                                     ),
                                   ),
                                   const SizedBox(width: 12),
                                   Expanded(
                                     child: _buildActionButton(
                                       context,
                                       Icons.handshake,
                                       'Withdraw',
                                       Theme.of(context).colorScheme.tertiary,
                                     ),
                                   ),
                                   const SizedBox(width: 12),
                                   Expanded(
                                     child: _buildActionButton(
                                       context,
                                       Icons.history,
                                       'History',
                                       Theme.of(context).colorScheme.secondary,
                                     ),
                                   ),
                                 ],
                               ),
                               const SizedBox(height: 24),
                               
                               // Grid of Account Options
                               GridView.count(
                                 shrinkWrap: true,
                                 physics: const NeverScrollableScrollPhysics(),
                                 crossAxisCount: 3,
                                 crossAxisSpacing: 12,
                                 mainAxisSpacing: 12,
                                 children: [
                                   _buildGridItem(
                                     context,
                                     Icons.person,
                                     'My Account',
                                     [Colors.orange, Colors.blue],
                                   ),
                                   _buildGridItem(
                                     context,
                                     Icons.cancel,
                                     'Rejection Logs',
                                     [Colors.red],
                                   ),
                                   _buildGridItem(
                                     context,
                                     Icons.description,
                                     'Bill Download',
                                     [Colors.green],
                                   ),
                                   _buildGridItem(
                                     context,
                                     Icons.lock,
                                     'Change Password',
                                     [Colors.blue, Colors.yellow],
                                   ),
                                   _buildGridItem(
                                     context,
                                     Icons.assignment,
                                     'View App Terms',
                                     [Colors.green],
                                   ),
                                   _buildGridItem(
                                     context,
                                     Icons.support_agent,
                                     'Contact Us',
                                     [Colors.green],
                                   ),
                                 ],
                               ),
                               const SizedBox(height: 20),
                             ],
                           ),
                         ),
                       ),
                     ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    IconData icon,
    String label,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: color.withOpacity(0.2),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: color,
              size: 24,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(
    BuildContext context,
    IconData icon,
    String label,
    List<Color> colors,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: colors.first.withOpacity(0.15),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: colors.first,
              size: 28,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
