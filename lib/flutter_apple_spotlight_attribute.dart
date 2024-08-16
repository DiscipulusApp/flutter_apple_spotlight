import 'dart:typed_data';

import 'package:flutter_apple_spotlight/flutter_apple_spotlight_uttype.dart';

class CoreSpotlightItemAttributeSet {
  /// Audiences for which the item is intended or useful.
  List<String>? audiences;

  /// A description of the item’s content.
  String? contentDescription;

  /// The name of the app that created the content.
  String? creator;

  /// The names of the apps that converted the original content into a PDF stream.
  List<String>? encodingApplications;

  /// The size of the document file.
  int? fileSize;

  /// An array of font names the document uses.
  List<String>? fontNames;

  /// A formal identifier that references the document the item represents.
  String? identifier;

  /// A description of the kind of document the item represents.
  String? kind;

  /// The number of pages in the document.
  int? pageCount;

  /// The height of the document page, in points (72 points per inch).
  int? pageHeight;

  /// The width of the document page, in points (72 points per inch).
  int? pageWidth;

  /// The security method (a type of encryption) that protects the document file.
  String? securityMethod;

  /// The subject of the document.
  String? subject;

  /// The theme of the document.
  String? theme;

  /// An array of localized strings that represent alternate display names for the item.
  List<String>? alternateNames;

  /// The uniform type identifier (UTI) of the item.
  UTType contentType;

  /// An attribute type that identifies a custom hierarchy of types to describe the attributes of your item.
  List<String>? contentTypeTree;

  /// The file URL of the content to index.
  Uri? contentURL;

  /// The local file URL of the thumbnail image for the item when Dark Mode is active.
  Uri? darkThumbnailURL;

  /// A localized string that contains the name of the item, suitable to display in the user interface.
  String? displayName;

  /// An array of keywords associated with the item.
  List<String>? keywords;

  /// The date on which the last metadata attribute was changed.
  DateTime? metadataModificationDate;

  /// The complete path to the item.
  String? path;

  /// A number that indicates the relative importance of the item among other items from the app.
  int? rankingHint;

  /// The unique identifier for the item to which the activity is related.
  String? relatedUniqueIdentifier;

  /// Image data that represents the thumbnail of the item.
  Uint8List? thumbnailData;

  /// The local file URL of the thumbnail image for the item.
  Uri? thumbnailURL;

  /// The title of the item.
  String title;

  /// An identifier that represents the domain or owner of the item.
  String? domainIdentifier;

  /// The unique identifier for the item to which the activity is related, but not linked.
  String? weakRelatedUniqueIdentifier;

  /// A value that indicates the user created the item.
  int? userCreated;

  /// A value that indicates the user selected the item.
  int? userCurated;

  /// A value that indicates the user purchased or owns the item.
  int? userOwned;

  /// A value that indicates if the event covers an entire day.
  int? allDay;

  /// The date on which the item was completed.
  DateTime? completionDate;

  /// The date on which the item is due.
  DateTime? dueDate;

  /// The end date for the item.
  DateTime? endDate;

  /// An array of important dates associated with the item.
  List<DateTime>? importantDates;

  /// The start date for the item.
  DateTime? startDate;

  /// The altitude of the item in meters above sea level, expressed using the WGS84 datum.
  int? altitude;

  /// The city of the item’s origin according to guidelines that the provider establishes.
  String? city;

  /// The full, publishable name of the country or region in which the intellectual property of the item was created, according to guidelines the provider establishes.
  String? country;

  /// Information about the GPS area.
  String? gpsAreaInformation;

  /// The GPS dilution of precision value.
  int? gpsdop;

  /// The date and time related to the GPS value.
  DateTime? gpsDateStamp;

  /// The bearing to the destination point.
  int? gpsDestBearing;

  /// The distance to the destination point.
  int? gpsDestDistance;

  /// The latitude of the destination point.
  int? gpsDestLatitude;

  /// The longitude of the destination point.
  int? gpsDestLongitude;

  /// The differential correction applied to the GPS receiver.
  int? gpsDifferental;

