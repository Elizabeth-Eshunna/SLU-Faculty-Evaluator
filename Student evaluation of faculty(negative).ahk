; Array of answers for 25 questions (represented by numbers 1-5)
answers := [5, 5, 1, 5, 5, 5, 1, 5, 5, 5, 5, 5, 1, 5, 5, 1, 2, 5, 5, 3, 1, 5, 5, 1, 1, 5, 5]

; Hotkey to start the script when Tab key is pressed
~Tab::
    ; Loop through the 26 questions
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
