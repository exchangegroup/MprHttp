import Foundation

public struct TegHttpHeader {
  public init(field: String, value: String) {
    self.field = field
    self.value = value
  }
  
  public let field: String
  public let value: String
}