  /// The geodetic data that the GPS receiver uses.
  String? gpsMapDatum;

  /// The measurement precision mode in use by the GPS receiver.
  String? gpsMeasureMode;

  /// The location finding method that the GPS receiver uses.
  String? gpsProcessingMethod;

  /// The status of the GPS receiver.
  String? gpsStatus;

  /// The direction of travel of the item in degrees from true north.
  int? gpsTrack;

  /// A publishable string that provides a synopsis of the contents of the item.
  String? headline;

  /// The direction of the item’s image in degrees from true north.
  int? imageDirection;

  /// Instructions that concern the use of the item, such as an embargo or warning.
  String? instructions;

  /// The latitude of the item, in degrees north of the equator, expressed using the WGS84 datum.
  int? latitude;

  /// The longitude of the item, in degrees east of the prime meridian, expressed using the WGS84 datum.
  int? longitude;

  /// The name of the location or point of interest associated with the item.
  String? namedLocation;

  /// The speed of the item, in kilometers per hour.
  int? speed;

  /// The province or state of origin according to guidelines the provider establishes.
  String? stateOrProvince;

  /// The timestamp on the item.
  DateTime? timestamp;

  /// The fully formatted address of the item, received from MapKit.
  String? fullyFormattedAddress;

  /// The postal code for the item according to guidelines the provider establishes.
  String? postalCode;

  /// The sublocation, such as a street number, for the item according to guidelines the provider establishes.
  String? subThoroughfare;

  /// The thoroughfare, such as a street name, associated with the location for the item according to guidelines the provider establishes.
  String? thoroughfare;

  /// A comment related to the media file.
  String? comment;

  /// The creation date of an edited or optimized version of the song or composition.
  DateTime? contentCreationDate;

  /// The date on which the contents of the file was last modified.
  DateTime? contentModificationDate;

  /// An array of sources from which the media was obtained.
  List<String>? contentSources;

  /// The copyright date of the content.
  String? copyright;

  /// The most recent date on which the file was downloaded or received.
  DateTime? downloadedDate;

  /// A list of editors who have worked on the file.
  List<String>? editors;

  /// The date on which the file was last used.
  DateTime? lastUsedDate;

  /// A list of people who are visible in an image or movie or written about in a document.
  List<String>? participants;

  /// A list of projects of which this file is a part.
  List<String>? projects;

  /// The date on which the item was moved into its current location.
  DateTime? addedDate;

  /// The codecs used to encode/decode the media.
  List<String>? codecs;

  /// A list of contacts who are associated with the content in some way, not including the author.
  List<String>? contactKeywords;

  /// The delivery type of the file.
  int? deliveryType;

  /// The duration (if appropriate) of the content of the file, in seconds.
  int? duration;

  /// The media types present in the content.
  List<String>? mediaTypes;

  /// A list of companies or organizations that created the content.
  List<String>? organizations;

  /// A value that indicates if the content is prepared for streaming.
  int? streamable;

  /// The total bit rate of the media, combining audio and video.
  int? totalBitRate;

  /// The audio bit rate of the media.
  int? audioBitRate;

  /// A version string associated with the file.
  String? version;

  /// The video bit rate of the media.
  int? videoBitRate;

  /// A list of people, organizations, or services that made contributions to the media content.
  List<String>? contributors;

  /// A list of the included languages for the intellectual content of the media.
  List<String>? languages;

  /// A list of people, organizations, services, or other entities responsible for making the media available.
  List<String>? publishers;

  /// A link to information about the rights held in and over the media.
  String? rights;

  /// Indicates the role of the content creator.
  String? role;

  /// The creation date of the original source file.
  DateTime? sourceContentCreationDate;

  /// The most recent modification date of the source file.
  DateTime? sourceContentModificationDate;

  /// The software that converted the original content into a PDF stream.
  String? encodingApplication;

  /// A list of people who have access to the item.
  List<CSPerson>? accessControlList;

  /// The author of the item.
  CSPerson? author;

