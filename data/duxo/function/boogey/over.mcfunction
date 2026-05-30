title @a times 0 40 60
title @a title {color:red,text:"Remaining Boogeymen have failed"}
tellraw @a {color:red,text:"Remaining Boogeymen have failed"}

execute as @a[tag=boogeyman] unless entity @s[tag=boogeyman_cured] run boogeyman fail @s

bossbar set duxo:boogey visible false

execute as @a at @s run playsound duxo:end


function duxo:boogey/reset