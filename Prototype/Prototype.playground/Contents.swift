let cvFile = File(name: "CV", content: "Saw this, done that")
let copiedCVFile = cvFile.copy() as? File
copiedCVFile?.name
copiedCVFile?.content
