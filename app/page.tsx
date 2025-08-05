'use client';

import { useState } from 'react';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { 
  TrendingUp, 
  TrendingDown, 
  Search, 
  Star, 
  Activity
} from 'lucide-react';

interface Stock {
  symbol: string;
  name: string;
  price: number;
  change: number;
  changePercent: number;
  volume: number;
  marketCap: number;
}

const mockStocks: Stock[] = [
  {
    symbol: 'AAPL',
    name: 'Apple Inc.',
    price: 175.43,
    change: 2.15,
    changePercent: 1.24,
    volume: 45678900,
    marketCap: 2750000000000
  },
  {
    symbol: 'GOOGL',
    name: 'Alphabet Inc.',
    price: 142.56,
    change: -1.23,
    changePercent: -0.85,
    volume: 23456700,
    marketCap: 1800000000000
  },
  {
    symbol: 'MSFT',
    name: 'Microsoft Corporation',
    price: 378.85,
    change: 5.67,
    changePercent: 1.52,
    volume: 34567800,
    marketCap: 2800000000000
  },
  {
    symbol: 'TSLA',
    name: 'Tesla, Inc.',
    price: 248.42,
    change: -8.76,
    changePercent: -3.41,
    volume: 56789000,
    marketCap: 790000000000
  },
  {
    symbol: 'AMZN',
    name: 'Amazon.com, Inc.',
    price: 145.24,
    change: 3.21,
    changePercent: 2.26,
    volume: 67890100,
    marketCap: 1500000000000
  }
];

