Option Explicit
Dim fs, s
Dim NamePipeSerVer
Dim NamePipeCliVer
Dim OutputVer
Dim SetupVer
set fs = wscript.CreateObject("scripting.filesystemobject")

' Check �p�[�e�B�V�����ݒ�c�[��Dependency�@Package is exist.
if (fs.FileExists("C:\Program Files (x86)\NECWinPartitionDP\NamePipeSer.exe")) then
	s = "is available"
else
	s = "not exist"
	MsgBox("�p�[�e�B�V�����ݒ�c�[��Dependency�@Package�͑��݂��܂���B")
	wscript.quit
end if

' Check Setup.exe exist in C:\APSETUP
if (fs.FileExists("C:\APSETUP\PartitionToolDependencyPackage\setup.exe")) then
	s = "is available"
else
	s = "not exist"
	MsgBox("�p�[�e�B�V�����ݒ�c�[��Dependency�@Package�͑��݂��܂���B")
	wscript.quit
end if

NamePipeSerVer = fs.GetFileVersion("C:\Program Files (x86)\NECWinPartitionDP\NamePipeSer.exe")
NamePipeCliVer = fs.GetFileVersion("C:\Program Files (x86)\NECWinPartitionDP\NamePipeCli.exe")
SetupVer = fs.GetFileVersion("C:\APSETUP\PartitionToolDependencyPackage\setup.exe")
OutputVer = "�p�[�e�B�V�����ݒ�c�[��Dependency�@Package�̃T�[�r�X�o�[�W�����́@"  & vbCrLf 
OutputVer = OutputVer & "NamePipeSer.exe: " & NamePipeSerVer & vbCrLf
OutputVer = OutputVer & "NamePipeCli.exe: " & NamePipeCliVer & vbCrLf
OutputVer = OutputVer & "�p�[�e�B�V�����ݒ�c�[��Dependency�@Package �R���g���[���o�[�W�����F�@" & SetupVer & vbCrLf
MsgBox(OutputVer)




REM Function GetVer(FilePathName As String) As Integer
	REM Dim fso As FileSystemObject
	REM Set fso = New FileSystemObject
	REM Dim fver As String, verStr() As String
	REM If Dir(FilePathName, vbNormal) = "" Then
		REM MsgBox FilePathName & "???"
		REM Exit Function
	REM End If
	
	REM GetVer = 0
	REM fver = fso.GetFileVersion(FilePathName)
	REM If fver <> "" Then
		REM verStr = Split(fver, ".")
		REM GetVer = Val(verStr(UBound(verStr)))
	REM End If
REM End Function

' Get File Version
REM MsgBox(GetVer("C:\Program Files (x86)\NECWinPartitionDP\NamePipeSer.exe"))

