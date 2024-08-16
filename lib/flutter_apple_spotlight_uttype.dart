/// Enumeration of UTType statics in Dart
///
/// Copy of [https://developer.apple.com/documentation/uniformtypeidentifiers/uttype](https://developer.apple.com/documentation/uniformtypeidentifiers/uttype)
enum UTType {
  /// A type that represents data in AIFF audio format.
  ahap,

  /// A type that represents an alias file.
  aliasFile,

  /// A type that represents an Apple archive of files and directories.
  appleArchive,

  /// A type that represents data in Apple-protected MPEG-4 format.
  appleProtectedMPEG4Audio,

  /// A type that represents data in Apple-protected MPEG-4 format.
  appleProtectedMPEG4Video,

  /// A type that represents an AppleScript text-based script.
  appleScript,

  /// A base type that represents a macOS, iOS, iPadOS, watchOS, and tvOS app.
  application,

  /// A type that represents a bundled app.
  applicationBundle,

  /// A type that represents an app extension.
  applicationExtension,

  /// A type that represents an augmented reality reference object.
  arReferenceObject,

  /// A base type that represents an archive of files and directories.
  archive,

  /// A type that represents assembly language source code.
  assemblyLanguageSource,

  /// A type that represents audio that doesn’t contain video.
  audio,

  /// A base type that represents data that contains video content that may or may not also include audio.
  audiovisualContent,

  /// A type that represents data in AVI movie format.
  avi,

  /// A type that represents a binary property list.
  binaryPropertyList,

  /// A type that represents a Windows bitmap image.
  bmp,

  /// A base type that represents bookmark data.
  bookmark,

  /// A base type that represents a directory that conforms to one of the bundle layouts.
  bundle,

  /// A type that represents a bzip2 archive.
  bz2,

  /// A type that represents a C header file.
  cHeader,

  /// A type that represents a C++ header file.
  cPlusPlusHeader,

  /// A type that represents a C++ source code file.
  cPlusPlusSource,

  /// A type that represents a C source code file.
  cSource,

  /// A base type that represents a calendar event.
  calendarEvent,

  /// A type that represents text containing comma-separated values.
  commaSeparatedText,

  /// A base type that represents a content format supporting mixed embedded content.
  compositeContent,

  /// A base type that represents contact information.
  contact,

  /// A base type that represents anything containing user-viewable content.
  content,

  /// A base type that represents any sort of byte stream, including files and in-memory data.
  data,

  /// A base type that represents a database store.
  database,

  /// A base type that represents text containing delimited values.
  delimitedText,

  /// A type that represents a file system directory, including packages and folders.
  directory,

  /// A type that represents a data item that’s mountable as a volume.
  diskImage,

  /// A type that represents an email message.
  emailMessage,

  /// A type that represents data in the electronic publication (EPUB) format.
  epub,

  /// A type that represents a Windows executable.
  exe,

  /// A type that represents an executable.
  executable,

  /// A type that represents a URL to a file in the file system.
  fileURL,

  /// A type that represents flattened Rich Text Format Directory documents.
  flatRTFD,

  /// A type that represents a user-browsable directory.
  folder,

  /// A base type that represents a font.
  font,

  /// A type that represents an Apple framework bundle.
  framework,

  /// A type that represents a GIF image.
  gif,

  /// A type that represents a GNU zip archive.
  gzip,

  /// A type that represents High Efficiency Image Coding images.
  heic,

  /// A type that represents High Efficiency Image File Format images.
  heif,

  /// A type that represents any version of HTML.
  html,

  /// A type that represents Apple icon data.
  icns,

  /// A type that represents Windows icon data.
  ico,

  /// A base type that represents image data.
  image,

  /// A base type that represents an Apple internet location file.
  internetLocation,

  /// A type that represents a Microsoft internet shortcut file.
  internetShortcut,

  /// A generic base type for most objects, such as files or directories.
  item,

  /// A type that represents JavaScript source code.
  javaScript,

  /// A type that represents a JPEG image.
  jpeg,

  /// A type that represents JavaScript Object Notation (JSON) data.
  json,

  /// A type that represents Live Photos.
  livePhoto,

  /// A base type that represents console log data.
  log,

  /// A type that represents an M3U or M3U8 playlist.
  m3uPlaylist,

  /// A type that represents a Makefile.
  makefile,

  /// A base type that represents a message.
  message,

  /// A type that represents data in MIDI audio format.
  midi,

  /// A type that represents a volume mount point.
  mountPoint,

  /// A base type representing media formats that may contain both video and audio.
  movie,

  /// A type that represents MP3 audio.
  mp3,

  /// A type that represents an MPEG-1 or MPEG-2 movie.
  mpeg,

