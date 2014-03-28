class Task < ActiveRecord::Base
  attr_accessible :task_text, :due_date, :completed
end
