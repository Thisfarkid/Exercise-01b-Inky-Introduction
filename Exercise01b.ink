/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> open_field

== open_field ==
You are standing in an open field.{not take_sword: To your right there is a sword.} {not take_shield: To your left is a shield.} {take_sword and take_shield: You hear a howl in the distance.}
*[Take sword ]-> take_sword
*[Take shield] -> take_shield
+[Look around] -> battlefield

=== take_sword ===
You pick up the sword. 
{take_sword: ->open_field}

===take_shield===
You pick up the shield. 
{take_shield: -> open_field}

==battlefield==
{not take_sword and not take_shield: The field looks empty}
{not take_sword: ->open_field}
{not take_shield: ->open_field} 
{take_sword and take_shield: You see a large dire wolf charging at you}
* [Attack] -> swing_sword
* [Brace yourself] ->raise_shield

==swing_sword==
You raise your sword to attack and slash at the wolf's face, cutting a line down it. 
*[Swing sword] ->Reckless_brawl
*[Raise shield] ->defend

==Reckless_brawl==
The dire wolf barrels into you and knocks you down. You leap to your feet and stab at the wolf hitting its shoulder.
*[Attack] ->stab2

==defend==
You raise your shield to protect yourself from the wolf's first attack and you are able to stay standing
*[Stab] ->stab

==stab2==
You stab at the dire wolf once more hitting its leg. The wolf lets out a low growl and lunges at you biting your arm.
*[Attack] ->stab3
*[Break free]->break_free

==stab==
You counterattack, cutting deep into its shoulder, blood pours from the wound. The dire wolf bears its fangs about to strike
*[Attack] ->easy_win
*[Defend] ->easy_win2

==stab3==
You try to attack the wolf once more but it seems unaffected by your strike when it tears away your arm. You're losing a lot of blood and your eyes are loosing focus
*[Attack] ->berserker_death
*[Run] ->coward_death

==break_free==
You struggle to break free tearing away flesh as you do. Blood drips from the wolf's mouth as it prepares to strike again.
*[Attack] ->berserker_death
*[Raise shield] ->shakey_victory

==easy_win==
As the wolf is about to strike you stab it between the eyes killing it instantly. That was an easy win.
->DONE

==easy_win2==
As the wolf stikes at you, you're able to roll out of the way and stab its belly. The beast falls dead with a whimper. You win this battle easily
->DONE

==shakey_victory==
Blood pours from your arm as you raise your shield to defend the next attack. The wolf stikes and you roll out of the way stiking upwards into its gut. The wolf falls to the ground dead. You have won this battle
->DONE

==berserker_death
Not being one to back down from a fight, you try to bring down the dire wolf with you. You charge forward bringing the sword into its neck as it bites into your other shoulder. It falls weakly to the ground dead, your blood mixing into the soil. You drop to your knees, no longer having enough strength to stand. You stare up at the sun basking in its light as you take your final breath.
->DONE

==coward_death==
You turn to flee, hoping that you can getting away, but it's no use. The dire wolf easily catches up with you and pounces, pinning you to the ground underneath it. It tears into you and your screams fill the air as you die. 
->DONE

==raise_shield==
You raise your shield and as the wolf barrels into your shield and you are able to knock it away.
* [Counter attack] ->counter_attack
* [Hold your ground] ->hold_ground

==counter_attack==
You slash down the side of the wolf's flank causing it to limp as it turns to face you again slashing with it's claws
*[Slash] ->slash
*[Deflect] ->deflect

==hold_ground==
You continue holding up your shield as you prepare for the second attack. The wolf bats your shield away with a swipe of its claws and bites into your shoulder.
*[Retaliate] ->Retaliate
*[Hold posistion] ->Struggling_defense

==deflect==
You bring up the shield and deflect the wolf's attack. Leaving it wide open for an attack. 
*[Attack] ->defensive_win

==slash==
You try to weave out of the way of its attack to slash once more, but its claws catches your side causing you to miss.
*[Kill it] ->defensive_win 

==defensive_win==
You are able to get close enough to stab it in the chest, burying the blade to the hilt into the dire wolf's rib cage. As you pull the sword free the creature falls to the ground dead. You have survived
->DONE

==Retaliate==
You bring your sword into the wolf's shoulder and the wolf pulls away. 
*[Attack] ->chase

==Struggling_defense==
You shakely put up the shield again and brace for another attack. The beast turns to face you and attacks once more, tearing the shield from your arm. 
*[Attack] ->shakey_victory2
*[Flee] ->coward_death

==chase==
You lunge after the wolf striking at it's throat, hitting true. The wolf falls dead. 
->DONE

==shakey_victory2==
The wolf stikes again at you and you're able to roll out of the way stiking upwards into its gut. The wolf falls to the ground dead. You have won this battle with some struggle. 
->DONE
