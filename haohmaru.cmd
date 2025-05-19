;HaohmaruMG's CMD file
;----------------------------------------------------------------------
;-| Button Remapping |----------------------------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |----------------------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |----------------------------------------------------------------------
[Command]
name = "denkuu"
command = ~F, DF, D, DB, B, F, x
time = 30

[Command]
name = "denkuu"
command = ~F, DF, D, DB, B, F, y
time = 30

[Command]
name = "denkuu"
command = ~F, DF, D, DB, B, F, z
time = 30

[Command]
name = "dankuu"
command = ~D,DB,B,D,DB,B, x
time = 30

[Command]
name = "tenha"
command = ~D, DF, F, D, DF, x
time = 20

[Command]
name = "tenha"
command = ~D, DF, F, D, DF, ~x
time = 20

[Command]
name = "tenha"
command = ~D, DF, F, D, DF, y
time = 20

[Command]
name = "tenha"
command = ~D, DF, F, D, DF, ~y
time = 20

[Command]
name = "tenha"
command = ~D, DF, F, D, DF, z
time = 20

[Command]
name = "tenha"
command = ~D, DF, F, D, DF, ~z
time = 20
;-| Special Motions |----------------------------------------------------------------------
[Command]
name = "kogetsuEX"
command = ~F, D, DF, x+y

[Command]
name = "kogetsuEX"
command = ~F, D, DF, y+z

[Command]
name = "kogetsuEX"
command = ~F, D, DF, x+z

[Command]
name = "kogetsu1"
command = ~F, D, DF, x

[Command]
name = "kogetsu1"
command = ~F, D, DF, ~x

[Command]
name = "kogetsu2"
command = ~F, D, DF, y

[Command]
name = "kogetsu2"
command = ~F, D, DF, ~y

[Command]
name = "kogetsu3"
command = ~F, D, DF, z

[Command]
name = "kogetsu3"
command = ~F, D, DF, ~z

[Command]
name = "senpuu1"
command = ~D, DF, F, x

[Command]
name = "senpuu1"
command = ~D, DF, F, ~x

[Command]
name = "senpuu2"
command = ~D, DF, F, y

[Command]
name = "senpuu2"
command = ~D, DF, F, ~y

[Command]
name = "senpuu3"
command = ~D, DF, F, z

[Command]
name = "senpuu3"
command = ~D, DF, F, ~z

[Command]
name = "senpuuEX"
command = ~D, DF, F, x+y

[Command]
name = "senpuuEX"
command = ~D, DF, F, y+z

[Command]
name = "senpuuEX"
command = ~D, DF, F, x+z

[Command]
name = "tene1"
command = ~D, DF, F, a

[Command]
name = "tene1"
command = ~D, DF, F, b

[Command]
name = "tene1"
command = ~D, DF, F, c

[Command]
name = "ress1"
command = ~B, D, DB, x

[Command]
name = "ress1"
command = ~B, D, DB, ~x

[Command]
name = "ress2"
command = ~B, D, DB, y

[Command]
name = "ress2"
command = ~B, D, DB, ~y

[Command]
name = "ress3"
command = ~B, D, DB, z

[Command]
name = "ress3"
command = ~B, D, DB, ~z
;-| Double Tap |----------------------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |----------------------------------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "grab1"
command = x+y
time = 1

[Command]
name = "grab1"
command = y+z
time = 1

[Command]
name = "grab1"
command = x+z
time = 1

[Command]
name = "grab2"
command = a+b
time = 1

[Command]
name = "grab2"
command = b+c
time = 1

[Command]
name = "grab2"
command = a+c
time = 1

[Command]
name = "dodge"
command = a+x
time = 1

[Command]
name = "pu1"
command = /y
time = 1

[Command]
name = "pu2"
command = /b
time = 1

;-| Dir + Button |----------------------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |----------------------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |----------------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1
;|---------------------------------------------------------------------
;Parry Command
[Command]
name = "F"
command = F
time = 1
;----------------------------------------------------------------------
; 2. State entry
;----------------------------------------------------------------------
[Statedef -1]
;======================================================================
;----------------------------------------------------------------------
;Tenha Denkuu Retsu Zan
[State -1, Tenha Denkuu Retsu Zan]
type = ChangeState
value = 3010
triggerall = command = "denkuu"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact

