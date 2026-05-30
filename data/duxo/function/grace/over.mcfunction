title @a times 0 40 60
title @a title {color:red,bold:true,text:"GRACE IS OVER!"}

bossbar remove duxo:grace
schedule function duxo:grace/overinfo 3s

execute as @a at @s run playsound duxo:grace_over