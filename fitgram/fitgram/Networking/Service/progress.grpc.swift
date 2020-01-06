//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: progress.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Dispatch
import Foundation
import SwiftGRPC
import SwiftProtobuf

internal protocol Apisvr_ProgressServiceGetProgressHomeCall: ClientCallUnary {}

fileprivate final class Apisvr_ProgressServiceGetProgressHomeCallBase: ClientCallUnaryBase<Apisvr_GetProgressHomeReq, Apisvr_GetProgressHomeResp>, Apisvr_ProgressServiceGetProgressHomeCall {
  override class var method: String { return "/apisvr.ProgressService/GetProgressHome" }
}

internal protocol Apisvr_ProgressServiceAddWeightLogCall: ClientCallUnary {}

fileprivate final class Apisvr_ProgressServiceAddWeightLogCallBase: ClientCallUnaryBase<Apisvr_AddWeightLogReq, Apisvr_AddWeightLogResp>, Apisvr_ProgressServiceAddWeightLogCall {
  override class var method: String { return "/apisvr.ProgressService/AddWeightLog" }
}

internal protocol Apisvr_ProgressServiceGetWeightLogsCall: ClientCallUnary {}

fileprivate final class Apisvr_ProgressServiceGetWeightLogsCallBase: ClientCallUnaryBase<Apisvr_GetWeightLogsReq, Apisvr_GetWeightLogsResp>, Apisvr_ProgressServiceGetWeightLogsCall {
  override class var method: String { return "/apisvr.ProgressService/GetWeightLogs" }
}

internal protocol Apisvr_ProgressServiceGetWeeklyReportCall: ClientCallUnary {}

fileprivate final class Apisvr_ProgressServiceGetWeeklyReportCallBase: ClientCallUnaryBase<Apisvr_GetWeeklyReportReq, Apisvr_GetWeeklyReportResp>, Apisvr_ProgressServiceGetWeeklyReportCall {
  override class var method: String { return "/apisvr.ProgressService/GetWeeklyReport" }
}

internal protocol Apisvr_ProgressServiceGetBodyMeasurementLogCall: ClientCallUnary {}

fileprivate final class Apisvr_ProgressServiceGetBodyMeasurementLogCallBase: ClientCallUnaryBase<Apisvr_GetBodyMeasurementLogReq, Apisvr_GetBodyMeasurementLogResp>, Apisvr_ProgressServiceGetBodyMeasurementLogCall {
  override class var method: String { return "/apisvr.ProgressService/GetBodyMeasurementLog" }
}

internal protocol Apisvr_ProgressServiceGetBodyShapeCall: ClientCallUnary {}

fileprivate final class Apisvr_ProgressServiceGetBodyShapeCallBase: ClientCallUnaryBase<Apisvr_GetBodyShapeReq, Apisvr_GetBodyShapeResp>, Apisvr_ProgressServiceGetBodyShapeCall {
  override class var method: String { return "/apisvr.ProgressService/GetBodyShape" }
}


