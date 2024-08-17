
class EPricingCalculator{

  /// -- Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate ;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }
  /// -- Calculate tax
  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Lookup the tax rate for the given location from a tax rate database or API.
    // Return the appropriate tax rate.
    return 0.10; // Example tax rate of 10%
  }

  static double getShippingCost(String location) {
    // Lookup the shipping cost for the given location using a shipping rate API.
    // Calculate the shipping cost based on various factors like distance, weight, etc.
    return 5.00; // Example shipping rate of $5
  }
}

class GeneralSettings{
  String platformName = '';
  String domainName = '';
  String address = '';
  List<String> connectPhoneNumbers = [];
  Map<String,dynamic> links = {
    'facebook': 'facebook.com',
    'instagram': 'facebook.com',
    'twitter': 'facebook.com',
    'whatsApp': 'facebook.com',
    'custom_one': {
      'label': 'facebook.com',
    },
    'custom_two': {
      'label': 'facebook.com',
    },
    'custom_three': {
      'label': 'facebook.com',
    },
  };
  Map<String,dynamic> currencies = {
    'default': {
      'name': 'ريال سعودي',
      'symbol': 'رس',
      'letters': 'رس',
    },
    'extra': [
      {
        'name': 'ريال يمني',
        'symbol': 'ري',
        'letters': 'ري',
        'convert_rate': 140
      },
      {
        'name': 'Dollar',
        'symbol': '\$',
        'letters': 'USD',
        'convert_rate': .28
      },
    ],
  };
  Map<String,dynamic> languages = {
    'default': {
      'name': 'عربي',
      'rtl': true,
      'symbol': 'ar',
      'letters': 'ع',
      'flag': 'flags/url',
    },
    'extra': [
      {
        'name': 'English',
        'rtl': false,
        'symbol': 'en',
        'letters': 'EN',
        'flag': 'flags/url',
      },
      {
        'name': 'Turkish',
        'rtl': false,
        'symbol': 'tr',
        'letters': 'TR',
        'flag': 'flags/url',
      },
    ],
  };
  Map<String,dynamic> devAccounts = {
    'firebase': {},
    'others': {},
  };
  bool isMultiMode = false;
  bool isHasShippingService = true;
  bool isShippingCostDynamic = false;
  double storesPercentageFees = .10;
  double taxPercentageFees = .15;
}

/// www.e_ma7ly.com // company website & service
/// www.doc.e_ma7ly.com // documents
/// www.store.e_ma7ly.com // where published themes & widgets
/// www.dev.e_ma7ly.com // where programmer accounts and publish themes & widgets
/// www.business.e_ma7ly.com //
/// www.payment.e_ma7ly.com // payment service
/// www.payment.e_ma7ly.com/api // payment service
/// www.shipping.e_ma7ly.com // shipping service
/// www.shipping.e_ma7ly.com/api // shipping service
/// www.e_ma7ly.co // general e-commerce platform
/// www.e_ma7ly.co/api // general e-commerce platform
/// www.[ma7al_name].e_ma7ly.co/admin // store dashboard
/// www.[ma7al_name].e_ma7ly.co // store
/// www.[ma7al_name].e_ma7ly.co/api // store
