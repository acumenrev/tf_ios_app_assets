// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum Localization {
  public enum LangEn {
    /// Localizable.strings
    ///   
    /// 
    ///   Created by AL-TVO163 on 27/06/2023.
    public static let hello = Localization.tr("lang-en", "hello", fallback: "sample hello")
    /// new worlds snè
    public static let newWorld = Localization.tr("lang-en", "new world", fallback: "new worlds snè")
    /// nice view in the city
    public static let niceView = Localization.tr("lang-en", "nice_view", fallback: "nice view in the city")
  }
  public enum LangVn {
    /// Localizable.strings
    ///   
    /// 
    ///   Created by AL-TVO163 on 27/06/2023.
    public static let hello = Localization.tr("lang-vn", "hello", fallback: "tiếng việt")
    /// nè
    public static let newWorld = Localization.tr("lang-vn", "new world", fallback: "nè")
    /// việt nam
    public static let niceView = Localization.tr("lang-vn", "nice_view", fallback: "việt nam")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Localization {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