/// Instantiate Apisvr_ProgressServiceServiceClient, then call methods of this protocol to make API calls.
internal protocol Apisvr_ProgressServiceService: ServiceClient {
  /// Synchronous. Unary.
  func getProgressHome(_ request: Apisvr_GetProgressHomeReq, metadata customMetadata: Metadata) throws -> Apisvr_GetProgressHomeResp
  /// Asynchronous. Unary.
  @discardableResult
  func getProgressHome(_ request: Apisvr_GetProgressHomeReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetProgressHomeResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetProgressHomeCall

  /// Synchronous. Unary.
  func addWeightLog(_ request: Apisvr_AddWeightLogReq, metadata customMetadata: Metadata) throws -> Apisvr_AddWeightLogResp
  /// Asynchronous. Unary.
  @discardableResult
  func addWeightLog(_ request: Apisvr_AddWeightLogReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_AddWeightLogResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceAddWeightLogCall

  /// Synchronous. Unary.
  func getWeightLogs(_ request: Apisvr_GetWeightLogsReq, metadata customMetadata: Metadata) throws -> Apisvr_GetWeightLogsResp
  /// Asynchronous. Unary.
  @discardableResult
  func getWeightLogs(_ request: Apisvr_GetWeightLogsReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetWeightLogsResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetWeightLogsCall

  /// Synchronous. Unary.
  func getWeeklyReport(_ request: Apisvr_GetWeeklyReportReq, metadata customMetadata: Metadata) throws -> Apisvr_GetWeeklyReportResp
  /// Asynchronous. Unary.
  @discardableResult
  func getWeeklyReport(_ request: Apisvr_GetWeeklyReportReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetWeeklyReportResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetWeeklyReportCall

  /// Synchronous. Unary.
  func getBodyMeasurementLog(_ request: Apisvr_GetBodyMeasurementLogReq, metadata customMetadata: Metadata) throws -> Apisvr_GetBodyMeasurementLogResp
  /// Asynchronous. Unary.
  @discardableResult
  func getBodyMeasurementLog(_ request: Apisvr_GetBodyMeasurementLogReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetBodyMeasurementLogResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetBodyMeasurementLogCall

  /// Synchronous. Unary.
  func getBodyShape(_ request: Apisvr_GetBodyShapeReq, metadata customMetadata: Metadata) throws -> Apisvr_GetBodyShapeResp
  /// Asynchronous. Unary.
  @discardableResult
  func getBodyShape(_ request: Apisvr_GetBodyShapeReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetBodyShapeResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetBodyShapeCall

}

internal extension Apisvr_ProgressServiceService {
  /// Synchronous. Unary.
  func getProgressHome(_ request: Apisvr_GetProgressHomeReq) throws -> Apisvr_GetProgressHomeResp {
    return try self.getProgressHome(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func getProgressHome(_ request: Apisvr_GetProgressHomeReq, completion: @escaping (Apisvr_GetProgressHomeResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetProgressHomeCall {
    return try self.getProgressHome(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func addWeightLog(_ request: Apisvr_AddWeightLogReq) throws -> Apisvr_AddWeightLogResp {
    return try self.addWeightLog(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func addWeightLog(_ request: Apisvr_AddWeightLogReq, completion: @escaping (Apisvr_AddWeightLogResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceAddWeightLogCall {
    return try self.addWeightLog(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func getWeightLogs(_ request: Apisvr_GetWeightLogsReq) throws -> Apisvr_GetWeightLogsResp {
    return try self.getWeightLogs(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func getWeightLogs(_ request: Apisvr_GetWeightLogsReq, completion: @escaping (Apisvr_GetWeightLogsResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetWeightLogsCall {
    return try self.getWeightLogs(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func getWeeklyReport(_ request: Apisvr_GetWeeklyReportReq) throws -> Apisvr_GetWeeklyReportResp {
    return try self.getWeeklyReport(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func getWeeklyReport(_ request: Apisvr_GetWeeklyReportReq, completion: @escaping (Apisvr_GetWeeklyReportResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetWeeklyReportCall {
    return try self.getWeeklyReport(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func getBodyMeasurementLog(_ request: Apisvr_GetBodyMeasurementLogReq) throws -> Apisvr_GetBodyMeasurementLogResp {
    return try self.getBodyMeasurementLog(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func getBodyMeasurementLog(_ request: Apisvr_GetBodyMeasurementLogReq, completion: @escaping (Apisvr_GetBodyMeasurementLogResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetBodyMeasurementLogCall {
    return try self.getBodyMeasurementLog(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func getBodyShape(_ request: Apisvr_GetBodyShapeReq) throws -> Apisvr_GetBodyShapeResp {
    return try self.getBodyShape(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func getBodyShape(_ request: Apisvr_GetBodyShapeReq, completion: @escaping (Apisvr_GetBodyShapeResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetBodyShapeCall {
    return try self.getBodyShape(request, metadata: self.metadata, completion: completion)
  }

}

internal final class Apisvr_ProgressServiceServiceClient: ServiceClientBase, Apisvr_ProgressServiceService {
  /// Synchronous. Unary.
  internal func getProgressHome(_ request: Apisvr_GetProgressHomeReq, metadata customMetadata: Metadata) throws -> Apisvr_GetProgressHomeResp {
    return try Apisvr_ProgressServiceGetProgressHomeCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func getProgressHome(_ request: Apisvr_GetProgressHomeReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetProgressHomeResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetProgressHomeCall {
    return try Apisvr_ProgressServiceGetProgressHomeCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func addWeightLog(_ request: Apisvr_AddWeightLogReq, metadata customMetadata: Metadata) throws -> Apisvr_AddWeightLogResp {
    return try Apisvr_ProgressServiceAddWeightLogCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func addWeightLog(_ request: Apisvr_AddWeightLogReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_AddWeightLogResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceAddWeightLogCall {
    return try Apisvr_ProgressServiceAddWeightLogCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func getWeightLogs(_ request: Apisvr_GetWeightLogsReq, metadata customMetadata: Metadata) throws -> Apisvr_GetWeightLogsResp {
    return try Apisvr_ProgressServiceGetWeightLogsCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func getWeightLogs(_ request: Apisvr_GetWeightLogsReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetWeightLogsResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetWeightLogsCall {
    return try Apisvr_ProgressServiceGetWeightLogsCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func getWeeklyReport(_ request: Apisvr_GetWeeklyReportReq, metadata customMetadata: Metadata) throws -> Apisvr_GetWeeklyReportResp {
    return try Apisvr_ProgressServiceGetWeeklyReportCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func getWeeklyReport(_ request: Apisvr_GetWeeklyReportReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetWeeklyReportResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetWeeklyReportCall {
    return try Apisvr_ProgressServiceGetWeeklyReportCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func getBodyMeasurementLog(_ request: Apisvr_GetBodyMeasurementLogReq, metadata customMetadata: Metadata) throws -> Apisvr_GetBodyMeasurementLogResp {
    return try Apisvr_ProgressServiceGetBodyMeasurementLogCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func getBodyMeasurementLog(_ request: Apisvr_GetBodyMeasurementLogReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetBodyMeasurementLogResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetBodyMeasurementLogCall {
    return try Apisvr_ProgressServiceGetBodyMeasurementLogCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func getBodyShape(_ request: Apisvr_GetBodyShapeReq, metadata customMetadata: Metadata) throws -> Apisvr_GetBodyShapeResp {
    return try Apisvr_ProgressServiceGetBodyShapeCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func getBodyShape(_ request: Apisvr_GetBodyShapeReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetBodyShapeResp?, CallResult) -> Void) throws -> Apisvr_ProgressServiceGetBodyShapeCall {
    return try Apisvr_ProgressServiceGetBodyShapeCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
internal protocol Apisvr_ProgressServiceProvider: ServiceProvider {
  func getProgressHome(request: Apisvr_GetProgressHomeReq, session: Apisvr_ProgressServiceGetProgressHomeSession) throws -> Apisvr_GetProgressHomeResp
  func addWeightLog(request: Apisvr_AddWeightLogReq, session: Apisvr_ProgressServiceAddWeightLogSession) throws -> Apisvr_AddWeightLogResp
  func getWeightLogs(request: Apisvr_GetWeightLogsReq, session: Apisvr_ProgressServiceGetWeightLogsSession) throws -> Apisvr_GetWeightLogsResp
  func getWeeklyReport(request: Apisvr_GetWeeklyReportReq, session: Apisvr_ProgressServiceGetWeeklyReportSession) throws -> Apisvr_GetWeeklyReportResp
  func getBodyMeasurementLog(request: Apisvr_GetBodyMeasurementLogReq, session: Apisvr_ProgressServiceGetBodyMeasurementLogSession) throws -> Apisvr_GetBodyMeasurementLogResp
  func getBodyShape(request: Apisvr_GetBodyShapeReq, session: Apisvr_ProgressServiceGetBodyShapeSession) throws -> Apisvr_GetBodyShapeResp
}

extension Apisvr_ProgressServiceProvider {
  internal var serviceName: String { return "apisvr.ProgressService" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  internal func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/apisvr.ProgressService/GetProgressHome":
      return try Apisvr_ProgressServiceGetProgressHomeSessionBase(
        handler: handler,
        providerBlock: { try self.getProgressHome(request: $0, session: $1 as! Apisvr_ProgressServiceGetProgressHomeSessionBase) })
          .run()
    case "/apisvr.ProgressService/AddWeightLog":
      return try Apisvr_ProgressServiceAddWeightLogSessionBase(
        handler: handler,
        providerBlock: { try self.addWeightLog(request: $0, session: $1 as! Apisvr_ProgressServiceAddWeightLogSessionBase) })
          .run()
    case "/apisvr.ProgressService/GetWeightLogs":
      return try Apisvr_ProgressServiceGetWeightLogsSessionBase(
        handler: handler,
        providerBlock: { try self.getWeightLogs(request: $0, session: $1 as! Apisvr_ProgressServiceGetWeightLogsSessionBase) })
          .run()
    case "/apisvr.ProgressService/GetWeeklyReport":
      return try Apisvr_ProgressServiceGetWeeklyReportSessionBase(
        handler: handler,
        providerBlock: { try self.getWeeklyReport(request: $0, session: $1 as! Apisvr_ProgressServiceGetWeeklyReportSessionBase) })
          .run()
    case "/apisvr.ProgressService/GetBodyMeasurementLog":
      return try Apisvr_ProgressServiceGetBodyMeasurementLogSessionBase(
        handler: handler,
        providerBlock: { try self.getBodyMeasurementLog(request: $0, session: $1 as! Apisvr_ProgressServiceGetBodyMeasurementLogSessionBase) })
          .run()
    case "/apisvr.ProgressService/GetBodyShape":
      return try Apisvr_ProgressServiceGetBodyShapeSessionBase(
        handler: handler,
        providerBlock: { try self.getBodyShape(request: $0, session: $1 as! Apisvr_ProgressServiceGetBodyShapeSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

internal protocol Apisvr_ProgressServiceGetProgressHomeSession: ServerSessionUnary {}

fileprivate final class Apisvr_ProgressServiceGetProgressHomeSessionBase: ServerSessionUnaryBase<Apisvr_GetProgressHomeReq, Apisvr_GetProgressHomeResp>, Apisvr_ProgressServiceGetProgressHomeSession {}

internal protocol Apisvr_ProgressServiceAddWeightLogSession: ServerSessionUnary {}

fileprivate final class Apisvr_ProgressServiceAddWeightLogSessionBase: ServerSessionUnaryBase<Apisvr_AddWeightLogReq, Apisvr_AddWeightLogResp>, Apisvr_ProgressServiceAddWeightLogSession {}

internal protocol Apisvr_ProgressServiceGetWeightLogsSession: ServerSessionUnary {}

fileprivate final class Apisvr_ProgressServiceGetWeightLogsSessionBase: ServerSessionUnaryBase<Apisvr_GetWeightLogsReq, Apisvr_GetWeightLogsResp>, Apisvr_ProgressServiceGetWeightLogsSession {}

internal protocol Apisvr_ProgressServiceGetWeeklyReportSession: ServerSessionUnary {}

fileprivate final class Apisvr_ProgressServiceGetWeeklyReportSessionBase: ServerSessionUnaryBase<Apisvr_GetWeeklyReportReq, Apisvr_GetWeeklyReportResp>, Apisvr_ProgressServiceGetWeeklyReportSession {}

internal protocol Apisvr_ProgressServiceGetBodyMeasurementLogSession: ServerSessionUnary {}

fileprivate final class Apisvr_ProgressServiceGetBodyMeasurementLogSessionBase: ServerSessionUnaryBase<Apisvr_GetBodyMeasurementLogReq, Apisvr_GetBodyMeasurementLogResp>, Apisvr_ProgressServiceGetBodyMeasurementLogSession {}

internal protocol Apisvr_ProgressServiceGetBodyShapeSession: ServerSessionUnary {}

fileprivate final class Apisvr_ProgressServiceGetBodyShapeSessionBase: ServerSessionUnaryBase<Apisvr_GetBodyShapeReq, Apisvr_GetBodyShapeResp>, Apisvr_ProgressServiceGetBodyShapeSession {}
