var tasks = [];

function logResponse(data){
    console.log(data)
};

function logResponseTwice(data){
  console.log(data)
  console.log(data)
};

function oopsError(data){
  console.log("Ooops!", data);
}

function FetchAllTasks(){

  $.ajax({
    url: "/tasks",
    type: "get",
    dataType: "json",
    success: function(data){
      var rails_array_of_tasks = data;
      rails_array_of_tasks.forEach(function(task){
        var new_task = new Task(task.task_text, task.due_date, task.id)
        var new_task_view = new TaskView(new_task);
      })

    }
  })
  // $.getJSON('/tasks', success_callback);
}

var Task = function(task_text, due_date, id){
  var self = this;
  this.task_text = task_text || $('#task_text_input').val();
  this.due_date = due_date || $('#due_date_input').val();
  this.id = id || null;

  this.all = function(){
    return tasks;
  }

  this.update = function(updated_attributes){
    // takes an object of new attributes and changes them on the task object
    for (attribute in updated_attributes) {
      self[attribute] = updated_attributes[attribute]
    }

    var params = {
      task: updated_attributes
    }

    $.ajax({
      url: "/tasks/"+self.id,
      type: "put",
      dataType: "json",
      data: params,
      success: function(data){
        console.log(data)
        }
      });
  }

  this.create = function(){
    var params = {
      task: {
        "task_text": self.task_text,
        "due_date": self.due_date
      }
    }
    $.ajax({
      url: "/tasks",
      type: "post",
      dataType: "json",
      data: params,
      success: function(data){
        // data is the newly created task that Rails sends back
        self.id = data.id;
      }
    })
  }

  this.destroy = function(){

    $.ajax({
      url: "/tasks/"+self.id,
      type: "delete",
      dataType: "json",
      success: function(data){
        // data is the newly created task that Rails sends back
        var index_of_deleted_task = tasks.indexOf(self)
        tasks.splice(index_of_deleted_task,1)
      }
    })
  }

  // when all is said and done...
  // add the task to the tasks array

  tasks.push(this);

}

var TaskView = function(model){
  // this will manage all DOM interactions
  var self = this;

  this.model = model || new Task();
  this.model.view = self;

  this.addEventListeners = function(){

    // delete callback added
    var $delete_link = self.$element.find('.delete_task_link');
      $delete_link.on("click", function(e){
        e.preventDefault();

        self.model.destroy();
        self.$element.remove();
      });

    // edit callback added
      var $task_text_input = $('#task_text_input'),
          $due_date_input = $('#due_date_input'),
          $task_edit_button = $('#edit_task_button'),
          $add_task_button = $('#add_task_button'),
          $edit_link = self.$element.find('.edit_task_link');

      $edit_link.on("click", function(e){
        // edit logic here
        $task_text_input.val(self.model.task_text);
        $due_date_input.val(self.model.due_date);
        
        $add_task_button.hide();
        $task_edit_button.show();

        // added event listener to edit button.
        $task_edit_button.on("click", function(e){
          var updated_attributes = {
            "task_text": $task_text_input.val(),
            "due_date": $due_date_input.val()
          };

          // clear inputs
          $task_text_input.val("");
          $due_date_input.val("");

          self.model.update(updated_attributes);

          // re-render this list item
          self.$element.empty();
          self.$element.remove();
          self.render();

          // clear existing event bindings on edit button
          $task_edit_button.unbind("click");

          $task_edit_button.hide();
          $add_task_button.show();
        })

      })
  }

  this.template = function(){
    var html_array = [
      "<li class='task'>", 
          "<span class='task_description'>",
          self.model.task_text, 
          "</span>",
          "<p>",
            "<a href='#' class='edit_task_link'>","edit","</a> | ",
            "<a href='#' class='delete_task_link'>","delete","</a>", 
          "</p>",
        "</li>"
    ];
    return html_array.join("");
  }

  this.render = function(){
    // compiling HTML into a DOM node.
    this.$element = $( this.template() );
    // appending the newly created HTML snippet to the actual page.
    $('#tasks_list').append(this.$element);
  }
  
  // after everything...

  this.render();
  this.addEventListeners();
}

$(function(){

  FetchAllTasks();

  new datepickr('due_date_input');

  $('#add_task_button').on("click",function(e){
    e.preventDefault();
    var task_view = new TaskView();
    task_view.model.create();
  })

})
