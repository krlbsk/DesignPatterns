let treesFactory = TreeFactory(intrinsicState: "standard")
let willowKey = "willow"
let lindenKey = "linden"

let willow = treesFactory.getTree(key: willowKey)
let linden = treesFactory.getTree(key: lindenKey)

willow.photosynthesize(extrinsicState: "50 years old")
linden.photosynthesize(extrinsicState: "sapling")

let anotherWillow = treesFactory.getTree(key: willowKey)
anotherWillow.photosynthesize(extrinsicState: "100 years old")

let anotherLinden = treesFactory.getTree(key: lindenKey)
anotherLinden.photosynthesize(extrinsicState: "with yellow leaves")

print("All tree flyweights: \(treesFactory.trees)")