  /// A type that represents data in MPEG-2 transport stream movie format.
  mpeg2TransportStream,

  /// A type that represents an MPEG-2 video.
  mpeg2Video,

  /// A type that represents an MPEG-4 audio layer file.
  mpeg4Audio,

  /// A type that represents an MPEG-4 movie.
  mpeg4Movie,

  /// A type that represents an Objective-C++ source code file.
  objectiveCPlusPlusSource,

  /// A type that represents an Objective-C source code file.
  objectiveCSource,

  /// A type that represents an Open Scripting Architecture binary script.
  osaScript,

  /// A type that represents an Open Scripting Architecture script bundle.
  osaScriptBundle,

  /// A base type that represents a packaged directory.
  package,

  /// A type that represents Adobe Portable Document Format (PDF) documents.
  pdf,

  /// A type that represents a Perl script.
  perlScript,

  /// A type that represents a PHP script.
  phpScript,

  /// A type that represents Public Key Cryptography Standard (PKCS) 12 data.
  pkcs12,

  /// A type that represents text with no markup and an unspecified encoding.
  plainText,

  /// A base type that represents a playlist.
  playlist,

  /// A base type that represents a bundle-based plug-in.
  pluginBundle,

  /// A type that represents a PNG image.
  png,

  /// A base type that represents a presentation document.
  presentation,

  /// A base type that represents a property list.
  propertyList,

  /// A type that represents a Python script.
  pythonScript,

  /// A type that represents a QuickLook preview generator bundle.
  quickLookGenerator,

  /// A type that represents a QuickTime movie.
  quickTimeMovie,

  /// A base type that represents a raw image format that you use in digital photography.
  rawImage,

  /// A type that represents a Reality Composer file.
  realityFile,

  /// A base type that represents a resolvable reference, including symbolic links and aliases.
  resolvable,

  /// A type that represents Rich Text Format data.
  rtf,

  /// A type that represents Rich Text Format Directory documents.
  rtfd,

  /// A type that represents a Ruby script.
  rubyScript,

  /// A type that represents a SceneKit serialized scene.
  sceneKitScene,

  /// A base type that represents any scripting language source.
  script,

  /// A type that represents a custom catalog.
  shazamCustomCatalog,

  /// A type that represents a signature.
  shazamSignature,

  /// A base type that represents a shell script.
  shellScript,

  /// A base type that represents source code of any programming language.
  sourceCode,

  /// A type that represents a Spotlight metadata importer bundle.
  spotlightImporter,

  /// A base type that represents a spreadsheet document.
  spreadsheet,

  /// A type that represents a scalable vector graphics (SVG) image.
  svg,

  /// A type that represents a Swift source code file.
  swiftSource,

  /// A type that represents a symbolic link.
  symbolicLink,

  /// A type that represents a System Preferences pane.
  systemPreferencesPane,

  /// A type that represents text containing tab-separated values.
  tabSeparatedText,

  /// A base type that represents all text-encoded data, including text with markup.
  text,

  /// A base type that represents 3D content.
  threeDContent,

  /// A type that represents a TIFF image.
  tiff,

  /// A type that represents a to-do item.
  toDoItem,

  /// A type that represents a UNIX executable.
  unixExecutable,

  /// A type that represents a URL.
  url,

  /// A type that represents a URL bookmark.
  urlBookmarkData,

  /// A type that represents Universal Scene Description content.
  usd,

  /// A type that represents Universal Scene Description Package content.
  usdz,

  /// A type that represents plain text encoded as UTF-16 with an optional bill of materials.
  utf16ExternalPlainText,

  /// A type that represents plain text encoded as UTF-16 in native byte order with an optional bill of materials.
  utf16PlainText,

  /// A type that represents plain text encoded as UTF-8.
  utf8PlainText,

  /// A type that represents UTF-8–encoded text containing tab-separated values.
  utf8TabSeparatedText,

  /// A type that represents a vCard file.
  vCard,

  /// A type that represents video that doesn’t contain audio.
  video,

  /// A type that represents the root folder of a volume or mount point.
  volume,

  /// A type that represents data in Microsoft Waveform Audio File Format.
  wav,

  /// A type that represents WebKit web archive data.
  webArchive,

  /// A type that represents a WebP image.
  webP,

  /// A type that represents an X.509 certificate.
  x509Certificate,

  /// A type that represents generic XML data.
  xml,

  /// A type that represents an XML property list.
  xmlPropertyList,

  /// A type that represents an XPC service bundle.
  xpcService,

  /// A type that represents Yet Another Markup Language data.
  yaml,

  /// A type that represents a zip archive.
  zip,
}
