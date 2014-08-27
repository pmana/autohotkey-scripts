SetTitleMatchMode, 2
#IfWinActive, Visual Studio
!x::ExtractHighlightedTextToResource()
!p::CutConvertToPascalCaseAndPaste()
#IfWinActive

ExtractHighlightedTextToResource() {
    CutSurroundWithServerSideDirectiveAndPaste()
    Send, {Left}{Left}{Left} ; move cursor onto pasted text
    RunReSharperExtractToResource()
    if !ErrorLevel {
        CutConvertToPascalCaseAndPaste()
    }
}

CutSurroundWithServerSideDirectiveAndPaste() {
    clipboard = ; clear the clipboard
    Send, ^x
    ClipWait

    ; surround with Razor server-side directive
    clipboard = @(`"%clipboard%`")

    Send, ^v
    Sleep, 200
}

RunReSharperExtractToResource() {
    ; F6 is the hotkey to run ReSharper Extract To Resource refactoring
    Send, {F6}

    ; wait for ReSharper dialog
    WinWaitActive, ReSharper, , 2
    if ErrorLevel {
        MsgBox, Failed to find ReSharper dialog
        Return
    }

    Sleep, 200
}

CutConvertToPascalCaseAndPaste() {
    clipboard = ; clear the clipboard
    Send, ^x
    ClipWait

    clipboard := TrimAndConvertToPascalCase(clipboard)

    Send, ^v
}

TrimAndConvertToPascalCase(text) {
    localText := text

    ; trim after 10th underscore (if there is one), we only want the first 9 words
    StringGetPos, pos, localText, _, L10
    if !ErrorLevel {
        localText := SubStr(localText, 1, pos)
    }

    ; replace all underscores with spaces
    StringReplace, localText, localText, _, %A_SPACE%, All

    ; title case
    StringUpper, localText, localText, T

    ; remove all spaces
    StringReplace, localText, localText, %A_SPACE%, , All

    return localText
}
