rem You may need to run this first if you don't have it in your Path: "C:\Program Files\nodejs\nodevars.bat"

call npm uninstall @electron-forge/plugin-vite
call npm uninstall @electron-forge/plugin-fuses
call npm i --save-dev @electron-forge/plugin-vite
call npm i --save-dev @electron-forge/plugin-fuses
