# UWP Module List

## Concerns
- Bill use the mkrcvcd.png in C:\Program Files (x86)\Softnavi\icon to build Layout Module
- mkrcvcd library generated logs also exist in mkrcvcd_dp folder, it's need to change.

## MKRCVCD Library
- L6AAL61610 -> mkrcvcd_dp (MKRCVCDSER.exe 1.0.0.2)
- L6AAL61710 -> installer change name
- L6AAL61810 -> change service name
- L6AAL61910 -> delete not need start menu entry point. 
- L6AAL61A12 -> update version to 2.0.0.3, modify the sign package name
- L6AAL61B12 -> update mkrcvcd service name.
- L6AAL61C10 -> update mkrcvcdser.exe to sign nec certificate.
- L6AAL61D10 -> update mkrcvcdser.exe & mkrcvcdDP.exe to set CancelAutoPlay, Setup.exe Version to 2.0.2.0
- L6AAL61G10 -> update mkrcvcdser.exe & mkrcvcdDP.exe to set CancelAutoPlay, Setup.exe Version to 2.0.3.0
- L6AAL61H10 -> update SetAutoPlayReg.exe & UnsetAutoPlayReg.ext to version 1.0.0.1
- L6AAL61I10 -> L6AAL61H10 version for Conan
ProductCode->
	2.0.1.0 -> {E2227D63-0A8C-4217-8299-F0C9CB3E5CAA}

## MKRCVCD UWP
- L6AAL71C10 -> mkrcvcd_uwp (1.6.3.0)
- L6AAL71D10 -> mkrcvcd_uwp (1.6.4.0)  fix the problem when C Drive is not max drive, the temp folder not hidden.
- L6AAL71E10 -> mkrcvcd_uwp (1.6.4.0) fix the bug enter key not response.
- L6AAL71F10 -> mkrcvcd_uwp (1.6.8.0) add icon from nec.
- L6AAL71G10 -> mkrcvcd_uwp (1.6.8.0) use latest baseimage-15063.wim to convert
- L6AAL71H10 -> mkrcvcd_uwp (1.6.9.0) package the icon files from nec
- L6AAL71I10 -> mkrcvcd_uwp (1.7.0.0) change directory from mkrcvcd_dp to MkrcvcdLibrary
- L6AAL71J12 -> mkrcvcd_uwp (1.7.1.0) change initial page message & logic
- L6AAL71K12 -> mkrcvcd_uwp (1.7.2.0) fix bug 30546, 30537, 30535
- L6AAL71L12 -> mkrcvcd_uwp (1.7.3.0) modify message from mona
- L6AAL71M12 -> mkrcvcd_uwp (1.7.4.0) modify "CBS Load fail" message.
- L6AAL71N12 -> mkrcvcd_uwp (1.7.5.0) modify "StoreContentModifier" issue.
- L6AAL71O12 -> mkrcvcd_uwp (1.7.5.0) repackage 1.7.5.0
- L6AAL71P12 -> mkrcvcd_uwp (1.7.6.0) modify Start Page Message.
- L6AAL71Q10 -> mkrcvcd_uwp (1.7.6.0) change Package Name
- L6AAL71R10 -> mkrcvcd_uwp (1.7.7.0) modify use 2G not support, and modify the message hasn't new line.
- L6AAL71S12 -> mkrcvcd_uwp (1.7.7.0) modify uwp appx display name.
- L6AAL71U10 -> mkrcvcd_uwp (1.7.7.0) logo'd by ms version
- L6AAL71V10 -> mkrcvcd_uwp (1.7.7.0) delete the process to set metro.reg
- L6AAL71W10 -> mkrcvcd_uwp (1.7.7.0) delete the process to set digital certificate.
- L6AAL71X10 -> mkrcvcd_uwp (1.8.0.0) fix bugs: 30535, 30548, 30558, add about box 
- L6AAL71Y10 -> mkrcvcd_uwp (1.8.1.0) fix: add space to title; 
- L6AAL71Z10 -> mkrcvcd_uwp (1.8.1.0) ms logo'd
- L6AAL72110 -> mkrcvcd_uwp (1.8.2.0) fix: CancelAutoPlay
- L6AAL72210 -> mkrcvcd_uwp (1.8.2.0) last page in make usb, setfocus to create done.


