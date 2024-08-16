import CoreServices
import CoreSpotlight

#if canImport(UIKit)
  import UIKit
  import Flutter
#elseif canImport(AppKit)
  import AppKit
  import FlutterMacOS
#endif

public class SwiftFlutterAppleSpotlightPlugin: NSObject, FlutterPlugin {
  static var channel: FlutterMethodChannel?

  // Register the plugin
  public static func register(with registrar: FlutterPluginRegistrar) {
    // We have to register the plugin this way because of a flutter bug.
    // https://github.com/flutter/flutter/issues/118103
    #if os(iOS)
      let messenger = registrar.messenger()
    #else
      let messenger = registrar.messenger
    #endif

    channel = FlutterMethodChannel(name: "flutter_apple_spotlight", binaryMessenger: messenger)
    let instance: SwiftFlutterAppleSpotlightPlugin = SwiftFlutterAppleSpotlightPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel!)
    #if os(iOS)
      // This should only be called on iOS, see flutter issue #148233.
      registrar.addApplicationDelegate(instance)
    #endif
  }

  // Function to receive callback
  static public func pressedCallback(userActivity: NSUserActivity) {
    channel?.invokeMethod(
      "onSearchableItemSelected",
      arguments: [
        "key": userActivity.activityType,
        "uniqueIdentifier": userActivity.userInfo?[CSSearchableItemActivityIdentifier],
        "query": userActivity.userInfo?[CSSearchQueryString],
      ]
    )
  }

  // Handle calls to the plugin
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {

    // Index items
    case "index_searchable_items":
      guard let arguments = call.arguments as? [[String: Any]] else {
        result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid arguments", details: nil))
        return
      }

      let searchableItems = arguments.map { itemMap -> CSSearchableItem in
        let attributeSet: CSSearchableItemAttributeSet

        if #available(macOS 11.0, iOS 14.0, *) {
          attributeSet = CSSearchableItemAttributeSet(
            contentType: utTypeMap[
              (itemMap["attributeSet"] as? [String: Any])?["contentType"] as? String ?? "text"]
              ?? UTType.text)
        } else {
          attributeSet = CSSearchableItemAttributeSet(itemContentType: kUTTypeText as String)
        }

        if let itemMap = itemMap["attributeSet"] as? [String: Any] {
          attributeSet.title = itemMap["title"] as? String
          attributeSet.displayName =
            itemMap["displayName"] as? String? ?? itemMap["title"] as? String
          attributeSet.audiences = itemMap["audiences"] as? [String]
          attributeSet.contentDescription = itemMap["contentDescription"] as? String
          attributeSet.creator = itemMap["creator"] as? String
          attributeSet.encodingApplications = itemMap["encodingApplications"] as? [String]
          attributeSet.fileSize = itemMap["fileSize"] as? NSNumber
          attributeSet.fontNames = itemMap["fontNames"] as? [String]
          attributeSet.identifier = itemMap["identifier"] as? String
          attributeSet.kind = itemMap["kind"] as? String
          attributeSet.pageCount = itemMap["pageCount"] as? NSNumber
          attributeSet.pageHeight = itemMap["pageHeight"] as? NSNumber
          attributeSet.pageWidth = itemMap["pageWidth"] as? NSNumber
          attributeSet.securityMethod = itemMap["securityMethod"] as? String
          attributeSet.subject = itemMap["subject"] as? String
          attributeSet.theme = itemMap["theme"] as? String

          attributeSet.alternateNames = itemMap["alternateNames"] as? [String]
          attributeSet.contentType = itemMap["contentType"] as? String
          attributeSet.contentTypeTree = itemMap["contentTypeTree"] as? [String]
          if let contentURLString = itemMap["contentURL"] as? String {
            attributeSet.contentURL = URL(string: contentURLString)

          }
          if let darkThumbnailURLString = itemMap["darkThumbnailURL"] as? String {
            attributeSet.thumbnailURL = URL(string: darkThumbnailURLString)
          }
          attributeSet.keywords =
            (itemMap["keywords"] as? [String] ?? [])
            + (attributeSet.title?.split(separator: " ").map { String($0) } ?? [])
          if let metadataModificationDateString = itemMap["metadataModificationDate"] as? String {
            attributeSet.metadataModificationDate = ISO8601DateFormatter().date(
              from: metadataModificationDateString)
          }
          attributeSet.path = itemMap["path"] as? String
          attributeSet.rankingHint = itemMap["rankingHint"] as? NSNumber
          attributeSet.relatedUniqueIdentifier = itemMap["relatedUniqueIdentifier"] as? String
          attributeSet.thumbnailData = itemMap["thumbnailData"] as? Data
          if let thumbnailURLString = itemMap["thumbnailURL"] as? String {
            attributeSet.thumbnailURL = URL(string: thumbnailURLString)
          }
          attributeSet.domainIdentifier = itemMap["domainIdentifier"] as? String
          attributeSet.weakRelatedUniqueIdentifier =
            itemMap["weakRelatedUniqueIdentifier"] as? String

          attributeSet.userCreated = itemMap["userCreated"] as? NSNumber
          attributeSet.userCurated = itemMap["userCurated"] as? NSNumber
          attributeSet.userOwned = itemMap["userOwned"] as? NSNumber

          attributeSet.allDay = itemMap["allDay"] as? NSNumber
          if let completionDateString = itemMap["completionDate"] as? String {
            attributeSet.completionDate = ISO8601DateFormatter().date(from: completionDateString)
          }
          if let dueDateString = itemMap["dueDate"] as? String {
            attributeSet.dueDate = ISO8601DateFormatter().date(from: dueDateString)
          }
          if let endDateString = itemMap["endDate"] as? String {
            attributeSet.endDate = ISO8601DateFormatter().date(from: endDateString)
          }
          if let importantDatesStrings = itemMap["importantDates"] as? [String] {
            attributeSet.importantDates = importantDatesStrings.map {
              ISO8601DateFormatter().date(from: $0)
            }.compactMap { $0 }
          }
          if let startDateString = itemMap["startDate"] as? String {
            attributeSet.startDate = ISO8601DateFormatter().date(from: startDateString)
          }

          attributeSet.altitude = itemMap["altitude"] as? NSNumber
          attributeSet.city = itemMap["city"] as? String
          attributeSet.country = itemMap["country"] as? String
          attributeSet.gpsAreaInformation = itemMap["gpsAreaInformation"] as? String
          attributeSet.gpsdop = itemMap["gpsdop"] as? NSNumber
          if let gpsDateStampString = itemMap["gpsDateStamp"] as? String {
            attributeSet.gpsDateStamp = ISO8601DateFormatter().date(from: gpsDateStampString)
          }
          attributeSet.gpsDestBearing = itemMap["gpsDestBearing"] as? NSNumber
          attributeSet.gpsDestDistance = itemMap["gpsDestDistance"] as? NSNumber
          attributeSet.gpsDestLatitude = itemMap["gpsDestLatitude"] as? NSNumber
          attributeSet.gpsDestLongitude = itemMap["gpsDestLongitude"] as? NSNumber
          attributeSet.gpsDifferental = itemMap["gpsDifferental"] as? NSNumber
          attributeSet.gpsMapDatum = itemMap["gpsMapDatum"] as? String
          attributeSet.gpsMeasureMode = itemMap["gpsMeasureMode"] as? String
          attributeSet.gpsProcessingMethod = itemMap["gpsProcessingMethod"] as? String
          attributeSet.gpsStatus = itemMap["gpsStatus"] as? String
          attributeSet.gpsTrack = itemMap["gpsTrack"] as? NSNumber
          attributeSet.headline = itemMap["headline"] as? String
          attributeSet.imageDirection = itemMap["imageDirection"] as? NSNumber
          attributeSet.instructions = itemMap["instructions"] as? String
          attributeSet.latitude = itemMap["latitude"] as? NSNumber
          attributeSet.longitude = itemMap["longitude"] as? NSNumber
          attributeSet.namedLocation = itemMap["namedLocation"] as? String
          attributeSet.speed = itemMap["speed"] as? NSNumber
          attributeSet.stateOrProvince = itemMap["stateOrProvince"] as? String
          if let timestampString = itemMap["timestamp"] as? String {
            attributeSet.timestamp = ISO8601DateFormatter().date(from: timestampString)
          }
          attributeSet.fullyFormattedAddress = itemMap["fullyFormattedAddress"] as? String
          attributeSet.postalCode = itemMap["postalCode"] as? String
          attributeSet.subThoroughfare = itemMap["subThoroughfare"] as? String
          attributeSet.thoroughfare = itemMap["thoroughfare"] as? String

          attributeSet.comment = itemMap["comment"] as? String
          if let contentCreationDateString = itemMap["contentCreationDate"] as? String {
            attributeSet.contentCreationDate = ISO8601DateFormatter().date(
              from: contentCreationDateString)
          }
          if let contentModificationDateString = itemMap["contentModificationDate"] as? String {
            attributeSet.contentModificationDate = ISO8601DateFormatter().date(
              from: contentModificationDateString)
          }
          attributeSet.contentSources = itemMap["contentSources"] as? [String]
          attributeSet.copyright = itemMap["copyright"] as? String
          if let downloadedDateString = itemMap["downloadedDate"] as? String {
            attributeSet.downloadedDate = ISO8601DateFormatter().date(from: downloadedDateString)
          }
          attributeSet.editors = itemMap["editors"] as? [String]
          if let lastUsedDateString = itemMap["lastUsedDate"] as? String {
            attributeSet.lastUsedDate = ISO8601DateFormatter().date(from: lastUsedDateString)
          }
          attributeSet.participants = itemMap["participants"] as? [String]
          attributeSet.projects = itemMap["projects"] as? [String]
          if let addedDateString = itemMap["addedDate"] as? String {
            attributeSet.addedDate = ISO8601DateFormatter().date(from: addedDateString)
          }
          attributeSet.codecs = itemMap["codecs"] as? [String]
          attributeSet.contactKeywords = itemMap["contactKeywords"] as? [String]
          attributeSet.deliveryType = itemMap["deliveryType"] as? NSNumber
          attributeSet.duration = itemMap["duration"] as? NSNumber
          attributeSet.mediaTypes = itemMap["mediaTypes"] as? [String]
          attributeSet.organizations = itemMap["organizations"] as? [String]
          attributeSet.streamable = itemMap["streamable"] as? NSNumber
          attributeSet.totalBitRate = itemMap["totalBitRate"] as? NSNumber
          attributeSet.audioBitRate = itemMap["audioBitRate"] as? NSNumber
          attributeSet.version = itemMap["version"] as? String
          attributeSet.videoBitRate = itemMap["videoBitRate"] as? NSNumber
          attributeSet.contributors = itemMap["contributors"] as? [String]
          attributeSet.languages = itemMap["languages"] as? [String]
          attributeSet.publishers = itemMap["publishers"] as? [String]
          attributeSet.rights = itemMap["rights"] as? String
          attributeSet.role = itemMap["role"] as? String
          attributeSet.contentRating = itemMap["contentRating"] as? NSNumber
          attributeSet.coverage = itemMap["coverage"] as? [String]
          attributeSet.director = itemMap["director"] as? String
          attributeSet.genre = itemMap["genre"] as? String
          attributeSet.information = itemMap["information"] as? String
          attributeSet.local = itemMap["local"] as? NSNumber
          attributeSet.originalFormat = itemMap["originalFormat"] as? String
          attributeSet.originalSource = itemMap["originalSource"] as? String
          attributeSet.performers = itemMap["performers"] as? [String]
        }

        let searchableItem = CSSearchableItem(
          uniqueIdentifier: itemMap["uniqueIdentifier"] as? String,
          domainIdentifier: itemMap["domainIdentifier"] as? String,
          attributeSet: attributeSet
        )

        if let expirationDateString = itemMap["expirationDate"] as? String {
          searchableItem.expirationDate = ISO8601DateFormatter().date(from: expirationDateString)
        }

        return searchableItem
      }

      CSSearchableIndex.default().indexSearchableItems(searchableItems) { error in
        if let error = error {
          result(FlutterError(code: "500", message: error.localizedDescription, details: nil))
        } else {
          result("success")
        }
      }

    // Delete items
    case "delete_searchable_items":
      guard let arguments = call.arguments as? [String: Any] else {
        result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid arguments", details: nil))
        return
      }

      let identifiers = arguments["identifier"] as? [String] ?? []
      let identifierIsDomain = arguments["identifierIsDomain"] as? Bool == true

      func handleResult(_ error: Error?) {
        if let error = error {
          result(FlutterError(code: "500", message: error.localizedDescription, details: nil))
        } else {
          result("success")
        }
      }

      if identifiers.isEmpty {
        // Remove everything
        CSSearchableIndex.default().deleteAllSearchableItems(completionHandler: handleResult)
      } else if identifierIsDomain {
        // Remove only items with a domain identifier
        CSSearchableIndex.default().deleteSearchableItems(
          withDomainIdentifiers: identifiers, completionHandler: handleResult)
      } else {
        // Remove only items with an identifier
        CSSearchableIndex.default().deleteSearchableItems(
          withIdentifiers: identifiers, completionHandler: handleResult)
      }

    default:
      result(FlutterMethodNotImplemented)
    }
  }

  #if os(iOS)
    public func application(
      _ application: UIApplication,
      continue userActivity: NSUserActivity,
      restorationHandler: @escaping ([Any]) -> Void
    ) -> Bool {
      if userActivity.activityType == CSSearchableItemActionType {
        userActivity.resignCurrent()
        userActivity.invalidate()
        SwiftFlutterAppleSpotlightPlugin.pressedCallback(userActivity: userActivity)
        return true
      }
    return false
    }
  #endif
}

