draws:
    speech.disable()

oculus:
    tracking.control_zoom_toggle()

flick:
    key(alt-tab)

mush:
    key("ctrl:down")
    mouse_click(0)
    key("ctrl:up")
    # close the mouse grid
    user.grid_close()

swerve:
    user.mouse_gaze_scroll()    

stop:
    user.mouse_gaze_stop()

key(f3): speech.toggle()

key(f4): tracking.control_zoom_toggle()

# common grammer
rest: insert(". ")

idea: 
    key(shift-enter)
