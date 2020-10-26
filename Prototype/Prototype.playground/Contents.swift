let cvFile = File(name: "CV", contents: "Saw this, done that")
let copiedCVFile = cvFile.copy() as? File
copiedCVFile?.name
copiedCVFile?.contents
