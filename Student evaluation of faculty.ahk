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

; Function to Save Edits
SaveArray:
Gui, Submit, NoHide
If (ValidateArray(AnswersBox)) {
    answers := StrSplit(AnswersBox, ",")
    MsgBox, 64, Success, Array updated successfully!
    Gui, Destroy
} else {
    MsgBox, 48, Error, Invalid input! Ensure values are between 1 and 5.
}
return

; Function to Clear the Array
ClearArray:
GuiControl,, AnswersBox,
return


; Helper Functions

; Validate Array Input (Only Values 1-5)
ValidateArray(input) {
    for val in StrSplit(input, ",")
        if (val < 1 || val > 5)
            return false
    return true
}
; Function to Format the Array into a Comma-Separated String
FormatArray(arr) {
    result := ""
    for index, value in arr {
        result .= value ","
    }
    ; Remove the trailing comma
    return SubStr(result, 1, -1)
}






;remove everything up
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