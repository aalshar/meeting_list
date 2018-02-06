import tasks

from pymongo import MongoClient

def test_get_tasks():
    task_list = tasks.get_task_list()
    assert type(task_list) is list

def test_save_task():
    tasks.save_task({'description' : "Do something", 'status' : "1"})
    task_list = tasks.get_task_list()
    assert type(task_list) is list
    found = False
    for task in task_list:
        assert 'description' in task
        if task['description'] == "Do something":
            found = True
    assert found

def test_get_task():
    task_id = tasks.save_task({'description' : "This is a test task.", 'status' : "1"})
    assert type(task_id) is str
    task = tasks.get_task(task_id)
    print(task)
    print(type(task))
    assert(task['description'] == "This is a test task.")

def test_mongo_client():
    assert type(tasks.client) is MongoClient
    assert tasks.db
    print(type(tasks.db))