export default function HomePage() {
  const [stocks] = useState<Stock[]>(mockStocks);
  const [searchTerm, setSearchTerm] = useState('');
  const [watchlist, setWatchlist] = useState<string[]>([]);
  const [activeTab, setActiveTab] = useState<'slpp' | 'position' | 'wishlist' | 'trades' | 'profile'>('slpp');

  const toggleWatchlist = (symbol: string) => {
    setWatchlist(prev => 
      prev.includes(symbol) 
        ? prev.filter(s => s !== symbol)
        : [...prev, symbol]
    );
  };

  return (
    <div className="min-h-screen bg-background">
      {/* Header */}
      <div className="sticky top-0 z-50 bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60 border-b">
        <div className="px-4 py-3">
          <div className="flex items-center justify-between">
            <div>
              <h1 className="text-2xl font-bold">KingStock</h1>
              <p className="text-base text-muted-foreground">Stock Tracker</p>
            </div>
            <Button variant="outline" size="sm">
              <Activity className="h-4 w-4 mr-2" />
              Live
            </Button>
          </div>
        </div>
      </div>

      {/* Search Bar */}
      <div className="px-4 py-3 border-b">
        <div className="relative">
          <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 h-4 w-4 text-muted-foreground" />
                     <Input
             placeholder="Search stocks..."
             value={searchTerm}
             onChange={(e: React.ChangeEvent<HTMLInputElement>) => setSearchTerm(e.target.value)}
             className="pl-10"
           />
        </div>
      </div>

      {/* Content Header */}
      <div className="px-4 py-3 border-b bg-white dark:bg-gray-900">
        <h2 className="text-sm font-semibold text-gray-900 dark:text-white">
          {activeTab === 'slpp' && 'SL/PP'}
          {activeTab === 'position' && 'Position'}
          {activeTab === 'wishlist' && 'Wishlist'}
          {activeTab === 'trades' && 'Trades'}
          {activeTab === 'profile' && 'Profile'}
        </h2>
      </div>

      {/* Content */}
              <div className="flex-1 overflow-y-auto">
          <div className="p-6 space-y-6">
                      {activeTab === 'slpp' && (
              <div className="space-y-6">
              <Card>
                <CardHeader className="pb-3">
                  <CardTitle className="text-sm">SL/PP Analysis</CardTitle>
                </CardHeader>
                                  <CardContent>
                    <div className="space-y-6">
                      <div className="grid grid-cols-2 gap-4">
                        <div className="text-center p-4 bg-blue-50 dark:bg-blue-900/20 rounded-lg">
                          <div className="text-sm font-bold text-blue-600 mb-1">Support Level</div>
                          <div className="text-xl font-bold text-gray-900 dark:text-white mb-1">$150.25</div>
                          <div className="text-xs text-gray-600 dark:text-gray-400">Strong Support</div>
                        </div>
                        <div className="text-center p-4 bg-red-50 dark:bg-red-900/20 rounded-lg">
                          <div className="text-sm font-bold text-red-600 mb-1">Resistance Level</div>
                          <div className="text-xl font-bold text-gray-900 dark:text-white mb-1">$175.80</div>
                          <div className="text-xs text-gray-600 dark:text-gray-400">Key Resistance</div>
                        </div>
                      </div>
                      <div className="p-4 bg-gray-50 dark:bg-gray-800 rounded-lg">
                        <h3 className="text-sm font-semibold mb-2 text-gray-900 dark:text-white">Current Position</h3>
                        <p className="text-xs text-gray-600 dark:text-gray-400">Price is currently testing the support level. Consider buying at support and selling at resistance.</p>
                      </div>
                    </div>
                </CardContent>
              </Card>
            </div>
          )}

                      {activeTab === 'position' && (
              <div className="space-y-6">
              <Card>
                <CardHeader className="pb-3">
                  <CardTitle className="text-sm">Position Overview</CardTitle>
                </CardHeader>
                                  <CardContent>
                    <div className="space-y-6">
                      <div className="p-4 bg-green-50 dark:bg-green-900/20 rounded-lg">
                        <div className="flex items-center justify-between">
                          <div>
                            <h3 className="text-sm font-semibold text-gray-900 dark:text-white mb-1">Total Portfolio Value</h3>
                            <p className="text-xl font-bold text-green-600">$25,430.50</p>
                          </div>
                          <div className="text-right">
                            <div className="text-sm font-bold text-green-600">+$1,245.30</div>
                            <div className="text-xs text-gray-600 dark:text-gray-400">+5.15%</div>
                          </div>
                        </div>
                      </div>
                      <div className="space-y-3">
                        <div className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-800 rounded-lg">
                          <div>
                            <h4 className="text-sm font-semibold text-gray-900 dark:text-white mb-1">AAPL</h4>
                            <p className="text-xs text-gray-600 dark:text-gray-400">10 shares</p>
                          </div>
                          <div className="text-right">
                            <div className="text-sm font-semibold text-gray-900 dark:text-white">$1,754.30</div>
                            <div className="text-xs text-green-600">+$215.40</div>
                          </div>
                        </div>
                        <div className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-800 rounded-lg">
                          <div>
                            <h4 className="text-sm font-semibold text-gray-900 dark:text-white mb-1">TSLA</h4>
                            <p className="text-xs text-gray-600 dark:text-gray-400">5 shares</p>
                          </div>
                          <div className="text-right">
                            <div className="text-sm font-semibold text-gray-900 dark:text-white">$1,242.10</div>
                            <div className="text-xs text-red-600">-$43.80</div>
                          </div>
                        </div>
                      </div>
                    </div>
                </CardContent>
              </Card>
            </div>
          )}

                      {activeTab === 'wishlist' && (
              <div className="space-y-6">
              <Card>
                <CardHeader className="pb-3">
                  <CardTitle className="text-sm">Your Wishlist</CardTitle>
                </CardHeader>
                                  <CardContent>
                    <div className="space-y-4">
                      {watchlist.length === 0 ? (
                        <div className="text-center py-8">
                          <Star className="h-12 w-12 text-gray-400 mx-auto mb-4" />
                          <h3 className="text-sm font-semibold mb-2 text-gray-900 dark:text-white">No stocks in wishlist</h3>
                          <p className="text-xs text-gray-600 dark:text-gray-400">Add stocks to your wishlist to track them here</p>
                        </div>
                      ) : (
                        stocks
                          .filter(stock => watchlist.includes(stock.symbol))
                          .map((stock) => (
                            <div key={stock.symbol} className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-800 rounded-lg">
                              <div className="flex-1">
                                <div className="flex items-center gap-2 mb-1">
                                  <h3 className="text-sm font-semibold text-gray-900 dark:text-white">{stock.symbol}</h3>
                                  <button
                                    onClick={() => toggleWatchlist(stock.symbol)}
                                    className="text-yellow-500"
                                  >
                                    <Star className="h-4 w-4 fill-current" />
                                  </button>
                                </div>
                                <p className="text-xs text-gray-600 dark:text-gray-400">{stock.name}</p>
                              </div>
                              <div className="text-right">
                                <div className="text-sm font-semibold text-gray-900 dark:text-white mb-1">${stock.price.toFixed(2)}</div>
                                <div className={`text-xs flex items-center gap-1 ${
                                  stock.change >= 0 ? 'text-green-600' : 'text-red-600'
                                }`}>
                                  {stock.change >= 0 ? (
                                    <TrendingUp className="h-3 w-3" />
                                  ) : (
                                    <TrendingDown className="h-3 w-3" />
                                  )}
                                  {stock.change >= 0 ? '+' : ''}{stock.change.toFixed(2)} ({stock.changePercent.toFixed(2)}%)
                                </div>
                              </div>
                            </div>
                          ))
                      )}
                    </div>
                </CardContent>
              </Card>
            </div>
          )}

                      {activeTab === 'trades' && (
              <div className="space-y-6">
              <Card>
                <CardHeader className="pb-3">
                  <CardTitle className="text-sm">Recent Trades</CardTitle>
                </CardHeader>
                                  <CardContent>
                    <div className="space-y-6">
                      <div className="p-4 bg-blue-50 dark:bg-blue-900/20 rounded-lg">
                        <h3 className="text-sm font-semibold text-gray-900 dark:text-white mb-2">Today&apos;s Activity</h3>
                        <p className="text-xs text-gray-600 dark:text-gray-400">Track your recent trading activity and performance.</p>
                      </div>
                      <div className="space-y-3">
                        <div className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-800 rounded-lg">
                          <div>
                            <h4 className="text-sm font-semibold text-gray-900 dark:text-white mb-1">Bought AAPL</h4>
                            <p className="text-xs text-gray-600 dark:text-gray-400">10 shares @ $175.43</p>
                          </div>
                          <div className="text-right">
                            <div className="text-xs text-gray-600 dark:text-gray-400">2:30 PM</div>
                            <div className="text-xs text-green-600">+$215.40</div>
                          </div>
                        </div>
                        <div className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-800 rounded-lg">
                          <div>
                            <h4 className="text-sm font-semibold text-gray-900 dark:text-white mb-1">Sold TSLA</h4>
                            <p className="text-xs text-gray-600 dark:text-gray-400">5 shares @ $248.42</p>
                          </div>
                          <div className="text-right">
                            <div className="text-xs text-gray-600 dark:text-gray-400">11:15 AM</div>
                            <div className="text-xs text-red-600">-$43.80</div>
                          </div>
                        </div>
                      </div>
                    </div>
                </CardContent>
              </Card>
            </div>
          )}

                      {activeTab === 'profile' && (
              <div className="space-y-6">
              <Card>
                <CardHeader className="pb-3">
                  <CardTitle className="text-sm">Profile</CardTitle>
                </CardHeader>
                                  <CardContent>
                    <div className="space-y-6">
                      <div className="text-center">
                        <div className="w-16 h-16 bg-purple-500 rounded-full mx-auto mb-4 flex items-center justify-center">
                          <span className="text-xl font-bold text-white">JS</span>
                        </div>
                        <h3 className="text-sm font-semibold text-gray-900 dark:text-white mb-1">John Smith</h3>
                        <p className="text-xs text-gray-600 dark:text-gray-400">Premium Member</p>
                      </div>
                      <div className="space-y-3">
                        <div className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-800 rounded-lg">
                          <span className="text-xs text-gray-900 dark:text-white">Account Type</span>
                          <span className="text-xs text-gray-600 dark:text-gray-400">Premium</span>
                        </div>
                        <div className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-800 rounded-lg">
                          <span className="text-xs text-gray-900 dark:text-white">Member Since</span>
                          <span className="text-xs text-gray-600 dark:text-gray-400">Jan 2024</span>
                        </div>
                        <div className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-800 rounded-lg">
                          <span className="text-xs text-gray-900 dark:text-white">Total Trades</span>
                          <span className="text-xs text-gray-600 dark:text-gray-400">156</span>
                        </div>
                      </div>
                    </div>
                </CardContent>
              </Card>
            </div>
          )}
        </div>
      </div>

      {/* Bottom Navigation */}
      <div className="fixed bottom-0 left-0 right-0 bg-gray-100 dark:bg-gray-800">
        <div className="flex justify-around py-3 px-4">
          <button 
            onClick={() => setActiveTab('slpp')}
            className="flex flex-col items-center space-y-2"
          >
            <div className={`w-12 h-8 flex items-center justify-center rounded-full ${activeTab === 'slpp' ? 'bg-purple-200' : ''}`}>
              <svg className={`w-6 h-6 ${activeTab === 'slpp' ? 'text-gray-700' : 'text-gray-600'}`} fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
            </div>
            <span className={`text-xs ${activeTab === 'slpp' ? 'text-gray-700 font-medium' : 'text-gray-600'}`}>SL/PP</span>
          </button>
          
          <button 
            onClick={() => setActiveTab('position')}
            className="flex flex-col items-center space-y-2"
          >
            <div className={`w-12 h-8 flex items-center justify-center rounded-full ${activeTab === 'position' ? 'bg-purple-200' : ''}`}>
              <svg className={`w-6 h-6 ${activeTab === 'position' ? 'text-gray-700' : 'text-gray-600'}`} fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z" />
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z" />
              </svg>
            </div>
            <span className={`text-xs ${activeTab === 'position' ? 'text-gray-700 font-medium' : 'text-gray-600'}`}>Position</span>
          </button>
          
          <button 
            onClick={() => setActiveTab('wishlist')}
            className="flex flex-col items-center space-y-2"
          >
            <div className={`w-12 h-8 flex items-center justify-center rounded-full ${activeTab === 'wishlist' ? 'bg-purple-200' : ''}`}>
              <svg className={`w-6 h-6 ${activeTab === 'wishlist' ? 'text-gray-700' : 'text-gray-600'}`} fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
              </svg>
            </div>
            <span className={`text-xs ${activeTab === 'wishlist' ? 'text-gray-700 font-medium' : 'text-gray-600'}`}>Wishlist</span>
          </button>
          
          <button 
            onClick={() => setActiveTab('trades')}
            className="flex flex-col items-center space-y-2"
          >
            <div className={`w-12 h-8 flex items-center justify-center rounded-full ${activeTab === 'trades' ? 'bg-purple-200' : ''}`}>
              <svg className={`w-6 h-6 ${activeTab === 'trades' ? 'text-gray-700' : 'text-gray-600'}`} fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2-2v2m8 0V6a2 2 0 012 2v6a2 2 0 01-2 2H8a2 2 0 01-2-2V8a2 2 0 012-2V6" />
              </svg>
            </div>
            <span className={`text-xs ${activeTab === 'trades' ? 'text-gray-700 font-medium' : 'text-gray-600'}`}>Trades</span>
          </button>
          
          <button 
            onClick={() => setActiveTab('profile')}
            className="flex flex-col items-center space-y-2"
          >
            <div className={`w-12 h-8 flex items-center justify-center rounded-full ${activeTab === 'profile' ? 'bg-purple-200' : ''}`}>
              <svg className={`w-6 h-6 ${activeTab === 'profile' ? 'text-gray-700' : 'text-gray-600'}`} fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
              </svg>
            </div>
            <span className={`text-xs ${activeTab === 'profile' ? 'text-gray-700 font-medium' : 'text-gray-600'}`}>Profile</span>
          </button>
        </div>
      </div>
    </div>
  );
}
