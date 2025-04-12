# SLU-Faculty-Evaluator
Evaluates a faculty professor (all in positive answers)


The .ahk format should readable(but not runnable) by any text editor if renamed to .txt if you have doubts about the code. 
The .ahk format can be opened if you have the auto hotkey application (https://www.autohotkey.com/).
if you do not want to install ahk, then an .exe is provided. just have to run it and allow the windows security to run it.

script explanation:

press tab to go to next question
arrow keys dictate the answer

the index in the array are "how many times the arrow key must loop in this specific question".

the first answer of the question can be only reached if the input arrows were "right->left",
this is because of how answering the question (with the right arrow key) always start at the second answer, so the left arrow key backtracks that.


Do not forget to exit the script by going to your taskbar, right click the icon and press "Exit".
