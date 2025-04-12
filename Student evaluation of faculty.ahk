 ; Start Array Editor with a Hotkey (F1)
F1::
Gui, New, +AlwaysOnTop +Resize, Array Editor
Gui, Font, S10
Gui, Add, Text,, Edit answers array below (values between 1 and 5):
Gui, Add, Edit, vAnswersBox w400 h100, % FormatArray(answers)
Gui, Add, Button, gSaveArray, Save
Gui, Add, Button, gClearArray, Clear All
Gui, Show,, Array Editor
return


; Array of answers for 25 questions (represented by numbers 1-5)
;OG := [1, 1, 5, 1, 1, 1, 5, 1, 1, 1, 1, 1, 5, 1, 1, 5, 1, 1, 1, 3, 5, 1, 1, 5, 5, 1, 1]
answers := [1, 1, 5, 1, 1, 1, 5, 1, 1, 1, 1, 1, 5, 1, 1, 5, 1, 1, 1, 3, 5, 1, 1, 5, 5, 1, 1]
; Hotkey to start the script when Tab key is pressed
~Tab::
    ; Loop through the 25 questions
    Loop, 26
    {
        ; Get the answer for the current question (number)
        currentAnswer := answers[A_Index]

        ; For number 1 (A), press Right Arrow and then Left Arrow
        if (currentAnswer = 1)
        {
            SendInput, {Right}
            SendInput, {Left}
			SendInput {Tab}
        }
        else
        {
            ; For numbers 2 to 5, press Right Arrow corresponding number of times
            ; 2 = 1 press, 3 = 2 presses, etc.
           Loop, % currentAnswer - 1	   
            {
                SendInput, {Right} 
            }
			SendInput {Tab}	
        }
    }
return	
