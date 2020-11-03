; Dev-C++ Installation script (Inno Setup)

[Setup]
; Note: the AppId value is used to uniquely identify the application. Don't change!
; (For another application, generate new AppId by click Tools -> generate GUID)
AppId={{EED0431C-249C-4C72-8D3D-E92F3C8F4324}}

AppName = Dev-C++
AppVerName = Dev-C++ 5.15 TDM-GCC 9.2.0
AppPublisher = BanzhuSoft
AppPublisherURL = https://devcpp.gitee.io/
AppSupportURL =
AppUpdatesURL =
PrivilegesRequired = admin
DefaultDirName = {commonpf}\Dev-Cpp
DefaultGroupName = Dev-C++
DisableProgramGroupPage = yes
InfoBeforeFile = Readme.txt
LicenseFile = LICENSE.txt 
OutputDir = Setup-output
OutputBaseFilename = Dev-Cpp-5.15    
Compression = lzma
SolidCompression = no
SetupIconFile = devcpp.ico

LanguageDetectionMethod=uilanguage
ShowLanguageDialog=yes

[Languages]
;You many set other parameters (eg. fonts) in *.isl under Inno Setup folder.
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile:LICENSE.txt; InfoBeforeFile: "Readme.txt"
Name: "chinesesimp"; MessagesFile: "compiler:Languages\ChineseSimp.isl"; InfoBeforeFile: "Readme-cn.txt"
Name: "ChineseTrad"; MessagesFile: "compiler:Languages\ChineseTrad.isl"; InfoBeforeFile: "Readme-cn.txt"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"; LicenseFile:LICENSE.txt; InfoBeforeFile: "Readme.txt"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"; LicenseFile:LICENSE.txt; InfoBeforeFile: "Readme.txt"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"; LicenseFile:LICENSE.txt; InfoBeforeFile: "Readme.txt"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"; LicenseFile:LICENSE.txt; InfoBeforeFile: "Readme.txt"
;Name: "Korea"; MessagesFile: "compiler:Languages\Korea.isl"; LicenseFile:LICENSE.txt; InfoBeforeFile: "Readme.txt"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"; LicenseFile:LICENSE.txt; InfoBeforeFile: "Readme.txt"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile:LICENSE.txt; InfoBeforeFile: "Readme.txt"

[Dirs]
name: "{app}\AStyle"; Permissions: authusers-full

[Files]
Source: "*.iss"; DestDir: "{app}"; Flags: ignoreversion
Source: "*.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "*.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "*.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "*.manifest"; DestDir: "{app}"; Flags: ignoreversion

Source: "AStyle\AStyle.exe"; DestDir: "{app}\AStyle"; Flags: ignoreversion recursesubdirs createallsubdirs;
Source: "AStyle\LICENSE.md"; DestDir: "{app}\AStyle"; Flags: ignoreversion recursesubdirs createallsubdirs;
Source: "AStyle\README.md"; DestDir: "{app}\AStyle"; Flags: ignoreversion recursesubdirs createallsubdirs;
Source: "AStyle\doc\*.*"; DestDir: "{app}\AStyle\doc"; Flags: ignoreversion recursesubdirs createallsubdirs;
Source: "AStyle\file\*.*"; DestDir: "{app}\AStyle\file"; Flags: ignoreversion recursesubdirs createallsubdirs;

Source: "Help\*.*"; DestDir: "{app}\Help"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Lang\*.*"; DestDir: "{app}\Lang"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "TDM-GCC-64\*.*"; DestDir: "{app}\TDM-GCC-64"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Templates\*.*"; DestDir: "{app}\Templates"; Flags: ignoreversion recursesubdirs createallsubdirs

;Additional example and description files
Source: "Examples\*.c"; DestDir: "{app}\Examples"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Examples\*.cpp"; DestDir: "{app}\Examples"; Flags: ignoreversion recursesubdirs createallsubdirs
;should prepared the ini files carefully in advance
Source: "ini\*.*"; DestDir: "{app}\ini"; Flags: ignoreversion recursesubdirs createallsubdirsSource: "Icons\*.*"; DestDir: "{app}\Icons"; Flags: ignoreversion recursesubdirs createallsubdirs

;Parameter files. Default path: c:\Users\Administrator\AppData\Roaming\Dev-Cpp\
Source: "ini\codeinsertion.ini"; DestDir: "{userappdata}\Dev-Cpp"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "ini\defaultcode.ini"; DestDir: "{userappdata}\Dev-Cpp"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "ini\devcpp.ini"; DestDir: "{userappdata}\Dev-Cpp"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "ini\tools.ini"; DestDir: "{userappdata}\Dev-Cpp"; Flags: ignoreversion recursesubdirs createallsubdirs
; Note: do not use "Flags: ignoreversion" in any shared system file

