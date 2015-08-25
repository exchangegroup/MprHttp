//
//  Helper functions to work with strings.
//

import Foundation

public struct TegString {
  public static func blank(text: String) -> Bool {
    let trimmed = text.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    return trimmed.isEmpty
  }

  public static func trim(text: String) -> String {
    return text.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
  }

  public static func contains(text: String, substring: String,
    ignoreCase: Bool = false,
    ignoreDiacritic: Bool = false) -> Bool {

    var options: UInt = 0

    if ignoreCase { options |= NSStringCompareOptions.CaseInsensitiveSearch.rawValue }
    if ignoreDiacritic { options |= NSStringCompareOptions.DiacriticInsensitiveSearch.rawValue }

    return text.rangeOfString(substring, options: NSStringCompareOptions(rawValue: options)) != nil
  }

  //
  // Returns a single space if string is empty.
  // It is used to set UITableView cells labels as a workaround.
  //
  public static func singleSpaceIfEmpty(text: String) -> String {
    if text == "" {
      return " "
    }
    
    return text
  }
}