  /// The composer of the content.
  CSPerson? composer;

  /// A list of people involved in creating the item.
  List<CSPerson>? people;

  /// The producer of the content.
  CSPerson? producer;

  /// A list of people who performed in creating the content.
  List<CSPerson>? performers;

  // Describing media
  /// A user-supplied play count for the media.
  num? playCount;

  /// The user-supplied rating of the media.
  num? rating;

  /// A description of the rating.
  String? ratingDescription;

  /// The URL associated with the media.
  Uri? url;

  /// The title for a collection of audio media.
  String? album;

  /// The artist associated with the media.
  String? artist;

  /// The number of channels in the audio data that the file contains.
  num? audioChannelCount;

  /// The name of the application that encoded the data the audio file contains.
  String? audioEncodingApplication;

  /// The sample rate of the audio data the file contains, as a float value representing Hz (audio frames per second), such as 44100.0 or 22254.54.
  num? audioSampleRate;

  /// The track number of a song or audio composition when part of an album.
  num? audioTrackNumber;

  /// The musical key of the song or audio composition that the file contains, such as C, Dm, or F#m.
  String? keySignature;

  /// The lyricist or text writer for the song or audio composition that the file contains.
  String? lyricist;

  /// The musical genre of the song or audio composition that the file contains, such as jazz, pop, rock, or classical.
  String? musicalGenre;

  /// The recording date of the song or composition.
  DateTime? recordingDate;

  /// The tempo of the music that the audio file contains, in beats per minute.
  num? tempo;

  /// The time signature of the musical composition that the audio or MIDI file contains, in a string, such as “4/4” or “7/8”.
  String? timeSignature;

  /// A value that indicates whether the MIDI sequence the file contains is set up for use with a general MIDI device.
  num? generalMIDISequence;

  /// The category of the instrument associated with the audio file.
  String? musicalInstrumentCategory;

  /// The name of an instrument within the context of an instrument category.
  String? musicalInstrumentName;

  // Describing images
  /// The ISO speed setting at the time the camera captured the image.
  num? isoSpeed;

  /// The manufacturer of the device that captured the image.
  String? acquisitionMake;

  /// The model of the device that captured the image.
  String? acquisitionModel;

  /// The size of the lens aperture at the time the camera captured the image, as a log-scale APEX value.
  num? aperture;

  /// The number of bits per sample.
  num? bitsPerSample;

  /// The owner of the camera that captured the image.
  String? cameraOwner;

  /// The color space model the image uses, such as RGB, CMYK, YUV, or YCbCr.
  String? colorSpace;

  /// A value that indicates if the camera used a flash to capture the image.
  num? flashOn;

  /// The actual focal length of the lens, in millimeters.
  num? focalLength;

  /// A value that indicates if the focal length is 35mm.
  num? focalLength35mm;

  /// An array that contains the names of the various layers in the file.
  List<String>? layerNames;

  /// The model of the lens that captured the image.
  String? lensModel;

  /// The orientation of the data.
  num? orientation;

  /// The total number of pixels in the image.
  num? pixelCount;

  /// The height of the item, such as image or video frame height, in pixels.
  num? pixelHeight;

  /// The width of the item, such as image or video frame width, in pixels.
  num? pixelWidth;

  /// The white balance setting when the camera captured the image.
  num? whiteBalance;

  /// The version of GPS Info IFD header that was used to generate the metadata for the image.
  String? exifgpsVersion;

  /// The version of the EXIF header that was used to generate the metadata for the image.
  String? exifVersion;

  /// The mode the camera used for the exposure of the image.
  num? exposureMode;

  /// The class of the program the camera used to set exposure when capturing the image.
  String? exposureProgram;

  /// The time that the lens was open during exposure, in seconds.
  num? exposureTime;

  /// The time that the lens was open during exposure, in a string, such as “1/250 seconds”.
  String? exposureTimeString;

  /// The focal length of the lens, divided by the diameter of the aperture when the camera captured the image.
  num? fNumber;

  /// Indicates if the image file has an alpha channel.
  num? hasAlphaChannel;

