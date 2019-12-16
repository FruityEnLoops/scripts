@echo off
set /p filename=Filename : 
set /p fps=Target FPS : 
cls
ffmpeg -i "%filename%" -vf "minterpolate='fps=%fps%':mi_mode=mci:mc_mode=aobmc:me_mode=bidir:vsbmc=1" "%fps%-%filename%"