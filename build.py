from pywinauto.application import Application
import time
import os

filename = os.getcwd() + "\\driver.edrv"

app = Application(backend="win32").start("c:\\Program Files (x86)\\Nortek Control\\Elan Driver Studio\\EDS.exe")
app.ELANDriverStudio.menu_select("File->Open Project...")

file_dlg = app.window(title_re="Open", found_index=0)
file_dlg.FileNameEdit.set_edit_text(filename)
file_dlg.Open.click_input()

time.sleep(2)

app.ELANDriverStudio.menu_select("Project->Compile")

time.sleep(1)

maybe_success_dlg = app['Elan Driver Studio']
success_control = maybe_success_dlg['Static2']
stuff = success_control.window_text()
lines = stuff.split("\n")
for line in lines:
    print("driver.lua >>>" + line)

maybe_success_dlg['Button'].click_input()

app.ELANDriverStudio.close()

app.wait_for_process_exit()