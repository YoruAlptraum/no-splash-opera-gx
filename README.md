# No splash opera GX

Usually turning off splash screen on startup can only be completely stopped when deleting the splash exe file on opera GX folder

This app will set a windows task scheduler task that automatically checks for and deletes the splash exe when opera updates

# How to set up the task

- Download the zip from the releases page and extract it
- On the extracted folder run the set_scheduler.exe
- To confirm if the task has been created you can open windows task Scheduler and on the list of tasks open Opera Gx > Actions and confirm that there is a action that runs the "No splash.exe" file
