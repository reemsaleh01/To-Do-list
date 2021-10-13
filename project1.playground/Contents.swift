import UIKit

enum Taskstatus {
    case complet
    case pending
}

struct ToDoIt {
    
    
    var taskstatus : Taskstatus
    var Title : String
    var day : String
    var describtion : String
}




class ToDo {
    var Tasks : [ToDoIt]
    init(Tasks : ToDoIt) {
        self.Tasks = [Tasks]
        
    }
    
    func addTask(NewTask : ToDoIt){
        Tasks.append(NewTask)
        print("added")
    }
    func removeTask(index: Int){
        Tasks.remove(at:index)
        print("removed")
    }
    
    func ReadTask(){
        
        for Text in Tasks {
            print("The Title\(Text.Title ) The Describtion  \(Text.describtion) The Day \(Text.day) The taskstatus \(Text.taskstatus)")
            
            
            //            print(Tasks)
        }
    }
    func filterByStatus(status: Taskstatus) {
        let filteredArray = self.Tasks.filter({$0.taskstatus == status})
        for item in filteredArray {
            print("Filter Task By: \(status) \n Task: \(item.Title), \(item.taskstatus)")
        }
    }
    
    func UpdateTask(index: Int , newTask: ToDoIt){
        self.Tasks[index] = newTask
    }
    
}

var TheList = ToDo(Tasks: ToDoIt.init(taskstatus: .pending , Title: "home work", day: "sunday", describtion: "do homework"))
TheList.addTask(NewTask: ToDoIt.init(taskstatus: .complet, Title: "perform duties", day: "Tuseday", describtion: "perform tasks"))
TheList.addTask(NewTask: ToDoIt(taskstatus: .pending , Title: "home workkkkkk", day: "sunday", describtion: "do homework"))
TheList.addTask(NewTask: ToDoIt.init(taskstatus: .complet, Title: "go to the Library", day: "Monday", describtion: "Learning"))
TheList.ReadTask()
//TheList.removeTask(index: 1)
TheList.UpdateTask(index: 0, newTask: ToDoIt.init(taskstatus: .pending, Title: "go to jym", day: "sunday", describtion: "exercises" ))
TheList.ReadTask()
TheList.removeTask(index: 0)
TheList.ReadTask()
print("\n")
//TheList.Tasks.sort()
TheList.filterByStatus(status: .complet)
TheList.Tasks.sorted { $0.Title > $1.Title }

TheList.ReadTask()


TheList.Tasks.sorted { $0.Title > $1.Title }



