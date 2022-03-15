#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;ask user to set the first Entry Box
KeyWait, LButton
MouseGetPos, x, y   ;Register pos and save to x and y.

;While Form is not finished
while(color != "ECEFF!");gray
{
    ;Search next Entry Box
    y+=60   ;Lower mouse position
    ;descends jusqu'a ce que tu pogne du bleu
    valid := false
    while(valid == false)
    {
        if(leftColor=="#E8152E" OR leftColor=="1DA1F2");coeur ou twitter
            y+=60
        else if(color=="1ABC9C");bleu valide
            valid := true
        else                ;blanc
            y+=15
    }

    ;Click current entry box
    Click "x y"

    ;Hover Link
    y+=80
    x-=35
    ;Click link
    Click "x y"
    ;wait 3sec
    Sleep 3000
    ;Close tab (CTRL + W)
    Send ^W

    ;Lower mouse position
    y+=15
    ;Click Continue
    Click "x y"

}
