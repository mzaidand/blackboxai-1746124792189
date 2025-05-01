class AppConstants {
  // API Base URL
  static const String apiBaseUrl = 'http://localhost:8000/api';

  // API Endpoints
  static const String loginEndpoint = '/login';
  static const String registerEndpoint = '/register';
  static const String logoutEndpoint = '/logout';
  static const String profileEndpoint = '/user';
  static const String studiosEndpoint = '/studios';
  static const String bookingsEndpoint = '/bookings';
  static const String reviewsEndpoint = '/reviews';

  // Storage Keys
  static const String tokenKey = 'auth_token';
  static const String userKey = 'user_data';
  static const String themeKey = 'app_theme';
  static const String languageKey = 'app_language';

  // Validation Rules
  static const int minPasswordLength = 6;
  static const int maxNameLength = 50;
  static const int maxDescriptionLength = 500;
  static const int maxReviewLength = 1000;
  static const int maxPhoneLength = 15;

  // Image URLs
  static const String defaultAvatarUrl = 'https://images.pexels.com/photos/1699419/pexels-photo-1699419.jpeg';
  static const String defaultStudioUrl = 'https://images.pexels.com/photos/164938/pexels-photo-164938.jpeg';
  static const String defaultBannerUrl = 'https://images.pexels.com/photos/995301/pexels-photo-995301.jpeg';

  // Room Types
  static const Map<String, String> roomTypes = {
    'regular': 'Regular',
    'vip': 'VIP',
    'vvip': 'VVIP',
  };

  // Booking Status
  static const Map<String, String> bookingStatus = {
    'pending': 'Pending',
    'confirmed': 'Confirmed',
    'cancelled': 'Cancelled',
    'completed': 'Completed',
  };

  // Payment Methods
  static const Map<String, String> paymentMethods = {
    'bank_transfer': 'Bank Transfer',
    'credit_card': 'Credit Card',
    'e_wallet': 'E-Wallet',
    'virtual_account': 'Virtual Account',
  };

  // Cities
  static const List<String> cities = [
    'Jakarta',
    'Bandung',
    'Surabaya',
    'Yogyakarta',
    'Medan',
    'Semarang',
    'Malang',
    'Bali',
  ];

  // Facilities
  static const Map<String, String> facilities = {
    'drums': 'Drums',
    'guitar_amp': 'Guitar Amplifier',
    'bass_amp': 'Bass Amplifier',
    'microphone': 'Microphone',
    'piano': 'Piano',
    'recording': 'Recording Equipment',
    'mixing': 'Mixing Console',
    'isolation': 'Sound Isolation',
    'ac': 'Air Conditioning',
    'waiting_room': 'Waiting Room',
    'parking': 'Parking',
    'wifi': 'WiFi',
  };

  // Time Slots
  static const List<String> timeSlots = [
    '09:00',
    '10:00',
    '11:00',
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
    '20:00',
    '21:00',
    '22:00',
  ];

  // Error Messages
  static const String networkError = 'Network error. Please check your internet connection.';
  static const String serverError = 'Server error. Please try again later.';
  static const String unauthorizedError = 'Unauthorized. Please login again.';
  static const String validationError = 'Please check your input and try again.';
  static const String bookingError = 'Unable to process booking. Please try again.';
  static const String paymentError = 'Payment processing failed. Please try again.';

  // Success Messages
  static const String loginSuccess = 'Login successful!';
  static const String registerSuccess = 'Registration successful!';
  static const String bookingSuccess = 'Booking confirmed successfully!';
  static const String reviewSuccess = 'Review submitted successfully!';
  static const String profileUpdateSuccess = 'Profile updated successfully!';

  // Animation Durations
  static const Duration shortAnimation = Duration(milliseconds: 200);
  static const Duration mediumAnimation = Duration(milliseconds: 350);
  static const Duration longAnimation = Duration(milliseconds: 500);

  // Pagination
  static const int itemsPerPage = 10;
  static const int maxImageUpload = 5;
  static const int maxBookingHours = 12;
  static const int minBookingHours = 1;

  // Price Range
  static const double minPrice = 0;
  static const double maxPrice = 1000000;
  static const double priceStep = 50000;

  // Rating
  static const double minRating = 1;
  static const double maxRating = 5;
  static const int maxReviewImages = 3;

  // Date Format Patterns
  static const String datePattern = 'yyyy-MM-dd';
  static const String timePattern = 'HH:mm';
  static const String dateTimePattern = 'yyyy-MM-dd HH:mm';
  static const String displayDatePattern = 'EEEE, d MMMM yyyy';
  static const String displayTimePattern = 'HH:mm';
}
