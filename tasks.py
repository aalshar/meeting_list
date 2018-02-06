import pymongo

from pymongo import MongoClient
from bson.objectid import ObjectId

client = MongoClient("mongodb://greg:happy121@ds221258.mlab.com:21258/cloudapps")

db = client.cloudapps
current_tasks = db.current_tasks

def save_task(task):
    task_id = current_tasks.insert_one(task).inserted_id
    return str(task_id)

def get_task(task_id):
    # Convert from string to ObjectId:
    object_id = ObjectId(task_id)
    task = current_tasks.find_one({'_id': object_id})
    return task

def get_task_list():
    return list(current_tasks.find())