[UninstallDelete]
;There may exist some additiolan files. Should be deleted during uninstallation.
Type: filesandordirs; Name: "{app}\AStyle"
Type: filesandordirs; Name: "{userappdata}\Dev-Cpp" 

[CustomMessages]
english.whatsnew = What's new
chinesesimp.whatsnew = 更新说明
ChineseTrad.whatsnew = 更新說明
french.whatsnew = What's new
german.whatsnew = What's new
italian.whatsnew = What's new
japanese.whatsnew = What's new
;Korea.whatsnew = What's new
spanish.whatsnew = What's new
russian.whatsnew = What's new

english.uninstall = Uninstall
chinesesimp.uninstall = 卸载
ChineseTrad.uninstall = 卸載
french.uninstall = Désinstaller
german.uninstall = Deinstallieren
italian.uninstall = Disinstallare
japanese.uninstall = アンインストール
;Korea.whatsnew = Uninstall
spanish.uninstall = Desinstalar
russian.uninstall = Удалить

english.runnow = Run Dev-C++ now
chinesesimp.runnow = 现在就运行 Dev-C++
ChineseTrad.runnow = 現在就運行 Dev-C++
french.runnow = Exécutez Dev-C++ maintenant
german.runnow = Führen Sie jetzt Dev-C++ aus
italian.runnow = Esegui Dev-C++ ora
japanese.runnow = 今すぐ Dev-C++ を実行する
;Korea.runnow = Run Dev-C++ now
spanish.runnow = Ejecute Dev-C++ ahora
russian.runnow = Запустите Dev-C++ сейчас

[Registry]
;Root: HKCR; Subkey: ".dev"; ValueType: String; ValueData: "Dev-C++ {cm:project}"
;Root: HKCR; Subkey: ".c"; ValueType: String; ValueData: "C {cm:source}"
;Root: HKCR; Subkey: ".cpp"; ValueType: String; ValueData: "C++ {cm:source}"
;Root: HKCR; Subkey: ".h"; ValueType: String; ValueData: "C {cm:header}"
;Root: HKCR; Subkey: ".hpp"; ValueType: String; ValueData: "C++ {cm:header}"

;Icons
;Root: HKCR; Subkey: "Dev-C++ {cm:project}\DefaultIcon"; ValueType: String; ValueData: "{app}\DevCpp.exe, 3"; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C {cm:source}\DefaultIcon"; ValueType: String; ValueData: "{app}\DevCpp.exe, 4"; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C++ {cm:source}\DefaultIcon"; ValueType: String; ValueData: "{app}\DevCpp.exe, 5"; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C {cm:header}\DefaultIcon"; ValueType: String; ValueData: "{app}\DevCpp.exe, 6"; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C++ {cm:header}\DefaultIcon"; ValueType: String; ValueData: "{app}\DevCpp.exe, 7"; Flags: uninsdeletekey

;Double-click to open with
;Root: HKCR; Subkey: "Dev-C++ {cm:project}\shell\open\command"; ValueType: String; ValueData: "{app}\DevCpp.exe ""%1"""; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C {cm:source}\shell\open\command"; ValueType: String; ValueData: "{app}\DevCpp.exe ""%1"""; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C++ {cm:source}\shell\open\command"; ValueType: String; ValueData: "{app}\DevCpp.exe ""%1"""; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C {cm:header}\shell\open\command"; ValueType: String; ValueData: "{app}\DevCpp.exe ""%1"""; Flags: uninsdeletekey
;Root: HKCR; Subkey: "C++ {cm:header}\shell\open\command"; ValueType: String; ValueData: "{app}\DevCpp.exe ""%1"""; Flags: uninsdeletekey
 
;Right-click menuitems
;Root: HKCR; Subkey: "C++ {cm:source}\shell\Open with Dev-C++ (O)\command"; ValueType: String; ValueData: "{app}\DevCpp.exe %1"; Flags: uninsdeletekey

[Icons]
Name: "{commondesktop}\Dev-C++"; Filename: "{app}\DevCpp.exe"
Name: "{group}\Dev-C++"; Filename: "{app}\DevCpp.exe"
Name: "{group}\{cm:whatsnew}"; Filename: "{app}\whatsnew-cn.txt"
Name: "{group}\{cm:uninstall} Dev-C++"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\DevCpp.exe"; Description: {cm:runnow}; Flags: nowait postinstall skipifsilent





