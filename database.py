# database module
import sqlite3

DATABASE = "/home/drdelozier03/mysite/todo.db"
DATABASE = "todo.db"

mock_data = [
    (2, 'Visit the Python website'),
    (3, 'Test various editors for and check the syntax highlighting'),
    (5, 'This is a mock task'), 
    (6, "Fix the 'new item' logic!"), 
    (7, '')
    ]

def get_tasks():
    #conn = sqlite3.connect(DATABASE)
    #c = conn.cursor()
    #c.execute("SELECT id, task FROM todo WHERE status LIKE '1'")
    #result = c.fetchall()
    #c.close()
    #return result
    return mock_data

