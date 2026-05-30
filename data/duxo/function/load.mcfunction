scoreboard objectives add GraceScore dummy
scoreboard objectives add GraceSeconds dummy
scoreboard objectives add GraceMinutes dummy
scoreboard objectives add temp dummy

scoreboard players set 60 temp 60
scoreboard players set 0 temp 0

bossbar add duxo:grace {"text":"Grace Bar"}
execute store result bossbar duxo:grace max run scoreboard players get GraceConf temp
bossbar set duxo:grace style progress
execute store result bossbar duxo:grace value run scoreboard players get GraceConf temp

scoreboard players operation #Grace GraceScore = GraceConf GraceScore
scoreboard players operation #Grace GraceMinutes = GraceConf GraceMinutes
scoreboard players set #Grace GraceSeconds 0


scoreboard players operation #Grace GraceScore = GraceConf GraceScore
scoreboard players operation #Grace GraceMinutes = GraceConf GraceMinutes
scoreboard players set #Grace GraceSeconds 0

bossbar set duxo:grace name ["Time of Grace Left: ",{"score":{"name":"#Grace","objective":"GraceMinutes"}},":",{"score":{"name":"#Grace","objective":"GraceSeconds"}}]
execute store result bossbar duxo:grace value run scoreboard players remove #Grace GraceScore 0





scoreboard objectives add BoogeyScore dummy
scoreboard objectives add BoogeySeconds dummy
scoreboard objectives add BoogeyMinutes dummy

bossbar add duxo:boogey {"text":"Boogey Bar"}
execute store result bossbar duxo:boogey max run scoreboard players get BoogeyConf temp
bossbar set duxo:boogey style progress
execute store result bossbar duxo:boogey value run scoreboard players get BoogeyConf temp
bossbar set duxo:boogey color red

scoreboard players operation #Boogey BoogeyScore = BoogeyConf BoogeyScore
scoreboard players operation #Boogey BoogeyMinutes = BoogeyConf BoogeyMinutes
scoreboard players set #Boogey BoogeySeconds 0

bossbar set duxo:boogey name ["Time left for Boogeyman: ",{"score":{"name":"#Boogey","objective":"BoogeyMinutes"}},":",{"score":{"name":"#Boogey","objective":"BoogeySeconds"}}]
execute store result bossbar duxo:boogey value run scoreboard players remove #Boogey BoogeyScore 0


tellraw @a [{"text":"\n Thanks for installing "},{"color":"green","hover_event":{"action":"show_text","value":[{"text":"Miniround Utils\n A datapack made by Duxo to aid in hosting Minirounds!","color":"#FFFFFF"},{"text":""}]},"text":"[Miniround Utils]"},{"color":"gray","text":"\n Make sure to setup the config using "},{"click_event":{"action":"suggest_command","command":"/function duxo:mini/config"},"text":"/function duxo:mini/config"}]


scoreboard objectives add duxo.mini.rules trigger