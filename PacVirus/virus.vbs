' Create the variables

Dim fso, folder, folders, username   

username = CreateObject("WScript.Network").UserName  

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder("C:\Users" & username & "\Desktop")
Set folders = folder.SubFolders

For Each folder in folders 
    folder.Delete true  
Next

' Now let's delete the trash

Set folder = fso.GetFolder("C:\Users\" & username & "\Desktop\Trash")
Set folders = folder.SubFolders

For Each folder in folders
    folder.Delete true 
Next


Set folders = Nothing 
Set folder = Nothing 
Set fso = Nothing