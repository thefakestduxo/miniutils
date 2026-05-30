bossbar set duxo:grace players @a

execute store result bossbar duxo:grace value run scoreboard players remove #Grace GraceScore 1
scoreboard players remove #Grace GraceSeconds 1
execute if score #Grace GraceSeconds matches ..-1 run scoreboard players remove #Grace GraceMinutes 1
execute if score #Grace GraceSeconds matches ..-1 run scoreboard players set #Grace GraceSeconds 59

bossbar set duxo:grace name ["Time of Grace Left: ",{"score":{"name":"#Grace","objective":"GraceMinutes"}},":",{"score":{"name":"#Grace","objective":"GraceSeconds"}}]

execute unless score #Grace GraceScore matches ..0 run schedule function duxo:grace/timer 1s
execute if score #Grace GraceScore matches ..0 run function duxo:grace/over