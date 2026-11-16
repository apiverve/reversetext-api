/// Response models for the Reverse Text API.

/// API Response wrapper.
class ReversetextResponse {
  final String status;
  final dynamic error;
  final ReversetextData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ReversetextResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ReversetextResponse.fromJson(Map<String, dynamic> json) => ReversetextResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ReversetextData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Reverse Text API.

class ReversetextData {
  String? reversed;
  String? original;
  String? mode;
  num? length;

  ReversetextData({
    this.reversed,
    this.original,
    this.mode,
    this.length,
  });

  factory ReversetextData.fromJson(Map<String, dynamic> json) => ReversetextData(
      reversed: json['reversed'],
      original: json['original'],
      mode: json['mode'],
      length: json['length'],
    );
}

class ReversetextRequest {
  String text;
  String? mode;

  ReversetextRequest({
    required this.text,
    this.mode,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
      if (mode != null) 'mode': mode,
    };
}