  /// The smallest F number of the lens.
  num? maxAperture;

  /// The metering mode.
  String? meteringMode;

  /// The name of the color profile the camera used for the image.
  String? profileName;

  /// A value that indicates if the camera used red-eye reduction when capturing the image.
  num? redEyeOn;

  /// The resolution height of the image, in DPI.
  num? resolutionHeightDPI;

  /// The resolution width of the image, in DPI.
  num? resolutionWidthDPI;

  // Describing messages

  /// The HTML content of the document encoded as an NSData object representing a UTF-8 encoded string.
  List<int>? htmlContentData;

  List<String>? accountHandles;

  /// An array of the canonical handles for the account with which the message is associated.
  String? accountIdentifier;

  /// An array of CSPerson objects representing the content of the Cc: field in an email message.
  List<CSPerson>? additionalRecipients;

  /// An array of addresses associated with the author of the message.
  List<String>? authorAddresses;

  /// An array of email addresses associated with the author of the message.
  List<String>? authorEmailAddresses;

  /// An array of names representing the authors
  List<String>? authorNames;

  // Describing messages

  /// An array of [CSPerson] objects representing the content of the From: field in an item.
  List<CSPerson>? authors;

  /// An array of email addresses associated with the message.
  List<String>? emailAddresses;

  /// A dictionary that contains all the headers of the message.
  Map<String, dynamic>? emailHeaders;

  /// An array of [CSPerson] objects representing the content of the Bcc: field in an email message.
  List<CSPerson>? hiddenAdditionalRecipients;

  /// An array of instant message addresses for the message.
  List<String>? instantMessageAddresses;

  /// A value that indicates if the message is likely to be considered junk.
  int? likelyJunk;

  /// An array of mailbox identifiers associated with the message.
  List<String>? mailboxIdentifiers;

  /// An array of phone numbers associated with the message.
  List<String>? phoneNumbers;

  /// An array of [CSPerson] objects representing the content of the To: field in an email message.
  List<CSPerson>? primaryRecipients;

  /// An array of addresses associated with the recipients of the message.
  List<String>? recipientAddresses;

  /// An array of email addresses associated with the recipient.
  List<String>? recipientEmailAddresses;

  /// An array of names representing the recipients of this message.
  List<String>? recipientNames;

  /// The textual content of the message.
  String? textContent;

  // Describing containment

  /// A localized string that specifies the name of a container to which the item belongs, suitable to display in the user interface.
  String? containerDisplayName;

  /// The identifier of the container to which the item belongs.
  String? containerIdentifier;

  /// The order of the item within the container.
  int? containerOrder;

  /// The title of the container to which the item belongs.
  String? containerTitle;

