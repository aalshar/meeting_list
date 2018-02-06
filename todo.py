from bottle import route, run, debug, template, request, get, post
from bottle import default_app

import database

#@get('/new')
#def get_new():
#    return template('new_task.tpl')

#@post('/new')
#def new_item():
#    new = request.GET.task.strip()
#    conn = sqlite3.connect('todo.db')
#    c = conn.cursor()
#    c.execute("INSERT INTO todo (task,status) VALUES (?,?)", (new,1))
#    new_id = c.lastrowid
#    conn.commit()
#    c.close()
#    return '<p>The new task was inserted into the database, the ID is %s</p>' % new_id

@route('/')
@route('/todo')
def todo_list():
    result = database.get_tasks()
    print("---")
    print(result)
    print("---")
    output = template('make_table', rows=result)
    return output

#application = default_app()
debug(True)
run(host='localhost', port=8080)