;----------------------------------------------------------------------
;Tenha Fujin Zan
[State -1, Tenha Fujin Zan]
type = ChangeState
value = 3000
triggerall = command = "tenha"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;====================================================================
;This is not a move, but it sets up var(4) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(4) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
var(4) = 1
;----------------------------------------------------------------------
;Kogetsu Zan Zan EX
;[State -1, Kogetsu Zan Zan EX]
;type = ChangeState
;value = 2010
;triggerall = command = "kogetsuEX"
;triggerall = power >= 330
;trigger1 = var(4) ;Use combo condition (above)
;----------------------------------------------------------------------
;Senpuu Retsu Zan EX
;[State -1, Senpuu Retsu Zan EX]
;type = ChangeState
;value = 2000
;triggerall = command = "senpuuEX"
;triggerall = power >= 330
;trigger1 = var(4) ;Use combo condition (above)
;----------------------------------------------------------------------
;Kogetsu Zan (Light)
[State -1, Kogetsu Zan (Light)]
type = ChangeState
value = 1000
triggerall = command = "kogetsu1"
trigger1 = var(4) ;Use combo condition (above)
;----------------------------------------------------------------------
;Kogetsu Zan (Medium)
[State -1, Kogetsu Zan (Medium)]
type = ChangeState
value = 1010
triggerall = command = "kogetsu2"
trigger1 = var(4) ;Use combo condition (above)
;----------------------------------------------------------------------
;Kogetsu Zan (Hard)
[State -1, Kogetsu Zan (Hard)]
type = ChangeState
value = 1020
triggerall = command = "kogetsu3"
trigger1 = var(4) ;Use combo condition (above)
;----------------------------------------------------------------------
;Senpuu Retsu Zan (light)
[State -1, Senpuu Retsu Zan (light)]
type = ChangeState
value = 1060
triggerall = command = "senpuu1" && var(8) = 0
trigger1 = var(4) ;Use combo condition (above)
;----------------------------------------------------------------------
;Senpuu Retsu Zan (Medium)
[State -1, Senpuu Retsu Zan (Medium)]
type = ChangeState
value = 1065
triggerall = command = "senpuu2" && var(8) = 0
trigger1 = var(4) ;Use combo condition (above)
;----------------------------------------------------------------------
;Senpuu Retsu Zan (Strong)
[State -1, Senpuu Retsu Zan (Strong)]
type = ChangeState
value = 1070
triggerall = command = "senpuu3" && var(8) = 0
trigger1 = var(4) ;Use combo condition (above)
;----------------------------------------------------------------------
;Senpuu Tene (SLow)
[State -1, Senpuu Tene (Low)]
type = ChangeState
value = 1080
triggerall = command = "tene1"
triggerall = statetype != A
trigger1 = ctrl
;----------------------------------------------------------------------
;Resshin Zan (light)
[State -1, Resshin Zan (light)]
type = ChangeState
value = 1030
triggerall = command = "ress1"
trigger1 = var(4) ;Use combo condition (above)
;----------------------------------------------------------------------
;Resshin Zan (Medium)
[State -1, Resshin Zan (Medium)]
type = ChangeState
value = 1040
triggerall = command = "ress2"
trigger1 = var(4) ;Use combo condition (above)
;----------------------------------------------------------------------
;Resshin Zan (Strong)
[State -1, Resshin Zan (Strong)]
type = ChangeState
value = 1050
triggerall = command = "ress3"
trigger1 = var(4) ;Use combo condition (above)
;----------------------------------------------------------------------
;======================================================================
;----------------------------------------------------------------------
;Power Charge
[State -1, Power Charge]
type = ChangeState
value = 900
triggerall = command = "pu1" && command = "pu2"
triggerall = power < 3000
trigger1 = statetype != A
trigger1 = ctrl
;----------------------------------------------------------------------
;Dodge
[State -1, Dodge]
type = ChangeState
value = 700
triggerall = command = "dodge"
triggerall = command != "holddown" && command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------------------------------------------
;Roll
[State -1, Roll]
type = ChangeState
value = 710
triggerall = command = "dodge"
triggerall = command != "holddown" && command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------
;Skull Crusher
[State -1, Skull Crusher]
type = ChangeState
value = 800
triggerall = command = "grab2"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;----------------------------------------------------------------------
;Over Head Throw
[State -1, Over Head Throw]
type = ChangeState
value = 820
triggerall = command = "grab1"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;======================================================================
;Parry
;----------------------------------------------------------------------
; Stand parry [Code by Byakko]
[State -1, Standing Parry]
type = hitoverride
triggerall = statetype != A && command = "F"
triggerall = movetype != A
trigger1 = ctrl || stateno = 720 || stateno = 721 || anim = 912 || stateno=[150,153]
trigger1 = var(9) := (1 + 3*(stateno = [150,153]))
; the +3 is to point out the red parry. Just eye-candy here, to glow red instead of blue.
attr = SA, AA, AP
stateno = 720
time = ifelse((stateno=[150,153]), 6, 8) ; ... for red parry, slightly shorter. Just because.
slot = 1
;----------------------------------------------------------------------
; Stand parry a crouching, but high, attack
[State -1, stp]
type = hitoverride
triggerall = statetype != A && command = "F"
triggerall = movetype != A
trigger1 = ctrl || stateno = 720 || stateno = 721 || anim = 912 || stateno=[150,153]
trigger1 = var(9) := (1 + 3*(stateno = [150,153]))
attr = C, AA, AP
stateno = 5005
time = ifelse((stateno=[150,153]), 6, 8)
slot = 2
;----------------------------------------------------------------------
; Crouch parry
[State -1, crp]
type = hitoverride
triggerall = (statetype = S && command = "holddown") || (statetype = C && command = "F") ; ... yeah, I allow pressing forward 
;_while_ crouching already. Because. Comment ?
triggerall = movetype != A
trigger1 = ctrl || stateno = 720 || stateno = 721 || anim = 912 || stateno = [150,153]
trigger1 = var(9) := (2 + 3*(stateno = [150,153]))
attr = CS, AA, AP
stateno = 721
time = ifelse((stateno = [150,153]), 6, 8)
slot = 1
;----------------------------------------------------------------------
; Crouch parry a standing light attack
[State -1, crp]
type = hitoverride
triggerall = (statetype = S && command = "holddown") || (statetype = C && command = "F")
triggerall = movetype != A
trigger1 = ctrl || stateno = 720 || stateno = 721 || anim = 912 || stateno = [150,153]
trigger1 = var(9) := (2 + 3*(stateno = [150,153]))
attr = S, AA, AP
stateno = 5005
time = ifelse((stateno = [150,153]), 6, 8)
slot = 2
;----------------------------------------------------------------------
; Air parry
[State -1, aip]
type = hitoverride
triggerall = statetype = A && command = "F"
triggerall = movetype != A
trigger1 = ctrl || stateno = 722 || stateno = [154,155]
trigger1 = var(9) := (3 + 3*(stateno = [154,155]))
trigger2 = Vel Y > 0 && StateNo = [1050,1201]
trigger2 = var(9) := (3 + 3*(stateno = [154,155]))
attr = SA, AA, AP
stateno = 722
time = ifelse((stateno = [154,155]), 6, 8)
;----------------------------------------------------------------------
; no parry if can't parry
[State -1, ps]
type = hitoverride
; player has changed state (attack, no control...)
trigger1 = !ctrl && stateno != [720,722]
trigger1 = anim != 912 && stateno != [150,155] 
; player has changed state - a stand parry got activated and the char jumps, have to deactivate stand parry...
trigger2 = statetype = A && var(9) != 3 && var(9) != 6
trigger3 = statetype = C && var(9) != 2 && var(9) != 5
trigger4 = statetype = S && (var(9) = 3 || var(9) = 6)
trigger5 = stateno = [100,110]
attr = SCA
time = 0
slot = 1
;----------------------------------------------------------------------
[State -1, ps]
type = hitoverride
trigger1 = !ctrl && stateno != [720,722]
trigger1 = anim != 501 && stateno != [150,155]
trigger2 = statetype = A && var(9) != 3 && var(9) != 6
trigger3 = statetype = C && var(9) != 2 && var(9) != 5
trigger4 = statetype = S && (var(9) = 3 || var(9) = 6)
trigger5 = stateno = [100,110]
attr = SCA
time = 0
slot = 2
;----------------------------------------------------------------------
;Stand Light Slash
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = stateno = 200
;trigger2 = time > 6
;----------------------------------------------------------------------
;Stand Mid Slash
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
;----------------------------------------------------------------------
;Stand Strong Slash
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 240) && movecontact
;----------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
;----------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
;----------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 240 || stateno = 210) && movecontact
trigger3 = (stateno = 230) && movecontact
;----------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;----------------------------------------------------------------------
;Crouching Light Slash
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;trigger2 = stateno = 400 && time > 4
;----------------------------------------------------------------------
;Crouching Mid Slash
[State -1, Crouching Mid Slash]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430) && movecontact
;----------------------------------------------------------------------
;Crouching Strong Slash
[State -1, Crouching Strong Slash]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430 || stateno = 410)
trigger2 = (time > 9) || (movecontact)
;----------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;----------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
;----------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430) || (stateno = 440)
trigger2 = movecontact
;----------------------------------------------------------------------
;Jump Light Slash
[State -1, Jump Light Slash]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking
;----------------------------------------------------------------------
;Jump Mid Slash
[State -1, Jump Mid Slash]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;----------------------------------------------------------------------
;Jump Strong Slash
[State -1, Jump Strong Slash]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;----------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
;----------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;----------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