  CoreSpotlightItemAttributeSet(
    this.contentType, {
    this.audiences,
    this.contentDescription,
    this.creator,
    this.encodingApplications,
    this.fileSize,
    this.fontNames,
    this.identifier,
    this.kind,
    this.pageCount,
    this.pageHeight,
    this.pageWidth,
    this.securityMethod,
    this.subject,
    this.theme,
    this.alternateNames,
    this.contentTypeTree,
    this.contentURL,
    this.darkThumbnailURL,
    this.displayName,
    this.keywords,
    this.metadataModificationDate,
    this.path,
    this.rankingHint,
    this.relatedUniqueIdentifier,
    this.thumbnailData,
    this.thumbnailURL,
    required this.title,
    this.domainIdentifier,
    this.weakRelatedUniqueIdentifier,
    this.userCreated,
    this.userCurated,
    this.userOwned,
    this.allDay,
    this.completionDate,
    this.dueDate,
    this.endDate,
    this.importantDates,
    this.startDate,
    this.altitude,
    this.city,
    this.country,
    this.gpsAreaInformation,
    this.gpsdop,
    this.gpsDateStamp,
    this.gpsDestBearing,
    this.gpsDestDistance,
    this.gpsDestLatitude,
    this.gpsDestLongitude,
    this.gpsDifferental,
    this.gpsMapDatum,
    this.gpsMeasureMode,
    this.gpsProcessingMethod,
    this.gpsStatus,
    this.gpsTrack,
    this.headline,
    this.imageDirection,
    this.instructions,
    this.latitude,
    this.longitude,
    this.namedLocation,
    this.speed,
    this.stateOrProvince,
    this.timestamp,
    this.fullyFormattedAddress,
    this.postalCode,
    this.subThoroughfare,
    this.thoroughfare,
    this.comment,
    this.contentCreationDate,
    this.contentModificationDate,
    this.contentSources,
    this.copyright,
    this.downloadedDate,
    this.editors,
    this.lastUsedDate,
    this.participants,
    this.projects,
    this.addedDate,
    this.codecs,
    this.contactKeywords,
    this.deliveryType,
    this.duration,
    this.mediaTypes,
    this.organizations,
    this.streamable,
    this.totalBitRate,
    this.audioBitRate,
    this.version,
    this.videoBitRate,
    this.contributors,
    this.languages,
    this.publishers,
    this.rights,
    this.role,
    this.sourceContentCreationDate,
    this.sourceContentModificationDate,
    this.encodingApplication,
    this.accessControlList,
    this.author,
    this.composer,
    this.people,
    this.producer,
    this.performers,
    // Describing media
    this.playCount,
    this.rating,
    this.ratingDescription,
    this.url,

    // Describing music
    this.album,
    this.artist,
    this.audioChannelCount,
    this.audioEncodingApplication,
    this.audioSampleRate,
    this.audioTrackNumber,
    this.keySignature,
    this.lyricist,
    this.musicalGenre,
    this.recordingDate,
    this.tempo,
    this.timeSignature,
    this.generalMIDISequence,
    this.musicalInstrumentCategory,
    this.musicalInstrumentName,

    // Describing images
    this.isoSpeed,
    this.acquisitionMake,
    this.acquisitionModel,
    this.aperture,
    this.bitsPerSample,
    this.cameraOwner,
    this.colorSpace,
    this.flashOn,
    this.focalLength,
    this.focalLength35mm,
    this.layerNames,
    this.lensModel,
    this.orientation,
    this.pixelCount,
    this.pixelHeight,
    this.pixelWidth,
    this.whiteBalance,
    this.exifgpsVersion,
    this.exifVersion,
    this.exposureMode,
    this.exposureProgram,
    this.exposureTime,
    this.exposureTimeString,
    this.fNumber,
    this.hasAlphaChannel,
    this.maxAperture,
    this.meteringMode,
    this.profileName,
    this.redEyeOn,
    this.resolutionHeightDPI,
    this.resolutionWidthDPI,

    // Describing messages
    this.htmlContentData,
    this.accountHandles,
    this.accountIdentifier,
    this.additionalRecipients,
    this.authorAddresses,
    this.authorEmailAddresses,
    this.authorNames,
    this.authors,
    this.emailAddresses,
    this.emailHeaders,
    this.hiddenAdditionalRecipients,
    this.instantMessageAddresses,
    this.likelyJunk,
    this.mailboxIdentifiers,
    this.phoneNumbers,
    this.primaryRecipients,
    this.recipientAddresses,
    this.recipientEmailAddresses,
    this.recipientNames,
    this.textContent,
    this.containerDisplayName,
    this.containerIdentifier,
    this.containerOrder,
    this.containerTitle,
  });

