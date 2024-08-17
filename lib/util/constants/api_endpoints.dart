
class ApiEndPoints {
  static String baseUrl = 'https://fahis.sa/api/1.1/';
  static _AuthEndPoints authEndPoints =  _AuthEndPoints();
  static _UnauthEndPoints unauthEndPoints = _UnauthEndPoints();
}

class _AuthEndPoints {

  //main
  final String requests = 'wf/mobapp_list_requests';
  final String requestSearch = 'wf/mobapp_search_requests';
  final String requestDetails = 'wf/mobapp_get_details';
  final String updateRequestDetails = 'wf/mobapp_post_details';
  final String createInspectionPoints = 'wf/mobapp_create_inspection_point';
  final String getInspectionPoints = 'wf/mobapp_get_inspection_points';
  final String setInsPoint = 'wf/mobapp_set_inspection_point';
  final String getPhoto = 'wf/mobapp_get_inspection_photos';
  final String getPhotoById = 'wf/mobapp_get_inspection_photo_byID';
  final String setPhoto = 'wf/mobapp_set_inspection_photo';
  final String setBodyNotes = 'wf/mobapp_set_body_note_marker';
  final String setOBDCode = 'wf/mobapp_set_obd_code';
  final String uploadObdFile = 'wf/mobapp_create_pdf';
  //config
  final String listVehicleFueltype = 'obj/vehicle_fueltype';
}

class _UnauthEndPoints {

  //main
  final String loginEmail = 'wf/login';
  final String sendOTP = 'wf/mobile_login_otp';
  final String loginByOTP = 'wf/mobile_login';

  //config
  final String makeById = 'obj/vehicle_make/';
  final String modelById = 'obj/vehicle_model/';
  final String listVehicleDrivetrain = 'obj/vehicle_drivetrain';
  final String listVehicleMake = 'obj/vehicle_make';
  final String listVehicleModel = 'obj/vehicle_model';
  final String listVehicleCategory = 'obj/vehicle_category';
  final String listInspectionPoints = 'wf/mobapp_list_inspection_point_details';
  final String listPhotos = 'wf/mobapp_list_inspection_photo_details';
  final String listBodyNotes = 'wf/mobapp_list_body_note_details';
  final String listInspectionTypeCategory = 'wf/mobapp_list_inspection_type_category';
  final String listOBDs = 'wf/mobapp_list_obd_details';
  final String getMakeById = 'obj/vehicle_make/';
  final String getModelById = 'obj/vehicle_model/';

  final String testConnection = '';
}