@available(macOS 11.0, *)
let utTypeMap: [String: UTType] = [
  "aiff": .aiff,
  "aliasFile": .aliasFile,
  "appleArchive": .appleArchive,
  "appleProtectedMPEG4Audio": .appleProtectedMPEG4Audio,
  "appleProtectedMPEG4Video": .appleProtectedMPEG4Video,
  "appleScript": .appleScript,
  "application": .application,
  "applicationBundle": .applicationBundle,
  "applicationExtension": .applicationExtension,
  "arReferenceObject": .arReferenceObject,
  "archive": .archive,
  "assemblyLanguageSource": .assemblyLanguageSource,
  "audio": .audio,
  "audiovisualContent": .audiovisualContent,
  "avi": .avi,
  "binaryPropertyList": .binaryPropertyList,
  "bmp": .bmp,
  "bookmark": .bookmark,
  "bundle": .bundle,
  "bz2": .bz2,
  "cHeader": .cHeader,
  "cPlusPlusHeader": .cPlusPlusHeader,
  "cPlusPlusSource": .cPlusPlusSource,
  "cSource": .cSource,
  "calendarEvent": .calendarEvent,
  "commaSeparatedText": .commaSeparatedText,
  "compositeContent": .compositeContent,
  "contact": .contact,
  "content": .content,
  "data": .data,
  "database": .database,
  "delimitedText": .delimitedText,
  "directory": .directory,
  "diskImage": .diskImage,
  "emailMessage": .emailMessage,
  "epub": .epub,
  "exe": .exe,
  "executable": .executable,
  "fileURL": .fileURL,
  "flatRTFD": .flatRTFD,
  "folder": .folder,
  "font": .font,
  "framework": .framework,
  "gif": .gif,
  "gzip": .gzip,
  "heic": .heic,
  "heif": .heif,
  "html": .html,
  "icns": .icns,
  "ico": .ico,
  "image": .image,
  "internetLocation": .internetLocation,
  "internetShortcut": .internetShortcut,
  "item": .item,
  "javaScript": .javaScript,
  "jpeg": .jpeg,
  "json": .json,
  "livePhoto": .livePhoto,
  "log": .log,
  "m3uPlaylist": .m3uPlaylist,
  "message": .message,
  "midi": .midi,
  "mountPoint": .mountPoint,
  "movie": .movie,
  "mp3": .mp3,
  "mpeg": .mpeg,
  "mpeg2TransportStream": .mpeg2TransportStream,
  "mpeg2Video": .mpeg2Video,
  "mpeg4Audio": .mpeg4Audio,
  "mpeg4Movie": .mpeg4Movie,
  "objectiveCPlusPlusSource": .objectiveCPlusPlusSource,
  "objectiveCSource": .objectiveCSource,
  "osaScript": .osaScript,
  "osaScriptBundle": .osaScriptBundle,
  "package": .package,
  "pdf": .pdf,
  "perlScript": .perlScript,
  "phpScript": .phpScript,
  "pkcs12": .pkcs12,
  "plainText": .plainText,
  "playlist": .playlist,
  "pluginBundle": .pluginBundle,
  "png": .png,
  "presentation": .presentation,
  "propertyList": .propertyList,
  "pythonScript": .pythonScript,
  "quickLookGenerator": .quickLookGenerator,
  "quickTimeMovie": .quickTimeMovie,
  "rawImage": .rawImage,
  "realityFile": .realityFile,
  "resolvable": .resolvable,
  "rtf": .rtf,
  "rtfd": .rtfd,
  "rubyScript": .rubyScript,
  "sceneKitScene": .sceneKitScene,
  "script": .script,
  "shellScript": .shellScript,
  "sourceCode": .sourceCode,
  "spotlightImporter": .spotlightImporter,
  "spreadsheet": .spreadsheet,
  "svg": .svg,
  "swiftSource": .swiftSource,
  "symbolicLink": .symbolicLink,
  "systemPreferencesPane": .systemPreferencesPane,
  "tabSeparatedText": .tabSeparatedText,
  "text": .text,
  "threeDContent": .threeDContent,
  "tiff": .tiff,
  "toDoItem": .toDoItem,
  "unixExecutable": .unixExecutable,
  "url": .url,
  "urlBookmarkData": .urlBookmarkData,
  "usd": .usd,
  "usdz": .usdz,
  "utf16ExternalPlainText": .utf16ExternalPlainText,
  "utf16PlainText": .utf16PlainText,
  "utf8PlainText": .utf8PlainText,
  "utf8TabSeparatedText": .utf8TabSeparatedText,
  "vCard": .vCard,
  "video": .video,
  "volume": .volume,
  "wav": .wav,
  "webArchive": .webArchive,
  "webP": .webP,
  "x509Certificate": .x509Certificate,
  "xml": .xml,
  "xmlPropertyList": .xmlPropertyList,
  "xpcService": .xpcService,
  "yaml": .yaml,
  "zip": .zip,
]
