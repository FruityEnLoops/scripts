clear
ffmpeg -i "%1" -vf "minterpolate='fps=%2':mi_mode=mci:mc_mode=aobmc:me_mode=bidir:vsbmc=1" "%3"
