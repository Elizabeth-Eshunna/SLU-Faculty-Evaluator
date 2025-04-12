# SLU-Faculty-Evaluator
Evaluates a faculty professor (all in positive answers)


The .ahk format should readable(but not runnable) by any text editor if renamed to .txt if you have doubts about the code. 
The .ahk format can be opened if you have the auto hotkey application (https://www.autohotkey.com/).
if you do not want to install ahk, then an .exe is provided. You just have to run it and allow the windows defender to run it.

If you use the .ahk version, you can edit the array if you want more tailored answers to your liking.

How to use: Press TAB on the upper area (or where the quesions are not in the area).

Do not forget to exit the script by going to your taskbar, right click the icon and press "Exit".


Script explanation:
Press tab to go to next question.
Arrow keys answers the question.

The index in the array are the question number and what to answer, where it will loop again to "press how many times the arrow key must be pressed in this specific question".

The first answer of the question can be only reached if the input arrows were "right->left",
 this is because of how answering the question (with the right arrow key) always starts at the second answer, so the left arrow key backtracks that.

