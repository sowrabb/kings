import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

/// A utility class that provides consistent access to icons throughout the app.
/// Temporarily using Material Icons until Ionicons issues are resolved.
class AppIcons {
  // Navigation
  static IconData get home => Ionicons.home_outline;
  static IconData get homeFilled => Ionicons.home;
  static IconData get menu => Ionicons.menu_outline;
  static IconData get back => Ionicons.arrow_back_outline;
  static IconData get forward => Ionicons.arrow_forward_outline;
  
  // Actions
  static IconData get add => Ionicons.add_outline;
  static IconData get remove => Ionicons.remove_outline;
  static IconData get close => Ionicons.close_outline;
  static IconData get check => Ionicons.checkmark_outline;
  static IconData get edit => Ionicons.create_outline;
  static IconData get delete => Ionicons.trash_outline;
  static IconData get search => Ionicons.search_outline;
  static IconData get settings => Ionicons.settings_outline;
  static IconData get share => Ionicons.share_social_outline;
  static IconData get bookmark => Ionicons.bookmark_outline;
  static IconData get bookmarkFilled => Ionicons.bookmark;
  
  // Media
  static IconData get camera => Ionicons.camera_outline;
  static IconData get image => Ionicons.image_outline;
  static IconData get play => Ionicons.play_outline;
  static IconData get pause => Ionicons.pause_outline;
  
  // Communication
  static IconData get mail => Ionicons.mail_outline;
  static IconData get chatbubble => Ionicons.chatbubble_outline;
  static IconData get notification => Ionicons.notifications_outline;
  static IconData get notificationFilled => Ionicons.notifications;
  
  // User
  static IconData get person => Ionicons.person_outline;
  static IconData get personFilled => Ionicons.person;
  static IconData get people => Ionicons.people_outline;
  
  // Device
  static IconData get wifi => Ionicons.wifi_outline;
  static IconData get bluetooth => Ionicons.bluetooth_outline;
  static IconData get battery => Ionicons.battery_half_outline;
  
  // Other
  static IconData get heart => Ionicons.heart_outline;
  static IconData get heartFilled => Ionicons.heart;
  static IconData get star => Ionicons.star_outline;
  static IconData get starFilled => Ionicons.star;
  static IconData get calendar => Ionicons.calendar_outline;
  static IconData get time => Ionicons.time_outline;
  static IconData get location => Ionicons.location_outline;
  static IconData get cart => Ionicons.cart_outline;
  static IconData get cartFilled => Ionicons.cart;
  
  // Fallback method that returns Material icon if Ionicons fails
  static IconData getFallbackIcon(IconData primaryIcon, IconData fallbackIcon) {
    try {
      // Just accessing the codePoint property is enough to test if the icon can be rendered
      primaryIcon.codePoint;
      return primaryIcon;
    } catch (e) {
      debugPrint('Error with icon, using fallback: $e');
      return fallbackIcon;
    }
  }
} 