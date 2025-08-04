import 'package:flutter/material.dart';
import 'package:ionicons_named/ionicons_named.dart';

/// A utility class that provides string-based access to Ionic icons
/// using the ionicons_named package
class NamedIcons {
  /// Get an icon by name, with optional fallback to Material icon
  static IconData getByName(String name, {IconData? fallback}) {
    final iconData = ionicons[name];
    if (iconData != null) {
      return iconData;
    }
    
    // If icon not found and no fallback specified, use a generic icon
    return fallback ?? Icons.help_outline;
  }
  
  // Navigation icons
  static IconData get home => getByName('home_outline', fallback: Icons.home_outlined);
  static IconData get homeFilled => getByName('home', fallback: Icons.home);
  static IconData get menu => getByName('menu_outline', fallback: Icons.menu);
  static IconData get back => getByName('arrow_back_outline', fallback: Icons.arrow_back);
  static IconData get forward => getByName('arrow_forward_outline', fallback: Icons.arrow_forward);
  
  // Actions
  static IconData get add => getByName('add_outline', fallback: Icons.add);
  static IconData get remove => getByName('remove_outline', fallback: Icons.remove);
  static IconData get close => getByName('close_outline', fallback: Icons.close);
  static IconData get check => getByName('checkmark_outline', fallback: Icons.check);
  static IconData get edit => getByName('create_outline', fallback: Icons.edit);
  static IconData get delete => getByName('trash_outline', fallback: Icons.delete_outline);
  static IconData get search => getByName('search_outline', fallback: Icons.search);
  static IconData get settings => getByName('settings_outline', fallback: Icons.settings);
  static IconData get share => getByName('share_social_outline', fallback: Icons.share);
  static IconData get bookmark => getByName('bookmark_outline', fallback: Icons.bookmark_border);
  static IconData get bookmarkFilled => getByName('bookmark', fallback: Icons.bookmark);
  
  // Media
  static IconData get camera => getByName('camera_outline', fallback: Icons.camera_alt_outlined);
  static IconData get image => getByName('image_outline', fallback: Icons.image_outlined);
  static IconData get play => getByName('play_outline', fallback: Icons.play_arrow);
  static IconData get pause => getByName('pause_outline', fallback: Icons.pause);
  
  // Communication
  static IconData get mail => getByName('mail_outline', fallback: Icons.mail_outline);
  static IconData get chatbubble => getByName('chatbubble_outline', fallback: Icons.chat_bubble_outline);
  static IconData get notification => getByName('notifications_outline', fallback: Icons.notifications_none);
  static IconData get notificationFilled => getByName('notifications', fallback: Icons.notifications);
  
  // User
  static IconData get person => getByName('person_outline', fallback: Icons.person_outline);
  static IconData get personFilled => getByName('person', fallback: Icons.person);
  static IconData get people => getByName('people_outline', fallback: Icons.people_outline);
  
  // Device
  static IconData get wifi => getByName('wifi_outline', fallback: Icons.wifi);
  static IconData get bluetooth => getByName('bluetooth_outline', fallback: Icons.bluetooth);
  static IconData get battery => getByName('battery_half_outline', fallback: Icons.battery_alert);
  
  // Other
  static IconData get heart => getByName('heart_outline', fallback: Icons.favorite_border);
  static IconData get heartFilled => getByName('heart', fallback: Icons.favorite);
  static IconData get star => getByName('star_outline', fallback: Icons.star_border);
  static IconData get starFilled => getByName('star', fallback: Icons.star);
  static IconData get calendar => getByName('calendar_outline', fallback: Icons.calendar_today);
  static IconData get time => getByName('time_outline', fallback: Icons.access_time);
  static IconData get location => getByName('location_outline', fallback: Icons.location_on_outlined);
  static IconData get cart => getByName('cart_outline', fallback: Icons.shopping_cart_outlined);
  static IconData get cartFilled => getByName('cart', fallback: Icons.shopping_cart);
} 