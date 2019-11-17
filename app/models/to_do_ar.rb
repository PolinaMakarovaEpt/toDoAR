class ToDoAr < ApplicationRecord

     def self.updateTask(id,text)
        ToDoAr.update(id,:task => text)
     end

     def self.del (id)
        ToDoAr.delete(id)
     end

     def self.check(id)
        taskUpdate = ToDoAr.find(id)
        check = !taskUpdate.done
        ToDoAr.update(id,:done => check)
    end

    def self.checkAll
        ToDoAr.where(done:0).update_all(done:1)
    end


     def self.deleteComplited
            tasks = ToDoAr.where(done:1)
            tasks.each do |task|
            ToDoAr.delete(task.id)
        end
     end

    def self.showTasks
        alltasks = ToDoAr.all
        puts 'Uncomplited tasks'
        alltasks.each do |task|
          puts "id: #{task.id}
                task: #{task.task}
                completed: #{task.done}
                data: #{task.created_at}"
        end
    end

     def self.outputUnfinished
        undone = ToDoAr.where(done: 0).order(:created_at)
        puts 'Uncomplited tasks'
        undone.each do |task|
          puts "id: #{task.id}
                task: #{task.task}
                completed: #{task.done}
                data: #{task.created_at}
                data_update: #{task.updated_at}"
             end
        end

        def self.outputFinished
            doneTasls = ToDoAr.where(done: 1).order(:created_at)
            puts 'Complited tasks'
            doneTasls.each do |task|
              puts "id: #{task.id}
                    task: #{task.task}
                    completed: #{task.done}
                    data: #{task.created_at}
                    data_update: #{task.update_at}"
            end
        end
        
    def self.createTask(text)
        ToDoAr.create(:task => text,:done => false)
    end


    def self.deleteAll
        tasks = ToDoAr.all
        tasks.each do |task|
          ToDoAr.delete(task.id)
        end
     end
    
end
