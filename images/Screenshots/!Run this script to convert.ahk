#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Loop, %A_ScriptDir%\*.*, 0, 0 ;Loop through current directory, ONLY FILES. Do NOT recurse subfolders.
{
	If (A_LoopFileExt = "webp") 
	{
		LoopFileName = %A_LoopFileName%	
		LoopFileName := RegExReplace(LoopFileName, "\.webp")
		FileCreateDir, %LoopFileName%
		FileMove, %A_LoopFileName%, %LoopFileName%\image.webp ; rename the image to image.webp after moving into the folder created from its old filename
	}
}
Msgbox Tada!
Return