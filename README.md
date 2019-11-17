# README

This application is a simple example of implementing a to-do list Ruby on Rail using ActiveRecords without using view and controllers.

## Installation

open terminal in directory 'toDoAR'

enter 

    rails console


## List of available commands

Create new task
```ruby
ToDoAr.createTask('task text')
```

Update task
```ruby
ToDoAr.updateTask(id, 'updated text')
```

Check
```ruby
ToDoAr.check(id)
```

Check all tasks
```ruby
ToDoAr.checkAll
```

Delete task
```ruby
ToDoAr.del(id)
```

Delete complited tasks
```ruby
ToDoAr.deleteComplited
```

Delete all tasks
```ruby
ToDoAr.deleteAll
```

Show all tasks
```ruby
ToDoAr.showTasks
```

Show active tasks
```ruby
ToDoAr.outputUnfinished
```

Show complited tasks
```ruby
ToDoAr.outputFinished
```