  Map<String, dynamic> toMap() {
    return {
      'audiences': audiences,
      'contentDescription': contentDescription,
      'creator': creator,
      'encodingApplications': encodingApplications,
      'fileSize': fileSize,
      'fontNames': fontNames,
      'identifier': identifier,
      'kind': kind,
      'pageCount': pageCount,
      'pageHeight': pageHeight,
      'pageWidth': pageWidth,
      'securityMethod': securityMethod,
      'subject': subject,
      'theme': theme,
      'alternateNames': alternateNames,
      'contentType': contentType.name,
      'contentTypeTree': contentTypeTree,
      'contentURL': contentURL?.toString(),
      'darkThumbnailURL': darkThumbnailURL?.toString(),
      'displayName': displayName,
      'keywords': keywords,
      'metadataModificationDate': metadataModificationDate?.toIso8601String(),
      'path': path,
      'rankingHint': rankingHint,
      'relatedUniqueIdentifier': relatedUniqueIdentifier,
      'thumbnailData': thumbnailData,
      'thumbnailURL': thumbnailURL?.toString(),
      'title': title,
      'domainIdentifier': domainIdentifier,
      'weakRelatedUniqueIdentifier': weakRelatedUniqueIdentifier,
      'userCreated': userCreated,
      'userCurated': userCurated,
      'userOwned': userOwned,
      'allDay': allDay,
      'completionDate': completionDate?.toIso8601String(),
      'dueDate': dueDate?.toIso8601String(),
      'endDate': endDate?.toIso8601String(),
      'importantDates':
          importantDates?.map((date) => date.toIso8601String()).toList(),
      'startDate': startDate?.toIso8601String(),
      'altitude': altitude,
      'city': city,
      'country': country,
      'gpsAreaInformation': gpsAreaInformation,
      'gpsdop': gpsdop,
      'gpsDateStamp': gpsDateStamp?.toIso8601String(),
      'gpsDestBearing': gpsDestBearing,
      'gpsDestDistance': gpsDestDistance,
      'gpsDestLatitude': gpsDestLatitude,
      'gpsDestLongitude': gpsDestLongitude,
      'gpsDifferental': gpsDifferental,
      'gpsMapDatum': gpsMapDatum,
      'gpsMeasureMode': gpsMeasureMode,
      'gpsProcessingMethod': gpsProcessingMethod,
      'gpsStatus': gpsStatus,
      'gpsTrack': gpsTrack,
      'headline': headline,
      'imageDirection': imageDirection,
      'instructions': instructions,
      'latitude': latitude,
      'longitude': longitude,
      'namedLocation': namedLocation,
      'speed': speed,
      'stateOrProvince': stateOrProvince,
      'timestamp': timestamp?.toIso8601String(),
      'fullyFormattedAddress': fullyFormattedAddress,
      'postalCode': postalCode,
      'subThoroughfare': subThoroughfare,
      'thoroughfare': thoroughfare,
      'comment': comment,
      'contentCreationDate': contentCreationDate?.toIso8601String(),
      'contentModificationDate': contentModificationDate?.toIso8601String(),
      'contentSources': contentSources,
      'copyright': copyright,
      'downloadedDate': downloadedDate?.toIso8601String(),
      'editors': editors,
      'lastUsedDate': lastUsedDate?.toIso8601String(),
      'participants': participants,
      'projects': projects,
      'addedDate': addedDate?.toIso8601String(),
      'codecs': codecs,
      'contactKeywords': contactKeywords,
      'deliveryType': deliveryType,
      'duration': duration,
      'mediaTypes': mediaTypes,
      'organizations': organizations,
      'streamable': streamable,
      'totalBitRate': totalBitRate,
      'audioBitRate': audioBitRate,
      'version': version,
      'videoBitRate': videoBitRate,
      'contributors': contributors,
      'languages': languages,
      'publishers': publishers,
      'rights': rights,
      'role': role,
      'sourceContentCreationDate': sourceContentCreationDate?.toIso8601String(),
      'sourceContentModificationDate':
          sourceContentModificationDate?.toIso8601String(),
      'encodingApplication': encodingApplication,
      'accessControlList':
          accessControlList?.map((person) => person.toMap()).toList(),
      'author': author?.toMap(),
      'composer': composer?.toMap(),
      'people': people?.map((person) => person.toMap()).toList(),
      'producer': producer?.toMap(),
      'performers': performers?.map((person) => person.toMap()).toList(),
      // Describing media
      'playCount': playCount,
      'rating': rating,
      'ratingDescription': ratingDescription,
      'url': url?.toString(),

      // Describing music
      'album': album,
      'artist': artist,
      'audioChannelCount': audioChannelCount,
      'audioEncodingApplication': audioEncodingApplication,
      'audioSampleRate': audioSampleRate,
      'audioTrackNumber': audioTrackNumber,
      'keySignature': keySignature,
      'lyricist': lyricist,
      'musicalGenre': musicalGenre,
      'recordingDate': recordingDate?.toIso8601String(),
      'tempo': tempo,
      'timeSignature': timeSignature,
      'generalMIDISequence': generalMIDISequence,
      'musicalInstrumentCategory': musicalInstrumentCategory,
      'musicalInstrumentName': musicalInstrumentName,

      // Describing images
      'isoSpeed': isoSpeed,
      'acquisitionMake': acquisitionMake,
      'acquisitionModel': acquisitionModel,
      'aperture': aperture,
      'bitsPerSample': bitsPerSample,
      'cameraOwner': cameraOwner,
      'colorSpace': colorSpace,
      'flashOn': flashOn,
      'focalLength': focalLength,
      'focalLength35mm': focalLength35mm,
      'layerNames': layerNames,
      'lensModel': lensModel,
      'orientation': orientation,
      'pixelCount': pixelCount,
      'pixelHeight': pixelHeight,
      'pixelWidth': pixelWidth,
      'whiteBalance': whiteBalance,
      'exifgpsVersion': exifgpsVersion,
      'exifVersion': exifVersion,
      'exposureMode': exposureMode,
      'exposureProgram': exposureProgram,
      'exposureTime': exposureTime,
      'exposureTimeString': exposureTimeString,
      'fNumber': fNumber,
      'hasAlphaChannel': hasAlphaChannel,
      'maxAperture': maxAperture,
      'meteringMode': meteringMode,
      'profileName': profileName,
      'redEyeOn': redEyeOn,
      'resolutionHeightDPI': resolutionHeightDPI,
      'resolutionWidthDPI': resolutionWidthDPI,

      // Describing messages
      'htmlContentData': htmlContentData,
      'accountHandles': accountHandles,
      'accountIdentifier': accountIdentifier,
      'additionalRecipients':
          additionalRecipients?.map((e) => e.toMap()).toList(),
      'authorAddresses': authorAddresses,
      'authorEmailAddresses': authorEmailAddresses,
      'authorNames': authorNames,
      'authors': authors?.map((author) => author.toMap()).toList(),
      'emailAddresses': emailAddresses,
      'emailHeaders': emailHeaders,
      'hiddenAdditionalRecipients': hiddenAdditionalRecipients
          ?.map((recipient) => recipient.toMap())
          .toList(),
      'instantMessageAddresses': instantMessageAddresses,
      'likelyJunk': likelyJunk,
      'mailboxIdentifiers': mailboxIdentifiers,
      'phoneNumbers': phoneNumbers,
      'primaryRecipients':
          primaryRecipients?.map((recipient) => recipient.toMap()).toList(),
      'recipientAddresses': recipientAddresses,
      'recipientEmailAddresses': recipientEmailAddresses,
      'recipientNames': recipientNames,
      'textContent': textContent,
      'containerDisplayName': containerDisplayName,
      'containerIdentifier': containerIdentifier,
      'containerOrder': containerOrder,
      'containerTitle': containerTitle,
    }..removeWhere(
        (key, value) => value == null,
      );
  }
}

class CSPerson {
  /// The identifier for the contact associated with the person.
  String? contactIdentifier;

  /// A display name for the person.
  String? displayName;

  /// A key that identifies the type of contact property represented by the person object’s handle.
  late String handleIdentifier;

  /// An array of contact handles related to the person.
  late List<String> handles;

  CSPerson({
    this.contactIdentifier,
    this.displayName,
    required this.handleIdentifier,
    this.handles = const [],
  });

  /// Converts the CSPerson instance to a map.
  Map<String, dynamic> toMap() {
    return {
      'contactIdentifier': contactIdentifier,
      'displayName': displayName,
      'handleIdentifier': handleIdentifier,
      'handles': handles,
    };
  }
}
