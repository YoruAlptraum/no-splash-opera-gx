import win32com.client
import os

def list_all_tasks():
    scheduler = win32com.client.Dispatch('Schedule.Service')
    scheduler.Connect()
    root_folder = scheduler.GetFolder('\\')
    task_list = root_folder.GetTasks(0)
    opera_task = ""

    for task in task_list:
        if "Opera GX scheduled" in task.Name:
            opera_task = task
    
    if opera_task:        
        current_dir = os.getcwd()
        exe_path = os.path.join(current_dir, "dist", "No splash.exe")

        for action in opera_task.Definition.Actions:
            if action.Path == exe_path:
                print('dupe')
                return

        task_definition = opera_task.Definition
        new_action= task_definition.Actions.Create(0)
        new_action.Path = exe_path

        root_folder.RegisterTaskDefinition(
            opera_task.Name,
            task_definition,
            6,  # Task created or updated
            None,
            None,
            3  # Run as system user
        )

# Example usage
list_all_tasks()
