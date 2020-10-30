let client = Client()

let consoleLogger = ConsoleLogger()
let fileLogger = FileLogger()
let alertLogger = AlertLogger()

consoleLogger
    .setNext(logger: fileLogger)?
    .setNext(logger: alertLogger)

let logs = [
    Log(message: "Library initialized successfully", level: .console),
    Log(message: "Send request X", level: .file),
    Log(message: "Receive request X", level: .file),
    Log(message: "Unknown error occurred", level: .alert),
    Log(message: "Send request Y", level: .file),
    Log(message: "Receive request Y", level: .file)
]

client.handle(chain: consoleLogger, logs: logs)
