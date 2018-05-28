import Vapor


/// Register your application's routes here.
public func routes(_ router: Router) throws {
    router.get(""){ req in
        return "This is EnglishTestDataWeb"
    }
    
    router.get("getProblem") { (req) -> [PData] in
        let coll = [
            PData(problem:"pro1", choice1: "ans1-1", choice2: "ans1-2", choice3: "ans1-3", answer: 2, proNum: 1),
            PData(problem:"pro2", choice1: "ans2-1", choice2: "ans2-2", choice3: "ans2-3", answer: 2, proNum: 2),
            PData(problem:"pro3", choice1: "ans3-1", choice2: "ans3-2", choice3: "ans3-3", answer: 2, proNum: 3),
            PData(problem:"pro4", choice1: "ans4-1", choice2: "ans4-2", choice3: "ans4-3", answer: 2, proNum: 4),
            PData(problem:"pro5", choice1: "ans5-1", choice2: "ans5-2", choice3: "ans5-3", answer: 2, proNum: 5),
            PData(problem:"pro6", choice1: "ans6-1", choice2: "ans6-2", choice3: "ans6-3", answer: 2, proNum: 6),
            PData(problem:"pro7", choice1: "ans7-1", choice2: "ans7-2", choice3: "ans7-3", answer: 2, proNum: 7),
            PData(problem:"pro8", choice1: "ans8-1", choice2: "ans8-2", choice3: "ans8-3", answer: 2, proNum: 8),
            PData(problem:"pro9", choice1: "ans9-1", choice2: "ans9-2", choice3: "ans9-3", answer: 2, proNum: 9),
            PData(problem:"pro10", choice1: "ans10-1", choice2: "ans10-2", choice3: "ans10-3", answer: 2, proNum: 10)]
        return coll
    }
    
    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}



struct PData: Content{
    var problem: String
    var choice1: String
    var choice2: String
    var choice3: String
    var answer: Int
    var proNum: Int
}
