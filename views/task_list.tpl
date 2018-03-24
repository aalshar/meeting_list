l<head><title>Your meetings</title></head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<form action="/new-task" method="post">
<div class="w3-margin">
  <table>
    <tr>
      <th>
        <div width=400 class="w3-card-4 w3-yellow" style="min-width:400px background:red  ">Your Meetings</div>
      </th>
      <th>
        <div class="w3-card-4 w3-red"><img src="/static/task-completed.png"></div>
      </th>
      <th>
        <div class="w3-card-4 w3-blue"><img src="/static/discard-task.png"></div>
      </th>
	<th>
        <div class="w3-card-4 w3-green"><img src="/static/edit-task.png"></div>
      </th>
	 <th>
        <div class="w3-card-4 w3-silver"> <a href="dashboard"> <img src="/static/dashboard-task.png"> </a> </div>
      </th>    
</tr>
    <tr>
      <td>
        <div class="w3-card-4 w3-silver">
          <input autofocus type="text" name="new_task_description" placeholder="New meeting [Time]..." style="min-width: 400px">
        </div>
      </td>
      <td>
        <div class="w3-padding w3-center">
          <input type="image" src="/static/save-task.png"/>
        </div>
      </td>
      <td>
        <div class="w3-padding w3-center">
          <a href="/">
            <img src="/static/discard-task.png">
          </a>
        </div>
      </td>

   

    %for task in tasks:
      <tr>
        <td>
          <div class="w3-card-4 w3-green">{{task['description']}}</div>
        </td>
        <td>
          <div class="w3-padding w3-center">
            %if task['status'] == '0': 
              <a href="/mark-as-completed/{{task['_id']}}">
                <img src="/static/task-active.png">
              </a>
            %else:
              <a href="/mark-as-active/{{task['_id']}}">
                <img src="/static/task-completed.png">
              </a>
            %end
          </div>
        </td>
        <td>
          <div class="w3-padding w3-center">
            <a href="/discard-task/{{task['_id']}}">
              <img src="/static/discard-task.png">
            </a>
          </div>
        </td>
        <td>
          <div class="w3-padding w3-center">
            <a href="/edit-task/{{task['_id']}}">
              <img src="/static/edit-task.png">
            </a>
          </div>
        </td>
	 <td>
      </tr>
    %end
  </table>
  <hr/>
  <div style="padding-left:5px">
  %if show_completed: 
    <a href="/hide-completed">
      <img src="/static/task-completed.png" style="padding-bottom:5px">
    </a>
  %else:
    <a href="/show-completed">
      <img src="/static/task-active.png" style="padding-bottom:5px">
    </a>
  %end
  Show completed meetings
  </div>
</div>
</form>
</body>
