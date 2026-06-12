import Foundation
import TelemetryClient

/// A centralized manager to handle analytics signals.
class TelemetryManager {
    static let shared = TelemetryManager()
    
    private init() {}
    
    /// Initializes the Telemetry manager.
    static func initialize() {
        // REPLACE_WITH_YOUR_APP_ID: Enter your TelemetryDeck App ID here.
        let config = TelemetryDeck.Config(appID: "17D35C06-29E5-48FB-8810-4EFF294E9520")
        TelemetryDeck.initialize(config: config)
    }
    
    /// Sends a signal.
    /// - Parameters:
    ///   - signalName: The name of the event (e.g., "session_started", "card_answered")
    ///   - metadata: Additional context for the event
    func send(signalName: String, metadata: [String: String] = [:]) {
        var updatedMetadata = metadata
        
        #if DEBUG
        updatedMetadata["isTestMode"] = "true"
        #endif
        
        // Log to TelemetryDeck
        TelemetryDeck.signal(signalName, parameters: updatedMetadata)
        
        // Console prints for debugging
        print("[Telemetry] Signal: \(signalName) | Metadata: \(updatedMetadata)")
    }
    
    // MARK: - Helper Methods for "Intelligent" Metrics
    
    func trackSessionStart(level: String) {
        send(signalName: "session_started", metadata: ["level": level])
    }
    
    func trackSessionEnd(level: String, duration: Double, correct: Int, total: Int, finished: Bool) {
        send(signalName: "session_ended", metadata: [
            "level": level,
            "duration": String(format: "%.0f", duration),
            "score": "\(correct)/\(total)",
            "percentage": total > 0 ? "\(Int(Double(correct)/Double(total)*100))" : "0",
            "completed": String(finished)
        ])
    }
    
    func trackCardAnswer(cardID: String, level: String, isCorrect: Bool, timeTaken: Double) {
        send(signalName: "card_answered", metadata: [
            "card_id": cardID,
            "level": level,
            "is_correct": String(isCorrect),
            "time_taken": String(format: "%.1f", timeTaken)
        ])
    }
    
    func trackLevelReset(level: String) {
        send(signalName: "level_reset", metadata: ["level": level])
    }
    
    func trackMasteryAchieved(cardID: String) {
        send(signalName: "card_mastered", metadata: ["card_id": cardID])
    }
}
