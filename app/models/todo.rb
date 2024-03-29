class Todo < ActiveRecord::Base 

    def due_today?
		if @due_date == Date.today
			true
		end
	end

    def to_displayable_string    
        display_status = completed ? "[X]" : "[ ]"    
        display_date = due_today? ? nil : due_date    
        "#{id}. #{display_status} #{todo_text} #{display_date}"  
    end

    def self.to_displayable_list    
        all.map {|todo| todo.to_displayable_string }.join("\n")  
    end

end