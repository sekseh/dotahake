-- foosAIO.lua
-- Version: beta.0.81.5
-- Author: foo0oo
-- Release Date: 2017/05/03
-- Last Update: 2017/07/07

local fooAllInOne = {}
-- Menu Items
	-- general Menu
fooAllInOne.optionEnable = Menu.AddOption({ "Utility","foos AllInOne" }, "1. Overall enabled", "Helpers helper")
fooAllInOne.optionComboKey = Menu.AddKeyOption({ "Utility","foos AllInOne" }, "1.1 overall combo key", Enum.ButtonCode.KEY_SPACE)
fooAllInOne.optionDebugEnable = Menu.AddOption({ "Utility","foos AllInOne" }, "9. Debug", "should be off, just for developers")
fooAllInOne.optionOrbwalkEnable = Menu.AddOption({ "Utility","foos AllInOne", "7. Orbwalker" }, "Enabled", "if enabled, you will use orbwalker module instead of regular right clicks")
fooAllInOne.optionOrbwalkDistance = Menu.AddOption({ "Utility","foos AllInOne", "7. Orbwalker" }, "Minimum distance", "ranged heroes will not go nearer then minimum range to target - values are percentage of your attack range - recommended: 50%- 70%", 30, 80, 10)
fooAllInOne.optionOrbwalkOffset = Menu.AddOption({ "Utility","foos AllInOne", "7. Orbwalker" }, "Orbwalker offset", "set the offset - the higher the value, the less the distance your hero will move in-between attacks - if value = 0, you go full distance possible in backswing - recommended value: 10-20 because of ping, pathing, blocked pathing etc.", 0, 50, 5)
fooAllInOne.optionOrbwalkKiting = Menu.AddOption({ "Utility","foos AllInOne", "7. Orbwalker" }, "kiting", "if enabled, your ranged hero tries to hit and run away if enemy is to close (only if turning-running-turning is faster then attack animation)")
fooAllInOne.optionWorldToMinimapOffsetX = Menu.AddOption({ "Utility","foos AllInOne", "6. WorldToMinimap" }, "X-Offset", "Adjustment variable for World-to-minimap renderer", -30, 30, 1)
fooAllInOne.optionWorldToMinimapOffsetY = Menu.AddOption({ "Utility","foos AllInOne", "6. WorldToMinimap" }, "Y-Offset", "Adjustment variable for World-to-minimap renderer", -30, 30, 1)
	-- killsteal Menu
fooAllInOne.optionKillStealEnable = Menu.AddOption({ "Utility","foos AllInOne", "8. Auto Kill Steal" }, "Enabled", "uses skill nukes to kill enemy (only nukes, no disable abilities)")
fooAllInOne.optionKillStealInvoker = Menu.AddOption({ "Utility","foos AllInOne", "8. Auto Kill Steal", "Invoker" }, "1. Auto Sunstrike KillSteal", "tries to kill steal with sun strike")
fooAllInOne.optionKillStealInvokerTurn = Menu.AddOption({ "Utility","foos AllInOne", "8. Auto Kill Steal", "Invoker" }, "5.2 Turn check adjustment", "amount of game ticks enemy must run in a straight line (30 ticks ~ 1 sec)", 10, 60, 5)
fooAllInOne.optionKillStealAutoInvoke = Menu.AddOption({ "Utility","foos AllInOne", "8. Auto Kill Steal", "Invoker" }, "5.1 Auto Invoke Sunstrike", "will auto invoke SS if not in slot and enemy killable")
fooAllInOne.optionKillStealInvokerTPpartice = Menu.AddOption({ "Utility","foos AllInOne", "8. Auto Kill Steal", "Invoker" }, "3. Killsteal on TPing enemies", "will kill tp'ing enemies if enemy HP is below DMG treshold")
fooAllInOne.optionKillStealInvokerImmobil = Menu.AddOption({ "Utility","foos AllInOne", "8. Auto Kill Steal", "Invoker" }, "2. Killsteal on immobilized enemies", "will kill immobilized enemies if enemy HP is below DMG treshold")
fooAllInOne.optionKillStealInvokerTreshold = Menu.AddOption({ "Utility","foos AllInOne", "8. Auto Kill Steal", "Invoker" }, "5.3 HP Treshold adjust", "will start casting sunstrike before HP is below sunstrike dmg (for incoming attacks e.g. from team) (in % of sunstrike dmg)", 0, 25, 5)
fooAllInOne.optionKillStealInvokerRunning = Menu.AddOption({ "Utility","foos AllInOne", "8. Auto Kill Steal", "Invoker" }, "4. Killsteal on moving targets", "will try to kill moving enemies if enemy HP is below DMG treshold")

	-- Items Menu
fooAllInOne.optionItemEnable = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage" }, "Enabled", "Helpers helper")
fooAllInOne.optionItemStyle = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage" }, "Choose activation style", "", 0, 2, 1)
fooAllInOne.optionItemSoulring = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Soulring", "Use Soulring before using spells")
fooAllInOne.optionItemVeil = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Veil Of Discord", "cast order - highest number will be cast first", 0, 10, 1)
fooAllInOne.optionItemHex = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Scythe Of Vyse", "cast order - highest number will be cast first", 0, 10, 1)
fooAllInOne.optionItemBlood = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Bloodthorn ", "cast order - highest number will be cast first", 0, 10, 1)
fooAllInOne.optionItemeBlade = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Ethereal Blade", "cast order - highest number will be cast first", 0, 10, 1)
fooAllInOne.optionItemOrchid = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Orchid Malevolence", "cast order - highest number will be cast first", 0, 10, 1)
fooAllInOne.optionItemAtos = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Rod Of Atos", "cast order - highest number will be cast first", 0, 10, 1)
fooAllInOne.optionItemAbyssal = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Abyssal Blade", "cast order - highest number will be cast first", 0, 10, 1)
fooAllInOne.optionItemHalberd = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Heavens Halbert", "cast order - highest number will be cast first", 0, 10, 1)
fooAllInOne.optionItemShivas = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Shivas Guard", "cast order - highest number will be cast first", 0, 10, 1)
fooAllInOne.optionItemDagon = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Dagon", "cast order - highest number will be cast first", -1, 10, 1)
fooAllInOne.optionItemUrn = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Urn of shadows", "cast order - highest number will be cast first", 0, 10, 1)
fooAllInOne.optionItemManta = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Manta Style", "cast order - highest number will be cast first", 0, 10, 1)
fooAllInOne.optionItemMjollnir = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Mjollnir", "cast order - highest number will be cast first", 0, 10, 1)
fooAllInOne.optionItemMedallion = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Medallion of Courage", "cast order - highest number will be cast first", 0, 10, 1)
fooAllInOne.optionItemCrest = Menu.AddOption({ "Utility","foos AllInOne", "2. Auto Item Usage", "Items" }, "Use Item Solar Crest", "cast order - highest number will be cast first", 0, 10, 1)
	-- Linkens Menu
fooAllInOne.optionLinkensEnable = Menu.AddOption({ "Utility","foos AllInOne", "3. Auto Break Linkens" }, "Enabled", "Helpers helper")
fooAllInOne.optionLinkensForce = Menu.AddOption({ "Utility","foos AllInOne", "3. Auto Break Linkens" }, "Use Force Staff", "to break Linkens - highest number will be prioritized", 0, 6, 1)
fooAllInOne.optionLinkensEul = Menu.AddOption({ "Utility","foos AllInOne", "3. Auto Break Linkens" }, "Use Eul", "to break Linkens - highest number will be prioritized", 0, 6, 1)
fooAllInOne.optionLinkensHalberd = Menu.AddOption({ "Utility","foos AllInOne", "3. Auto Break Linkens" }, "Use Halberd", "to break Linkens - highest number will be prioritized", 0, 6, 1)
fooAllInOne.optionLinkensHex = Menu.AddOption({ "Utility","foos AllInOne", "3. Auto Break Linkens" }, "Use Hex", "to break Linkens - highest number will be prioritized", 0, 6, 1)
fooAllInOne.optionLinkensBlood = Menu.AddOption({ "Utility","foos AllInOne", "3. Auto Break Linkens" }, "Use Bloodthorn", "to break Linkens - highest number will be prioritized", 0, 6, 1)
fooAllInOne.optionLinkensOrchid = Menu.AddOption({ "Utility","foos AllInOne", "3. Auto Break Linkens" }, "Use Orchid", "to break Linkens - highest number will be prioritized", 0, 6, 1)
fooAllInOne.optionLinkensPike = Menu.AddOption({ "Utility","foos AllInOne", "3. Auto Break Linkens" }, "Use Pike", "to break Linkens - highest number will be prioritized", 0, 6, 1)
	-- Utility Items Menu
fooAllInOne.optionUtilityEnable = Menu.AddOption({ "Utility","foos AllInOne", "4. Auto Use Utility Items" }, "Enabled", "Helpers helper")
fooAllInOne.optionUtilityMidas = Menu.AddOption({ "Utility","foos AllInOne", "4. Auto Use Utility Items", "Midas" }, "Auto Use Midas", "use midas on creeps automatically")
fooAllInOne.optionUtilityMidasXP = Menu.AddOption({ "Utility","foos AllInOne", "4. Auto Use Utility Items", "Midas" }, "Min XP threshold", "", 0, 1, 1)
fooAllInOne.optionUtilityStick = Menu.AddOption({ "Utility","foos AllInOne", "4. Auto Use Utility Items" }, "Auto Use Stick/Wand/Cheese/Faerie", "will auto use items if hp below hp threshold")
fooAllInOne.optionUtilityHealth = Menu.AddOption({ "Utility","foos AllInOne", "4. Auto Use Utility Items" }, "Treshold Hero Health", "Threshold for auto use stick, wand, mek, greaves", 5, 75, 5)
fooAllInOne.optionUtilityMek = Menu.AddOption({ "Utility","foos AllInOne", "4. Auto Use Utility Items" }, "Auto Use Mekansm", "will use mek when you or teammate in range is below hp threshold")
fooAllInOne.optionUtilityGreaves = Menu.AddOption({ "Utility","foos AllInOne", "4. Auto Use Utility Items" }, "Auto Use Greaves", "same as mek")
fooAllInOne.optionUtilityTalon = Menu.AddOption({ "Utility","foos AllInOne", "4. Auto Use Utility Items" }, "Auto Use Talon", "will use talon on highest hp creep (only neutrals)")
fooAllInOne.optionUtilityArcane = Menu.AddOption({ "Utility","foos AllInOne", "4. Auto Use Utility Items" }, "Auto Use Arcane Boots", "will use arcanes if you are mana missing or teammate in range is below 40% mana")
	-- Hero Menu
fooAllInOne.optionHeroAxe = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Axe" }, "Axe Combo", "basic axe script, will focus nearest hero to cursor")
fooAllInOne.optionHeroAxeCulling = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Axe" }, "Auto culling blade", "ults everything that is in range and below hp threshold")
fooAllInOne.optionHeroAxeJump = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Axe" }, "Axe Jump Style", "blink to nearest enemy to cursor or blink to best position if multiple enemies could be called", 0, 1, 1)
fooAllInOne.optionHeroAxeForceBlink = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Axe" }, "Force blink", "hero will blink when combo button is pressed, even if no enemy is around (e.g. for blinking in FoW) or cursor is not in range of enemy (adjust the range below!)")
fooAllInOne.optionHeroAxeForceBlinkRange = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Axe" }, "Force Blink Check Range", "if force blink is activated, hero will blink to mouse cursor instead of enemy, if mouse cursor is outside of force blink check range", 150, 750, 50)
fooAllInOne.optionHeroClock = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts" }, "Clockwerk", "full combo with hookshot prediction (will not check for collision with npcs)")
fooAllInOne.optionHeroSky = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts" }, "Skywrath", "full combo")
fooAllInOne.optionHeroTiny = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts" }, "Tiny", "full combo")
fooAllInOne.optionHeroWindrunner = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts" }, "Windrunner", "if branch in inventory, full combo with tree plant ;); else: if target shakled, then combo")
fooAllInOne.optionHeroTimber = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts" }, "Timber", "meh, cant target trees.. timberchain to cursor, if enemys are hit, full combo with chakram prediction")
fooAllInOne.optionHeroEmber = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Ember" }, "Ember Combo", "hold combo key -> full combo with remnant, release key after ~ 1 sec -> fist+chains")
fooAllInOne.optionHeroEmberUlt = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Ember" }, "Ember Ult Usage in Combo", "", 0, 1, 1)
fooAllInOne.optionHeroUrsa = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts" }, "Ursa", "full combo, trigger enrage if 2 or more heroes in range")
fooAllInOne.optionHeroTA = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Templar Assassin" }, "TA Combo", "full combo")
fooAllInOne.optionHeroTABlink = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Templar Assassin" }, "Use blink in Combo", "")
fooAllInOne.optionHeroLegion = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts" }, "Legion Commander", "full combo")
fooAllInOne.optionHeroSlardar = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Slardar" }, "Slardar Combo", "full combo")
fooAllInOne.optionHeroSlardarStyle = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Slardar" }, "Slardar Jump Style", "blink to nearest enemy to cursor or blink to best position if multiple enemies could be crushed", 0, 1, 1)
fooAllInOne.optionHeroClinkz = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Clinkz" }, "Clinkz Combo", "full combo")
fooAllInOne.optionHeroClinkzUlt = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Clinkz" }, "Auto Ultimate", "auto ult on enemy creeps or neutrals when ready")
fooAllInOne.optionHeroQoP = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Queen of Pain" }, "Queen of Pain Combo", "full combo; only uses ult if you have agahnims and ult can kill enemy")
fooAllInOne.optionHeroQoPblink = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Queen of Pain" }, "Use blink in combo", "")
fooAllInOne.optionHeroSven = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts" }, "Sven", "full combo, MoM after everything is used")
fooAllInOne.optionHeroVisage = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Visage" }, "Visage Combo", "full combo with Familiars")
fooAllInOne.optionHeroVisageDMGStacks = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Visage" }, "Familiar DMG stacks", "number of remaining familiar damage stacks when starting stun chain", 1, 6, 1)
fooAllInOne.optionHeroArcWarden = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Arc Warden" }, "1.0 Arc Warden Combo", "full combo with double")
fooAllInOne.optionHeroArcWardenMagnetic = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Arc Warden" }, "1.1 Use magnetic field", "cast magnetic field with main hero in combo (double always uses magnetic field)")
fooAllInOne.optionHeroArcWardenPush = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Arc Warden" }, "3.0 Arc Warden TP Push Mode", "push mode with double, if you have BoTs")
fooAllInOne.optionHeroArcWardenTempest = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Arc Warden" }, "2.0 Tempest double combo", "will only combo with your double, not with main. BUTTON NEEDS TO BE PRESSED DOWN! will target first enemies nearest mouse, then enemies in range, then creeps in range, if nothing in range, it will push (fountain or cursor)")
fooAllInOne.optionArcWardenPushKey = Menu.AddKeyOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Arc Warden" }, "3.1TP Push Key", Enum.ButtonCode.KEY_P)
fooAllInOne.optionHeroArcWardenPushTPStyle = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Arc Warden" }, "3.2 TP targeting style", "", 0, 1, 1)
fooAllInOne.optionHeroArcWardenPushTPSelect = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Arc Warden" }, "3.3 Auto line selector", "", 0, 1, 1)
fooAllInOne.optionArcWardenTempestKey = Menu.AddKeyOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Arc Warden" }, "2.1 Tempest double combo/push key", Enum.ButtonCode.KEY_O)
fooAllInOne.optionHeroArcWardenTempestTarget = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Arc Warden" }, "2.2 Tempest direction", "if tempest double combo/push key is pressed, push in the direction of cursor or enemy fountain", 0, 1, 1)
fooAllInOne.optionHeroArcWardenDraw = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Arc Warden", "Drawings" }, "Draw Item Cooldowns on Double", "will shot the cooldown of BoTs, midas, necronomicon")
--fooAllInOne.optionHeroArcWardenFont = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Arc Warden", "Drawings" }, "Font size", "", 10, 50, 5)
fooAllInOne.optionHeroArcWardenXPos = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Arc Warden", "Drawings" }, "X-position", "", -500, 500, 10)
fooAllInOne.optionHeroArcWardenYPos = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Arc Warden", "Drawings" }, "Y-position", "", -500, 500, 10)
fooAllInOne.optionHeroMorphling = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Morphling" }, "Morphling Combo", "full shotgun combo")
fooAllInOne.optionHeroMorphlingKill = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Morphling" }, "Draw kill indicator", "will draw a kill indicator if target is killable with full shotgun combo")
fooAllInOne.optionHeroPuck = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Puck" }, "1. Puck Combo", "basic puck script")
fooAllInOne.optionHeroPuckJump = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Puck" }, "1.1 Puck Jump Style", "blink to nearest enemy to cursor or blink to best position if multiple enemies could be hit", 0, 1, 1)
fooAllInOne.optionHeroPuckPanic = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Puck" }, "2. Puck Panic", "basic defensive actions when panic button is pressed")
fooAllInOne.optionHeroPuckPanicKey = Menu.AddKeyOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Puck" }, "2.3 Puck Panic Key", Enum.ButtonCode.KEY_P)
fooAllInOne.optionHeroPuckPanicDirection = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Puck" }, "2.1 Puck Panic Direction", "the direction in which blink or orb is casted", 0, 1, 1)
fooAllInOne.optionHeroPuckComboAltKey = Menu.AddKeyOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Puck" }, "1.3 Puck Alt Key", Enum.ButtonCode.KEY_LCONTROL)
fooAllInOne.optionHeroPuckDefend = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Puck" }, "2.2 Auto defend", "auto use waning rift when enemy jumps you")
fooAllInOne.optionHeroPuckOrbInit = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Puck" }, "1.2 Orb Initiation", "will initiate with orb, if no blink dagger; will jaunt to orb, if target is hit")
fooAllInOne.optionHeroProphet = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Natures Prophet" }, "Prophet Helper", "Lane Pusher with Treants")
fooAllInOne.optionHeroProphetToggleKey = Menu.AddKeyOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Natures Prophet" }, "Toggle Key", Enum.ButtonCode.KEY_P)
fooAllInOne.optionProphetDrawToggle = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Natures Prophet", "Drawings" }, "1. Draw Toggle Notification", "")
fooAllInOne.optionProphetDrawKS = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Natures Prophet", "Drawings" }, "2. Draw KS Notification", "will show you, if an enemy is below 20% hp")
fooAllInOne.optionProphetDrawKSminimap = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Natures Prophet", "Drawings" }, "3. Draw KS Target on Minimap", "draws a notification where an enemy below 20% HP is on minimap")
fooAllInOne.optionHeroInvoker = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker" }, "1. Invoker Combo", "basic Invoker combos")
fooAllInOne.optionHeroInvokerSwitch = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker" }, "1.2 Auto switch dynamic mode", "auto switches to dynamic mode after combo is fully executed")
fooAllInOne.optionHeroInvokerAltKey = Menu.AddKeyOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker" }, "1.3 Invoker Alt Key", Enum.ButtonCode.KEY_LCONTROL)
fooAllInOne.optionHeroInvokerToggleKey = Menu.AddKeyOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "2. Panel" }, "Panel toggle key", Enum.ButtonCode.KEY_P)
fooAllInOne.optionHeroInvokerSkillshotStyle = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker" }, "1.1 Skillshot Style", "use build-in prediction or use cursor position for tornado targeting", 0, 1, 1)
fooAllInOne.optionHeroInvokerAutoInvoke = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "2. Panel" }, "Auto Invoke", "hero will auto invoke required skills after selecting the combo")
fooAllInOne.optionHeroInvokerPanelCD = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "2. Panel" }, "Show skill cooldowns", "", 0, 2, 1)
fooAllInOne.optionHeroInvokerPanelXPos = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "2. Panel" }, "X-position", "", -200, 500, 10)
fooAllInOne.optionHeroInvokerPanelYPos = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "2. Panel" }, "Y-position", "", -500, 500, 10)
fooAllInOne.optionHeroInvokerIcewallEnable = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "3. Fast Icewall" }, "Enable", "fast icewall (invoke icewall if not invoked)")
fooAllInOne.optionHeroInvokerIcewallKey = Menu.AddKeyOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "3. Fast Icewall" }, "activation key", Enum.ButtonCode.KEY_O)
fooAllInOne.optionHeroInvokerCancelEnable = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "4. Cancel Channelling abilities" }, "Auto cancel", "will auto use snap or tornado to cancel enemy channelling spells or TPing, will invoke snap or tornado if not invoked")
fooAllInOne.optionHeroInvokerInstanceHelper = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "5. Instance helper" }, "auto instance switch", "QQQ if hp missing, WWW if running, EEE if attacking")
fooAllInOne.optionHeroInvokerInstanceDelay = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "5. Instance helper" }, "delay between instance switch", "", 1, 12, 1)
fooAllInOne.optionHeroInvokerCombo1Skill1 = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "6. Custom Combo", "Combo 1" }, "Skill 1", "select skill", 0, 9, 1)
fooAllInOne.optionHeroInvokerCombo1Skill2 = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "6. Custom Combo", "Combo 1" }, "Skill 2", "select skill", 0, 9, 1)
fooAllInOne.optionHeroInvokerCombo1Skill3 = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "6. Custom Combo", "Combo 1" }, "Skill 3", "select skill", 0, 9, 1)
fooAllInOne.optionHeroInvokerCombo1Skill4 = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "6. Custom Combo", "Combo 1" }, "Skill 4", "select skill", 0, 9, 1)
fooAllInOne.optionHeroInvokerCombo1Skill5 = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "6. Custom Combo", "Combo 1" }, "Skill 5", "select skill", 0, 9, 1)
fooAllInOne.optionHeroInvokerCombo1Skill6 = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "6. Custom Combo", "Combo 1" }, "Skill 6", "select skill", 0, 9, 1)
fooAllInOne.optionHeroInvokerLockTarget = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker" }, "1.4 target lock in combo", "your target is locked as long as you keep combo button pressed, if target dies or runs away (range 1500), target lock is lifted")
fooAllInOne.optionHeroInvokerLockTargetIndicator = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker" }, "1.5 render indicator for locked target", "will show some particles")
fooAllInOne.optionHeroInvokerLockTargetIndicatorStyle = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker" }, "1.6 particle style", "", 0, 1, 1)
fooAllInOne.optionHeroInvokerGhostKey = Menu.AddKeyOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker" }, "1.7 Hake Fast Ghost Walk Key", Enum.ButtonCode.KEY_F5)
--fooAllInOne.optionHeroInvokerCombo2Skill1 = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "Custom Combo", "Combo 2" }, "Skill 1", "select skill", 0, 9, 1)
--fooAllInOne.optionHeroInvokerCombo2Skill2 = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "Custom Combo", "Combo 2" }, "Skill 2", "select skill", 0, 9, 1)
--fooAllInOne.optionHeroInvokerCombo2Skill3 = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "Custom Combo", "Combo 2" }, "Skill 3", "select skill", 0, 9, 1)
--fooAllInOne.optionHeroInvokerCombo2Skill4 = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "Custom Combo", "Combo 2" }, "Skill 4", "select skill (only with agha)", 0, 9, 1)
fooAllInOne.optionHeroAntiMage = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Anti-Mage" }, "1. Anti-Mage Combo", "basic Anti-Mage combo")
fooAllInOne.optionHeroAntiMageBlink = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Anti-Mage" }, "2. Use Anti-Mage blink in combo", "")
fooAllInOne.optionHeroAntiMageVoid = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Anti-Mage" }, "3. Auto use mana void if target killable", "will select target with most mana missing and tries to kill as many enemies as possible")
fooAllInOne.optionHeroPA = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Phantom Assassin" }, "1. PA Combo", "basic PA combo")
fooAllInOne.optionHeroPADagger = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Phantom Assassin", "2. Auto dagger" }, "1. Auto use dagger", "will always dagger the lowest hp target in dagger range")
fooAllInOne.optionHeroPADaggerThreshold = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Phantom Assassin", "2. Auto dagger" }, "4. Mana treshold", "will stop auto casting dagger below treshold", 20, 80, 10)
fooAllInOne.optionHeroPADaggerToggleKey = Menu.AddKeyOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Phantom Assassin", "2. Auto dagger" }, "2. Toggle Key", Enum.ButtonCode.KEY_P)
fooAllInOne.optionHeroPADaggerDraw = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Phantom Assassin", "2. Auto dagger" }, "3. draw toggle state", "")

fooAllInOne.optionHeroInvokerDynCS = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "7. Dynamic Combo", }, "1. invoker_cold_snap", "", 0, 9, 1)
fooAllInOne.optionHeroInvokerDynFS = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "7. Dynamic Combo", }, "2. invoker_forge_spirit", "", 0, 9, 1)
fooAllInOne.optionHeroInvokerDynAL = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "7. Dynamic Combo", }, "3. invoker_alacrity", "", 0, 9, 1)
fooAllInOne.optionHeroInvokerDynIW = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "7. Dynamic Combo", }, "4. invoker_ice_wall", "", 0, 9, 1)
fooAllInOne.optionHeroInvokerDynTO = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "7. Dynamic Combo", }, "5. invoker_tornado", "", 0, 9, 1)
fooAllInOne.optionHeroInvokerDynEMP = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "7. Dynamic Combo", }, "6. invoker_emp", "", 0, 9, 1)
fooAllInOne.optionHeroInvokerDynSS = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "7. Dynamic Combo", }, "7. invoker_sun_strike", "", 0, 9, 1)
fooAllInOne.optionHeroInvokerDynCM = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "7. Dynamic Combo", }, "8. invoker_chaos_meteor", "", 0, 9, 1)
fooAllInOne.optionHeroInvokerDynDB = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "7. Dynamic Combo", }, "9. invoker_deafening_blast", "", 0, 9, 1)
fooAllInOne.optionHeroInvokerDynOrder = Menu.AddOption({ "Utility","foos AllInOne", "5. Hero Scripts", "Invoker", "7. Dynamic Combo", }, "0. USE CUSTOM PRIORITIES", "if enabled, you can set the priority order of spells used in dynamic mode, TEST your order before playing an actual game!")	

	-- Menu set values
Menu.SetValueName(fooAllInOne.optionItemVeil, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemHex, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemBlood, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemeBlade, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemOrchid, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemAtos, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemAbyssal, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemHalberd, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemShivas, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemUrn, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemDagon, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemDagon, -1, 'only if killable')
Menu.SetValueName(fooAllInOne.optionItemManta, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemMjollnir, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemMedallion, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionItemCrest, 0, 'OFF')

Menu.SetValueName(fooAllInOne.optionItemVeil, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemHex, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemBlood, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemeBlade, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemOrchid, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemAtos, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemAbyssal, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemHalberd, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemShivas, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemUrn, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemDagon, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemManta, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemMjollnir, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemMedallion, 1, 'ON')
Menu.SetValueName(fooAllInOne.optionItemCrest, 1, 'ON')

Menu.SetValueName(fooAllInOne.optionItemStyle, 0, 'max speed, no order')
Menu.SetValueName(fooAllInOne.optionItemStyle, 1, 'ordered')
Menu.SetValueName(fooAllInOne.optionItemStyle, 2, 'smart ordered')

Menu.SetValueName(fooAllInOne.optionLinkensForce, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionLinkensEul, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionLinkensHalberd, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionLinkensHex, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionLinkensBlood, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionLinkensOrchid, 0, 'OFF')
Menu.SetValueName(fooAllInOne.optionLinkensPike, 0, 'OFF')

Menu.SetValueName(fooAllInOne.optionUtilityMidasXP, 0, 'melee creep')
Menu.SetValueName(fooAllInOne.optionUtilityMidasXP, 1, 'range creep')

Menu.SetValueName(fooAllInOne.optionHeroEmberUlt, 0, 'use all charges')
Menu.SetValueName(fooAllInOne.optionHeroEmberUlt, 1, 'use one charge')
Menu.SetValueName(fooAllInOne.optionHeroArcWardenPushTPStyle, 0, 'auto select lane')
Menu.SetValueName(fooAllInOne.optionHeroArcWardenPushTPStyle, 1, 'cursor')
Menu.SetValueName(fooAllInOne.optionHeroArcWardenPushTPSelect, 0, 'furthest pushed')
Menu.SetValueName(fooAllInOne.optionHeroArcWardenPushTPSelect, 1, 'least pushed')
Menu.SetValueName(fooAllInOne.optionHeroArcWardenTempestTarget, 0, 'cursor')
Menu.SetValueName(fooAllInOne.optionHeroArcWardenTempestTarget, 1, 'fountain')
Menu.SetValueName(fooAllInOne.optionHeroAxeJump, 0, 'blink target')
Menu.SetValueName(fooAllInOne.optionHeroAxeJump, 1, 'blink best position')
Menu.SetValueName(fooAllInOne.optionHeroSlardarStyle, 0, 'blink target')
Menu.SetValueName(fooAllInOne.optionHeroSlardarStyle, 1, 'blink best position')
Menu.SetValueName(fooAllInOne.optionHeroPuckJump, 0, 'blink target')
Menu.SetValueName(fooAllInOne.optionHeroPuckJump, 1, 'blink best position')
Menu.SetValueName(fooAllInOne.optionHeroPuckPanicDirection, 0, 'fountain')
Menu.SetValueName(fooAllInOne.optionHeroPuckPanicDirection, 1, 'cursor')
Menu.SetValueName(fooAllInOne.optionHeroInvokerSkillshotStyle, 0, 'prediction')
Menu.SetValueName(fooAllInOne.optionHeroInvokerSkillshotStyle, 1, 'cursor')
Menu.SetValueName(fooAllInOne.optionHeroInvokerPanelCD, 0, 'dont show')
Menu.SetValueName(fooAllInOne.optionHeroInvokerPanelCD, 1, 'only longest')
Menu.SetValueName(fooAllInOne.optionHeroInvokerPanelCD, 2, 'all cooldowns')
Menu.SetValueName(fooAllInOne.optionHeroInvokerLockTargetIndicatorStyle, 0, 'blinding light')
Menu.SetValueName(fooAllInOne.optionHeroInvokerLockTargetIndicatorStyle, 1, 'blood bath')
Menu.SetValueName(fooAllInOne.optionHeroInvokerInstanceDelay, 1, '0.25')
Menu.SetValueName(fooAllInOne.optionHeroInvokerInstanceDelay, 2, '0.50')
Menu.SetValueName(fooAllInOne.optionHeroInvokerInstanceDelay, 3, '0.75')
Menu.SetValueName(fooAllInOne.optionHeroInvokerInstanceDelay, 4, '1.00')
Menu.SetValueName(fooAllInOne.optionHeroInvokerInstanceDelay, 5, '1.25')
Menu.SetValueName(fooAllInOne.optionHeroInvokerInstanceDelay, 6, '1.50')
Menu.SetValueName(fooAllInOne.optionHeroInvokerInstanceDelay, 7, '1.75')
Menu.SetValueName(fooAllInOne.optionHeroInvokerInstanceDelay, 8, '2.00')
Menu.SetValueName(fooAllInOne.optionHeroInvokerInstanceDelay, 9, '2.25')
Menu.SetValueName(fooAllInOne.optionHeroInvokerInstanceDelay, 10, '2.50')
Menu.SetValueName(fooAllInOne.optionHeroInvokerInstanceDelay, 11, '2.75')
Menu.SetValueName(fooAllInOne.optionHeroInvokerInstanceDelay, 12, '3.00')

Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill1, 0, 'none')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill1, 1, 'tornado')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill1, 2, 'emp')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill1, 3, 'chaos_meteor')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill1, 4, 'deafening_blast')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill1, 5, 'sun_strike')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill1, 6, 'ice_wall')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill1, 7, 'cold_snap')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill1, 8, 'forge_spirit')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill1, 9, 'alacrity')

Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill2, 0, 'none')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill2, 1, 'tornado')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill2, 2, 'emp')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill2, 3, 'chaos_meteor')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill2, 4, 'deafening_blast')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill2, 5, 'sun_strike')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill2, 6, 'ice_wall')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill2, 7, 'cold_snap')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill2, 8, 'forge_spirit')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill2, 9, 'alacrity')

Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill3, 0, 'none')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill3, 1, 'tornado')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill3, 2, 'emp')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill3, 3, 'chaos_meteor')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill3, 4, 'deafening_blast')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill3, 5, 'sun_strike')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill3, 6, 'ice_wall')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill3, 7, 'cold_snap')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill3, 8, 'forge_spirit')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill3, 9, 'alacrity')

Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill4, 0, 'none')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill4, 1, 'tornado')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill4, 2, 'emp')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill4, 3, 'chaos_meteor')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill4, 4, 'deafening_blast')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill4, 5, 'sun_strike')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill4, 6, 'ice_wall')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill4, 7, 'cold_snap')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill4, 8, 'forge_spirit')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill4, 9, 'alacrity')

Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill5, 0, 'none')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill5, 1, 'tornado')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill5, 2, 'emp')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill5, 3, 'chaos_meteor')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill5, 4, 'deafening_blast')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill5, 5, 'sun_strike')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill5, 6, 'ice_wall')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill5, 7, 'cold_snap')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill5, 8, 'forge_spirit')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill5, 9, 'alacrity')

Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill6, 0, 'none')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill6, 1, 'tornado')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill6, 2, 'emp')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill6, 3, 'chaos_meteor')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill6, 4, 'deafening_blast')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill6, 5, 'sun_strike')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill6, 6, 'ice_wall')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill6, 7, 'cold_snap')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill6, 8, 'forge_spirit')
Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo1Skill6, 9, 'alacrity')

Menu.SetValueName(fooAllInOne.optionHeroInvokerDynCS, 0, 'will not be invoked')
Menu.SetValueName(fooAllInOne.optionHeroInvokerDynFS, 0, 'will not be invoked')
Menu.SetValueName(fooAllInOne.optionHeroInvokerDynAL, 0, 'will not be invoked')
Menu.SetValueName(fooAllInOne.optionHeroInvokerDynIW, 0, 'will not be invoked')
Menu.SetValueName(fooAllInOne.optionHeroInvokerDynTO, 0, 'will not be invoked')
Menu.SetValueName(fooAllInOne.optionHeroInvokerDynEMP, 0, 'will not be invoked')
Menu.SetValueName(fooAllInOne.optionHeroInvokerDynSS, 0, 'will not be invoked')
Menu.SetValueName(fooAllInOne.optionHeroInvokerDynCM, 0, 'will not be invoked')
Menu.SetValueName(fooAllInOne.optionHeroInvokerDynDB, 0, 'will not be invoked')

--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill1, 0, 'none')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill1, 1, 'tornado')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill1, 2, 'emp')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill1, 3, 'chaos_meteor')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill1, 4, 'deafening_blast')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill1, 5, 'sun_strike')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill1, 6, 'ice_wall')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill1, 7, 'cold_snap')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill1, 8, 'forge_spirit')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill1, 9, 'alacrity')

--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill2, 0, 'none')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill2, 1, 'tornado')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill2, 2, 'emp')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill2, 3, 'chaos_meteor')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill2, 4, 'deafening_blast')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill2, 5, 'sun_strike')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill2, 6, 'ice_wall')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill2, 7, 'cold_snap')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill2, 8, 'forge_spirit')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill2, 9, 'alacrity')

--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill3, 0, 'none')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill3, 1, 'tornado')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill3, 2, 'emp')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill3, 3, 'chaos_meteor')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill3, 4, 'deafening_blast')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill3, 5, 'sun_strike')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill3, 6, 'ice_wall')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill3, 7, 'cold_snap')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill3, 8, 'forge_spirit')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill3, 9, 'alacrity')

--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill4, 0, 'none')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill4, 1, 'tornado')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill4, 2, 'emp')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill4, 3, 'chaos_meteor')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill4, 4, 'deafening_blast')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill4, 5, 'sun_strike')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill4, 6, 'ice_wall')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill4, 7, 'cold_snap')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill4, 8, 'forge_spirit')
--Menu.SetValueName(fooAllInOne.optionHeroInvokerCombo2Skill4, 9, 'alacrity')

	-- global Variables
fooAllInOne.lastCastTime = 0
fooAllInOne.lastCastTime2 = 0
fooAllInOne.lastCastTime3 = 0
fooAllInOne.lastTick = 0
fooAllInOne.delay = 0
fooAllInOne.itemDelay = 0
fooAllInOne.lastItemCast = 0
fooAllInOne.lastItemTick = 0
fooAllInOne.ItemCastStop = false
fooAllInOne.ControlledUnitCastTime = 0
fooAllInOne.ControlledUnitPauseTime = 0
fooAllInOne.lastAttackTime = 0
fooAllInOne.lastAttackTime2 = 0
fooAllInOne.LastTarget = nil
fooAllInOne.LastTickManta1 = 0
fooAllInOne.LastTickManta2 = 0
fooAllInOne.ArcWardenEntity = nil
fooAllInOne.GenericUpValue = false
fooAllInOne.lastPosition = Vector(0, 0, 0)
fooAllInOne.PuckOrbHitSim = {}
fooAllInOne.PuckOrbCastTime = 0
fooAllInOne.Toggler = false
fooAllInOne.TogglerTime = 0
fooAllInOne.PreInvoke = false
fooAllInOne.PreInvokeSkills = {}
fooAllInOne.IconPath = "resource/flash3/images/small_boost_icons/"
fooAllInOne.font = Renderer.LoadFont("Tahoma", 25, Enum.FontWeight.EXTRABOLD)
fooAllInOne.InvokerCachedIconsSnap = nil
fooAllInOne.InvokerCachedIconsSunStrike = nil
fooAllInOne.InvokerCachedIconsEmp = nil
fooAllInOne.InvokerCachedIconsTornado = nil
fooAllInOne.InvokerCachedIconsAlacrity = nil
fooAllInOne.InvokerCachedIconsBlast = nil
fooAllInOne.InvokerCachedIconsMeteor = nil
fooAllInOne.InvokerCachedIconsIcewall = nil
fooAllInOne.InvokerCachedIconsSpirit = nil
fooAllInOne.InvokerCachedIconsGhost = nil
fooAllInOne.InvokerCachedIconsAgha = nil
fooAllInOne.InvokerCachedIconsRefresher = nil
fooAllInOne.InvokerCachedIconsDagger = nil
fooAllInOne.InvokerCachedIconsEul = nil
fooAllInOne.InvokerComboSelector = 0
fooAllInOne.InvokerLastCastedSkill = nil
fooAllInOne.InvokerLastCastedSkillTime = 0
fooAllInOne.InvokerLastChangedInstance = 0
fooAllInOne.InvokerCaptureManualInstances = 0
fooAllInOne.InvokerLockedTarget = nil
fooAllInOne.invokerChannellingKillstealTimer = 0
fooAllInOne.AttackProjectileCreate = 0
fooAllInOne.AttackAnimationCreate = 0
fooAllInOne.AttackParticleCreate = 0
fooAllInOne.InAttackBackswing = false
fooAllInOne.OrbwalkerDelay = 0
fooAllInOne.TPParticleIndex = nil
fooAllInOne.TPParticleTime = 0
fooAllInOne.TPParticleUnit = nil
fooAllInOne.TPParticlePosition = Vector()


fooAllInOne.GlimpseParticleIndex = nil
fooAllInOne.GlimpseParticleTime = 0
fooAllInOne.GlimpseParticleUnit = nil
fooAllInOne.GlimpseParticlePosition = Vector()
fooAllInOne.GlimpseParticleIndexStart = nil
fooAllInOne.GlimpseParticlePositionStart = Vector()

fooAllInOne.particleNextTime = 0
fooAllInOne.currentParticle = nil

fooAllInOne.enemyHeroTable = {}
fooAllInOne.InvokerKSparticleProcess = {{nil, nil, 0, nil, Vector()}}


	-- global Tables
fooAllInOne.LinkensBreakerItemOrder = {}
fooAllInOne.ItemCastOrder = {}
fooAllInOne.rotationTable = {}
fooAllInOne.invokerInvokeOrder =
		{
	invoker_sun_strike = { 2, 2, 2 },
	invoker_emp = { 1, 1, 1 },
	invoker_tornado = { 0, 1, 1 },
	invoker_alacrity = { 1, 1, 2 },
	invoker_ghost_walk = { 0, 0, 1 },
	invoker_deafening_blast = { 0, 1, 2 },
	invoker_chaos_meteor = { 1, 2, 2 },
	invoker_cold_snap = { 0, 0, 0 },
	invoker_ice_wall = { 0, 0, 2 },
	invoker_forge_spirit = { 0, 2, 2 }
		}
fooAllInOne.invokerTornadoLiftDuration = { 0.8, 1.1, 1.4, 1.7, 2.0, 2.3, 2.6, 2.9 }
fooAllInOne.orbAttackTable = {
	npc_dota_hero_clinkz = "clinkz_searing_arrows",
	npc_dota_hero_drow_ranger = "drow_ranger_frost_arrows",
	npc_dota_hero_enchantress = "enchantress_impetus",
	npc_dota_hero_huskar = "huskar_burning_spear",
	npc_dota_hero_obsidian_destroyer = "obsidian_destroyer_arcane_orb",
	npc_dota_hero_silencer = "silencer_glaives_of_wisdom",
	npc_dota_hero_viper = "viper_poison_attack"
		}

fooAllInOne.attackPointTable = {
	npc_dota_hero_abaddon = { 0.56, 0.41, 0 },
	npc_dota_hero_alchemist = { 0.35, 0.65, 0 },
	npc_dota_hero_antimage = { 0.45, 0.3, 1250 },
	npc_dota_hero_ancient_apparition = { 0.3, 0.6, 0 },
	npc_dota_hero_arc_warden = { 0.3, 0.7, 800 },
	npc_dota_hero_axe = { 0.5, 0.5, 0 },
	npc_dota_hero_bane = { 0.3, 0.7, 900 },
	npc_dota_hero_batrider = { 0.3, 0.54, 900 },
	npc_dota_hero_beastmaster = { 0.3, 0.7, 0 },
	npc_dota_hero_bloodseeker = { 0.43, 0.74, 0 },
	npc_dota_hero_bounty_hunter = { 0.59, 0.59, 0 },
	npc_dota_hero_brewmaster = { 0.35, 0.65, 0 },
	npc_dota_hero_bristleback = { 0.3, 0.3, 0 },
	npc_dota_hero_broodmother = { 0.4, 0.5, 0 },
	npc_dota_hero_centaur = { 0.3, 0.3, 0 },
	npc_dota_hero_chaos_knight = { 0.5, 0.5, 0 },
	npc_dota_hero_chen = { 0.5, 0.5, 1100 },
	npc_dota_hero_clinkz = { 0.7, 0.3, 900 },
	npc_dota_hero_rattletrap = { 0.33, 0.64, 0 },
	npc_dota_hero_crystal_maiden = { 0.55, 0, 900 },
	npc_dota_hero_dark_seer = { 0.59, 0.58, 0 },
	npc_dota_hero_dazzle = { 0.3, 0.3, 1200 },
	npc_dota_hero_death_prophet = { 0.56, 0.51, 1000 },
	npc_dota_hero_disruptor = { 0.4, 0.5, 1200 },
	npc_dota_hero_doom_bringer = { 0.5, 0.7, 0 },
	npc_dota_hero_dragon_knight = { 0.5, 0.5, 0 },
	npc_dota_hero_drow_ranger = { 0.7, 0.3, 1250 },
	npc_dota_hero_earth_spirit = { 0.35, 0.65, 0 },
	npc_dota_hero_earthshaker = { 0.467, 0.863, 0 },
	npc_dota_hero_elder_titan = { 0.35, 0.97, 0 },
	npc_dota_hero_ember_spirit = { 0.4, 0.3, 0 },
	npc_dota_hero_enchantress = { 0.3, 0.7, 900 },
	npc_dota_hero_enigma = { 0.4, 0.77, 900 },
	npc_dota_hero_faceless_void = { 0.5, 0.56, 0 },
	npc_dota_hero_gyrocopter = { 0.2, 0.97, 3000 },
	npc_dota_hero_huskar = { 0.4, 0.5, 1400 },
	npc_dota_hero_invoker = { 0.4, 0.7, 900 },
	npc_dota_hero_wisp = { 0.15, 0.4, 1200 },
	npc_dota_hero_jakiro = { 0.4, 0.5, 1100 },
	npc_dota_hero_juggernaut = { 0.33, 0.84, 0 },
	npc_dota_hero_keeper_of_the_light = { 0.3, 0.85, 900 },
	npc_dota_hero_kunkka = { 0.4, 0.3, 0 },
	npc_dota_hero_legion_commander = { 0.46, 0.64, 0 },
	npc_dota_hero_leshrac = { 0.4, 0.77, 900 },
	npc_dota_hero_lich = { 0.46, 0.54, 900 },
	npc_dota_hero_life_stealer = { 0.39, 0.44, 0 },
	npc_dota_hero_lina = { 0.75, 0.78, 1000 },
	npc_dota_hero_lion = { 0.43, 0.74, 1000 },
	npc_dota_hero_lone_druid = { 0.33, 0.53, 900 },
	npc_dota_hero_luna = { 0.46, 0.54, 900 },
	npc_dota_hero_lycan = { 0.55, 0.55, 0 },
	npc_dota_hero_magnataur = { 0.5, 0.84, 0 },
	npc_dota_hero_medusa = { 0.5, 0.6, 1200 },
	npc_dota_hero_meepo = { 0.38, 0.6, 0 },
	npc_dota_hero_mirana = { 0.3, 0.7, 900 },
	npc_dota_hero_morphling = { 0.45, 0.2, 0 },
	npc_dota_hero_monkey_king = { 0.5, 0.5, 1300 },
	npc_dota_hero_naga_siren = { 0.5, 0.5, 0 },
	npc_dota_hero_furion = { 0.4, 0.77, 1125 },
	npc_dota_hero_necrolyte = { 0.53, 0.47, 900 },
	npc_dota_hero_night_stalker = { 0.55, 0.55, 0 },
	npc_dota_hero_nyx_assassin = { 0.46, 0.54, 0 },
	npc_dota_hero_ogre_magi = { 0.3, 0.3, 0 },
	npc_dota_hero_omniknight = { 0.433, 0.567, 0 },
	npc_dota_hero_oracle = { 0.3, 0.7, 900 },
	npc_dota_hero_obsidian_destroyer = { 0.46, 0.54, 900 },
	npc_dota_hero_phantom_assassin = { 0.3, 0.7, 0 },
	npc_dota_hero_phantom_lancer = { 0.5, 0.5, 0 },
	npc_dota_hero_phoenix = { 0.35, 0.633, 1100 },
	npc_dota_hero_puck = { 0.5, 0.8, 900 },
	npc_dota_hero_pudge = { 0.5, 1.17, 0 },
	npc_dota_hero_pugna = { 0.5, 0.5, 900 },
	npc_dota_hero_queenofpain = { 0.56, 0.41, 1500 },
	npc_dota_hero_razor = { 0.3, 0.7, 2000 },
	npc_dota_hero_riki = { 0.3, 0.3, 0 },
	npc_dota_hero_rubick = { 0.4, 0.77, 1125 },
	npc_dota_hero_sand_king = { 0.53, 0.47, 0 },
	npc_dota_hero_shadow_demon = { 0.35, 0.5, 900 },
	npc_dota_hero_nevermore = { 0.5, 0.54, 1200 },
	npc_dota_hero_shadow_shaman = { 0.3, 0.5, 900 },
	npc_dota_hero_silencer = { 0.5, 0.5, 1000 },
	npc_dota_hero_skywrath_mage = { 0.4, 0.78, 1000 },
	npc_dota_hero_slardar = { 0.36, 0.64, 0 },
	npc_dota_hero_slark = { 0.5, 0.3, 0 },
	npc_dota_hero_sniper = { 0.17, 0.7, 3000 },
	npc_dota_hero_spectre = { 0.3, 0.7, 0 },
	npc_dota_hero_spirit_breaker = { 0.6, 0.3, 0 },
	npc_dota_hero_storm_spirit = { 0.5, 0.3, 1100 },
	npc_dota_hero_sven = { 0.4, 0.3, 0 },
	npc_dota_hero_techies = { 0.5, 0.5, 900 },
	npc_dota_hero_templar_assassin = { 0.3, 0.5, 900 },
	npc_dota_hero_terrorblade = { 0.3, 0.6, 0 },
	npc_dota_hero_tidehunter = { 0.6, 0.56, 0 },
	npc_dota_hero_shredder = { 0.36, 0.64, 0 },
	npc_dota_hero_tinker = { 0.35, 0.65, 900 },
	npc_dota_hero_tiny = { 0.49, 1, 0 },
	npc_dota_hero_treant = { 0.6, 0.4, 0 },
	npc_dota_hero_troll_warlord = { 0.3, 0.3, 1200 },
	npc_dota_hero_tusk = { 0.36, 0.64, 0 },
	npc_dota_hero_abyssal_underlord = { 0.45, 0.7, 0 },
	npc_dota_hero_undying = { 0.3, 0.3, 0 },
	npc_dota_hero_ursa = { 0.3, 0.3, 0 },
	npc_dota_hero_vengefulspirit = { 0.33, 0.64, 1500 },
	npc_dota_hero_venomancer = { 0.3, 0.7, 900 },
	npc_dota_hero_viper = { 0.33, 1, 1200 },
	npc_dota_hero_visage = { 0.46, 0.54, 900 },
	npc_dota_hero_warlock = { 0.3, 0.3, 1200 },
	npc_dota_hero_weaver = { 0.64, 0.36, 900 },
	npc_dota_hero_windrunner = { 0.4, 0.3, 1250 },
	npc_dota_hero_winter_wyvern = { 0.25, 0.8, 700 },
	npc_dota_hero_witch_doctor = { 0.4, 0.5, 1200 },
	npc_dota_hero_skeleton_king = { 0.56, 0.44, 0 },
	npc_dota_hero_zuus = { 0.633, 0.366, 1100 }
		}
fooAllInOne.AbilityList = {
	{ "npc_dota_hero_abaddon", "abaddon_death_coil", "nuke", "target" , "target_damage" },
	{ "npc_dota_hero_abaddon", "abaddon_frostmourne", "utility", "0" , "0" },
	{ "npc_dota_hero_abaddon", "abaddon_aphotic_shield", "utility", "0" , "0" },
	{ "npc_dota_hero_abaddon", "abaddon_borrowed_time", "utility", "0" , "0" },
	{ "npc_dota_hero_abyssal_underlord", "abyssal_underlord_pit_of_malice", "disable", "position" , "0" },
	{ "npc_dota_hero_abyssal_underlord", "abyssal_underlord_firestorm", "nuke", "position" , "0" },
	{ "npc_dota_hero_abyssal_underlord", "abyssal_underlord_atrophy_aura", "utility", "0" , "0" },
	{ "npc_dota_hero_abyssal_underlord", "abyssal_underlord_dark_rift", "utility", "0" , "0" },
	{ "npc_dota_hero_alchemist", "alchemist_unstable_concoction", "disable", "target" , "0" },
	{ "npc_dota_hero_alchemist", "alchemist_unstable_concoction_throw", "disable", "target" , "0" },
	{ "npc_dota_hero_alchemist", "alchemist_acid_spray", "utility", "0" , "0" },
	{ "npc_dota_hero_alchemist", "alchemist_chemical_rage", "utility", "0" , "0" },
	{ "npc_dota_hero_alchemist", "alchemist_goblins_greed", "utility", "0" , "0" },
	{ "npc_dota_hero_ancient_apparition", "ancient_apparition_ice_blast", "nuke", "position" , "0" },
	{ "npc_dota_hero_ancient_apparition", "ancient_apparition_ice_blast_release", "nuke", "position" , "0" },
	{ "npc_dota_hero_ancient_apparition", "ancient_apparition_chilling_touch", "utility", "0" , "0" },
	{ "npc_dota_hero_ancient_apparition", "ancient_apparition_cold_feet", "utility", "0" , "0" },
	{ "npc_dota_hero_ancient_apparition", "ancient_apparition_ice_vortex", "utility", "0" , "0" },
	{ "npc_dota_hero_antimage", "antimage_mana_void"    , "nuke", "target" , "0" },
	{ "npc_dota_hero_antimage", "antimage_blink", "utility", "0" , "0" },
	{ "npc_dota_hero_antimage", "antimage_mana_break", "utility", "0" , "0" },
	{ "npc_dota_hero_antimage", "antimage_spell_shield", "utility", "0" , "0" },
	{ "npc_dota_hero_arcwarden", "arc_warden_flux", "utility", "0" , "0" },
	{ "npc_dota_hero_arcwarden", "arc_warden_magnetic_field", "utility", "0" , "0" },
	{ "npc_dota_hero_arcwarden", "arc_warden_spark_wraith", "utility", "0" , "0" },
	{ "npc_dota_hero_arcwarden", "arc_warden_tempest_double", "utility", "0" , "0" },
	{ "npc_dota_hero_axe", "axe_berserkers_call", "disable", "no target" , "0" },
	{ "npc_dota_hero_axe", "axe_culling_blade", "nuke", "target" , "0" },
	{ "npc_dota_hero_axe", "axe_battle_hunger", "utility", "0" , "0" },
	{ "npc_dota_hero_axe", "axe_counter_helix", "utility", "0" , "0" },
	{ "npc_dota_hero_bane", "bane_brain_sap", "nuke", "target" , "brain_sap_damage" },
	{ "npc_dota_hero_bane", "bane_fiends_grip", "nuke", "target" , "0" },
	{ "npc_dota_hero_bane", "bane_enfeeble", "utility", "0" , "0" },
	{ "npc_dota_hero_bane", "bane_nightmare", "utility", "0" , "0" },
	{ "npc_dota_hero_bane", "bane_nightmare_end", "utility", "0" , "0" },
	{ "npc_dota_hero_batrider", "batrider_firefly", "utility", "0" , "0" },
	{ "npc_dota_hero_batrider", "batrider_flamebreak", "utility", "0" , "0" },
	{ "npc_dota_hero_batrider", "batrider_flaming_lasso", "utility", "0" , "0" },
	{ "npc_dota_hero_batrider", "batrider_sticky_napalm", "utility", "0" , "0" },
	{ "npc_dota_hero_beastmaster", "beastmaster_wild_axes", "nuke", "position" , "axe_damage" },
	{ "npc_dota_hero_beastmaster", "beastmaster_primal_roar", "disable", "no target" , "0" },
	{ "npc_dota_hero_beastmaster", "beastmaster_boar_poison", "utility", "0" , "0" },
	{ "npc_dota_hero_beastmaster", "beastmaster_call_of_the_wild", "utility", "0" , "0" },
	{ "npc_dota_hero_beastmaster", "beastmaster_call_of_the_wild_boar", "utility", "0" , "0" },
	{ "npc_dota_hero_beastmaster", "beastmaster_greater_boar_poison", "utility", "0" , "0" },
	{ "npc_dota_hero_beastmaster", "beastmaster_hawk_invisibility", "utility", "0" , "0" },
	{ "npc_dota_hero_beastmaster", "beastmaster_inner_beast", "utility", "0" , "0" },
	{ "npc_dota_hero_bloodseeker", "bloodseeker_blood_bath", "nuke", "position" , "damage" },
	{ "npc_dota_hero_bloodseeker", "bloodseeker_rupture", "utility", "0" , "0" },
	{ "npc_dota_hero_bloodseeker", "bloodseeker_thirst", "utility", "0" , "0" },
	{ "npc_dota_hero_bounty_hunter", "bounty_hunter_shuriken_toss", "nuke", "target" , "bonus_damage" },
	{ "npc_dota_hero_bounty_hunter", "bounty_hunter_jinada", "utility", "0" , "0" },
	{ "npc_dota_hero_bounty_hunter", "bounty_hunter_track", "utility", "0" , "0" },
	{ "npc_dota_hero_brewmaster", "brewmaster_thunder_clap", "nuke", "no target" , "damage" },
	{ "npc_dota_hero_brewmaster", "brewmaster_earth_hurl_boulder", "disable", "target" , "0" },
	{ "npc_dota_hero_brewmaster", "brewmaster_drunken_brawler", "utility", "0" , "0" },
	{ "npc_dota_hero_brewmaster", "brewmaster_drunken_haze", "utility", "0" , "0" },
	{ "npc_dota_hero_brewmaster", "brewmaster_earth_pulverize", "utility", "0" , "0" },
	{ "npc_dota_hero_brewmaster", "brewmaster_earth_spell_immunity", "utility", "0" , "0" },
	{ "npc_dota_hero_brewmaster", "brewmaster_fire_permanent_immolation", "utility", "0" , "0" },
	{ "npc_dota_hero_brewmaster", "brewmaster_primal_split", "utility", "0" , "0" },
	{ "npc_dota_hero_brewmaster", "brewmaster_storm_cyclone", "utility", "0" , "0" },
	{ "npc_dota_hero_brewmaster", "brewmaster_storm_dispel_magic", "utility", "0" , "0" },
	{ "npc_dota_hero_brewmaster", "brewmaster_storm_wind_walk", "utility", "0" , "0" },
	{ "npc_dota_hero_bristleback", "bristleback_quill_spray", "nuke", "no target" , "quill_base_damage" },
	{ "npc_dota_hero_bristleback", "bristleback_bristleback", "utility", "0" , "0" },
	{ "npc_dota_hero_bristleback", "bristleback_viscous_nasal_goo", "utility", "0" , "0" },
	{ "npc_dota_hero_bristleback", "bristleback_warpath", "utility", "0" , "0" },
	{ "npc_dota_hero_broodmother", "broodmother_spawn_spiderlings", "nuke", "target" , "damage" },
	{ "npc_dota_hero_broodmother", "broodmother_incapacitating_bite", "utility", "0" , "0" },
	{ "npc_dota_hero_broodmother", "broodmother_insatiable_hunger", "utility", "0" , "0" },
	{ "npc_dota_hero_broodmother", "broodmother_poison_sting", "utility", "0" , "0" },
	{ "npc_dota_hero_broodmother", "broodmother_spawn_spiderite", "utility", "0" , "0" },
	{ "npc_dota_hero_broodmother", "broodmother_spin_web", "utility", "0" , "0" },
	{ "npc_dota_hero_broodmother", "broodmother_spin_web_destroy"  , "utility", "0" , "0" },
	{ "npc_dota_hero_centaur", "centaur_double_edge", "nuke", "no target" , "edge_damage" },
	{ "npc_dota_hero_centaur", "centaur_hoof_stomp", "disable", "no target" , "0" },
	{ "npc_dota_hero_centaur", "centaur_return", "utility", "0" , "0" },
	{ "npc_dota_hero_centaur", "centaur_stampede", "utility", "0" , "0" },
	{ "npc_dota_hero_chaos_knight", "chaos_knight_chaos_bolt", "disable", "target" , "0" },
	{ "npc_dota_hero_chaos_knight", "chaos_knight_chaos_strike", "utility", "0" , "0" },
	{ "npc_dota_hero_chaos_knight", "chaos_knight_phantasm", "utility", "0" , "0" },
	{ "npc_dota_hero_chaos_knight", "chaos_knight_reality_rift", "utility", "0" , "0" },
	{ "npc_dota_hero_chen", "chen_test_of_faith", "nuke", "target" , "damage_min" },
	{ "npc_dota_hero_chen", "chen_hand_of_god", "utility", "0" , "0" },
	{ "npc_dota_hero_chen", "chen_holy_persuasion", "utility", "0" , "0" },
	{ "npc_dota_hero_chen", "chen_penitence", "utility", "0" , "0" },
	{ "npc_dota_hero_chen", "chen_test_of_faith_teleport", "utility", "0" , "0" },
	{ "npc_dota_hero_clinkz", "clinkz_death_pact", "utility", "0" , "0" },
	{ "npc_dota_hero_clinkz", "clinkz_searing_arrows", "utility", "0" , "0" },
	{ "npc_dota_hero_clinkz", "clinkz_strafe", "utility", "0" , "0" },
	{ "npc_dota_hero_clinkz", "clinkz_wind_walk", "utility", "0" , "0" },
	{ "npc_dota_hero_crystal_maiden", "crystal_maiden_crystal_nova", "nuke", "position" , "nova_damage" },
	{ "npc_dota_hero_crystal_maiden", "crystal_maiden_frostbite", "disable", "target" , "0" },
	{ "npc_dota_hero_crystal_maiden", "crystal_maiden_freezing_field", "nuke", "no target" , "0" },
	{ "npc_dota_hero_crystal_maiden", "crystal_maiden_brilliance_aura", "utility", "0" , "0" },
	{ "npc_dota_hero_dark_seer", "dark_seer_ion_shell", "utility", "0" , "0" },
	{ "npc_dota_hero_dark_seer", "dark_seer_surge", "utility", "0" , "0" },
	{ "npc_dota_hero_dark_seer", "dark_seer_vacuum", "utility", "0" , "0" },
	{ "npc_dota_hero_dark_seer", "dark_seer_wall_of_replica", "utility", "0" , "0" },
	{ "npc_dota_hero_dazzle", "dazzle_poison_touch", "nuke", "target" , "0" },
	{ "npc_dota_hero_dazzle", "dazzle_shadow_wave", "utility", "0" , "0" },
	{ "npc_dota_hero_dazzle", "dazzle_shallow_grave", "utility", "0" , "0" },
	{ "npc_dota_hero_dazzle", "dazzle_weave", "utility", "0" , "0" },
	{ "npc_dota_hero_death_prophet", "death_prophet_silence", "disable", "position" , "0" },
	{ "npc_dota_hero_death_prophet", "death_prophet_carrion_swarm", "nuke", "position" , "0" },
	{ "npc_dota_hero_death_prophet", "death_prophet_exorcism", "utility", "0" , "0" },
	{ "npc_dota_hero_death_prophet", "death_prophet_spirit_siphon", "utility", "0" , "0" },
	{ "npc_dota_hero_death_prophet", "death_prophet_witchcraft", "utility", "0" , "0" },
	{ "npc_dota_hero_disruptor", "disruptor_thunder_strike", "nuke", "target" , "0" },
	{ "npc_dota_hero_disruptor", "disruptor_glimpse", "utility", "0" , "0" },
	{ "npc_dota_hero_disruptor", "disruptor_kinetic_field", "utility", "0" , "0" },
	{ "npc_dota_hero_disruptor", "disruptor_static_storm", "utility", "0" , "0" },
	{ "npc_dota_hero_doom_bringer", "doom_bringer_devour", "utility", "0" , "0" },
	{ "npc_dota_hero_doom_bringer", "doom_bringer_doom", "utility", "0" , "0" },
	{ "npc_dota_hero_doom_bringer", "doom_bringer_empty1", "utility", "0" , "0" },
	{ "npc_dota_hero_doom_bringer", "doom_bringer_empty2", "utility", "0" , "0" },
	{ "npc_dota_hero_doom_bringer", "doom_bringer_infernal_blade", "utility", "0" , "0" },
	{ "npc_dota_hero_doom_bringer", "doom_bringer_scorched_earth", "utility", "0" , "0" },
	{ "npc_dota_hero_dragon_knight", "dragon_knight_dragon_tail", "disable", "target" , "0" },
	{ "npc_dota_hero_dragon_knight", "dragon_knight_breathe_fire", "nuke", "position" , "0" },
	{ "npc_dota_hero_dragon_knight", "dragon_knight_dragon_blood", "utility", "0" , "0" },
	{ "npc_dota_hero_dragon_knight", "dragon_knight_elder_dragon_form", "utility", "0" , "0" },
	{ "npc_dota_hero_dragon_knight", "dragon_knight_frost_breath", "utility", "0" , "0" },
	{ "npc_dota_hero_drow_ranger", "drow_ranger_silence", "disable", "position" , "0" },
	{ "npc_dota_hero_drow_ranger", "drow_ranger_wave_of_silence", "disable", "position" , "0" },
	{ "npc_dota_hero_drow_ranger", "drow_ranger_frost_arrows", "utility", "0" , "0" },
	{ "npc_dota_hero_drow_ranger", "drow_ranger_marksmanship", "utility", "0" , "0" },
	{ "npc_dota_hero_drow_ranger", "drow_ranger_trueshot", "utility", "0" , "0" },
	{ "npc_dota_hero_earth_spirit", "earth_spirit_boulder_smash", "disable", "position" , "0" },
	{ "npc_dota_hero_earth_spirit", "earth_spirit_geomagnetic_grip", "disable", "position" , "0" },
	{ "npc_dota_hero_earth_spirit", "earth_spirit_magnetize", "utility", "0" , "0" },
	{ "npc_dota_hero_earth_spirit", "earth_spirit_petrify", "utility", "0" , "0" },
	{ "npc_dota_hero_earth_spirit", "earth_spirit_rolling_boulder", "utility", "0" , "0" },
	{ "npc_dota_hero_earth_spirit", "earth_spirit_stone_caller", "utility", "0" , "0" },
	{ "npc_dota_hero_earthshaker", "earthshaker_aftershock", "disable", "no target" , "0" },
	{ "npc_dota_hero_earthshaker", "earthshaker_fissure", "disable", "position" , "0" },
	{ "npc_dota_hero_earthshaker", "earthshaker_echo_slam", "nuke", "no target" , "0" },
	{ "npc_dota_hero_earthshaker", "earthshaker_enchant_totem", "utility", "0" , "0" },
	{ "npc_dota_hero_elder_titan", "elder_titan_ancestral_spirit", "nuke", "position" , "pass_damage" },
	{ "npc_dota_hero_elder_titan", "elder_titan_echo_stomp_spirit", "disable", "no target" , "0" },
	{ "npc_dota_hero_elder_titan", "elder_titan_earth_splitter", "nuke", "position" , "0" },
	{ "npc_dota_hero_elder_titan", "elder_titan_natural_order", "utility", "0" , "0" },
	{ "npc_dota_hero_elder_titan", "elder_titan_echo_stomp", "utility", "0" , "0" },
	{ "npc_dota_hero_elder_titan", "elder_titan_natural_order_spirit", "utility", "0" , "0" },
	{ "npc_dota_hero_elder_titan", "elder_titan_return_spirit", "utility", "0" , "0" },
	{ "npc_dota_hero_ember_spirit", "ember_spirit_searing_chains", "disable", "no target" , "0" },
	{ "npc_dota_hero_ember_spirit", "ember_spirit_activate_fire_remnant", "utility", "0" , "0" },
	{ "npc_dota_hero_ember_spirit", "ember_spirit_fire_remnant", "utility", "0" , "0" },
	{ "npc_dota_hero_ember_spirit", "ember_spirit_flame_guard", "utility", "0" , "0" },
	{ "npc_dota_hero_ember_spirit", "ember_spirit_sleight_of_fist", "utility", "0" , "0" },
	{ "npc_dota_hero_enchantress", "enchantress_impetus", "nuke", "target" , "0" },
	{ "npc_dota_hero_enchantress", "enchantress_enchant", "utility", "0" , "0" },
	{ "npc_dota_hero_enchantress", "enchantress_natures_attendants", "utility", "0" , "0" },
	{ "npc_dota_hero_enchantress", "enchantress_untouchable", "utility", "0" , "0" },
	{ "npc_dota_hero_enigma", "enigma_black_hole", "disable", "position" , "0" },
	{ "npc_dota_hero_enigma", "enigma_demonic_conversion", "utility", "0" , "0" },
	{ "npc_dota_hero_enigma", "enigma_malefice", "utility", "0" , "0" },
	{ "npc_dota_hero_enigma", "enigma_midnight_pulse", "utility", "0" , "0" },
	{ "npc_dota_hero_faceless_void", "faceless_void_chronosphere", "disable", "position" , "0" },
	{ "npc_dota_hero_faceless_void", "faceless_void_backtrack", "utility", "0" , "0" },
	{ "npc_dota_hero_faceless_void", "faceless_void_time_dilation", "utility", "0" , "0" },
	{ "npc_dota_hero_faceless_void", "faceless_void_time_lock", "utility", "0" , "0" },
	{ "npc_dota_hero_faceless_void", "faceless_void_time_walk", "utility", "0" , "0" },
	{ "npc_dota_hero_furion", "furion_force_of_nature", "utility", "0" , "0" },
	{ "npc_dota_hero_furion", "furion_sprout", "utility", "0" , "0" },
	{ "npc_dota_hero_furion", "furion_teleportation", "utility", "0" , "0" },
	{ "npc_dota_hero_furion", "furion_wrath_of_nature", "utility", "0" , "0" },
	{ "npc_dota_hero_gyrocopter", "gyrocopter_call_down", "nuke", "position" , "damage_first" },
	{ "npc_dota_hero_gyrocopter", "gyrocopter_homing_missile", "disable", "target" , "0" },
	{ "npc_dota_hero_gyrocopter", "gyrocopter_rocket_barrage", "nuke", "no target" , "0" },
	{ "npc_dota_hero_gyrocopter", "gyrocopter_flak_cannon", "utility", "0" , "0" },
	{ "npc_dota_hero_huskar", "huskar_berserkers_blood", "utility", "0" , "0" },
	{ "npc_dota_hero_huskar", "huskar_burning_spear", "utility", "0" , "0" },
	{ "npc_dota_hero_huskar", "huskar_inner_vitality", "utility", "0" , "0" },
	{ "npc_dota_hero_huskar", "huskar_life_break", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_cold_snap", "disable", "no target" , "0" },
	{ "npc_dota_hero_invoker", "invoker_tornado", "disable", "position" , "0" },
	{ "npc_dota_hero_invoker", "invoker_alacrity", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_attribute_bonus", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_chaos_meteor", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_deafening_blast", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_emp", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_empty1", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_empty2", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_exort", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_forge_spirit", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_ghost_walk", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_ice_wall", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_invoke", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_quas", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_sun_strike", "utility", "0" , "0" },
	{ "npc_dota_hero_invoker", "invoker_wex", "utility", "0" , "0" },
	{ "npc_dota_hero_jakiro", "jakiro_ice_path", "disable", "position" , "0" },
	{ "npc_dota_hero_jakiro", "jakiro_macropyre", "nuke", "position" , "0" },
	{ "npc_dota_hero_jakiro", "jakiro_dual_breath", "utility", "0" , "0" },
	{ "npc_dota_hero_jakiro", "jakiro_liquid_fire", "utility", "0" , "0" },
	{ "npc_dota_hero_juggernaut", "juggernaut_omni_slash", "nuke", "target" , "0" },
	{ "npc_dota_hero_juggernaut", "juggernaut_blade_dance", "utility", "0" , "0" },
	{ "npc_dota_hero_juggernaut", "juggernaut_blade_fury", "utility", "0" , "0" },
	{ "npc_dota_hero_juggernaut", "juggernaut_healing_ward", "utility", "0" , "0" },
	{ "npc_dota_hero_keeper_of_the_light", "keeper_of_the_light_blinding_light", "utility", "0" , "0" },
	{ "npc_dota_hero_keeper_of_the_light", "keeper_of_the_light_chakra_magic", "utility", "0" , "0" },
	{ "npc_dota_hero_keeper_of_the_light", "keeper_of_the_light_empty1", "utility", "0" , "0" },
	{ "npc_dota_hero_keeper_of_the_light", "keeper_of_the_light_illuminate", "utility", "0" , "0" },
	{ "npc_dota_hero_keeper_of_the_light", "keeper_of_the_light_illuminate_end", "utility", "0" , "0" },
	{ "npc_dota_hero_keeper_of_the_light", "keeper_of_the_light_mana_leak", "utility", "0" , "0" },
	{ "npc_dota_hero_keeper_of_the_light", "keeper_of_the_light_recall", "utility", "0" , "0" },
	{ "npc_dota_hero_keeper_of_the_light", "keeper_of_the_light_spirit_form", "utility", "0" , "0" },
	{ "npc_dota_hero_keeper_of_the_light", "keeper_of_the_light_spirit_form_illuminate", "utility", "0" , "0" },
	{ "npc_dota_hero_keeper_of_the_light", "keeper_of_the_light_spirit_form_illuminate_end", "utility", "0" , "0" },
	{ "npc_dota_hero_kunkka", "kunkka_ghostship", "nuke", "position" , "0" },
	{ "npc_dota_hero_kunkka", "kunkka_torrent", "nuke", "skillshot" , "0" },
	{ "npc_dota_hero_kunkka", "kunkka_return", "utility", "0" , "0" },
	{ "npc_dota_hero_kunkka", "kunkka_tidebringer", "utility", "0" , "0" },
	{ "npc_dota_hero_kunkka", "kunkka_x_marks_the_spot", "utility", "0" , "0" },
	{ "npc_dota_hero_legion_commander", "legion_commander_overwhelming_odds", "nuke", "position" , "damage" },
	{ "npc_dota_hero_legion_commander", "legion_commander_duel", "disable", "target" , "0" },
	{ "npc_dota_hero_legion_commander", "legion_commander_moment_of_courage", "utility", "0" , "0" },
	{ "npc_dota_hero_legion_commander", "legion_commander_press_the_attack", "utility", "0" , "0" },
	{ "npc_dota_hero_leshrac", "leshrac_split_earth", "disable", "position" , "0" },
	{ "npc_dota_hero_leshrac", "leshrac_lightning_storm", "nuke", "target" , "0" },
	{ "npc_dota_hero_leshrac", "leshrac_pulse_nova", "utility", "0" , "0" },
	{ "npc_dota_hero_leshrac", "leshrac_diabolic_edict", "utility", "0" , "0" },
	{ "npc_dota_hero_lich", "lich_chain_frost", "nuke", "target" , "damage" },
	{ "npc_dota_hero_lich", "lich_frost_nova", "nuke", "position" , "0" },
	{ "npc_dota_hero_lich", "lich_dark_ritual", "utility", "0" , "0" },
	{ "npc_dota_hero_lich", "lich_frost_armor", "utility", "0" , "0" },
	{ "npc_dota_hero_life_stealer", "life_stealer_assimilate", "utility", "0" , "0" },
	{ "npc_dota_hero_life_stealer", "life_stealer_assimilate_eject", "utility", "0" , "0" },
	{ "npc_dota_hero_life_stealer", "life_stealer_consume", "utility", "0" , "0" },
	{ "npc_dota_hero_life_stealer", "life_stealer_control", "utility", "0" , "0" },
	{ "npc_dota_hero_life_stealer", "life_stealer_empty_1", "utility", "0" , "0" },
	{ "npc_dota_hero_life_stealer", "life_stealer_empty_2", "utility", "0" , "0" },
	{ "npc_dota_hero_life_stealer", "life_stealer_empty_3", "utility", "0" , "0" },
	{ "npc_dota_hero_life_stealer", "life_stealer_empty_4", "utility", "0" , "0" },
	{ "npc_dota_hero_life_stealer", "life_stealer_feast", "utility", "0" , "0" },
	{ "npc_dota_hero_life_stealer", "life_stealer_infest", "utility", "0" , "0" },
	{ "npc_dota_hero_life_stealer", "life_stealer_open_wounds", "utility", "0" , "0" },
	{ "npc_dota_hero_life_stealer", "life_stealer_rage", "utility", "0" , "0" },
	{ "npc_dota_hero_lina", "lina_laguna_blade", "nuke", "target" , "damage" },
	{ "npc_dota_hero_lina", "lina_light_strike_array", "disable", "position" , "0" },
	{ "npc_dota_hero_lina", "lina_dragon_slave", "nuke", "skillshot" , "0" },
	{ "npc_dota_hero_lina", "lina_fiery_soul", "utility", "0" , "0" },
	{ "npc_dota_hero_lion", "lion_finger_of_death", "nuke", "target" , "damage" },
	{ "npc_dota_hero_lion", "lion_impale", "disable", "position" , "0" },
	{ "npc_dota_hero_lion", "lion_voodoo", "disable", "target" , "0" },
	{ "npc_dota_hero_lion", "lion_mana_drain", "utility", "0" , "0" },
	{ "npc_dota_hero_lone_druid", "lone_druid_rabid", "utility", "0" , "0" },
	{ "npc_dota_hero_lone_druid", "lone_druid_savage_roar", "utility", "0" , "0" },
	{ "npc_dota_hero_lone_druid", "lone_druid_savage_roar_bear", "utility", "0" , "0" },
	{ "npc_dota_hero_lone_druid", "lone_druid_spirit_bear", "utility", "0" , "0" },
	{ "npc_dota_hero_lone_druid", "lone_druid_spirit_bear_demolish", "utility", "0" , "0" },
	{ "npc_dota_hero_lone_druid", "lone_druid_spirit_bear_entangle", "utility", "0" , "0" },
	{ "npc_dota_hero_lone_druid", "lone_druid_spirit_bear_return", "utility", "0" , "0" },
	{ "npc_dota_hero_lone_druid", "lone_druid_true_form", "utility", "0" , "0" },
	{ "npc_dota_hero_lone_druid", "lone_druid_true_form_battle_cry", "utility", "0" , "0" },
	{ "npc_dota_hero_lone_druid", "lone_druid_true_form_druid", "utility", "0" , "0" },
	{ "npc_dota_hero_luna", "luna_lucent_beam", "nuke", "target" , "beam_damage" },
	{ "npc_dota_hero_luna", "luna_eclipse", "nuke", "no target" , "0" },
	{ "npc_dota_hero_luna", "luna_lunar_blessing", "utility", "0" , "0" },
	{ "npc_dota_hero_luna", "luna_moon_glaive", "utility", "0" , "0" },
	{ "npc_dota_hero_lycan", "lycan_feral_impulse", "utility", "0" , "0" },
	{ "npc_dota_hero_lycan", "lycan_howl", "utility", "0" , "0" },
	{ "npc_dota_hero_lycan", "lycan_shapeshift", "utility", "0" , "0" },
	{ "npc_dota_hero_lycan", "lycan_summon_wolves", "utility", "0" , "0" },
	{ "npc_dota_hero_lycan", "lycan_summon_wolves_critical_strike", "utility", "0" , "0" },
	{ "npc_dota_hero_lycan", "lycan_summon_wolves_invisibility", "utility", "0" , "0" },
	{ "npc_dota_hero_magnataur", "magnataur_shockwave", "nuke", "skillshot" , "shock_damage" },
	{ "npc_dota_hero_magnataur", "magnataur_reverse_polarity", "disable", "no target" , "0" },
	{ "npc_dota_hero_magnataur", "magnataur_empower", "utility", "0" , "0" },
	{ "npc_dota_hero_magnataur", "magnataur_skewer", "utility", "0" , "0" },
	{ "npc_dota_hero_medusa", "medusa_mystic_snake", "nuke", "target" , "snake_damage" },
	{ "npc_dota_hero_medusa", "medusa_mana_shield", "utility", "0" , "0" },
	{ "npc_dota_hero_medusa", "medusa_split_shot", "utility", "0" , "0" },
	{ "npc_dota_hero_medusa", "medusa_stone_gaze", "utility", "0" , "0" },
	{ "npc_dota_hero_meepo", "meepo_earthbind", "disable", "position" , "0" },
	{ "npc_dota_hero_meepo", "meepo_poof", "utility", "0" , "0" },
	{ "npc_dota_hero_meepo", "meepo_divided_we_stand", "utility", "0" , "0" },
	{ "npc_dota_hero_meepo", "meepo_geostrike", "utility", "0" , "0" },
	{ "npc_dota_hero_mirana", "mirana_arrow", "disable", "position" , "0" },
	{ "npc_dota_hero_mirana", "mirana_starfall", "nuke", "no target" , "0" },
	{ "npc_dota_hero_mirana", "mirana_invis", "utility", "0" , "0" },
	{ "npc_dota_hero_mirana", "mirana_leap", "utility", "0" , "0" },
	{ "npc_dota_hero_monkey_king", "monkey_king_primal_spring", "disable", "position" , "0" },
	{ "npc_dota_hero_monkey_king", "monkey_king_primal_spring_early", "disable", "position" , "0" },
	{ "npc_dota_hero_monkey_king", "monkey_king_boundless_strike", "nuke", "position" , "0" },
	{ "npc_dota_hero_monkey_king", "monkey_king_jingu_mastery", "utility", "0" , "0" },
	{ "npc_dota_hero_monkey_king", "monkey_king_mischief", "utility", "0" , "0" },
	{ "npc_dota_hero_monkey_king", "monkey_king_tree_dance", "utility", "0" , "0" },
	{ "npc_dota_hero_monkey_king", "monkey_king_untransform", "utility", "0" , "0" },
	{ "npc_dota_hero_monkey_king", "monkey_king_wukongs_command", "utility", "0" , "0" },
	{ "npc_dota_hero_morphling", "morphling_adaptive_strike", "nuke", "target" , "0" },
	{ "npc_dota_hero_morphling", "morphling_waveform", "utility", "0" , "0" },
	{ "npc_dota_hero_morphling", "morphling_hybrid", "utility", "0" , "0" },
	{ "npc_dota_hero_morphling", "morphling_morph", "utility", "0" , "0" },
	{ "npc_dota_hero_morphling", "morphling_morph_agi", "utility", "0" , "0" },
	{ "npc_dota_hero_morphling", "morphling_morph_replicate", "utility", "0" , "0" },
	{ "npc_dota_hero_morphling", "morphling_morph_str", "utility", "0" , "0" },
	{ "npc_dota_hero_morphling", "morphling_replicate", "utility", "0" , "0" },
	{ "npc_dota_hero_naga_siren", "naga_siren_ensnare", "disable", "target" , "0" },
	{ "npc_dota_hero_naga_siren", "naga_siren_rip_tide", "nuke", "no target" , "0" },
	{ "npc_dota_hero_naga_siren", "naga_siren_mirror_image", "utility", "0" , "0" },
	{ "npc_dota_hero_naga_siren", "naga_siren_song_of_the_siren", "utility", "0" , "0" },
	{ "npc_dota_hero_naga_siren", "naga_siren_song_of_the_siren_cancel", "utility", "0" , "0" },
	{ "npc_dota_hero_necrolyte", "necrolyte_reapers_scythe", "disable", "target" , "0" },
	{ "npc_dota_hero_necrolyte", "necrolyte_death_pulse", "nuke", "no target" , "0" },
	{ "npc_dota_hero_necrolyte", "necrolyte_heartstopper_aura", "utility", "0" , "0" },
	{ "npc_dota_hero_necrolyte", "necrolyte_sadist", "utility", "0" , "0" },
	{ "npc_dota_hero_necrolyte", "necrolyte_sadist_stop", "utility", "0" , "0" },
	{ "npc_dota_hero_nevermore", "nevermore_dark_lord", "utility", "0" , "0" },
	{ "npc_dota_hero_nevermore", "nevermore_necromastery", "utility", "0" , "0" },
	{ "npc_dota_hero_nevermore", "nevermore_requiem", "utility", "0" , "0" },
	{ "npc_dota_hero_nevermore", "nevermore_shadowraze1", "nuke", "special" , "0" },
	{ "npc_dota_hero_nevermore", "nevermore_shadowraze2", "nuke", "special" , "0" },
	{ "npc_dota_hero_nevermore", "nevermore_shadowraze3", "nuke", "special" , "0" },
	{ "npc_dota_hero_night_stalker", "night_stalker_void", "nuke", "target" , "0" },
	{ "npc_dota_hero_night_stalker", "night_stalker_crippling_fear", "utility", "0" , "0" },
	{ "npc_dota_hero_night_stalker", "night_stalker_darkness", "utility", "0" , "0" },
	{ "npc_dota_hero_night_stalker", "night_stalker_hunter_in_the_night", "utility", "0" , "0" },
	{ "npc_dota_hero_nyx_assassin", "nyx_assassin_impale", "disable", "position" , "0" },
	{ "npc_dota_hero_nyx_assassin", "nyx_assassin_mana_burn", "nuke", "special" , "0" },
	{ "npc_dota_hero_nyx_assassin", "nyx_assassin_burrow", "utility", "0" , "0" },
	{ "npc_dota_hero_nyx_assassin", "nyx_assassin_spiked_carapace", "utility", "0" , "0" },
	{ "npc_dota_hero_nyx_assassin", "nyx_assassin_unburrow", "utility", "0" , "0" },
	{ "npc_dota_hero_nyx_assassin", "nyx_assassin_vendetta", "utility", "0" , "0" },
	{ "npc_dota_hero_obsidian_destroyer", "obsidian_destroyer_astral_imprisonment", "nuke", "target" , "damage" },
	{ "npc_dota_hero_obsidian_destroyer", "obsidian_destroyer_sanity_eclipse", "nuke", "position" , "0" },
	{ "npc_dota_hero_obsidian_destroyer", "obsidian_destroyer_arcane_orb", "utility", "0" , "0" },
	{ "npc_dota_hero_obsidian_destroyer", "obsidian_destroyer_essence_aura", "utility", "0" , "0" },
	{ "npc_dota_hero_obsidian_destroyer", "obsidian_destroyer_mind_over_matter", "utility", "0" , "0" },
	{ "npc_dota_hero_ogre_magi", "ogre_magi_fireblast", "nuke", "target" , "0" },
	{ "npc_dota_hero_ogre_magi", "ogre_magi_unrefined_fireblast", "nuke", "target" , "0" },
	{ "npc_dota_hero_ogre_magi", "ogre_magi_bloodlust", "utility", "0" , "0" },
	{ "npc_dota_hero_ogre_magi", "ogre_magi_ignite", "utility", "0" , "0" },
	{ "npc_dota_hero_ogre_magi", "ogre_magi_multicast", "utility", "0" , "0" },
	{ "npc_dota_hero_omniknight", "omniknight_degen_aura", "utility", "0" , "0" },
	{ "npc_dota_hero_omniknight", "omniknight_guardian_angel", "utility", "0" , "0" },
	{ "npc_dota_hero_omniknight", "omniknight_purification", "utility", "0" , "0" },
	{ "npc_dota_hero_omniknight", "omniknight_repel", "utility", "0" , "0" },
	{ "npc_dota_hero_oracle", "oracle_fortunes_end", "disable", "target" , "0" },
	{ "npc_dota_hero_oracle", "oracle_false_promise", "utility", "0" , "0" },
	{ "npc_dota_hero_oracle", "oracle_fates_edict", "utility", "0" , "0" },
	{ "npc_dota_hero_oracle", "oracle_purifying_flames", "utility", "0" , "0" },
	{ "npc_dota_hero_phantom_assassin", "phantom_assassin_stifling_dagger", "nuke", "target" , "0" },
	{ "npc_dota_hero_phantom_assassin", "phantom_assassin_blur", "utility", "0" , "0" },
	{ "npc_dota_hero_phantom_assassin", "phantom_assassin_coup_de_grace", "utility", "0" , "0" },
	{ "npc_dota_hero_phantom_assassin", "phantom_assassin_phantom_strike", "utility", "0" , "0" },
	{ "npc_dota_hero_phantom_lancer", "phantom_lancer_spirit_lance", "nuke", "target" , "0" },
	{ "npc_dota_hero_phantom_lancer", "phantom_lancer_doppelwalk", "utility", "0" , "0" },
	{ "npc_dota_hero_phantom_lancer", "phantom_lancer_juxtapose", "utility", "0" , "0" },
	{ "npc_dota_hero_phantom_lancer", "phantom_lancer_phantom_edge", "utility", "0" , "0" },
	{ "npc_dota_hero_phoenix", "phoenix_fire_spirits", "utility", "0" , "0" },
	{ "npc_dota_hero_phoenix", "phoenix_icarus_dive", "utility", "0" , "0" },
	{ "npc_dota_hero_phoenix", "phoenix_icarus_dive_stop", "utility", "0" , "0" },
	{ "npc_dota_hero_phoenix", "phoenix_launch_fire_spirit", "utility", "0" , "0" },
	{ "npc_dota_hero_phoenix", "phoenix_sun_ray", "utility", "0" , "0" },
	{ "npc_dota_hero_phoenix", "phoenix_sun_ray_stop", "utility", "0" , "0" },
	{ "npc_dota_hero_phoenix", "phoenix_sun_ray_toggle_move", "utility", "0" , "0" },
	{ "npc_dota_hero_phoenix", "phoenix_sun_ray_toggle_move_empty", "utility", "0" , "0" },
	{ "npc_dota_hero_phoenix", "phoenix_supernova", "utility", "0" , "0" },
	{ "npc_dota_hero_puck", "puck_dream_coil", "disable", "position" , "0" },
	{ "npc_dota_hero_puck", "puck_waning_rift", "disable", "no target" , "0" },
	{ "npc_dota_hero_puck", "puck_ethereal_jaunt", "utility", "0" , "0" },
	{ "npc_dota_hero_puck", "puck_illusory_orb", "utility", "0" , "0" },
	{ "npc_dota_hero_puck", "puck_phase_shift", "utility", "0" , "0" },
	{ "npc_dota_hero_pudge", "pudge_dismember", "disable", "target" , "0" },
	{ "npc_dota_hero_pudge", "pudge_flesh_heap", "utility", "0" , "0" },
	{ "npc_dota_hero_pudge", "pudge_meat_hook", "utility", "0" , "0" },
	{ "npc_dota_hero_pudge", "pudge_rot", "utility", "0" , "0" },
	{ "npc_dota_hero_pugna", "pugna_nether_blast", "nuke", "skillshot" , "blast_damage" },
	{ "npc_dota_hero_pugna", "pugna_life_drain", "nuke", "target" , "0" },
	{ "npc_dota_hero_pugna", "pugna_decrepify", "utility", "0" , "0" },
	{ "npc_dota_hero_pugna", "pugna_nether_ward", "utility", "0" , "0" },
	{ "npc_dota_hero_queenofpain", "queenofpain_sonic_wave", "nuke", "position" , "damage" },
	{ "npc_dota_hero_queenofpain", "queenofpain_shadow_strike", "nuke", "target" , "strike_damage" },
	{ "npc_dota_hero_queenofpain", "queenofpain_scream_of_pain", "nuke", "special" , "0" },
	{ "npc_dota_hero_queenofpain", "queenofpain_blink", "utility", "0" , "0" },
	{ "npc_dota_hero_rattletrap", "rattletrap_battery_assault", "disable", "no target" , "0" },
	{ "npc_dota_hero_rattletrap", "rattletrap_hookshot", "disable", "position" , "0" },
	{ "npc_dota_hero_rattletrap", "rattletrap_rocket_flare", "nuke", "skillshot" , "0" },
	{ "npc_dota_hero_rattletrap", "rattletrap_power_cogs", "utility", "0" , "0" },
	{ "npc_dota_hero_razor", "razor_plasma_field", "nuke", "no target" , "damage_max" },
	{ "npc_dota_hero_razor", "razor_eye_of_the_storm", "nuke", "no target" , "0" },
	{ "npc_dota_hero_razor", "razor_static_link", "utility", "0" , "0" },
	{ "npc_dota_hero_razor", "razor_unstable_current", "utility", "0" , "0" },
	{ "npc_dota_hero_riki", "riki_smoke_screen", "disable", "position" , "0" },
	{ "npc_dota_hero_riki", "riki_blink_strike", "utility", "0" , "0" },
	{ "npc_dota_hero_riki", "riki_permanent_invisibility", "utility", "0" , "0" },
	{ "npc_dota_hero_riki", "riki_tricks_of_the_trade", "utility", "0" , "0" },
	{ "npc_dota_hero_rubick", "rubick_fade_bolt", "nuke", "target" , "damage" },
	{ "npc_dota_hero_rubick", "rubick_telekinesis", "disable", "target" , "0" },
	{ "npc_dota_hero_rubick", "rubick_telekinesis_land", "disable", "target" , "0" },
	{ "npc_dota_hero_rubick", "rubick_empty1", "utility", "0" , "0" },
	{ "npc_dota_hero_rubick", "rubick_empty2", "utility", "0" , "0" },
	{ "npc_dota_hero_rubick", "rubick_hidden1", "utility", "0" , "0" },
	{ "npc_dota_hero_rubick", "rubick_hidden2", "utility", "0" , "0" },
	{ "npc_dota_hero_rubick", "rubick_hidden3", "utility", "0" , "0" },
	{ "npc_dota_hero_rubick", "rubick_null_field", "utility", "0" , "0" },
	{ "npc_dota_hero_rubick", "rubick_spell_steal", "utility", "0" , "0" },
	{ "npc_dota_hero_sand_king", "sandking_burrowstrike", "disable", "position" , "0" },
	{ "npc_dota_hero_sand_king", "sandking_epicenter", "nuke", "no target" , "0" },
	{ "npc_dota_hero_sand_king", "sandking_caustic_finale", "utility", "0" , "0" },
	{ "npc_dota_hero_sand_king", "sandking_sand_storm", "utility", "0" , "0" },
	{ "npc_dota_hero_shadow_demon", "shadow_demon_demonic_purge", "utility", "0" , "0" },
	{ "npc_dota_hero_shadow_demon", "shadow_demon_disruption", "utility", "0" , "0" },
	{ "npc_dota_hero_shadow_demon", "shadow_demon_shadow_poison", "utility", "0" , "0" },
	{ "npc_dota_hero_shadow_demon", "shadow_demon_shadow_poison_release", "utility", "0" , "0" },
	{ "npc_dota_hero_shadow_demon", "shadow_demon_soul_catcher", "utility", "0" , "0" },
	{ "npc_dota_hero_shadow_shaman", "shadow_shaman_ether_shock", "nuke", "target" , "damage" },
	{ "npc_dota_hero_shadow_shaman", "shadow_shaman_shackles", "disable", "target" , "0" },
	{ "npc_dota_hero_shadow_shaman", "shadow_shaman_voodoo", "disable", "target" , "0" },
	{ "npc_dota_hero_shadow_shaman", "shadow_shaman_mass_serpent_ward", "utility", "0" , "0" },
	{ "npc_dota_hero_shredder", "shredder_whirling_death", "nuke", "no target" , "whirling_damage" },
	{ "npc_dota_hero_shredder", "shredder_chakram", "nuke", "position" , "0" },
	{ "npc_dota_hero_shredder", "shredder_chakram_2", "nuke", "position" , "0" },
	{ "npc_dota_hero_shredder", "shredder_reactive_armor", "utility", "0" , "0" },
	{ "npc_dota_hero_shredder", "shredder_return_chakram", "utility", "0" , "0" },
	{ "npc_dota_hero_shredder", "shredder_return_chakram_2", "utility", "0" , "0" },
	{ "npc_dota_hero_shredder", "shredder_timber_chain", "utility", "0" , "0" },
	{ "npc_dota_hero_silencer", "silencer_last_word", "nuke", "target" , "damage" },
	{ "npc_dota_hero_silencer", "silencer_global_silence", "disable", "no target" , "0" },
	{ "npc_dota_hero_silencer", "silencer_curse_of_the_silent", "utility", "0" , "0" },
	{ "npc_dota_hero_silencer", "silencer_glaives_of_wisdom", "utility", "0" , "0" },
	{ "npc_dota_hero_skeleton_king", "skeleton_king_hellfire_blast", "disable", "target" , "0" },
	{ "npc_dota_hero_skeleton_king", "skeleton_king_reincarnation", "utility", "0" , "0" },
	{ "npc_dota_hero_skeleton_king", "skeleton_king_vampiric_aura", "utility", "0" , "0" },
	{ "npc_dota_hero_skywrath_mage", "skywrath_mage_arcane_bolt", "nuke", "target" , "bolt_damage" },
	{ "npc_dota_hero_skywrath_mage", "skywrath_mage_ancient_seal", "disable", "target" , "0" },
	{ "npc_dota_hero_skywrath_mage", "skywrath_mage_mystic_flare", "nuke", "position" , "0" },
	{ "npc_dota_hero_skywrath_mage", "skywrath_mage_concussive_shot", "utility", "0" , "0" },
	{ "npc_dota_hero_slardar", "slardar_slithereen_crush", "disable", "no target" , "0" },
	{ "npc_dota_hero_slardar", "slardar_amplify_damage", "utility", "0" , "0" },
	{ "npc_dota_hero_slardar", "slardar_bash", "utility", "0" , "0" },
	{ "npc_dota_hero_slardar", "slardar_sprint", "utility", "0" , "0" },
	{ "npc_dota_hero_slark", "slark_dark_pact", "nuke", "no target" , "total_damage" },
	{ "npc_dota_hero_slark", "slark_essence_shift", "utility", "0" , "0" },
	{ "npc_dota_hero_slark", "slark_pounce", "utility", "0" , "0" },
	{ "npc_dota_hero_slark", "slark_shadow_dance", "utility", "0" , "0" },
	{ "npc_dota_hero_sniper", "sniper_assassinate", "nuke", "target" , "0" },
	{ "npc_dota_hero_sniper", "sniper_headshot", "utility", "0" , "0" },
	{ "npc_dota_hero_sniper", "sniper_shrapnel", "utility", "0" , "0" },
	{ "npc_dota_hero_sniper", "sniper_take_aim", "utility", "0" , "0" },
	{ "npc_dota_hero_spectre", "spectre_spectral_dagger", "nuke", "target" , "damage" },
	{ "npc_dota_hero_spectre", "spectre_desolate", "utility", "0" , "0" },
	{ "npc_dota_hero_spectre", "spectre_dispersion", "utility", "0" , "0" },
	{ "npc_dota_hero_spectre", "spectre_haunt", "utility", "0" , "0" },
	{ "npc_dota_hero_spectre", "spectre_reality", "utility", "0" , "0" },
	{ "npc_dota_hero_spirit_breaker", "spirit_breaker_nether_strike", "nuke", "target" , "0" },
	{ "npc_dota_hero_spirit_breaker", "spirit_breaker_charge_of_darkness", "utility", "0" , "0" },
	{ "npc_dota_hero_spirit_breaker", "spirit_breaker_empowering_haste", "utility", "0" , "0" },
	{ "npc_dota_hero_spirit_breaker", "spirit_breaker_greater_bash", "utility", "0" , "0" },
	{ "npc_dota_hero_storm_spirit", "storm_spirit_electric_vortex", "disable", "target" , "0" },
	{ "npc_dota_hero_storm_spirit", "storm_spirit_ball_lightning", "utility", "0" , "0" },
	{ "npc_dota_hero_storm_spirit", "storm_spirit_overload", "utility", "0" , "0" },
	{ "npc_dota_hero_storm_spirit", "storm_spirit_static_remnant", "utility", "0" , "0" },
	{ "npc_dota_hero_sven", "sven_storm_bolt", "disable", "target" , "0" },
	{ "npc_dota_hero_sven", "sven_gods_strength", "utility", "0" , "0" },
	{ "npc_dota_hero_sven", "sven_great_cleave", "utility", "0" , "0" },
	{ "npc_dota_hero_sven", "sven_warcry", "utility", "0" , "0" },
	{ "npc_dota_hero_techies", "techies_land_mines", "utility", "0" , "0" },
	{ "npc_dota_hero_techies", "techies_stasis_trap", "utility", "0" , "0" },
	{ "npc_dota_hero_techies", "techies_suicide", "utility", "0" , "0" },
	{ "npc_dota_hero_techies", "techies_remote_mines", "utility", "0" , "0" },
	{ "npc_dota_hero_techies", "techies_focused_detonate", "utility", "0" , "0" },
	{ "npc_dota_hero_techies", "techies_remote_mines_self_detonate", "utility", "0" , "0" },
	{ "npc_dota_hero_techies", "techies_minefield_sign", "utility", "0" , "0" },
	{ "npc_dota_hero_templar_assassin", "templar_assassin_meld", "utility", "0" , "0" },
	{ "npc_dota_hero_templar_assassin", "templar_assassin_psi_blades", "utility", "0" , "0" },
	{ "npc_dota_hero_templar_assassin", "templar_assassin_psionic_trap", "utility", "0" , "0" },
	{ "npc_dota_hero_templar_assassin", "templar_assassin_refraction", "utility", "0" , "0" },
	{ "npc_dota_hero_templar_assassin", "templar_assassin_self_trap", "utility", "0" , "0" },
	{ "npc_dota_hero_templar_assassin", "templar_assassin_trap", "utility", "0" , "0" },
	{ "npc_dota_hero_terrorblade", "terrorblade_conjure_image", "utility", "0" , "0" },
	{ "npc_dota_hero_terrorblade", "terrorblade_metamorphosis", "utility", "0" , "0" },
	{ "npc_dota_hero_terrorblade", "terrorblade_reflection", "utility", "0" , "0" },
	{ "npc_dota_hero_terrorblade", "terrorblade_sunder", "utility", "0" , "0" },
	{ "npc_dota_hero_tidehunter", "tidehunter_ravage", "disable", "no target" , "0" },
	{ "npc_dota_hero_tidehunter", "tidehunter_anchor_smash", "nuke", "no target" , "0" },
	{ "npc_dota_hero_tidehunter", "tidehunter_gush", "nuke", "target" , "0" },
	{ "npc_dota_hero_tidehunter", "tidehunter_kraken_shell", "utility", "0" , "0" },
	{ "npc_dota_hero_tinker", "tinker_laser", "nuke", "target" , "laser_damage" },
	{ "npc_dota_hero_tinker", "tinker_heat_seeking_missile", "nuke", "no target" , "0" },
	{ "npc_dota_hero_tinker", "tinker_march_of_the_machines", "utility", "0" , "0" },
	{ "npc_dota_hero_tinker", "tinker_rearm", "utility", "0" , "0" },
	{ "npc_dota_hero_tiny", "tiny_toss", "nuke", "position" , "toss_damage" },
	{ "npc_dota_hero_tiny", "tiny_avalanche", "disable", "position" , "0" },
	{ "npc_dota_hero_tiny", "tiny_craggy_exterior", "utility", "0" , "0" },
	{ "npc_dota_hero_tiny", "tiny_grow", "utility", "0" , "0" },
	{ "npc_dota_hero_treant", "treant_overgrowth", "disable", "no target" , "0" },
	{ "npc_dota_hero_treant", "treant_eyes_in_the_forest", "utility", "0" , "0" },
	{ "npc_dota_hero_treant", "treant_leech_seed", "utility", "0" , "0" },
	{ "npc_dota_hero_treant", "treant_living_armor", "utility", "0" , "0" },
	{ "npc_dota_hero_treant", "treant_natures_guise", "utility", "0" , "0" },
	{ "npc_dota_hero_troll_warlord", "troll_warlord_battle_trance", "utility", "0" , "0" },
	{ "npc_dota_hero_troll_warlord", "troll_warlord_berserkers_rage", "utility", "0" , "0" },
	{ "npc_dota_hero_troll_warlord", "troll_warlord_fervor", "utility", "0" , "0" },
	{ "npc_dota_hero_troll_warlord", "troll_warlord_whirling_axes_melee", "utility", "0" , "0" },
	{ "npc_dota_hero_troll_warlord", "troll_warlord_whirling_axes_ranged", "utility", "0" , "0" },
	{ "npc_dota_hero_tusk", "tusk_ice_shards", "nuke", "skillshot" , "shard_damage" },
	{ "npc_dota_hero_tusk", "tusk_walrus_kick", "nuke", "target" , "0" },
	{ "npc_dota_hero_tusk", "tusk_walrus_punch", "nuke", "target" , "0" },
	{ "npc_dota_hero_tusk", "tusk_frozen_sigil", "utility", "0" , "0" },
	{ "npc_dota_hero_tusk", "tusk_launch_snowball", "utility", "0" , "0" },
	{ "npc_dota_hero_tusk", "tusk_snowball", "utility", "0" , "0" },
	{ "npc_dota_hero_undying", "undying_decay", "nuke", "position" , "decay_damage" },
	{ "npc_dota_hero_undying", "undying_flesh_golem", "utility", "0" , "0" },
	{ "npc_dota_hero_undying", "undying_soul_rip", "utility", "0" , "0" },
	{ "npc_dota_hero_undying", "undying_tombstone", "utility", "0" , "0" },
	{ "npc_dota_hero_undying", "undying_tombstone_zombie_aura", "utility", "0" , "0" },
	{ "npc_dota_hero_undying", "undying_tombstone_zombie_deathstrike", "utility", "0" , "0" },
	{ "npc_dota_hero_ursa", "ursa_earthshock", "nuke", "no target" , "0" },
	{ "npc_dota_hero_ursa", "ursa_enrage", "utility", "0" , "0" },
	{ "npc_dota_hero_ursa", "ursa_fury_swipes", "utility", "0" , "0" },
	{ "npc_dota_hero_ursa", "ursa_overpower", "utility", "0" , "0" },
	{ "npc_dota_hero_vengefulspirit", "vengefulspirit_magic_missile", "disable", "target" , "0" },
	{ "npc_dota_hero_vengefulspirit", "vengefulspirit_wave_of_terror", "nuke", "skillshot" , "0" },
	{ "npc_dota_hero_vengefulspirit", "vengefulspirit_command_aura", "utility", "0" , "0" },
	{ "npc_dota_hero_vengefulspirit", "vengefulspirit_nether_swap", "utility", "0" , "0" },
	{ "npc_dota_hero_venomancer", "venomancer_plague_ward", "utility", "0" , "0" },
	{ "npc_dota_hero_venomancer", "venomancer_poison_nova", "utility", "0" , "0" },
	{ "npc_dota_hero_venomancer", "venomancer_poison_sting", "utility", "0" , "0" },
	{ "npc_dota_hero_venomancer", "venomancer_venomous_gale", "utility", "0" , "0" },
	{ "npc_dota_hero_viper", "viper_viper_strike", "nuke", "target" , "0" },
	{ "npc_dota_hero_viper", "viper_corrosive_skin", "utility", "0" , "0" },
	{ "npc_dota_hero_viper", "viper_nethertoxin", "utility", "0" , "0" },
	{ "npc_dota_hero_viper", "viper_poison_attack", "utility", "0" , "0" },
	{ "npc_dota_hero_visage", "visage_soul_assumption", "nuke", "target" , "0" },
	{ "npc_dota_hero_visage", "visage_grave_chill", "utility", "0" , "0" },
	{ "npc_dota_hero_visage", "visage_gravekeepers_cloak", "utility", "0" , "0" },
	{ "npc_dota_hero_visage", "visage_summon_familiars", "utility", "0" , "0" },
	{ "npc_dota_hero_visage", "visage_summon_familiars_stone_form", "utility", "0" , "0" },
	{ "npc_dota_hero_warlock", "warlock_rain_of_chaos", "disable", "position" , "0" },
	{ "npc_dota_hero_warlock", "warlock_shadow_word", "nuke", "target" , "0" },
	{ "npc_dota_hero_warlock", "warlock_fatal_bonds", "utility", "0" , "0" },
	{ "npc_dota_hero_warlock", "warlock_golem_flaming_fists", "utility", "0" , "0" },
	{ "npc_dota_hero_warlock", "warlock_golem_permanent_immolation", "utility", "0" , "0" },
	{ "npc_dota_hero_warlock", "warlock_upheaval", "utility", "0" , "0" },
	{ "npc_dota_hero_weaver", "weaver_geminate_attack", "utility", "0" , "0" },
	{ "npc_dota_hero_weaver", "weaver_shukuchi", "utility", "0" , "0" },
	{ "npc_dota_hero_weaver", "weaver_the_swarm", "utility", "0" , "0" },
	{ "npc_dota_hero_weaver", "weaver_time_lapse", "utility", "0" , "0" },
	{ "npc_dota_hero_windrunner", "windrunner_shackleshot", "disable", "target" , "0" },
	{ "npc_dota_hero_windrunner", "windrunner_powershot", "nuke", "skillshot" , "0" },
	{ "npc_dota_hero_windrunner", "windrunner_focusfire", "utility", "0" , "0" },
	{ "npc_dota_hero_windrunner", "windrunner_windrun", "utility", "0" , "0" },
	{ "npc_dota_hero_winter_wyvern", "winter_wyvern_winters_curse", "disable", "target" , "0" },
	{ "npc_dota_hero_winter_wyvern", "winter_wyvern_splinter_blast", "nuke", "target" , "0" },
	{ "npc_dota_hero_winter_wyvern", "winter_wyvern_arctic_burn", "utility", "0" , "0" },
	{ "npc_dota_hero_winter_wyvern", "winter_wyvern_cold_embrace", "utility", "0" , "0" },
	{ "npc_dota_hero_wisp", "wisp_empty1", "utility", "0" , "0" },
	{ "npc_dota_hero_wisp", "wisp_empty2", "utility", "0" , "0" },
	{ "npc_dota_hero_wisp", "wisp_overcharge", "utility", "0" , "0" },
	{ "npc_dota_hero_wisp", "wisp_relocate", "utility", "0" , "0" },
	{ "npc_dota_hero_wisp", "wisp_spirits", "utility", "0" , "0" },
	{ "npc_dota_hero_wisp", "wisp_spirits_in", "utility", "0" , "0" },
	{ "npc_dota_hero_wisp", "wisp_spirits_out", "utility", "0" , "0" },
	{ "npc_dota_hero_wisp", "wisp_tether", "utility", "0" , "0" },
	{ "npc_dota_hero_wisp", "wisp_tether_break", "utility", "0" , "0" },
	{ "npc_dota_hero_witch_doctor", "witch_doctor_paralyzing_cask", "disable", "target" , "0" },
	{ "npc_dota_hero_witch_doctor", "witch_doctor_death_ward", "utility", "0" , "0" },
	{ "npc_dota_hero_witch_doctor", "witch_doctor_maledict", "utility", "0" , "0" },
	{ "npc_dota_hero_witch_doctor", "witch_doctor_voodoo_restoration", "utility", "0" , "0" },
	{ "npc_dota_hero_zuus", "zuus_arc_lightning", "nuke", "target" , "0" },
	{ "npc_dota_hero_zuus", "zuus_lightning_bolt", "nuke", "skillshot" , "0" },
	{ "npc_dota_hero_zuus", "zuus_thundergods_wrath", "nuke", "no target" , "0" },
	{ "npc_dota_hero_zuus", "zuus_cloud", "utility", "0" , "0" },
	{ "npc_dota_hero_zuus", "zuus_static_field", "utility", "0" , "0" } 
		}

function fooAllInOne.ResetGlobalVariables()

	fooAllInOne.lastCastTime = 0
	fooAllInOne.lastCastTime2 = 0
	fooAllInOne.lastCastTime3 = 0
	fooAllInOne.lastTick = 0
	fooAllInOne.lastItemCast = 0
	fooAllInOne.delay = 0
	fooAllInOne.itemDelay = 0
	fooAllInOne.lastItemTick = 0
	fooAllInOne.ItemCastStop = false
	fooAllInOne.ControlledUnitCastTime = 0
	fooAllInOne.lastAttackTime = 0
	fooAllInOne.lastAttackTime2 = 0
	fooAllInOne.LastTarget = nil
	fooAllInOne.LastTickManta1 = 0
	fooAllInOne.LastTickManta2 = 0
	fooAllInOne.ControlledUnitPauseTime = 0
	fooAllInOne.ArcWardenEntity = nil
	fooAllInOne.GenericUpValue = false
	fooAllInOne.lastPosition = Vector(0, 0, 0)
	fooAllInOne.PuckOrbHitSim = {}
	fooAllInOne.PuckOrbCastTime = 0
	fooAllInOne.Toggler = false
	fooAllInOne.TogglerTime = 0
	fooAllInOne.PreInvoke = false
	fooAllInOne.PreInvokeSkills = {}
	fooAllInOne.InvokerCachedIconsSnap = nil
	fooAllInOne.InvokerCachedIconsSunStrike = nil
	fooAllInOne.InvokerCachedIconsEmp = nil
	fooAllInOne.InvokerCachedIconsTornado = nil
	fooAllInOne.InvokerCachedIconsAlacrity = nil
	fooAllInOne.InvokerCachedIconsBlast = nil
	fooAllInOne.InvokerCachedIconsMeteor = nil
	fooAllInOne.InvokerCachedIconsIcewall = nil
	fooAllInOne.InvokerCachedIconsSpirit = nil
	fooAllInOne.InvokerCachedIconsGhost = nil
	fooAllInOne.InvokerCachedIconsAgha = nil
	fooAllInOne.InvokerCachedIconsRefresher = nil
	fooAllInOne.InvokerCachedIconsDagger = nil
	fooAllInOne.InvokerCachedIconsEul = nil
	fooAllInOne.InvokerComboSelector = 0
	fooAllInOne.InvokerLastCastedSkill = nil
	fooAllInOne.InvokerLastCastedSkillTime = 0
	fooAllInOne.InvokerLastChangedInstance = 0
	fooAllInOne.InvokerCaptureManualInstances = 0
	fooAllInOne.InvokerLockedTarget = nil
	fooAllInOne.invokerChannellingKillstealTimer = 0
	fooAllInOne.AttackProjectileCreate = 0
	fooAllInOne.AttackAnimationCreate = 0
	fooAllInOne.AttackParticleCreate = 0
	fooAllInOne.InAttackBackswing = false
	fooAllInOne.TPParticleIndex = nil
	fooAllInOne.TPParticleTime = 0
	fooAllInOne.TPParticleUnit = nil
	fooAllInOne.TPParticlePosition = Vector()
	fooAllInOne.GlimpseParticleIndex = nil
	fooAllInOne.GlimpseParticleTime = 0
	fooAllInOne.GlimpseParticleUnit = nil
	fooAllInOne.GlimpseParticlePosition = Vector()
	fooAllInOne.GlimpseParticleIndexStart = nil
	fooAllInOne.GlimpseParticlePositionStart = Vector()
	fooAllInOne.InvokerKSparticleProcess = {{nil, nil, 0, nil, Vector()}}
	fooAllInOne.particleNextTime = 0
	fooAllInOne.currentParticle = nil
	fooAllInOne.LinkensBreakerItemOrder = {}
	fooAllInOne.ItemCastOrder = {}
	fooAllInOne.rotationTable = {}
	fooAllInOne.enemyHeroTable = {}

end

function fooAllInOne.OnGameStart()
	
	fooAllInOne.ResetGlobalVariables()

end

function fooAllInOne.OnGameEnd()
	
	fooAllInOne.ResetGlobalVariables()

end
	

-- main callback
function fooAllInOne.OnUpdate()

	if not Menu.IsEnabled(fooAllInOne.optionEnable) then return end

	if not Engine.IsInGame() then
		fooAllInOne.ResetGlobalVariables()
	end
	
	if not GameRules.GetGameState() == 5 then return end
	if Input.IsInputCaptured() then return end
	local myHero = Heroes.GetLocal()
		if not myHero then return end
		if not Entity.IsAlive(myHero) then return end

	if next(fooAllInOne.ItemCastOrder) == nil then
		fooAllInOne.setOrderItem(false)
	end
 	if next(fooAllInOne.LinkensBreakerItemOrder) == nil then
		fooAllInOne.setOrderLinkens(false)
	end

	local enemy = fooAllInOne.targetChecker(Input.GetNearestHeroToCursor(Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY))

	local isHeroSupported = fooAllInOne.heroSupported(myHero)

	if enemy then
		if isHeroSupported then
		
			if NPC.GetUnitName(myHero) == "npc_dota_hero_axe" then
				fooAllInOne.axeCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_rattletrap" then
				fooAllInOne.clockwerkCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_skywrath_mage" then
				fooAllInOne.skywrathCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_tiny" then
				fooAllInOne.tinyCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_windrunner" then
				fooAllInOne.WindRunnerCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_ember_spirit" then
				fooAllInOne.EmberCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_ursa" then
				fooAllInOne.UrsaCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_templar_assassin" then
				fooAllInOne.TACombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_legion_commander" then
				fooAllInOne.LegionCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_shredder" then
				fooAllInOne.TimberCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_slardar" then
				fooAllInOne.SlardarCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_clinkz" then
				fooAllInOne.ClinkzCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_queenofpain" then
				fooAllInOne.QoPCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_sven" then
				fooAllInOne.SvenCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_visage" then
				fooAllInOne.VisageCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_morphling" then
				fooAllInOne.MorphCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_puck" then
				fooAllInOne.PuckCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_antimage" then
				fooAllInOne.AntiMageCombo(myHero, enemy)
			elseif NPC.GetUnitName(myHero) == "npc_dota_hero_phantom_assassin" then
				fooAllInOne.PACombo(myHero, enemy)
			end
		else
			if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.IsAlive(enemy) then	
				fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)	
				fooAllInOne.itemUsage(myHero, enemy)
			end
		end
	end

	if NPC.GetUnitName(myHero) == "npc_dota_hero_invoker" then
		fooAllInOne.InvokerCombo(myHero, enemy)
	end

	if NPC.GetUnitName(myHero) == "npc_dota_hero_arc_warden" then
		fooAllInOne.ArcWardenCombo(myHero, enemy)
	end

	if NPC.GetUnitName(myHero) == "npc_dota_hero_furion" then
		fooAllInOne.ProphetHelper(myHero, enemy)
	end
	
	if NPC.GetUnitName(myHero) == "npc_dota_hero_clinkz" then
		if Menu.IsEnabled(fooAllInOne.optionHeroClinkzUlt) then
			fooAllInOne.ClinkzAutoUlt(myHero)
		end
	end

	if NPC.GetUnitName(myHero) == "npc_dota_hero_axe" then
		if Menu.IsEnabled(fooAllInOne.optionHeroAxeForceBlink) then
			fooAllInOne.ForceBlink(myHero, enemy, Menu.GetValue(fooAllInOne.optionHeroAxeForceBlinkRange))
		end
	end

	if NPC.GetUnitName(myHero) == "npc_dota_hero_shredder" then
		fooAllInOne.TimberSaveChakramReturn(myHero, enemy)
	end
	
	if Menu.IsEnabled(fooAllInOne.optionUtilityEnable) then
		fooAllInOne.utilityItemUsage(myHero)
	end

	if Menu.IsEnabled(fooAllInOne.optionKillStealEnable) then
		if NPC.GetUnitName(myHero) == "npc_dota_hero_invoker" then
			if Menu.IsEnabled(fooAllInOne.optionKillStealInvoker) then
		--		fooAllInOne.AutoSunstrikeKillSteal(myHero)
				fooAllInOne.AutoSunstrikeKillStealNew(myHero)
			end
		else
			fooAllInOne.AutoNukeKillSteal(myHero)
		end
	end

--fooAllInOne.KunkkaCombo(myHero, enemy)


--	for n in pairs(fooAllInOne) do 
--		Log.Write(tostring(n))
--	end	

--	local test = 0
--	for i = 1, Heroes.Count() do
--      local hero = Heroes.Get(i)
	
--	local sentry = NPC.GetItem(hero, "item_ward_sentry", true)
--	local observer = NPC.GetItem(hero, "item_ward_observer", true)
--	local obsSentry = NPC.GetItem(hero, "item_ward_dispenser", true)

--		if not Entity.IsSameTeam(myHero, hero) and not NPC.IsDormant(hero) then
--				and observer and Ability.SecondsSinceLastUse(observer) > 0.0 and Ability.SecondsSinceLastUse(observer) < 0.3 then
--			if Ability.SecondsSinceLastUse(observer) > 0 and Ability.SecondsSinceLastUse(observer) < 1 then
--					test = 1
--			end
--		end
--	end

--	for i = 1, NPCs.Count() do
--	local npc = NPCs.Get(i)
--	Log.Write(tostring(NPC.GetUnitName(npc)) .. " " .. tostring(Entity.GetOwner(npc)) .. " " .. tostring(Entity.OwnedBy(npc, myHero)))
--	end

--	local modifiers = NPC.GetModifiers(myHero)
--	Log.Write(NPC.GetMovementSpeed(myHero))
--	for _, modifier in ipairs(modifiers) do
--	local modifierName = Modifier.GetName(modifier)
--	Log.Write(modifierName)
--	Log.Write(Modifier.GetCreationTime(modifier))
--	end
--	Log.Write(NPC.GetAttackRange(myHero))

--	for i = 1, Abilities.Count() do
--	local abilities = Abilities.Get(i)
--	local abilityNames = Ability.GetName(abilities)
--	Log.Write(abilityNames)
--	end
	
end

function fooAllInOne.OnParticleCreate(particle)

	if not particle then return end
	if not Heroes.GetLocal() then return end

	local enemy = fooAllInOne.targetChecker(Input.GetNearestHeroToCursor(Entity.GetTeamNum(Heroes.GetLocal()), Enum.TeamType.TEAM_ENEMY))

	if particle.name == "damage_flash" then
		if particle.entity == enemy then
			fooAllInOne.AttackParticleCreate = os.clock()
		end
	end

	if particle.name == "teleport_start" then
		if particle.entityForModifiers ~= Heroes.GetLocal() then
			if particle.entityForModifiers ~= nil and not Entity.IsSameTeam(Heroes.GetLocal(), particle.entityForModifiers) then
				fooAllInOne.TPParticleIndex = particle.index
				fooAllInOne.TPParticleTime = GameRules.GetGameTime()
				fooAllInOne.TPParticleUnit = particle.entityForModifiers
			end
		end
	end

	if particle.name == "furion_sprout" then
		if particle.entityForModifiers ~= nil and Entity.IsSameTeam(Heroes.GetLocal(), particle.entityForModifiers) then
			fooAllInOne.InvokerKSparticleProcess[1][1] = particle.index
			fooAllInOne.InvokerKSparticleProcess[1][2] = particle.name
			fooAllInOne.InvokerKSparticleProcess[1][3] = GameRules.GetGameTime()
			fooAllInOne.InvokerKSparticleProcess[1][4] = particle.entityForModifiers
		end
	end

	if particle.name == "rattletrap_cog_deploy" then
		if particle.entity ~= nil and Entity.IsSameTeam(Heroes.GetLocal(), particle.entity) then
			fooAllInOne.InvokerKSparticleProcess[1][1] = particle.index
			fooAllInOne.InvokerKSparticleProcess[1][2] = particle.name
			fooAllInOne.InvokerKSparticleProcess[1][3] = GameRules.GetGameTime()
			fooAllInOne.InvokerKSparticleProcess[1][4] = particle.entity
			fooAllInOne.InvokerKSparticleProcess[1][5] = Entity.GetAbsOrigin(particle.entity)
		end
	end

	if particle.name == "disruptor_glimpse_targetend" then
		if particle.entityForModifiers ~= nil and not Entity.IsSameTeam(Heroes.GetLocal(), particle.entityForModifiers) then
			fooAllInOne.GlimpseParticleIndex = particle.index
			fooAllInOne.GlimpseParticleTime = GameRules.GetGameTime()
		end
	end

	if particle.name == "disruptor_glimpse_targetstart" then
		if particle.entityForModifiers ~= nil and not Entity.IsSameTeam(Heroes.GetLocal(), particle.entityForModifiers) then
			fooAllInOne.GlimpseParticleIndexStart = particle.index
		end
	end
	
end

function fooAllInOne.OnParticleUpdate(particle)

	if not particle then return end
	if not Heroes.GetLocal() then return end
	if not particle.position then return end
	if particle.position:__tostring() == Vector(1.0, 1.0, 1.0):__tostring() then return end

	if particle.index  == fooAllInOne.TPParticleIndex then
		fooAllInOne.TPParticlePosition = particle.position
	end

	if particle.index  == fooAllInOne.InvokerKSparticleProcess[1][1] then
		if particle.position:__tostring() ~= Vector(0.0, 150.0, 0.0):__tostring() then
			fooAllInOne.InvokerKSparticleProcess[1][5] = particle.position
		end
	end

	if particle.index  == fooAllInOne.GlimpseParticleIndex then
		if particle.position:Length2D() > 100 then
			fooAllInOne.GlimpseParticlePosition = particle.position
		end
	end

end

function fooAllInOne.OnParticleUpdateEntity(particle)

	if not particle then return end
	if not Heroes.GetLocal() then return end
	if not particle.position then return end

	if particle.index  == fooAllInOne.GlimpseParticleIndexStart then
		if particle.position:__tostring() ~= Vector(0.0, 0.0, 0.0):__tostring() then
			fooAllInOne.GlimpseParticlePositionStart = particle.position
			fooAllInOne.GlimpseParticleUnit = particle.entity
		end
	end

end

function fooAllInOne.OnUnitAnimation(animation)

	if not animation then return end
	if not Heroes.GetLocal() then return end

	if NPC.GetUnitName(Heroes.GetLocal()) ~= NPC.GetUnitName(animation.unit) then return end

	if animation.type == 1 then
		fooAllInOne.AttackAnimationCreate = os.clock()
	end

end

function fooAllInOne.OnProjectile(projectile)

	if not projectile then return end
	if not Heroes.GetLocal() then return end

	if projectile.source ~= Heroes.GetLocal() then return end
	if not projectile.isAttack then return end

	fooAllInOne.AttackProjectileCreate = os.clock()

end

function fooAllInOne.OnLinearProjectileCreate(projectile)
	
	if not projectile or not projectile.source then return end
	
	if projectile.name ~= "puck_illusory_orb" then return end
	
	fooAllInOne.PuckOrbHitSim = {{projectile.origin, projectile.velocity}}

	
end

function fooAllInOne.OnDraw()

	local myHero = Heroes.GetLocal()
        	if not myHero then return end
		if not Entity.IsAlive(myHero) then return end

	if NPC.GetUnitName(myHero) == "npc_dota_hero_morphling" then
		if Menu.IsEnabled(fooAllInOne.optionHeroMorphlingKill) then
			fooAllInOne.drawMorphlingKillIndicator(myHero)
		end
	end

	if NPC.GetUnitName(myHero) == "npc_dota_hero_arc_warden" then
		if Menu.IsEnabled(fooAllInOne.optionHeroArcWardenDraw) then
			fooAllInOne.drawArcWardenIndicators(fooAllInOne.ArcWardenEntity)
		end
	end

	if NPC.GetUnitName(myHero) == "npc_dota_hero_furion" then
		if Menu.IsEnabled(fooAllInOne.optionProphetDrawToggle) then
			fooAllInOne.DrawProphetHelperSwitch()
		end
		if Menu.IsEnabled(fooAllInOne.optionProphetDrawKS) or Menu.IsEnabled(fooAllInOne.optionProphetDrawKSminimap) then
			fooAllInOne.DrawProphetAwareness(myHero)
		end
	end

	if NPC.GetUnitName(myHero) == "npc_dota_hero_invoker" then
		fooAllInOne.InvokerDraw(myHero)
	end

	if NPC.GetUnitName(myHero) == "npc_dota_hero_phantom_assassin" then
		fooAllInOne.DrawPADaggerSwitch()
	end

end

function fooAllInOne.OnPrepareUnitOrders(orders)

	if not orders then return true end
	if orders.order == Enum.UnitOrder.DOTA_UNIT_ORDER_TRAIN_ABILITY then return true end

	local myHero = Heroes.GetLocal()
    		if not myHero then return true end

    
	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerInstanceHelper) then
		if NPC.GetUnitName(myHero) == "npc_dota_hero_invoker" then
			if not Menu.IsKeyDown(fooAllInOne.optionHeroInvokerGhostKey) then
				fooAllInOne.invokerProcessInstances(myHero, orders.order)
			elseif not Menu.IsKeyDownOnce(fooAllInOne.optionHeroInvokerGhostKey) then
				fooAllInOne.invokerProcessInstances(myHero, orders.order)
			end
		end
	end
	
	if NPC.GetUnitName(myHero) == "npc_dota_hero_invoker" then
		local quas = NPC.GetAbility(myHero, "invoker_quas")
		local wex = NPC.GetAbility(myHero, "invoker_wex")
		local exort = NPC.GetAbility(myHero, "invoker_exort")
		if orders.order == Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_NO_TARGET then
			if orders.ability == quas or orders.ability == wex or orders.ability == exort then
				fooAllInOne.InvokerCaptureManualInstances = os.clock()
			end
		end
	end

    return true

end

-- utility functions
function fooAllInOne.heroSupported(myHero)

	if not myHero then return end
	local supportedHeroList = { "npc_dota_hero_axe",
		"npc_dota_hero_rattletrap", 
		"npc_dota_hero_skywrath_mage",
		"npc_dota_hero_tiny",
		"npc_dota_hero_windrunner",
		"npc_dota_hero_ember_spirit",
		"npc_dota_hero_ursa",
		"npc_dota_hero_templar_assassin",
		"npc_dota_hero_legion_commander",
		"npc_dota_hero_shredder",
		"npc_dota_hero_slardar",
		"npc_dota_hero_clinkz",
		"npc_dota_hero_queenofpain",
		"npc_dota_hero_sven",
		"npc_dota_hero_visage",
		"npc_dota_hero_morphling",
		"npc_dota_hero_puck",
		"npc_dota_hero_invoker",
		"npc_dota_hero_arc_warden",
		"npc_dota_hero_furion",
		"npc_dota_hero_antimage",
		"npc_dota_hero_phantom_assassin"
			}

	for _, heroName in pairs(supportedHeroList) do
		if heroName == NPC.GetUnitName(myHero) then
			return true
		end
	end
	return false
end

function fooAllInOne.setOrderItem(printed)

	fooAllInOne.ItemCastOrder = {
        	{Menu.GetValue(fooAllInOne.optionItemVeil), "item_veil_of_discord", "position"},
        	{Menu.GetValue(fooAllInOne.optionItemHex), "item_sheepstick", "target"},
        	{Menu.GetValue(fooAllInOne.optionItemBlood), "item_bloodthorn", "target"},
        	{Menu.GetValue(fooAllInOne.optionItemeBlade), "item_ethereal_blade", "target"},
        	{Menu.GetValue(fooAllInOne.optionItemOrchid),"item_orchid", "target"},
        	{Menu.GetValue(fooAllInOne.optionItemAtos),"item_rod_of_atos", "target"},
		{Menu.GetValue(fooAllInOne.optionItemAbyssal),"item_abyssal_blade", "target"},
		{Menu.GetValue(fooAllInOne.optionItemHalberd),"item_heavens_halberd", "target"},
		{Menu.GetValue(fooAllInOne.optionItemShivas),"item_shivas_guard", "no target"},
		{Menu.GetValue(fooAllInOne.optionItemDagon),"item_dagon", "target"},
		{Menu.GetValue(fooAllInOne.optionItemDagon),"item_dagon_2", "target"},
		{Menu.GetValue(fooAllInOne.optionItemDagon),"item_dagon_3", "target"},
		{Menu.GetValue(fooAllInOne.optionItemDagon),"item_dagon_4", "target"},
		{Menu.GetValue(fooAllInOne.optionItemDagon),"item_dagon_5", "target"},
		{Menu.GetValue(fooAllInOne.optionItemUrn),"item_urn_of_shadows", "target"},
	--	{Menu.GetValue(fooAllInOne.optionItemManta),"item_manta", "no target"},
	--	{Menu.GetValue(fooAllInOne.optionItemMjollnir),"item_mjollnir", "target"},
		{Menu.GetValue(fooAllInOne.optionItemMedallion),"item_medallion_of_courage", "target"},
		{Menu.GetValue(fooAllInOne.optionItemCrest),"item_solar_crest", "target"}
    				}

    	table.sort(fooAllInOne.ItemCastOrder, function(a, b)
        	return a[1] > b[1]
    	end)
	Log.Write(".....Item Cast Order....")
	local printed = false
		if not printed then
			for k,v in ipairs(fooAllInOne.ItemCastOrder) do
			Log.Write(v[1]..':'..v[2])
			printed = true
			end
		end
end			

function fooAllInOne.setOrderLinkens(printed)
	
	fooAllInOne.LinkensBreakerItemOrder = {
        	{Menu.GetValue(fooAllInOne.optionLinkensForce), "item_force_staff"},
        	{Menu.GetValue(fooAllInOne.optionLinkensEul), "item_cyclone"},
        	{Menu.GetValue(fooAllInOne.optionLinkensHalberd), "item_heavens_halberd"},
        	{Menu.GetValue(fooAllInOne.optionLinkensHex), "item_sheepstick"},
        	{Menu.GetValue(fooAllInOne.optionLinkensBlood),"item_bloodthorn"},
        	{Menu.GetValue(fooAllInOne.optionLinkensOrchid),"item_orchid"},
		{Menu.GetValue(fooAllInOne.optionLinkensPike),"item_hurricane_pike"}
    				}

    	table.sort(fooAllInOne.LinkensBreakerItemOrder, function(a, b)
        	return a[1] > b[1]
    	end)
	Log.Write(".....Linkens Breaker Priorization Order....")
	local printed = false
		if not printed then
			for k,v in ipairs(fooAllInOne.LinkensBreakerItemOrder) do
			Log.Write(v[1]..':'..v[2])
			printed = true
			end
		end			
	
end

function fooAllInOne.OnMenuOptionChange(option, old, new)

    	if option == fooAllInOne.optionItemVeil or
		option == fooAllInOne.optionItemHex or
		option == fooAllInOne.optionItemBlood or
		option == fooAllInOne.optionItemeBlade or 
		option == fooAllInOne.optionItemOrchid or 
		option == fooAllInOne.optionItemAtos or 
		option == fooAllInOne.optionItemAbyssal or 
		option == fooAllInOne.optionItemHalberd or 
		option == fooAllInOne.optionItemShivas or 
		option == fooAllInOne.optionItemDagon or 
		option == fooAllInOne.optionItemUrn or
		option == fooAllInOne.optionItemManta or
		option == fooAllInOne.optionItemMjollnir or
		option == fooAllInOne.optionItemMedallion or
		option == fooAllInOne.optionItemCrest then
			fooAllInOne.setOrderItem(false)
	end
	
	if option == fooAllInOne.optionLinkensForce or
		option == fooAllInOne.optionLinkensEul or
		option == fooAllInOne.optionLinkensHalberd or
		option == fooAllInOne.optionLinkensHex or
		option == fooAllInOne.optionLinkensBlood or
		option == fooAllInOne.optionLinkensOrchid then
        		fooAllInOne.setOrderLinkens(false)
    	end

end

function fooAllInOne.targetChecker(genericEnemyEntity)

	if genericEnemyEntity and not NPC.IsDormant(genericEnemyEntity) and not NPC.IsIllusion(genericEnemyEntity) and Entity.GetHealth(genericEnemyEntity) > 0 then

		if NPC.GetUnitName(genericEnemyEntity) == "npc_dota_hero_antimage" and NPC.HasItem(genericEnemyEntity, "item_ultimate_scepter", true) and NPC.HasModifier(genericEnemyEntity, "modifier_antimage_spell_shield") and Ability.IsReady(NPC.GetAbility(genericEnemyEntity, "antimage_spell_shield")) then
			return
		end
		if NPC.HasModifier(genericEnemyEntity, "modifier_item_lotus_orb_active") then
			return
		end
		if NPC.HasModifier(genericEnemyEntity, "modifier_winter_wyvern_winters_curse") then
			return
		end
		if NPC.HasModifier(genericEnemyEntity, "modifier_item_blade_mail_reflect") then
			return
		end
		if NPC.HasModifier(genericEnemyEntity, "modifier_nyx_assassin_spiked_carapace") then
			return
		end

	return genericEnemyEntity
	end	
end

function fooAllInOne.makeDelay(sec)
	fooAllInOne.delay = sec + NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING)
	fooAllInOne.lastTick = os.clock()
end

function fooAllInOne.noItemCastFor(sec)
	fooAllInOne.itemDelay = sec
	fooAllInOne.lastItemTick = os.clock()
end

function fooAllInOne.SleepReady(sleep)

	if (os.clock() - fooAllInOne.lastTick) >= sleep then
		return true
	end
	return false

end

function fooAllInOne.ItemSleepReady(sleep)

	if (os.clock() - fooAllInOne.lastItemCast) >= sleep then
		return true
	end
	return false

end

function fooAllInOne.GetAvgLatency()

	local AVGlatency = NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2
	return AVGlatency

end

function fooAllInOne.CastAnimationDelay(ability)

	if not ability then return end

	local abilityAnimation = Ability.GetCastPoint(ability) + fooAllInOne.GetAvgLatency()

	return abilityAnimation

end
	
function fooAllInOne.castLinearPrediction(myHero, enemy, adjustmentVariable)

	if not myHero then return end
	if not enemy then return end

	local enemyRotation = Entity.GetRotation(enemy):GetVectors()
		enemyRotation:SetZ(0)
    	local enemyOrigin = NPC.GetAbsOrigin(enemy)
		enemyOrigin:SetZ(0)


	local cosGamma = (NPC.GetAbsOrigin(myHero) - enemyOrigin):Dot2D(enemyRotation:Scaled(100)) / ((NPC.GetAbsOrigin(myHero) - enemyOrigin):Length2D() * enemyRotation:Scaled(100):Length2D())
		if enemyRotation and enemyOrigin then
			if not NPC.IsRunning(enemy) then
				return enemyOrigin
			else return enemyOrigin:__add(enemyRotation:Normalized():Scaled(NPC.GetMoveSpeed(enemy) * adjustmentVariable * (1 - cosGamma)))
			end
		end
end

function fooAllInOne.castPrediction(myHero, enemy, adjustmentVariable)

	if not myHero then return end
	if not enemy then return end

	local enemyRotation = Entity.GetRotation(enemy):GetVectors()
		enemyRotation:SetZ(0)
    	local enemyOrigin = NPC.GetAbsOrigin(enemy)
		enemyOrigin:SetZ(0)

	if enemyRotation and enemyOrigin then
			if not NPC.IsRunning(enemy) then
				return enemyOrigin
			else return enemyOrigin:__add(enemyRotation:Normalized():Scaled(fooAllInOne.GetMoveSpeed(enemy) * adjustmentVariable))
			end
	end
end

function fooAllInOne.isEnemyTurning(enemy)

	if enemy == nil then return true end
	if not NPC.IsRunning(enemy) then return true end

	local rotationSpeed = Entity.GetAngVelocity(enemy):Length2D()
	if NPC.IsRunning(enemy) then
		table.insert(fooAllInOne.rotationTable, rotationSpeed)
			if #fooAllInOne.rotationTable > (Menu.GetValue(fooAllInOne.optionKillStealInvokerTurn) + 1) then
				table.remove(fooAllInOne.rotationTable, 1)
			end
	end
	
	if #fooAllInOne.rotationTable < Menu.GetValue(fooAllInOne.optionKillStealInvokerTurn) then 
		return true
	else
		local rotationSpeedCounter = 0
		i = 1
		repeat
			rotationSpeedCounter = rotationSpeedCounter + fooAllInOne.rotationTable[#fooAllInOne.rotationTable + 1 - i]
			i = i + 1
		until i > Menu.GetValue(fooAllInOne.optionKillStealInvokerTurn)

		if rotationSpeedCounter / Menu.GetValue(fooAllInOne.optionKillStealInvokerTurn) <= 10 then
			return false
		else
			return true
		end
	end
 
end

function fooAllInOne.GetMoveSpeed(enemy)

	if not enemy then return end

	local base_speed = NPC.GetBaseSpeed(enemy)
	local bonus_speed = NPC.GetMoveSpeed(enemy) - NPC.GetBaseSpeed(enemy)
	local modifierHex
    	local modSheep = NPC.GetModifier(enemy, "modifier_sheepstick_debuff")
    	local modLionVoodoo = NPC.GetModifier(enemy, "modifier_lion_voodoo")
    	local modShamanVoodoo = NPC.GetModifier(enemy, "modifier_shadow_shaman_voodoo")

	if modSheep then
		modifierHex = modSheep
	end
	if modLionVoodoo then
		modifierHex = modLionVoodoo
	end
	if modShamanVoodoo then
		modifierHex = modShamanVoodoo
	end

	if modifierHex then
		if math.max(Modifier.GetDieTime(modifierHex) - GameRules.GetGameTime(), 0) > 0 then
			return 140 + bonus_speed
		end
	end

    	if NPC.HasModifier(enemy, "modifier_invoker_ice_wall_slow_debuff") then 
		return 100 
	end

	if NPC.HasModifier(enemy, "modifier_invoker_cold_snap_freeze") or NPC.HasModifier(enemy, "modifier_invoker_cold_snap") then
		return (base_speed + bonus_speed) * 0.5
	end

    	return base_speed + bonus_speed
end

function fooAllInOne.getBestPosition(unitsAround, radius)
	if not unitsAround or #unitsAround < 1 then
		return 
	end

	local countEnemies = #unitsAround

	if countEnemies == 1 then 
		return Entity.GetAbsOrigin(unitsAround[1]) 
	end

	local maxCount = 1
	local bestPosition = Entity.GetAbsOrigin(unitsAround[1])
	for i = 1, (countEnemies - 1) do
		for j = i + 1, countEnemies do
			if unitsAround[i] and unitsAround[j] then
				local pos1 = Entity.GetAbsOrigin(unitsAround[i])
				local pos2 = Entity.GetAbsOrigin(unitsAround[j])
				local mid = pos1:__add(pos2):Scaled(0.5)

				local heroesCount = 0
				for k = 1, countEnemies do
					if NPC.IsPositionInRange(unitsAround[k], mid, radius, 0) then
						heroesCount = heroesCount + 1
					end
				end

				if heroesCount > maxCount then
					maxCount = heroesCount
					bestPos = mid
				end
			end
		end
	end
	return bestPos
end

function fooAllInOne.GetMyFaction(myHero)

	if not myHero then return end
	
	local radiantFountain = Vector(-7600, -7300, 640)
	local direFountain = Vector(7800, 7250, 640)
	
	local myFountain
	if myFountain == nil then
		for i = 1, NPCs.Count() do 
		local npc = NPCs.Get(i)
    			if Entity.IsSameTeam(myHero, npc) and NPC.IsStructure(npc) then
    				if NPC.GetUnitName(npc) ~= nil then
        				if NPC.GetUnitName(npc) == "dota_fountain" then
						myFountain = npc
					end
				end
			end
		end
	end

	local myFaction
	if myFaction == nil then
		if NPC.IsPositionInRange(myFountain, radiantFountain, 1000, 0) then
			myFaction = "radiant"
		else myFaction = "dire"
		end
	end

	return myFaction

end

function fooAllInOne.GetMyFountainPos(myHero)

	if not myHero then return end

	local myFaction = fooAllInOne.GetMyFaction(myHero)

	local myFountainPos
	if myFaction == "radiant" then
		myFountainPos = Vector(-7600, -7300, 640)
	else myFountainPos = Vector(7800, 7250, 640)
	end

	return myFountainPos

end

function fooAllInOne.GetEnemyFountainPos(myHero)

	if not myHero then return end

	local myFaction = fooAllInOne.GetMyFaction(myHero)

	local enemyFountainPos
	if myFaction == "radiant" then
		enemyFountainPos = Vector(7800, 7250, 640)
	else enemyFountainPos = Vector(-7600, -7300, 640)
	end

	return enemyFountainPos

end

function fooAllInOne.GetNecronomiconEntityTable(myHero, caster)

	if not myHero then return end
	if not caster then return end

	local necronomiconTable = {}
	for i, npc in ipairs(NPC.GetUnitsInRadius(myHero, 99999, Enum.TeamType.TEAM_FRIEND)) do
    		if Entity.IsSameTeam(myHero, npc) and Entity.GetOwner(npc) == caster then
    			if NPC.GetUnitName(npc) ~= nil then
				if NPC.GetUnitName(npc) == string.match(NPC.GetUnitName(npc) , 'npc_dota_necronomicon_archer_.') or NPC.GetUnitName(npc) == string.match(NPC.GetUnitName(npc) , 'npc_dota_necronomicon_warrior_.') then
					if npc ~= nil then
						table.insert(necronomiconTable, npc)
					end
				end
			end
		end
	end
	
	return necronomiconTable

end

function fooAllInOne.GetIllusionEntityTable(myHero, caster)

	if not myHero then return end
	if not caster then return end

	local controllableTable = {}
	if next(controllableTable) == nil then
		for i = 1, NPCs.Count() do 
		local npc = NPCs.Get(i)
			if Entity.IsSameTeam(myHero, npc) then
				if npc ~= myHero then
					if Entity.GetOwner(npc) == Entity.GetOwner(caster) then
						if NPC.HasModifier(npc, "modifier_illusion") then
							if npc ~= nil then
								table.insert(controllableTable, npc)
							else controllableTable = {}
							break
							end
						end
					end
				end
			end
		end
	end
	
	return controllableTable

end

function fooAllInOne.NecronomiconController(necronomiconEntity, target, position)

	if not necronomiconEntity then return end
	if not target and not position then return end

	if target ~= nil then
		if NPC.GetUnitName(necronomiconEntity) == string.match(NPC.GetUnitName(necronomiconEntity) , 'npc_dota_necronomicon_archer_.') then
			if not NPC.IsAttacking(necronomiconEntity) then
				if (os.clock() - fooAllInOne.lastCastTime) >= 0.5 then
					if not NPC.IsEntityInRange(necronomiconEntity, target, 600) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, target, Vector(0,0,0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, necronomiconEntity)
						fooAllInOne.lastCastTime = os.clock()
						fooAllInOne.Debugger(GameRules.GetGameTime(), necronomiconEntity, "attack", "DOTA_UNIT_ORDER_ATTACK_TARGET")
					else			
						if Ability.IsReady(NPC.GetAbilityByIndex(necronomiconEntity, 0)) then
							if NPC.IsHero(target) then
								Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_TARGET, target, Vector(0,0,0), NPC.GetAbilityByIndex(necronomiconEntity, 0), Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, necronomiconEntity)
								fooAllInOne.lastCastTime = os.clock()
								fooAllInOne.Debugger(GameRules.GetGameTime(), necronomiconEntity, "manaBurn", "DOTA_UNIT_ORDER_CAST_TARGET")
							end
						end
						if not Ability.IsReady(NPC.GetAbilityByIndex(necronomiconEntity, 0)) then
							Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, target, Vector(0,0,0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, necronomiconEntity)
							fooAllInOne.lastCastTime = os.clock()
							fooAllInOne.Debugger(GameRules.GetGameTime(), necronomiconEntity, "attack", "DOTA_UNIT_ORDER_ATTACK_TARGET")
						end	
					end
				end
			end
		end
		if (os.clock() - fooAllInOne.lastCastTime) >= 0.25 then
			if NPC.GetUnitName(necronomiconEntity) == string.match(NPC.GetUnitName(necronomiconEntity) , 'npc_dota_necronomicon_warrior_.') then
				if not NPC.IsAttacking(necronomiconEntity) then
					if (os.clock() - fooAllInOne.lastCastTime2) >= 0.5 then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, target, Vector(0,0,0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, necronomiconEntity)
						fooAllInOne.lastCastTime2 = os.clock()
						fooAllInOne.Debugger(GameRules.GetGameTime(), necronomiconEntity, "attack", "DOTA_UNIT_ORDER_ATTACK_TARGET")
					end
				end
			end
		end
	end

	if position ~= nil then
		if NPC.GetUnitName(necronomiconEntity) == string.match(NPC.GetUnitName(necronomiconEntity) , 'npc_dota_necronomicon_archer_.') then
			if not NPC.IsAttacking(necronomiconEntity) and not NPC.IsRunning(necronomiconEntity) then
				if (os.clock() - fooAllInOne.lastCastTime) >= 0.5 then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE, target, position, ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, necronomiconEntity)
					fooAllInOne.lastCastTime = os.clock()
					fooAllInOne.Debugger(GameRules.GetGameTime(), necronomiconEntity, "attackMove", "DOTA_UNIT_ORDER_ATTACK_MOVE")
				end
			end
		end
		if NPC.GetUnitName(necronomiconEntity) == string.match(NPC.GetUnitName(necronomiconEntity) , 'npc_dota_necronomicon_warrior_.') then
			if (os.clock() - fooAllInOne.lastCastTime) >= 0.25 then
				if not NPC.IsAttacking(necronomiconEntity) and not NPC.IsRunning(necronomiconEntity) then
					if (os.clock() - fooAllInOne.lastCastTime2) >= 0.5 then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE, target, position, ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, necronomiconEntity)
						fooAllInOne.lastCastTime2 = os.clock()
						fooAllInOne.Debugger(GameRules.GetGameTime(), necronomiconEntity, "attackMove", "DOTA_UNIT_ORDER_ATTACK_MOVE")
					end
				end
			end
		end	
	end

end

function fooAllInOne.invokerForgedSpiritController(myHero, enemy)

	if not myHero then return end
	if not enemy then return end

	for i = 1, NPCs.Count() do 
	local npc = NPCs.Get(i)
		if Entity.IsSameTeam(myHero, npc) then
			if npc ~= myHero and Entity.OwnedBy(npc, myHero) then
				if NPC.GetUnitName(npc) ~= nil then
					if  NPC.GetUnitName(npc) == "npc_dota_invoker_forged_spirit" then
						if npc ~= nil and Entity.IsAlive(npc) then
							fooAllInOne.GenericAttackIssuer2("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, npc)
						end	
					end
				end
			end
		end
	end

end

function fooAllInOne.MantaIlluController(target, position, myHero, tempestDoubleEntity)

	if not myHero then return end
	if next(fooAllInOne.GetIllusionEntityTable(myHero, tempestDoubleEntity)) == nil then return end
	if not target and not position then return end
	 
	local mantaIllu1 = fooAllInOne.GetIllusionEntityTable(myHero, tempestDoubleEntity)[1]
	local mantaIllu2 = fooAllInOne.GetIllusionEntityTable(myHero, tempestDoubleEntity)[2]

	if target ~= nil then
		if mantaIllu1 then
			if os.clock() - fooAllInOne.LastTickManta1 >= 0.5 then
				Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, target, Vector(0,0,0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, mantaIllu1)
				fooAllInOne.LastTickManta1 = os.clock()
				fooAllInOne.Debugger(GameRules.GetGameTime(), mantaIllu1, "attack", "DOTA_UNIT_ORDER_ATTACK_TARGET")
			end
		end
		if mantaIllu2 then
			if os.clock() - fooAllInOne.LastTickManta2 >= 0.5 then
				Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, target, Vector(0,0,0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, mantaIllu2)
				fooAllInOne.LastTickManta2 = os.clock()
				fooAllInOne.Debugger(GameRules.GetGameTime(), mantaIllu2, "attack", "DOTA_UNIT_ORDER_ATTACK_TARGET")
			end
		end
	end

	if position ~= nil then
		if mantaIllu1 then
			if not NPC.IsAttacking(mantaIllu1) and not NPC.IsRunning(mantaIllu1) then
				if os.clock() - fooAllInOne.LastTickManta1 >= 0.5 then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE, target, position, ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, mantaIllu1)
					fooAllInOne.LastTickManta1 = os.clock()
					fooAllInOne.Debugger(GameRules.GetGameTime(), mantaIllu1, "attackMove", "DOTA_UNIT_ORDER_ATTACK_MOVE")
				end
			end
		end
		if mantaIllu2 then
			if not NPC.IsAttacking(mantaIllu2) and not NPC.IsRunning(mantaIllu2) then
				if os.clock() - fooAllInOne.LastTickManta2 >= 0.5 then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE, target, position, ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, mantaIllu2)
					fooAllInOne.LastTickManta2 = os.clock()
					fooAllInOne.Debugger(GameRules.GetGameTime(), mantaIllu2, "attackMove", "DOTA_UNIT_ORDER_ATTACK_MOVE")
				end
			end
		end
	end	
end

function fooAllInOne.GenericMainAttack(myHero, attackType, target, position)
	
	if not myHero then return end
	if not target and not position then return end

	if Menu.IsEnabled(fooAllInOne.optionOrbwalkEnable) then
		if target ~= nil then
			fooAllInOne.OrbWalker(myHero, target)
		else
			fooAllInOne.GenericAttackIssuer(attackType, target, position, myHero)
		end
	else
		fooAllInOne.GenericAttackIssuer(attackType, target, position, myHero)
	end

end

function fooAllInOne.GenericAttackIssuer(attackType, target, position, npc)
	
	if not npc then return end
	if not target and not position then return end
	if os.clock() - fooAllInOne.lastAttackTime2 < 0.5 then return end

	if attackType == "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET" then
		if target ~= nil then
			if target ~= fooAllInOne.LastTarget then
				Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, target, Vector(0, 0, 0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, npc)
				fooAllInOne.LastTarget = target
				fooAllInOne.Debugger(GameRules.GetGameTime(), npc, "attack", "DOTA_UNIT_ORDER_ATTACK_TARGET")
			end
		end
	end

	if attackType == "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE" then
		if position ~= nil then
			if not NPC.IsAttacking(npc) or not NPC.IsRunning(npc) then
				if position:__tostring() ~= fooAllInOne.LastTarget then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE, target, position, ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, npc)
					fooAllInOne.LastTarget = position:__tostring()
					fooAllInOne.Debugger(GameRules.GetGameTime(), npc, "attackMove", "DOTA_UNIT_ORDER_ATTACK_MOVE")
				end
			end
		end
	end

	if attackType == "Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION" then
		if position ~= nil then
			if not NPC.IsRunning(npc) then
				if position:__tostring() ~= fooAllInOne.LastTarget then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, position, ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, npc)
					fooAllInOne.LastTarget = position:__tostring()
					fooAllInOne.Debugger(GameRules.GetGameTime(), npc, "move", "DOTA_UNIT_ORDER_MOVE_TO_POSITION")
				end
			end
		end
	end

	if target ~= nil then
		if target == fooAllInOne.LastTarget then
			if not NPC.IsAttacking(npc) then
				fooAllInOne.LastTarget = nil
				fooAllInOne.lastAttackTime2 = os.clock()
				return
			end
		end
	end

	if position ~= nil then
		if position:__tostring() == fooAllInOne.LastTarget then
			if not NPC.IsRunning(npc) then
				fooAllInOne.LastTarget = nil
				fooAllInOne.lastAttackTime2 = os.clock()
				return
			end
		end
	end

end

function fooAllInOne.GenericAttackIssuer2(attackType, target, position, npc)

	if not npc or (npc and not Entity.IsAlive(npc)) then return end
	if not target and not position then return end

	if fooAllInOne[tostring(npc)] ~= nil then
		if os.clock() - fooAllInOne[tostring(npc)] < 1.0 then
			return
		end
	end

	if attackType == "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET" and Menu.IsKeyDown(fooAllInOne.optionComboKey) then
		if target ~= nil then
			Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, target, Vector(0, 0, 0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, npc)
			fooAllInOne.Debugger(GameRules.GetGameTime(), npc, "attack", "DOTA_UNIT_ORDER_ATTACK_TARGET")
			fooAllInOne[tostring(npc)] = os.clock()
			return
		end
	end

	if attackType == "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE" then
		if position ~= nil then
			if #NPC.GetUnitsInRadius(npc, NPC.GetAttackRange(npc)+50, 1) < 1 then
				Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE, target, position, ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, npc)
				fooAllInOne.Debugger(GameRules.GetGameTime(), npc, "attackMove", "DOTA_UNIT_ORDER_ATTACK_MOVE")
				fooAllInOne[tostring(npc)] = os.clock()
				return
			end
		end
	end

	if attackType == "Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION" then
		if position ~= nil then
			if not NPC.IsRunning(npc) then
				Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, position, ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, npc)
				fooAllInOne.Debugger(GameRules.GetGameTime(), npc, "move", "DOTA_UNIT_ORDER_MOVE_TO_POSITION")
				fooAllInOne[tostring(npc)] = os.clock()
				return
			end
		end
	end
end

function fooAllInOne.OrbWalker(myHero, enemy)

	if not myHero then return end
	if not enemy then return end

	if NPC.IsChannellingAbility(myHero) then return end

	local myMana = NPC.GetMana(myHero)

	local attackRange = NPC.GetAttackRange(myHero)
		if NPC.HasItem(myHero, "item_dragon_lance", true) or NPC.HasItem(myHero, "item_hurricane_pike", true) then
			attackRange = attackRange + 140
		end

	local increasedAS = NPC.GetIncreasedAttackSpeed(myHero)
	local attackTime = NPC.GetAttackTime(myHero)
	local movementSpeed = NPC.GetMoveSpeed(myHero)

	local attackPoint
	local attackBackSwing
	for i, v in pairs(fooAllInOne.attackPointTable) do
		if i == NPC.GetUnitName(myHero) then
			attackPoint = v[1] / (1 + (increasedAS/100))
			attackBackSwing = v[2] / (1 + (increasedAS/100))
			break
		end
	end

	local idleTime = attackTime - attackPoint - attackBackSwing

	local turnTime180degrees = (0.03 * math.pi) / NPC.GetTurnRate(myHero)

	local orbWalkSkill
	for i, v in pairs(fooAllInOne.orbAttackTable) do
		if i == NPC.GetUnitName(myHero) then
			orbWalkSkill = NPC.GetAbility(myHero, v)
			break
		end
	end

	if NPC.IsRanged(myHero) then
		if fooAllInOne.AttackProjectileCreate > 0 then
			if os.clock() < fooAllInOne.AttackProjectileCreate + attackBackSwing + idleTime then
				fooAllInOne.InAttackBackswing = true
			else
				fooAllInOne.InAttackBackswing = false
			end
		end
	else
		if fooAllInOne.AttackParticleCreate > 0 then
			if NPC.HasItem(myHero, "item_echo_sabre", true) then
				if Ability.SecondsSinceLastUse(NPC.GetItem(myHero, "item_echo_sabre", true)) > -1 and Ability.SecondsSinceLastUse(NPC.GetItem(myHero, "item_echo_sabre", true)) < (attackPoint / 1.49) + 0.15 then
					fooAllInOne.InAttackBackswing = false
				else
					if os.clock() < fooAllInOne.AttackParticleCreate + attackBackSwing + idleTime then
						fooAllInOne.InAttackBackswing = true
					else
						fooAllInOne.InAttackBackswing = false
					end
				end
			else
				if os.clock() < fooAllInOne.AttackParticleCreate + attackBackSwing + idleTime then
					fooAllInOne.InAttackBackswing = true
				else
					fooAllInOne.InAttackBackswing = false
				end
			end
		end
	end

	local breakPoint
		if NPC.IsRanged(myHero) then
			breakPoint = attackRange * (Menu.GetValue(fooAllInOne.optionOrbwalkDistance) / 100)
		else
			breakPoint = attackRange
		end

	local moveDistance = NPC.GetMoveSpeed(myHero) * (attackBackSwing + idleTime - NPC.GetTimeToFace(myHero, enemy)) * (1 - (Menu.GetValue(fooAllInOne.optionOrbwalkOffset) / 100))
		if NPC.IsRanged(myHero) then
			if (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() > breakPoint and (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() <= breakPoint + moveDistance then
				moveDistance = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() - breakPoint
			end
		end

	local kiteDistance = 0
		if (2 * turnTime180degrees) < (attackBackSwing + idleTime) * (1 - (Menu.GetValue(fooAllInOne.optionOrbwalkOffset) / 100)) then
			kiteDistance = ((attackBackSwing + idleTime) * (1 - (Menu.GetValue(fooAllInOne.optionOrbwalkOffset) / 100)) - (2 * turnTime180degrees)) * NPC.GetMoveSpeed(myHero)
		end
	
	if not fooAllInOne.InAttackBackswing then
		if orbWalkSkill and Ability.IsCastable(orbWalkSkill, myMana) then
			if os.clock() - fooAllInOne.OrbwalkerDelay > 0.05 + NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) then
				Ability.CastTarget(orbWalkSkill, enemy)
				fooAllInOne.OrbwalkerDelay = os.clock()
				return
			end
		else
			if os.clock() - fooAllInOne.OrbwalkerDelay > 0.05 + NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) and os.clock() - fooAllInOne.AttackAnimationCreate > attackPoint + 0.1 then
				Player.AttackTarget(Players.GetLocal(), myHero, enemy, false)
				fooAllInOne.OrbwalkerDelay = os.clock()
				return
			end
		end
	else
		if (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() > breakPoint then
			if os.clock() - fooAllInOne.OrbwalkerDelay > 0.05 + NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) then
				local targetVector = Entity.GetAbsOrigin(myHero) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(moveDistance)
				Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, targetVector, ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, myHero, queue, showEffects)
				fooAllInOne.OrbwalkerDelay = os.clock()
				return
			end
	
		end
		if Menu.IsEnabled(fooAllInOne.optionOrbwalkKiting) then
			if NPC.IsRanged(myHero) then
				if (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() < breakPoint - 50 then
					if kiteDistance > 50 then
						local targetVector = Entity.GetAbsOrigin(myHero) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(kiteDistance)
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, targetVector, ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, myHero, queue, showEffects)
						fooAllInOne.OrbwalkerDelay = os.clock()
						return
					end
				end
			end
		end
	end

end

function fooAllInOne.GetLongestCooldown(myHero, skill1, skill2, skill3, skill4, skill5)

	if not myHero then return end

	local skill1 = skill1
	local skill2 = skill2
	local skill3 = skill3
	local skill4 = skill4
	local skill5 = skill5


	local tempTable = {}

	if skill1 then
		table.insert(tempTable, math.ceil(Ability.GetCooldownTimeLeft(skill1)))
	end
	if skill2 then
		table.insert(tempTable, math.ceil(Ability.GetCooldownTimeLeft(skill2)))
	end
	if skill3 then
		table.insert(tempTable, math.ceil(Ability.GetCooldownTimeLeft(skill3)))
	end
	if skill4 then
		table.insert(tempTable, math.ceil(Ability.GetCooldownTimeLeft(skill4)))
	end
	if skill5 then
		table.insert(tempTable, math.ceil(Ability.GetCooldownTimeLeft(skill5)))
	end

	table.sort(tempTable, function(a, b)
        	return a > b
    			end)

	return tempTable[1]

end

function fooAllInOne.GenericLanePusher(npc)

	if not npc or (npc and not Entity.IsAlive(npc)) then return end

	local myFaction = fooAllInOne.GetMyFaction(npc)
	local myFountainPos = fooAllInOne.GetMyFountainPos(npc)
	local enemyFountainPos = fooAllInOne.GetEnemyFountainPos(npc)

	local leftCornerPos = Vector(-5750, 6050, 384)
	local rightCornerPos = Vector(6000, -5800, 384)
	local midPos = Vector(-600, -300, 128)

	local radiantTop2 = Vector(-6150, -800, 384)
	local radiantBot2 = Vector(-800, -6250, 384)
	local radiantMid2 = Vector(-2800, -2250, 256)
	
	local direTop2 = Vector(800, 6000, 384)
	local direBot2 = Vector(6200, 400, 384)
	local direMid2 = Vector(2800, 2100, 256)


	local myBotTower2
		if myFaction == "radiant"
			then myBotTower2 = radiantBot2
		else myBotTower2 = direBot2
		end

	local myTopTower2
		if myFaction == "radiant"
			then myTopTower2 = radiantTop2
		else myTopTower2 = direTop2
		end

	local myMidTower2
		if myFaction == "radiant"
			then myMidTower2 = radiantMid2
		else myMidTower2 = direMid2
		end


	local myPos = Entity.GetAbsOrigin(npc)

	local homeSide
	if myPos:__sub(myFountainPos):Length2D() < myPos:__sub(enemyFountainPos):Length2D() then
		homeSide = true
	else homeSide = false
	end
	
	if not homeSide then
		return enemyFountainPos
	end

	if homeSide then
		if myPos:__sub(leftCornerPos):Length2D() <= 800 then
			return enemyFountainPos
		elseif myPos:__sub(rightCornerPos):Length2D() <= 800 then
			return enemyFountainPos
		elseif myPos:__sub(midPos):Length2D() <= 800 then
			return enemyFountainPos
		end
	end

	if homeSide then
		if myPos:__sub(leftCornerPos):Length2D() > 800 and myPos:__sub(rightCornerPos):Length2D() > 800 and myPos:__sub(midPos):Length2D() > 800 then
			
			if myPos:__sub(leftCornerPos):Length2D() < myPos:__sub(rightCornerPos):Length2D() and myPos:__sub(leftCornerPos):Length2D() < myPos:__sub(midPos):Length2D() then
				return leftCornerPos
			elseif myPos:__sub(leftCornerPos):Length2D() < myPos:__sub(rightCornerPos):Length2D() and myPos:__sub(myTopTower2):Length2D() < myPos:__sub(midPos):Length2D() and myPos:__sub(myMidTower2):Length2D() > myPos:__sub(myTopTower2):Length2D() then
				return leftCornerPos
			elseif myPos:__sub(rightCornerPos):Length2D() < myPos:__sub(leftCornerPos):Length2D() and myPos:__sub(rightCornerPos):Length2D() < myPos:__sub(midPos):Length2D() then
				return rightCornerPos
			elseif myPos:__sub(rightCornerPos):Length2D() < myPos:__sub(leftCornerPos):Length2D() and myPos:__sub(myBotTower2):Length2D() < myPos:__sub(midPos):Length2D() and myPos:__sub(myMidTower2):Length2D() > myPos:__sub(myBotTower2):Length2D() then
				return rightCornerPos
			elseif myPos:__sub(midPos):Length2D() < myPos:__sub(leftCornerPos):Length2D() and myPos:__sub(midPos):Length2D() < myPos:__sub(rightCornerPos):Length2D() and myPos:__sub(myMidTower2):Length2D() < myPos:__sub(myTopTower2):Length2D() then
				return enemyFountainPos
			elseif myPos:__sub(midPos):Length2D() < myPos:__sub(leftCornerPos):Length2D() and myPos:__sub(midPos):Length2D() < myPos:__sub(rightCornerPos):Length2D() and myPos:__sub(myMidTower2):Length2D() < myPos:__sub(myBotTower2):Length2D() then
				return enemyFountainPos
			else return enemyFountainPos
			end
		end
	end
end

function fooAllInOne.ForceBlink(myHero, enemy, range)

	if not myHero then return end
	
	local blink = NPC.GetItem(myHero, "item_blink", true)
		if not blink then return end
		if blink and not Ability.IsReady(blink) then return end

	if not enemy or (enemy and not NPC.IsPositionInRange(enemy, Input.GetWorldCursorPos(), range, 0)) then
		if Menu.IsKeyDown(fooAllInOne.optionComboKey) then
			if NPC.IsPositionInRange(myHero, Input.GetWorldCursorPos(), 1100, 0) then
				Ability.CastPosition(blink, Input.GetWorldCursorPos())
				return
			else
				if fooAllInOne.SleepReady(0.1) then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Input.GetWorldCursorPos(), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end	
		end
	end
end

function fooAllInOne:WorldToMiniMap(pos, screenWidth, screenHeight)
	local screenH = screenHeight
	local screenW = screenWidth 
	local MapLeft = -8000
	local MapTop = 7350
	local MapRight = 7500
	local MapBottom = -7200
	local mapWidth = math.abs(MapLeft - MapRight)
	local mapHeight = math.abs(MapBottom - MapTop)
	

	local x = pos:GetX() - MapLeft
	local y = pos:GetY() - MapBottom

	local dx, dy, px, py
	if self.Round(screenW / screenH, 1) >= 1.7 then

		dx = 272 / 1920 * screenW
		dy = 261 / 1080 * screenH
		px = 11 / 1920 * screenW
		py = 11 / 1080 * screenH
	elseif self.Round(screenW / screenH, 1) >= 1.5 then

		dx = 267 / 1680 * screenW
		dy = 252 / 1050 * screenH
		px = 10 / 1680 * screenW
		py = 11 / 1050 * screenH
	else
		dx = 255 / 1280 * screenW
		dy = 229 / 1024 * screenH
		px = 6 / 1280 * screenW
		py = 9 / 1024 * screenH
	end
	local minimapMapScaleX = dx / mapWidth
	local minimapMapScaleY = dy / mapHeight

	local scaledX = math.min(math.max(x * minimapMapScaleX, 0), dx)
	local scaledY = math.min(math.max(y * minimapMapScaleY, 0), dy)

	local screenX = px + scaledX
	local screenY = screenH - scaledY - py

	return Vector(math.floor(screenX - 20 + Menu.GetValue(fooAllInOne.optionWorldToMinimapOffsetX)), math.floor(screenY - 12 + Menu.GetValue(fooAllInOne.optionWorldToMinimapOffsetY)), 0)
end

function fooAllInOne.Round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

function fooAllInOne.TargetDisableTimer(myHero, enemy)

	if not myHero then return end
	if not enemy then return end

	local stunRootList = {
		"modifier_stunned",
		"modifier_bashed",
		"modifier_alchemist_unstable_concoction", 
		"modifier_ancientapparition_coldfeet_freeze", 
		"modifier_axe_berserkers_call",
		"modifier_bane_fiends_grip",
		"modifier_bane_nightmare",
		"modifier_bloodseeker_rupture",
		"modifier_rattletrap_hookshot", 
		"modifier_earthshaker_fissure_stun", 
		"modifier_earth_spirit_boulder_smash",
		"modifier_enigma_black_hole_pull",
		"modifier_faceless_void_chronosphere_freeze",
		"modifier_jakiro_ice_path_stun", 
		"modifier_keeper_of_the_light_mana_leak_stun", 
		"modifier_kunkka_torrent", 
		"modifier_legion_commander_duel", 
		"modifier_lion_impale", 
		"modifier_magnataur_reverse_polarity", 
		"modifier_medusa_stone_gaze_stone", 
		"modifier_morphling_adaptive_strike", 
		"modifier_naga_siren_ensnare", 
		"modifier_nyx_assassin_impale", 
		"modifier_pudge_dismember", 
		"modifier_sandking_impale", 
		"modifier_shadow_shaman_shackles", 
		"modifier_techies_stasis_trap_stunned", 
		"modifier_tidehunter_ravage", 
		"modifier_treant_natures_guise",
		"modifier_windrunner_shackle_shot",
		"modifier_rooted", 
		"modifier_crystal_maiden_frostbite", 
		"modifier_ember_spirit_searing_chains", 
		"modifier_meepo_earthbind",
		"modifier_lone_druid_spirit_bear_entangle_effect",
		"modifier_slark_pounce_leash",
		"modifier_storm_spirit_electric_vortex_pull",
		"modifier_treant_overgrowth", 
		"modifier_abyssal_underlord_pit_of_malice_ensare", 
		"modifier_item_rod_of_atos_debuff",
		"modifier_eul_cyclone",
		"modifier_obsidian_destroyer_astral_imprisonment_prison",
		"modifier_shadow_demon_disruption"
			}
	
	local searchMod
	for _, modifier in ipairs(stunRootList) do
		if NPC.HasModifier(enemy, modifier) then
			searchMod = NPC.GetModifier(enemy, modifier)
			break
		end
	end

	if searchMod then
		if NPC.HasModifier(enemy, Modifier.GetName(searchMod)) then
			if Modifier.GetName(searchMod) == "modifier_enigma_black_hole_pull" then
				return Modifier.GetCreationTime(searchMod) + 4
			elseif Modifier.GetName(searchMod) == "modifier_faceless_void_chronosphere_freeze" then
				return Modifier.GetCreationTime(searchMod) + (3.5 + fooAllInOne.GetTeammateAbilityLevel(myHero, "faceless_void_chronosphere") * 0.5)
			else
				return Modifier.GetDieTime(searchMod)
			end
		else
			return 0
		end
	else
		return 0
	end

end

function fooAllInOne.GetTeammateAbilityLevel(myHero, ability)

	if not myHero then return end
	if not ability then return 0 end

	for _, teamMate in ipairs(NPC.GetHeroesInRadius(myHero, 99999, Enum.TeamType.TEAM_FRIEND)) do
		if NPC.HasAbility(teamMate, ability) then
			if NPC.GetAbility(teamMate, ability) then
				return Ability.GetLevel(NPC.GetAbility(teamMate, ability))
			end
		end
	end
	return 0

end

function fooAllInOne.TargetIsInvulnarable(myHero, enemy)

	if not myHero then return end
	if not enemy then return end

	local curTime = GameRules.GetGameTime()

	local invuList = {
		"modifier_eul_cyclone",
		"modifier_invoker_tornado",
		"modifier_obsidian_destroyer_astral_imprisonment_prison",
		"modifier_shadow_demon_disruption"
			}
	
	local searchMod
	for _, modifier in ipairs(invuList) do
		if NPC.HasModifier(enemy, modifier) then
			searchMod = NPC.GetModifier(enemy, modifier)
			break
		end
	end

	if searchMod then
		if NPC.HasModifier(enemy, Modifier.GetName(searchMod)) then
			return Modifier.GetDieTime(searchMod)
		else
			return 0
		end
	else
		return 0
	end

end

function fooAllInOne.EnemyHPTracker(myHero)

	if not myHero then return end

	local allHeroes = Heroes.GetAll()
		if next(allHeroes) == nil then
			fooAllInOne.enemyHeroTable = {}
			return
		end

	local tempEnemyTable = {}
	for _, hero in ipairs(allHeroes) do
		if hero and not NPC.IsIllusion(hero) and Entity.IsHero(hero) and not Entity.IsSameTeam(myHero, hero) then
			table.insert(tempEnemyTable, hero)
		end		
	end

	if next(tempEnemyTable) == nil then
		fooAllInOne.enemyHeroTable = {}
		return
	end

	if #tempEnemyTable == 5 and next(fooAllInOne.enemyHeroTable) == nil then
		fooAllInOne.enemyHeroTable[tempEnemyTable[1]] = { 99999, 99999, 0 }
		fooAllInOne.enemyHeroTable[tempEnemyTable[2]] = { 99999, 99999, 0 }
		fooAllInOne.enemyHeroTable[tempEnemyTable[3]] = { 99999, 99999, 0 }
		fooAllInOne.enemyHeroTable[tempEnemyTable[4]] = { 99999, 99999, 0 }
		fooAllInOne.enemyHeroTable[tempEnemyTable[5]] = { 99999, 99999, 0 }
	end

	for hero, data in pairs(fooAllInOne.enemyHeroTable) do
		if hero and next(allHeroes) ~= nil and not Entity.IsDormant(hero) and GameRules.GetGameTime() - data[3] > 1 then
			
			local heroHP = Entity.GetHealth(hero)
			local heroHPreg = NPC.GetHealthRegen(hero)
			local timeStamp = GameRules.GetGameTime()
			fooAllInOne.enemyHeroTable[hero] = { heroHP, heroHPreg, timeStamp }
		end
	end

end

-- item usage functions
function fooAllInOne.itemUsage(myHero, enemy)

	if not myHero then return end
	if not enemy then return end

	if not Menu.IsEnabled(fooAllInOne.optionItemEnable) then return end
	if (os.clock() - fooAllInOne.lastItemTick) < fooAllInOne.itemDelay then return end
	if fooAllInOne.ItemCastStop then return end
	if NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_INVULNERABLE) then return end
	if NPC.IsStunned(myHero) then return end

	if Menu.GetValue(fooAllInOne.optionItemStyle) == 0 then 
		fooAllInOne.itemUsageNoOrder(myHero, enemy)
	elseif Menu.GetValue(fooAllInOne.optionItemStyle) == 1 then
		fooAllInOne.itemUsageOrder(myHero, enemy)
	elseif Menu.GetValue(fooAllInOne.optionItemStyle) == 2 then
		fooAllInOne.itemUsageSmartOrder(myHero, enemy)
	end

end

function fooAllInOne.itemUsageNoOrder(myHero, enemy)

	if not myHero then return end
	if not enemy then return end

	local myMana = NPC.GetMana(myHero)

	local veil = NPC.GetItem(myHero, "item_veil_of_discord", true)
	local hex = NPC.GetItem(myHero, "item_sheepstick", true)
	local blood = NPC.GetItem(myHero, "item_bloodthorn", true)
	local eBlade = NPC.GetItem(myHero, "item_ethereal_blade", true)
	local orchid = NPC.GetItem(myHero, "item_orchid", true)
	local refresher = NPC.GetItem(myHero, "item_refresher", true)
	local atos = NPC.GetItem(myHero, "item_rod_of_atos", true)
	local abyssal = NPC.GetItem(myHero, "item_abyssal_blade", true)
	local halberd = NPC.GetItem(myHero, "item_heavens_halberd", true)
	local shivas = NPC.GetItem(myHero, "item_shivas_guard", true)
	local urn = NPC.GetItem(myHero, "item_urn_of_shadows", true)
	local manta = NPC.GetItem(myHero, "item_manta", true)
	local soulring = NPC.GetItem(myHero, "item_soul_ring", true)
	local mjollnir = NPC.GetItem(myHero, "item_mjollnir", true)
	local medallion = NPC.GetItem(myHero, "item_medallion_of_courage", true)
	local crest = NPC.GetItem(myHero, "item_solar_crest", true)

	local dagon = NPC.GetItem(myHero, "item_dagon", true)
		if not dagon then
			for i = 2, 5 do
				dagon = NPC.GetItem(myHero, "item_dagon_" .. i, true)
				if dagon then break end
			end
		end

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and not NPC.IsChannellingAbility(myHero) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) then
		
		if fooAllInOne.ItemSleepReady(0.05) and soulring and Ability.IsReady(soulring) and Menu.IsEnabled(fooAllInOne.optionItemSoulring) then
			Ability.CastNoTarget(soulring)
			fooAllInOne.lastItemCast = os.clock()
			return
		end

		if NPC.IsLinkensProtected(enemy) then
			if fooAllInOne.ItemSleepReady(0.05) and fooAllInOne.LinkensBreakerNew(myHero) ~= nil then
				Ability.CastTarget(NPC.GetItem(myHero, fooAllInOne.LinkensBreakerNew(myHero), true), enemy)
				fooAllInOne.lastItemCast = os.clock()
				return
			end
		end

		if fooAllInOne.ItemSleepReady(0.05) and abyssal and NPC.IsEntityInRange(myHero, enemy, 140) and Ability.IsCastable(abyssal, myMana) and Menu.GetValue(fooAllInOne.optionItemAbyssal) > 0 then 
			Ability.CastTarget(abyssal, enemy)
			fooAllInOne.lastItemCast = os.clock()
			return
		end

		if fooAllInOne.ItemSleepReady(0.05) and shivas and NPC.IsEntityInRange(myHero, enemy, 900 + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(shivas, myMana) and Menu.GetValue(fooAllInOne.optionItemShivas) > 0 then 
			Ability.CastNoTarget(shivas)
			fooAllInOne.lastItemCast = os.clock()
			return
		end

		if fooAllInOne.ItemSleepReady(0.05) and mjollnir and NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) and Ability.IsCastable(mjollnir, myMana) and Menu.GetValue(fooAllInOne.optionItemMjollnir) > 0 then 
			Ability.CastTarget(mjollnir, myHero)
			fooAllInOne.lastItemCast = os.clock()
			return
		end

		if fooAllInOne.ItemSleepReady(0.05) and manta and NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) and Ability.IsCastable(manta, myMana) and Menu.GetValue(fooAllInOne.optionItemManta) > 0 then 
			Ability.CastNoTarget(manta)
			fooAllInOne.lastItemCast = os.clock()
			return
		end

		if not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then

			if fooAllInOne.ItemSleepReady(0.05) and orchid and NPC.IsEntityInRange(myHero, enemy, 900 + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(orchid, myMana) and Menu.GetValue(fooAllInOne.optionItemOrchid) > 0 then 
				Ability.CastTarget(orchid, enemy)
				fooAllInOne.lastItemCast = os.clock()
				return
			end

			if fooAllInOne.ItemSleepReady(0.05) and blood and NPC.IsEntityInRange(myHero, enemy, 900 + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(blood, myMana) and Menu.GetValue(fooAllInOne.optionItemBlood) > 0 then 
				Ability.CastTarget(blood, enemy)
				fooAllInOne.lastItemCast = os.clock()
				return
			end

			if fooAllInOne.ItemSleepReady(0.05) and veil and NPC.IsEntityInRange(myHero, enemy, 1000 + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(veil, myMana) and Menu.GetValue(fooAllInOne.optionItemVeil) > 0 then 
				Ability.CastPosition(veil, Entity.GetAbsOrigin(enemy))
				fooAllInOne.lastItemCast = os.clock()
				return
			end

			if fooAllInOne.ItemSleepReady(0.05) and hex and NPC.IsEntityInRange(myHero, enemy, 800 + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(hex, myMana) and Menu.GetValue(fooAllInOne.optionItemHex) > 0 then 
				Ability.CastTarget(hex, enemy)
				fooAllInOne.lastItemCast = os.clock()
				return
			end

			if fooAllInOne.ItemSleepReady(0.05) and eBlade and NPC.IsEntityInRange(myHero, enemy, 800 + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(eBlade, myMana) and Menu.GetValue(fooAllInOne.optionItemeBlade) > 0 then 
				Ability.CastTarget(eBlade, enemy)
				fooAllInOne.lastItemCast = os.clock()
				return
			end
	
			if fooAllInOne.ItemSleepReady(0.05) and atos and NPC.IsEntityInRange(myHero, enemy, 1150 + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(atos, myMana) and Menu.GetValue(fooAllInOne.optionItemAtos) > 0 then 
				Ability.CastTarget(atos, enemy)
				fooAllInOne.lastItemCast = os.clock()
				return
			end

			if fooAllInOne.ItemSleepReady(0.05) and halberd and NPC.IsEntityInRange(myHero, enemy, 600 + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(halberd, myMana) and Menu.GetValue(fooAllInOne.optionItemHalberd) > 0 then
				Ability.CastTarget(halberd, enemy)
				fooAllInOne.lastItemCast = os.clock()
				return
			end

			if fooAllInOne.ItemSleepReady(0.05) and urn and NPC.IsEntityInRange(myHero, enemy, 950 + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(urn, myMana) and Item.GetCurrentCharges(urn) >= 3 and Entity.GetHealth(enemy) >= 300 and Menu.GetValue(fooAllInOne.optionItemUrn) > 0 then
				Ability.CastTarget(urn, enemy)
				fooAllInOne.lastItemCast = os.clock()
				return
			end

			if fooAllInOne.ItemSleepReady(0.05) and medallion and NPC.IsEntityInRange(myHero, enemy, 1000 + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(medallion, myMana) and Menu.GetValue(fooAllInOne.optionItemMedallion) > 0 then 
				Ability.CastTarget(medallion, enemy)
				fooAllInOne.lastItemCast = os.clock()
				return
			end

			if fooAllInOne.ItemSleepReady(0.05) and crest and NPC.IsEntityInRange(myHero, enemy, 1000 + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(crest, myMana) and Menu.GetValue(fooAllInOne.optionItemCrest) > 0 then 
				Ability.CastTarget(crest, enemy)
				fooAllInOne.lastItemCast = os.clock()
				return
			end

			if fooAllInOne.ItemSleepReady(0.05) and dagon and NPC.IsEntityInRange(myHero, enemy, Ability.GetCastRange(dagon) + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(dagon, myMana) and Menu.GetValue(fooAllInOne.optionItemDagon) > 0 then
				if eBlade then
					if NPC.HasModifier(enemy, "modifier_item_ethereal_blade_ethereal") then
						Ability.CastTarget(dagon, enemy)
						fooAllInOne.lastItemCast = os.clock()
						return
					end
				else
					Ability.CastTarget(dagon, enemy)
					fooAllInOne.lastItemCast = os.clock()
					return
				end
			end

			if Menu.GetValue(fooAllInOne.optionItemDagon) == -1 then

				if fooAllInOne.ItemSleepReady(0.05) and dagon and NPC.IsEntityInRange(myHero, enemy, Ability.GetCastRange(dagon) + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(dagon, myMana) then
					local dagonDMG = (1 - NPC.GetMagicalArmorValue(enemy)) * (Ability.GetLevelSpecialValueFor(dagon, "damage") + (Ability.GetLevelSpecialValueFor(dagon, "damage") * (Hero.GetIntellectTotal(myHero) / 14 / 100)))
					if Entity.GetHealth(enemy) <= dagonDMG and not NPC.IsLinkensProtected(enemy) then
						if not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
							Ability.CastTarget(dagon, enemy)
							fooAllInOne.lastItemCast = os.clock()
							return
						end
					end
				end
			end
		end
	end
end

function fooAllInOne.itemUsageOrder(myHero, enemy)

	if not myHero then return end
	if not enemy then return end

	local myMana = NPC.GetMana(myHero)

	local soulring = NPC.GetItem(myHero, "item_soul_ring", true)
	local mjollnir = NPC.GetItem(myHero, "item_mjollnir", true)
	local manta = NPC.GetItem(myHero, "item_manta", true)
	local dagon = NPC.GetItem(myHero, "item_dagon", true)
		if not dagon then
			for i = 2, 5 do
				dagon = NPC.GetItem(myHero, "item_dagon_" .. i, true)
				if dagon then break end
			end
		end

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and not NPC.IsChannellingAbility(myHero) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) then
		
		if fooAllInOne.ItemSleepReady(0.05) and soulring and Ability.IsReady(soulring) and Menu.IsEnabled(fooAllInOne.optionItemSoulring) then
			Ability.CastNoTarget(soulring)
			fooAllInOne.lastItemCast = os.clock()
			return
		end

		if NPC.IsLinkensProtected(enemy) then
			if fooAllInOne.ItemSleepReady(0.05) and fooAllInOne.LinkensBreakerNew(myHero) ~= nil then
				Ability.CastTarget(NPC.GetItem(myHero, fooAllInOne.LinkensBreakerNew(myHero), true), enemy)
				fooAllInOne.lastItemCast = os.clock()
				return
			end
		end

		if Menu.GetValue(fooAllInOne.optionItemDagon) == -1 then

			if fooAllInOne.ItemSleepReady(0.05) and dagon and NPC.IsEntityInRange(myHero, enemy, Ability.GetCastRange(dagon) + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(dagon, myMana) then
				local dagonDMG = (1 - NPC.GetMagicalArmorValue(enemy)) * (Ability.GetLevelSpecialValueFor(dagon, "damage") + (Ability.GetLevelSpecialValueFor(dagon, "damage") * (Hero.GetIntellectTotal(myHero) / 14 / 100)))
				if Entity.GetHealth(enemy) <= dagonDMG and not NPC.IsLinkensProtected(enemy) then
					if not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
						Ability.CastTarget(dagon, enemy)
						fooAllInOne.lastItemCast = os.clock()
						return
					end
				end
			end
		end

		local orderItem
		local customOrder = 0
		local itemActivation

		for k, v in ipairs(fooAllInOne.ItemCastOrder) do

			local skipItem = 0

			if NPC.HasModifier(enemy, "modifier_black_king_bar_immune") then
				if v[2] == "item_veil_of_discord" or v[2] == "item_sheepstick" or v[2] == "item_bloodthorn" or
					v[2] == "item_ethereal_blade" or v[2] == "item_orchid" or v[2] == "item_rod_of_atos" or
					v[2] == "item_heavens_halberd" or v[2] == "item_urn_of_shadows" or v[2] == "item_dagon"
					or v[2] == "item_dagon_2" or v[2] == "item_dagon_3" or v[2] == "item_dagon_4" 
					or v[2] == "item_dagon_5" or v[2] == "item_medallion_of_courage" or v[2] == "item_solar_crest" then
						skipItem = v[1]
				end
			end

			if NPC.HasModifier(myHero, "item_ethereal_blade") then
				if v[2] == "item_dagon" or v[2] == "item_dagon_2" or v[2] == "item_dagon_3" or v[2] == "item_dagon_4" 
					or v[2] == "item_dagon_5" and not NPC.HasModifier(enemy, "modifier_item_ethereal_blade_ethereal") then
					skipItem = v[1]
				end
			end

			if NPC.HasItem(myHero, v[2], true) then
				if Ability.IsCastable(NPC.GetItem(myHero, v[2], true), myMana) and (v[1] - skipItem) > customOrder then
						orderItem = NPC.GetItem(myHero, v[2], true)
						customOrder = v[1]
						itemActivation = v[3]
				end
			end	
		end
		
			if fooAllInOne.ItemSleepReady(0.05) and customOrder > 0 then
				if NPC.IsEntityInRange(myHero, enemy, Ability.GetCastRange(orderItem)) then
					if itemActivation == "target" then
						Ability.CastTarget(orderItem, enemy)
						fooAllInOne.lastItemCast = os.clock()
						customOrder = 0
						return
					end
					if itemActivation == "no target" then
						Ability.CastNoTarget(orderItem)
						fooAllInOne.lastItemCast = os.clock()
						customOrder = 0
						return
					end
					if itemActivation == "position" then
						Ability.CastPosition(orderItem, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastItemCast = os.clock()
						customOrder = 0
						return
					end
				end
			end

		if fooAllInOne.ItemSleepReady(0.05) and mjollnir and NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) and Ability.IsCastable(mjollnir, myMana) and Menu.GetValue(fooAllInOne.optionItemMjollnir) > 0 then
			Ability.CastTarget(mjollnir, myHero)
			fooAllInOne.lastItemCast = os.clock()
			return
		end

		if fooAllInOne.ItemSleepReady(0.05) and manta and NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) and Ability.IsCastable(manta, myMana) and Menu.GetValue(fooAllInOne.optionItemManta) > 0 then
			Ability.CastNoTarget(manta)
			fooAllInOne.lastItemCast = os.clock()
			return
		end
	end
end

function fooAllInOne.itemUsageSmartOrder(myHero, enemy, activation)

	if not myHero then return end
	if not enemy then return end

	local alternateActivation
	if activation == nil then
		alternateActivation = false
	else alternateActivation = activation
	end
	

	local myMana = NPC.GetMana(myHero)

	local soulring = NPC.GetItem(myHero, "item_soul_ring", true)
	local mjollnir = NPC.GetItem(myHero, "item_mjollnir", true)
	local manta = NPC.GetItem(myHero, "item_manta", true)
	local dagon = NPC.GetItem(myHero, "item_dagon", true)
		if not dagon then
			for i = 2, 5 do
				dagon = NPC.GetItem(myHero, "item_dagon_" .. i, true)
				if dagon then break end
			end
		end

	if (Menu.IsKeyDown(fooAllInOne.optionComboKey) or alternateActivation) and not NPC.IsChannellingAbility(myHero) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) then
		
		if fooAllInOne.ItemSleepReady(0.05) and soulring and Ability.IsReady(soulring) and Menu.IsEnabled(fooAllInOne.optionItemSoulring) then
			Ability.CastNoTarget(soulring)
			fooAllInOne.lastItemCast = os.clock()
			return
		end

		if NPC.IsLinkensProtected(enemy) then
			if fooAllInOne.ItemSleepReady(0.05) and fooAllInOne.LinkensBreakerNew(myHero) ~= nil then
				Ability.CastTarget(NPC.GetItem(myHero, fooAllInOne.LinkensBreakerNew(myHero), true), enemy)
				fooAllInOne.lastItemCast = os.clock()
				return
			end
		end

		if Menu.GetValue(fooAllInOne.optionItemDagon) == -1 then

			if fooAllInOne.ItemSleepReady(0.05) and dagon and NPC.IsEntityInRange(myHero, enemy, Ability.GetCastRange(dagon) + NPC.GetCastRangeBonus(myHero)) and Ability.IsCastable(dagon, myMana) then
				local dagonDMG = (1 - NPC.GetMagicalArmorValue(enemy)) * (Ability.GetLevelSpecialValueFor(dagon, "damage") + (Ability.GetLevelSpecialValueFor(dagon, "damage") * (Hero.GetIntellectTotal(myHero) / 14 / 100)))
				if Entity.GetHealth(enemy) <= dagonDMG and not NPC.IsLinkensProtected(enemy) then
					if not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
						Ability.CastTarget(dagon, enemy)
						fooAllInOne.lastItemCast = os.clock()
						return
					end
				end
			end
		end

		local orderItem
		local customOrder = 0
		local itemActivation

		for k, v in ipairs(fooAllInOne.ItemCastOrder) do

			local skipItem = 0

			if NPC.HasModifier(enemy, "modifier_black_king_bar_immune") then
				if v[2] == "item_veil_of_discord" or v[2] == "item_sheepstick" or v[2] == "item_bloodthorn" or
					v[2] == "item_ethereal_blade" or v[2] == "item_orchid" or v[2] == "item_rod_of_atos" or
					v[2] == "item_heavens_halberd" or v[2] == "item_urn_of_shadows" or v[2] == "item_dagon"
					or v[2] == "item_dagon_2" or v[2] == "item_dagon_3" or v[2] == "item_dagon_4" 
					or v[2] == "item_dagon_5" or v[2] == "item_medallion_of_courage" or v[2] == "item_solar_crest" then
						skipItem = v[1]
				end
			end

			if NPC.HasModifier(enemy, "modifier_bashed") then
				if v[2] == "item_abyssal_blade" or v[2] == "item_sheepstick" or v[2] == "item_bloodthorn" or v[2] == "item_orchid" then
					skipItem = v[1]
				end
			end

			if NPC.HasModifier(enemy, "modifier_stunned") then
				local dieTime = Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_stunned"))
				if GameRules.GetGameTime() <= dieTime - 0.1 then
					if v[2] == "item_abyssal_blade" or v[2] == "item_sheepstick" or v[2] == "item_bloodthorn" or v[2] == "item_orchid" or v[2] == "item_heavens_halberd" then
						skipItem = v[1]
					end
				end
			end

			if NPC.HasModifier(enemy, "modifier_sheepstick_debuff") then
				local dieTime = Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_sheepstick_debuff"))
				if GameRules.GetGameTime() <= dieTime - 0.1 then
					if v[2] == "item_abyssal_blade" or v[2] == "item_sheepstick" or v[2] == "item_bloodthorn" or v[2] == "item_orchid" or v[2] == "item_heavens_halberd" then
						skipItem = v[1]
					end
				end
			end

			if NPC.IsSilenced(enemy) then
				if NPC.HasModifier(enemy, "modifier_bloodthorn_debuff") then
					local dieTime = Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_bloodthorn_debuff"))
					if GameRules.GetGameTime() <= dieTime - 0.1 then
						if v[2] == "item_bloodthorn" or v[2] == "item_orchid" then
							skipItem = v[1]
						end
					end
				elseif NPC.HasModifier(enemy, "modifier_orchid_malevolence_debuff") then
					local dieTime = Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_orchid_malevolence_debuff"))
					if GameRules.GetGameTime() <= dieTime - 0.1 then
						if v[2] == "item_bloodthorn" or v[2] == "item_orchid" then
							skipItem = v[1]
						end
					end
				elseif NPC.HasModifier(enemy, "modifier_silence") then
					local dieTime = Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_silence"))
					if GameRules.GetGameTime() <= dieTime - 0.1 then
						if v[2] == "item_bloodthorn" or v[2] == "item_orchid" then
							skipItem = v[1]
						end
					end
				end
			end

			if NPC.HasModifier(myHero, "item_ethereal_blade") then
				if v[2] == "item_dagon" or v[2] == "item_dagon_2" or v[2] == "item_dagon_3" or v[2] == "item_dagon_4" 
					or v[2] == "item_dagon_5" and not NPC.HasModifier(enemy, "modifier_item_ethereal_blade_ethereal") then
					skipItem = v[1]
				end
			end

			if NPC.HasItem(myHero, v[2], true) then
				if Ability.IsCastable(NPC.GetItem(myHero, v[2], true), myMana) and (v[1] - skipItem) > customOrder then
				orderItem = NPC.GetItem(myHero, v[2], true)
						customOrder = v[1]
						itemActivation = v[3]
				end
			end	
		end
		
			if fooAllInOne.ItemSleepReady(0.05) and customOrder > 0 then
				if NPC.IsEntityInRange(myHero, enemy, Ability.GetCastRange(orderItem)) then
					if itemActivation == "target" then
						Ability.CastTarget(orderItem, enemy)
						fooAllInOne.lastItemCast = os.clock()
						customOrder = 0
						return
					end
					if itemActivation == "no target" then
						Ability.CastNoTarget(orderItem)
						fooAllInOne.lastItemCast = os.clock()
						customOrder = 0
						return
					end
					if itemActivation == "position" then
						Ability.CastPosition(orderItem, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastItemCast = os.clock()
						customOrder = 0
						return
					end
				end
			end

		if fooAllInOne.ItemSleepReady(0.05) and mjollnir and NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) and Ability.IsCastable(mjollnir, myMana) and Menu.GetValue(fooAllInOne.optionItemMjollnir) > 0 then
			Ability.CastTarget(mjollnir, myHero)
			fooAllInOne.lastItemCast = os.clock()
			return
		end

		if fooAllInOne.ItemSleepReady(0.05) and manta and NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) and Ability.IsCastable(manta, myMana) and Menu.GetValue(fooAllInOne.optionItemManta) > 0 then
			Ability.CastNoTarget(manta)
			fooAllInOne.lastItemCast = os.clock()
			return
		end
	end
end

-- linkens breaker functions
function fooAllInOne.LinkensBreakerNew(myHero)

	if not myHero then return end

	if not Menu.IsEnabled(fooAllInOne.optionLinkensEnable) then return end

	local myMana = NPC.GetMana(myHero)

 	local prioItem
	local prioOrder = 0

	for k, v in ipairs(fooAllInOne.LinkensBreakerItemOrder) do
	
		if NPC.HasItem(myHero, v[2], true) then
			if Ability.IsCastable(NPC.GetItem(myHero, v[2], true), myMana) and v[1] > prioOrder then
					prioItem = v[2]
					prioOrder = v[1]
				
			end
		end	
	
	end
	return prioItem	
end
	
-- utility item usage functions
function fooAllInOne.utilityItemUsage(myHero)

	if not myHero then return end

	local stick = NPC.GetItem(myHero, "item_magic_stick", true)
	local wand = NPC.GetItem(myHero, "item_magic_wand", true)
	local mekansm = NPC.GetItem(myHero, "item_mekansm", true)
	local greaves = NPC.GetItem(myHero, "item_guardian_greaves", true)
	local arcane = NPC.GetItem(myHero, "item_arcane_boots", true)
	local midas = NPC.GetItem(myHero, "item_hand_of_midas", true)
	local talon = NPC.GetItem(myHero, "item_iron_talon", true)
	local cheese = NPC.GetItem(myHero, "item_cheese", true)
	local faerie = NPC.GetItem(myHero, "item_faerie_fire", true)

	local myMana = NPC.GetMana(myHero)

	if (stick or wand or cheese or faerie) and Menu.IsEnabled(fooAllInOne.optionUtilityStick) then
		fooAllInOne.utilityItemStick(myHero, stick, wand, cheese, faerie)
	end
	if mekansm and Menu.IsEnabled(fooAllInOne.optionUtilityMek) then
		fooAllInOne.utilityItemMek(myHero, mekansm, myMana)
	end
	if greaves and Menu.IsEnabled(fooAllInOne.optionUtilityGreaves) then
		fooAllInOne.utilityItemGreaves(myHero, greaves)
	end
	if arcane and Menu.IsEnabled(fooAllInOne.optionUtilityArcane) then
		fooAllInOne.utilityItemArcane(myHero, arcane)
	end
	if midas and Menu.IsEnabled(fooAllInOne.optionUtilityMidas) then
		fooAllInOne.utilityItemMidas(myHero, midas)
	end
	if talon and Menu.IsEnabled(fooAllInOne.optionUtilityTalon) then
		fooAllInOne.utilityItemTalon(myHero, talon)
	end
end

function fooAllInOne.utilityItemStick(myHero, stick, wand, cheese, faerie)

	if not myHero then return end
	
	local myHealthPerc = (Entity.GetHealth(myHero) / Entity.GetMaxHealth(myHero)) * 100
	
	if Entity.IsAlive(myHero) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) and not NPC.HasModifier(myHero, "modifier_ice_blast") and not NPC.IsChannellingAbility(myHero) then
		if stick and myHealthPerc <= Menu.GetValue(fooAllInOne.optionUtilityHealth) and Ability.IsReady(stick) then
			if Item.GetCurrentCharges(stick) >= 1 then 
				Ability.CastNoTarget(stick)
				return
			end
		end
		if wand and myHealthPerc <= Menu.GetValue(fooAllInOne.optionUtilityHealth) and Ability.IsReady(wand) then 
			if Item.GetCurrentCharges(wand) >= 1 then 
				Ability.CastNoTarget(wand)
				return
			end
		end
		if cheese and myHealthPerc <= Menu.GetValue(fooAllInOne.optionUtilityHealth) and Ability.IsReady(cheese) then 
			Ability.CastNoTarget(cheese)
			return
		end
		if faerie and myHealthPerc <= Menu.GetValue(fooAllInOne.optionUtilityHealth) and Ability.IsReady(faerie) then 
			Ability.CastNoTarget(faerie)
			return
		end
	end
end

function fooAllInOne.utilityItemMek(myHero, mekansm, myMana)

	if not myHero then return end
	if not mekansm then return end

	local myHealthPerc = (Entity.GetHealth(myHero) / Entity.GetMaxHealth(myHero)) * 100
	if Entity.IsAlive(myHero) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) and not NPC.HasModifier(myHero, "modifier_ice_blast") and not NPC.IsChannellingAbility(myHero) then	
		if (myHealthPerc <= Menu.GetValue(fooAllInOne.optionUtilityHealth)) and Ability.IsCastable(mekansm, myMana) then 
			Ability.CastNoTarget(mekansm) 
			return
		end
	end

	for _, teamMates in ipairs(NPC.GetHeroesInRadius(myHero, 900, Enum.TeamType.TEAM_FRIEND)) do
		if teamMates then
			if Entity.IsAlive(myHero) and Entity.IsAlive(teamMates) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) and not NPC.HasModifier(teamMates, "modifier_ice_blast") and not NPC.IsChannellingAbility(myHero) then	
				if (Entity.GetHealth(teamMates) / Entity.GetMaxHealth(teamMates)) * 100 <= Menu.GetValue(fooAllInOne.optionUtilityHealth) and Ability.IsCastable(mekansm, myMana) then
					Ability.CastNoTarget(mekansm) 
					return 
				end
			end
		end
	end
end

function fooAllInOne.utilityItemGreaves(myHero, greaves)

	if not myHero then return end
	if not greaves then return end
	local myHealthPerc = (Entity.GetHealth(myHero) / Entity.GetMaxHealth(myHero)) * 100

	if Entity.IsAlive(myHero) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) and not NPC.HasModifier(myHero, "modifier_ice_blast") and not NPC.IsChannellingAbility(myHero) then	
		if greaves and (myHealthPerc <= Menu.GetValue(fooAllInOne.optionUtilityHealth)) and Ability.IsReady(greaves) then 
			Ability.CastNoTarget(greaves) 
			return
		end
	end

	for _, teamMates in ipairs(NPC.GetHeroesInRadius(myHero, 900, Enum.TeamType.TEAM_FRIEND)) do
		if teamMates then
			if Entity.IsAlive(myHero) and Entity.IsAlive(teamMates) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) and not NPC.HasModifier(teamMates, "modifier_ice_blast") and not NPC.IsChannellingAbility(myHero) then	
				if greaves and (Entity.GetHealth(teamMates) / Entity.GetMaxHealth(teamMates)) * 100 <= Menu.GetValue(fooAllInOne.optionUtilityHealth) and Ability.IsReady(greaves) then
					Ability.CastNoTarget(greaves) 
					return 
				end
			end
		end
	end
end

function fooAllInOne.utilityItemArcane(myHero, arcane)

	if not myHero then return end
	if not arcane then return end
	local myManaMissing = NPC.GetMaxMana(myHero) - NPC.GetMana(myHero)
	if Entity.IsAlive(myHero) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) and not NPC.IsChannellingAbility(myHero) then
		if arcane and myManaMissing >= 200 and Ability.IsReady(arcane) then 
			Ability.CastNoTarget(arcane)
			return 
		end
	end


	for _, teamMates in ipairs(NPC.GetHeroesInRadius(myHero, 900, Enum.TeamType.TEAM_FRIEND)) do
		if teamMates then
			if Entity.IsAlive(myHero) and Entity.IsAlive(teamMates) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) and not NPC.IsChannellingAbility(myHero) then
				if arcane and (NPC.GetMana(teamMates) / NPC.GetMaxMana(teamMates)) * 100 <= 40 and Ability.IsReady(arcane) then 
					Ability.CastNoTarget(arcane)
					return 
				end 
			end
		end
	end
end

function fooAllInOne.utilityItemMidas(myHero, midas, bountyXPthreshold)

	if not myHero then return end
	if not midas then return end

	local bountyXP
	if bountyXPthreshold == nil then
		if Menu.GetValue(fooAllInOne.optionUtilityMidasXP) == 0 then
			bountyXP = 40
		else
			bountyXP = 88
		end
	else bountyXP = bountyXPthreshold
	end

	AncientNameList = { "npc_dota_neutral_black_drake",
    				"npc_dota_neutral_black_dragon",
    				"npc_dota_neutral_blue_dragonspawn_sorcerer",
    				"npc_dota_neutral_blue_dragonspawn_overseer",
    				"npc_dota_neutral_granite_golem",
    				"npc_dota_neutral_elder_jungle_stalker",
    				"npc_dota_neutral_prowler_acolyte",
    				"npc_dota_neutral_prowler_shaman",
    				"npc_dota_neutral_rock_golem",
    				"npc_dota_neutral_small_thunder_lizard",
    				"npc_dota_neutral_jungle_stalker",
    				"npc_dota_neutral_big_thunder_lizard",
    				"npc_dota_roshan" }

	for _, creeps in pairs(NPC.GetUnitsInRadius(myHero, 580, Enum.TeamType.TEAM_ENEMY)) do
		if creeps then
			local bounty = NPC.GetBountyXP(creeps)
			local creepName = NPC.GetUnitName(creeps)
			for _, ancientName in ipairs(AncientNameList) do
				if creepName ~= nil then	
					if creepName == ancientName then 
						return
					end
				end
			end
			if (NPC.IsLaneCreep(creeps) or NPC.IsCreep(creeps)) and not NPC.IsDormant(creeps) and bounty >= bountyXP and Ability.IsReady(midas) and not NPC.IsChannellingAbility(myHero) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) then
				Ability.CastTarget(midas, creeps)
				return
			end
		end
	end
end

function fooAllInOne.utilityItemTalon(myHero, talon, midas)

	if not myHero then return end
	if not talon then return end
	if midas and Ability.IsReady(midas) then return end

	AncientNameList = { "npc_dota_neutral_black_drake",
    				"npc_dota_neutral_black_dragon",
    				"npc_dota_neutral_blue_dragonspawn_sorcerer",
    				"npc_dota_neutral_blue_dragonspawn_overseer",
    				"npc_dota_neutral_granite_golem",
    				"npc_dota_neutral_elder_jungle_stalker",
    				"npc_dota_neutral_prowler_acolyte",
    				"npc_dota_neutral_prowler_shaman",
    				"npc_dota_neutral_rock_golem",
    				"npc_dota_neutral_small_thunder_lizard",
    				"npc_dota_neutral_jungle_stalker",
    				"npc_dota_neutral_big_thunder_lizard",
    				"npc_dota_roshan" }

	local maxHPcreep
	local maxHP = 0
	for _, creeps in ipairs(NPC.GetUnitsInRadius(myHero, 250, Enum.TeamType.TEAM_ENEMY)) do
		if creeps then
			if Entity.IsHero(creeps) or NPC.IsLaneCreep(creeps) then 
				return 
			end
			local creepName = NPC.GetUnitName(creeps)
			for _, ancientName in ipairs(AncientNameList) do
				if creepName ~= nil then	
					if creepName == ancientName then 
						return
					end
				end
			end
		
       			if NPC.IsNeutral(creeps) and (Entity.GetHealth(creeps) / Entity.GetMaxHealth(creeps)) >= 0.7 and Entity.GetHealth(creeps) >= maxHP then
            			maxHPcreep = creeps
            			maxHP = Entity.GetMaxHealth(creeps)
       			end
   		end
	end

	if next(NPC.GetUnitsInRadius(myHero, 330, Enum.TeamType.TEAM_ENEMY)) == nil then
		maxHP = 0
	end

	if maxHPcreep and NPC.IsAttacking(myHero) and Ability.IsReady(talon) then
		Ability.CastTarget(talon, maxHPcreep)
		return
	end
end

-- hero functions
function fooAllInOne.axeCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroAxe) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1700)	then return end

	local call = NPC.GetAbilityByIndex(myHero, 0)
	local hunger = NPC.GetAbilityByIndex(myHero, 1)
	local culling = NPC.GetAbilityByIndex(myHero, 3)

	local Blademail = NPC.GetItem(myHero, "item_blade_mail", true)
	local blink = NPC.GetItem(myHero, "item_blink", true)
	local myMana = NPC.GetMana(myHero)

	if Menu.IsEnabled(fooAllInOne.optionHeroAxeCulling) then
		local cullingEnemy = NPC.GetHeroesInRadius(myHero, 150 + NPC.GetCastRangeBonus(myHero), Enum.TeamType.TEAM_ENEMY)
		for i, v in ipairs(cullingEnemy) do
			if v and culling and Ability.IsCastable(culling, myMana) then
				if not NPC.IsDormant(v) and not NPC.IsIllusion(v) and Entity.IsAlive(v) then
					if Entity.GetHealth(v) + NPC.GetHealthRegen(v) < Ability.GetLevelSpecialValueFor(culling, "kill_threshold") and not NPC.IsLinkensProtected(v) then
						Ability.CastTarget(culling, v)
						break
					end
				end
			end
		end
	end

	local cursorCheck
	if Menu.IsEnabled(fooAllInOne.optionHeroAxeForceBlink) then
		if NPC.IsPositionInRange(enemy, Input.GetWorldCursorPos(), Menu.GetValue(fooAllInOne.optionHeroAxeForceBlinkRange)-1, 0) then
			cursorCheck = true
		else
			cursorCheck = false
		end
	else
		cursorCheck = true
	end
	
	fooAllInOne.itemUsage(myHero, enemy)
	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 and cursorCheck then
		if not NPC.IsEntityInRange(myHero, enemy, 260) then
			if blink and Ability.IsReady(blink) then
				if NPC.IsEntityInRange(myHero, enemy, 1150) then
					if Menu.GetValue(fooAllInOne.optionHeroAxeJump) == 0 then
						Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy))
						return
					else
						Ability.CastPosition(blink, fooAllInOne.getBestPosition(NPCs.InRadius(Entity.GetAbsOrigin(enemy), 300, Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY), 280))
						return
					end
				else
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
			if not blink or (blink and not Ability.IsReady(blink)) then
				if fooAllInOne.SleepReady(0.1) then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		else
			if culling and Entity.GetHealth(enemy) + NPC.GetHealthRegen(enemy) < Ability.GetLevelSpecialValueFor(culling, "kill_threshold") and NPC.IsEntityInRange(myHero, enemy, 150) and Ability.IsCastable(culling, myMana) and not NPC.IsLinkensProtected(enemy) then 
				Ability.CastTarget(culling, enemy)
				fooAllInOne.lastTick = os.clock()
				return 
			end 
			if call and Ability.IsCastable(call, myMana) then 
				Ability.CastNoTarget(call)
				fooAllInOne.lastTick = os.clock()
				return
			end
			if fooAllInOne.SleepReady(Ability.GetCastPoint(call)) and Blademail and NPC.HasModifier(enemy, "modifier_axe_berserkers_call") and Ability.IsCastable(Blademail, myMana) then 
				Ability.CastNoTarget(Blademail)
				return
			end
			if fooAllInOne.SleepReady(Ability.GetCastPoint(call)) and hunger and NPC.HasModifier(enemy, "modifier_axe_berserkers_call") and Ability.IsCastable(hunger, myMana - Ability.GetManaCost(culling)) then 
				Ability.CastTarget(hunger, enemy)
				return
			end
		end
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
end

function fooAllInOne.clockwerkCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroClock) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 3100)	then return end
	
	local BatteryAssault = NPC.GetAbilityByIndex(myHero, 0)
	local PowerCogs = NPC.GetAbilityByIndex(myHero, 1)
	local RocketFlair = NPC.GetAbilityByIndex(myHero, 2)
	local HookShot = NPC.GetAbilityByIndex(myHero, 3)

	local Blademail = NPC.GetItem(myHero, "item_blade_mail", true)
	local myMana = NPC.GetMana(myHero)
	
	fooAllInOne.itemUsage(myHero, enemy)

	local cogsTargeter
	if NPC.IsRunning(enemy) then
		cogsTargeter = 100
	else
		cogsTargeter = 200
	end

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
		if not NPC.IsEntityInRange(myHero, enemy, cogsTargeter) then
			if HookShot and Ability.IsCastable(HookShot, myMana) and NPC.IsEntityInRange(myHero, enemy, Ability.GetCastRange(HookShot)) then
				local hookshotPrediction = Ability.GetCastPoint(HookShot) + (Entity.GetAbsOrigin(enemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / Ability.GetLevelSpecialValueFor(HookShot, "speed")) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
				Ability.CastPosition(HookShot, fooAllInOne.castLinearPrediction(myHero, enemy, hookshotPrediction))
				fooAllInOne.lastTick = os.clock()
			end
			if not HookShot or (HookShot and not Ability.IsCastable(HookShot, myMana)) or (HookShot and not NPC.IsEntityInRange(myHero, enemy, Ability.GetCastRange(HookShot))) then
				if fooAllInOne.SleepReady(0.1) then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		else
			if PowerCogs and Ability.IsCastable(PowerCogs, myMana) then 
				Ability.CastNoTarget(PowerCogs)
				fooAllInOne.lastTick = os.clock()
				return
			end
			if fooAllInOne.SleepReady(Ability.GetCastPoint(PowerCogs)) and BatteryAssault and Ability.IsCastable(BatteryAssault, myMana) then 
				Ability.CastNoTarget(BatteryAssault)
				fooAllInOne.lastTick = os.clock()
				return
			end
			if fooAllInOne.SleepReady(Ability.GetCastPoint(BatteryAssault)) and Blademail and Ability.IsCastable(Blademail, myMana) then 
				Ability.CastNoTarget(Blademail)
				return
			end			
			if fooAllInOne.SleepReady(Ability.GetCastPoint(BatteryAssault)) and RocketFlair and Ability.IsCastable(RocketFlair, myMana) then 
				Ability.CastPosition(RocketFlair, Entity.GetAbsOrigin(enemy))
				return 
			end
		end
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
end

function fooAllInOne.skywrathCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroSky) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1800)	then return end

	local arcaneBolt = NPC.GetAbilityByIndex(myHero, 0)
    	local concussiveShot = NPC.GetAbilityByIndex(myHero, 1)
    	local ancientSeal = NPC.GetAbilityByIndex(myHero, 2)
    	local mysticFlare = NPC.GetAbilityByIndex(myHero, 3)
	local myMana = NPC.GetMana(myHero)

	local blink = NPC.GetItem(myHero, "item_blink", true)
	
	fooAllInOne.itemUsage(myHero, enemy)
	
	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
		if not NPC.IsEntityInRange(myHero, enemy, 800) then
			if blink and Ability.IsReady(blink) then
				Ability.CastPosition(blink, (Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(500)))
				return
			end
		else
	
			if ancientSeal and Ability.IsCastable(ancientSeal, myMana) then
				Ability.CastTarget(ancientSeal, enemy)
				fooAllInOne.lastTick = os.clock()
			end

			if fooAllInOne.SleepReady(Ability.GetCastPoint(ancientSeal)) and arcaneBolt and Ability.IsCastable(arcaneBolt, myMana) then
				Ability.CastTarget(arcaneBolt, enemy)
				fooAllInOne.lastTick = os.clock()
			end

			if fooAllInOne.SleepReady(Ability.GetCastPoint(arcaneBolt)) and concussiveShot and Ability.IsCastable(concussiveShot, myMana) then
				Ability.CastNoTarget(concussiveShot)
			end

			if fooAllInOne.SleepReady(Ability.GetCastPoint(ancientSeal)) and mysticFlare and Ability.IsCastable(mysticFlare, myMana) then
				if NPC.HasModifier(enemy, "modifier_rod_of_atos_debuff") or NPC.HasModifier(enemy, "modifier_stunned") or NPC.HasModifier(enemy, "modifier_bashed") or NPC.HasModifier(enemy, "modifier_rooted") or NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_HEXED) then
					Ability.CastPosition(mysticFlare, Entity.GetAbsOrigin(enemy))
				else
					local flarePrediction = Ability.GetCastPoint(mysticFlare) + 0.2 + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
					Ability.CastPosition(mysticFlare, fooAllInOne.castPrediction(myHero, enemy, flarePrediction))
				end
			end
		end
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
	
end

function fooAllInOne.PACombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroPA) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1500)	then return end

	local dagger = NPC.GetAbilityByIndex(myHero, 0)
	local phantomStrike = NPC.GetAbilityByIndex(myHero, 1)

	local myMana = NPC.GetMana(myHero)

	local daggerRange = Ability.GetCastRange(dagger)

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 then
		if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) then
			if fooAllInOne.SleepReady(0.1) and dagger and Ability.IsCastable(dagger, myMana) then
				if NPC.IsEntityInRange(myHero, enemy, daggerRange - 5) and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
					Ability.CastTarget(dagger, enemy)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
			if fooAllInOne.SleepReady(0.1) and phantomStrike and Ability.IsCastable(phantomStrike, myMana) then
				if NPC.IsEntityInRange(myHero, enemy, 999) then
					Ability.CastTarget(phantomStrike, enemy)
					fooAllInOne.lastTick = os.clock()
					return
				else
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
		end

	fooAllInOne.itemUsage(myHero, enemy)
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)

	end
	
	local minHP = 99999
	local minHPenemy

	if Menu.IsEnabled(fooAllInOne.optionHeroPADagger) then
		if fooAllInOne.Toggler then
			if NPC.GetMana(myHero) > (NPC.GetMaxMana(myHero) * (Menu.GetValue(fooAllInOne.optionHeroPADaggerThreshold) / 100)) then
				if dagger and Ability.IsCastable(dagger, myMana) then
					local daggerEnemies = NPC.GetHeroesInRadius(myHero, daggerRange - 1, Enum.TeamType.TEAM_ENEMY)
					for _, daggerEnemy in ipairs(daggerEnemies) do
						if daggerEnemy and fooAllInOne.targetChecker(daggerEnemy) ~= nil and not NPC.HasState(daggerEnemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
							local enemyHP = Entity.GetHealth(daggerEnemy)
							if enemyHP < minHP then
								minHP = enemyHP
								minHPenemy = daggerEnemy
							end
						end
					end
				end
			end
		end
	end

	if minHPenemy then
		if Menu.IsEnabled(fooAllInOne.optionHeroPADagger) then
			if fooAllInOne.Toggler then
				if not NPC.IsChannellingAbility(myHero) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) and not NPC.HasModifier(myHero, "modifier_teleporting") then
					if fooAllInOne.SleepReady(0.3) and dagger and Ability.IsCastable(dagger, myMana) then
						Ability.CastTarget(dagger, minHPenemy)
						fooAllInOne.lastTick = os.clock()
						minHP = 99999
						minHPenemy = nil
						return
					end
				end
			end
		end
	end

end

function fooAllInOne.DrawPADaggerSwitch()

	local w, h = Renderer.GetScreenSize()
	Renderer.SetDrawColor(255, 0, 255)

	if Menu.IsKeyDownOnce(fooAllInOne.optionHeroPADaggerToggleKey) then
		fooAllInOne.Toggler = not fooAllInOne.Toggler
		fooAllInOne.TogglerTime = os.clock()
	end

	if Menu.IsEnabled(fooAllInOne.optionHeroPADaggerDraw) then
		if os.clock() - fooAllInOne.TogglerTime < 3 then
			if fooAllInOne.Toggler then
				Renderer.DrawTextCentered(fooAllInOne.font, w / 2, h / 2 + 300, "AUTO DAGGER ON", 1)
			else 
				Renderer.DrawTextCentered(fooAllInOne.font, w / 2, h / 2 + 300, "AUTO DAGGER OFF", 1)
			end
		end
	end

end

--function fooAllInOne.KunkkaCombo(myHero, enemy)
--
--	if not Menu.IsEnabled(fooAllInOne.optionHeroKunkka) then return end
--	if not NPC.IsEntityInRange(myHero, enemy, 1500)	then return end
--
--	local torrent = NPC.GetAbility(myHero, "kunkka_torrent")
--    	local xMark = NPC.GetAbilityByIndex(myHero, 2)
--	local kunkkaReturn = NPC.GetAbility(myHero, "kunkka_return")
--	local ship = NPC.GetAbilityByIndex(myHero, 3)
--
--	local blink = NPC.GetItem(myHero, "item_blink", true)
--    	
--	local myMana = NPC.GetMana(myHero)
--
--	local xMarkRange = 200 + 200 * Ability.GetLevel(xMark)
--	local xMarkModifier = NPC.GetModifier(enemy, "modifier_kunkka_x_marks_the_spot")
--Log.Write(xMarkRange)
--	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
--		if not NPC.IsEntityInRange(myHero, enemy, xMarkRange - 75) then
--			if blink and Ability.IsReady(blink) then
--				if NPC.IsEntityInRange(myHero, enemy, 1150) then
--					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(300))
--					return
--				end
--			end
--		else
--			if not NPC.HasModifier(enemy, "modifier_kunkka_x_marks_the_spot") then
--				if xMark and Ability.IsCastable(xMark, myMana) and not Ability.IsHidden(xMark) and Ability.IsCastable(torrent, myMana - 50) then
--					Ability.CastTarget(xMark, enemy)
--					fooAllInOne.lastTick = os.clock()
--					return
--				end
--			else
--				if ship and Ability.IsCastable(ship, myMana) then
--					Ability.CastPosition(ship, Entity.GetAbsOrigin(enemy))
--					fooAllInOne.lastCastTime = os.clock()
--					return	
--				end
--				if torrent and Ability.IsCastable(torrent, myMana) and os.clock() - fooAllInOne.lastCastTime > 1.6 then
--					Ability.CastPosition(torrent, Entity.GetAbsOrigin(enemy))
--					fooAllInOne.lastTick = os.clock()
--				--	fooAllInOne.lastCastTime = os.clock()
--					return
--				end
--				if kunkkaReturn and not Ability.IsHidden(kunkkaReturn) and not Ability.IsReady(ship) and not Ability.IsReady(torrent) then
--					if os.clock() - fooAllInOne.lastCastTime > 2.0 then
--						Ability.CastNoTarget(kunkkaReturn)
--						return
--					end
--				end
--			end
--		end
--	end
--
--end

function fooAllInOne.AntiMageCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroAntiMage) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1500)	then return end

	local AMblink = NPC.GetAbilityByIndex(myHero, 1)
    	local manaVoid = NPC.GetAbilityByIndex(myHero, 3)
    	
	local myMana = NPC.GetMana(myHero)

	local blinkRange = Ability.GetLevelSpecialValueFor(AMblink, "blink_range")

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 then
		if not NPC.IsEntityInRange(myHero, enemy, 250) then
			if AMblink and Ability.IsCastable(AMblink, myMana) and Menu.IsEnabled(fooAllInOne.optionHeroAntiMageBlink) then
				if NPC.IsEntityInRange(myHero, enemy, blinkRange - 105) then
					if NPC.GetTimeToFace(enemy, myHero) <= 0.05 then
						Ability.CastPosition(AMblink, Entity.GetAbsOrigin(enemy))
						return
					else
						Ability.CastPosition(AMblink, Entity.GetAbsOrigin(enemy) + Entity.GetRotation(enemy):GetForward():Normalized():Scaled(100))
						return
					end
				else
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
		end

	fooAllInOne.itemUsage(myHero, enemy)
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	fooAllInOne.MantaIlluController(enemy, nil, myHero, myHero)

	end

	local maxManaDiff = 0
	local maxDMGTarget

	local voidEnemies = NPC.GetHeroesInRadius(myHero, 599, Enum.TeamType.TEAM_ENEMY)
	if manaVoid and Ability.IsCastable(manaVoid, myMana) then
		if Menu.IsEnabled(fooAllInOne.optionHeroAntiMageVoid) then
			for _, voidEnemy in ipairs(voidEnemies) do
				if voidEnemy and not NPC.IsLinkensProtected(voidEnemy) then
					local enemyManaDiff = NPC.GetMaxMana(voidEnemy) - NPC.GetMana(voidEnemy)
					if #voidEnemies <= 1 then
						if not NPC.HasState(voidEnemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
							maxManaDiff = 0
							maxDMGTarget = voidEnemy
							break
							return
						end
					else
						if enemyManaDiff > maxManaDiff and not NPC.HasState(voidEnemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
							maxManaDiff = enemyManaDiff
							maxDMGTarget = voidEnemy
						end
					end
				end
			end
		end
	end

	if maxDMGTarget ~= nil then
		if not NPC.IsChannellingAbility(myHero) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) and not NPC.HasModifier(myHero, "modifier_teleporting") then
			local enemyHP = Entity.GetHealth(maxDMGTarget) + NPC.GetHealthRegen(maxDMGTarget)
			local enemiesInVoidRadius = NPC.GetHeroesInRadius(maxDMGTarget, 450, Enum.TeamType.TEAM_FRIEND)
			local enemyManaDiff = NPC.GetMaxMana(maxDMGTarget) - NPC.GetMana(maxDMGTarget)
			local voidDamage = enemyManaDiff * Ability.GetLevelSpecialValueForFloat(manaVoid, "mana_void_damage_per_mana")
			local totalVoidDamage = ((1 - NPC.GetMagicalArmorValue(maxDMGTarget)) * voidDamage) + (voidDamage * (Hero.GetIntellectTotal(myHero) / 14 / 100))
			if manaVoid and Ability.IsCastable(manaVoid, myMana) then
				if NPC.IsEntityInRange(myHero, maxDMGTarget, 599) then
					if totalVoidDamage > enemyHP then
						Ability.CastTarget(manaVoid, maxDMGTarget)
						maxManaDiff = 0
						maxDMGTarget = nil
						return
					end
					if #enemiesInVoidRadius >= 1 then
						for _, radiusTargets in ipairs(enemiesInVoidRadius) do
							if radiusTargets then
								local voidDamageRadius = enemyManaDiff * Ability.GetLevelSpecialValueForFloat(manaVoid, "mana_void_damage_per_mana")
								local totalVoidDamageRadius = ((1 - NPC.GetMagicalArmorValue(radiusTargets)) * voidDamageRadius) + (voidDamageRadius * (Hero.GetIntellectTotal(myHero) / 14 / 100))
								if totalVoidDamageRadius > Entity.GetHealth(radiusTargets) + NPC.GetHealthRegen(radiusTargets) and not NPC.HasState(radiusTargets, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
									Ability.CastTarget(manaVoid, maxDMGTarget)
									maxManaDiff = 0
									maxDMGTarget = nil
									break
									return
								end
							end
						end
					end
				end	
			end
		end
	end
				
end		

function fooAllInOne.tinyCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroTiny) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1500)	then return end
    
    	local avalanche = NPC.GetAbilityByIndex(myHero, 0)
    	local toss = NPC.GetAbilityByIndex(myHero, 1)
    	local myMana = NPC.GetMana(myHero)

	local blink = NPC.GetItem(myHero, "item_blink", true)

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
		if not NPC.IsEntityInRange(myHero, enemy, 275) then
			if blink and Ability.IsReady(blink) then
				if NPC.IsEntityInRange(myHero, enemy, 1150) then
					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy))
					return
				else
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
			if not blink or (blink and not Ability.IsReady(blink)) then
				if fooAllInOne.SleepReady(0.1) then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		else
			fooAllInOne.itemUsage(myHero, enemy)
			if avalanche and Ability.IsCastable(avalanche, myMana) then 
				Ability.CastPosition(avalanche, Entity.GetAbsOrigin(enemy))
				fooAllInOne.lastTick = os.clock()
			end
    			if fooAllInOne.SleepReady(Ability.GetCastPoint(avalanche)) and toss and Ability.IsCastable(toss, myMana) then 
				Ability.CastTarget(toss, enemy)
				return 
			end
		end
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
end

function fooAllInOne.WindRunnerCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroWindrunner) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1500)	then return end
	if (os.clock() - fooAllInOne.lastTick) < fooAllInOne.delay then return end

	local shackleShot = NPC.GetAbilityByIndex(myHero, 0)
	local powerShot = NPC.GetAbilityByIndex(myHero, 1)
	local windRun = NPC.GetAbilityByIndex(myHero, 2)
	local focusFire = NPC.GetAbilityByIndex(myHero, 3)
	local myMana = NPC.GetMana(myHero)
	
	local branch = NPC.GetItem(myHero, "item_branches", true)
	local blink = NPC.GetItem(myHero, "item_blink", true)
	
	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) and NPC.IsEntityInRange(myHero, enemy, 750) then
		if branch then
			if blink then	
				if shackleShot and Ability.IsCastable(shackleShot, myMana) then
					Ability.CastTarget(shackleShot, enemy)
			--		return
				end
				if blink and Ability.IsReady(blink) and not Ability.IsReady(shackleShot) then
					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Rotated(Angle(0,45,0)):Normalized():Scaled(200))
					Ability.CastPosition(branch, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(150))
			--		return
				end
			end
		else 
			fooAllInOne.itemUsage(myHero, enemy)
			fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
		end
	end

	if NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) and Entity.GetHealth(enemy) > 0 then
		if not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then

			local shackleMod = NPC.GetModifier(enemy, "modifier_windrunner_shackle_shot")
				if not shackleMod then return end
			local shackleTime = Modifier.GetCreationTime(shackleMod) + Modifier.GetDuration(shackleMod)

			if NPC.HasModifier(enemy, "modifier_windrunner_shackle_shot") and Modifier.GetDuration(shackleMod) >= 1.5 then
				fooAllInOne.itemUsage(myHero, enemy, true)
				if focusFire and Ability.IsCastable(focusFire, myMana) then
					Ability.CastTarget(focusFire, enemy)
					return
				end
				if windRun and Ability.IsCastable(windRun, myMana) and #NPC.GetHeroesInRadius(myHero, 600, Enum.TeamType.TEAM_ENEMY) >= 3 then
					Ability.CastNoTarget(windRun)
					return
				end
			end
		end
	end
end

function fooAllInOne.TimberCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroTimber) then return end
	
	if (os.clock() - fooAllInOne.lastTick) < fooAllInOne.delay then return end

	local whirlingDeath = NPC.GetAbilityByIndex(myHero, 0)
	local timberChain = NPC.GetAbilityByIndex(myHero, 1)
	local chakram = NPC.GetAbility(myHero, "shredder_chakram")
	local chakramReturn = NPC.GetAbility(myHero, "shredder_return_chakram")
	local chakramAgha = NPC.GetAbility(myHero, "shredder_chakram_2")
	local chakramAghaReturn = NPC.GetAbility(myHero, "shredder_return_chakram_2")

	local aghanims = NPC.GetItem(myHero, "item_ultimate_scepter", true)
	local blink = NPC.GetItem(myHero, "item_blink", true)
	
	local chainCheckRange = Ability.GetCastRange(timberChain) + NPC.GetCastRangeBonus(myHero)
		if blink then
			chainCheckRange = chainCheckRange + 1150
		end
	if not NPC.IsPositionInRange(myHero, Input.GetWorldCursorPos(), chainCheckRange, 0) then return end

	local myMana = NPC.GetMana(myHero)

	if Entity.GetHealth(enemy) > 0 and NPC.HasModifier(myHero, "modifier_shredder_timber_chain") then
		if whirlingDeath and Ability.IsCastable(whirlingDeath, myMana) and NPC.IsEntityInRange(myHero, enemy, 300) then
			Ability.CastNoTarget(whirlingDeath)
			fooAllInOne.makeDelay(Ability.GetCastPoint(whirlingDeath))
			return
		end
	end

	fooAllInOne.itemUsage(myHero, enemy)
	
	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 then
	
		if not NPC.IsPositionInRange(myHero, Input.GetWorldCursorPos(), Ability.GetCastRange(timberChain), 0) then
			if blink and Ability.IsReady(blink) then
				Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) - (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(250))
			end
		else	
			if timberChain and Ability.IsCastable(timberChain, myMana) then
				Ability.CastPosition(timberChain, Input.GetWorldCursorPos())
				return
			end
			if NPC.HasModifier(enemy, "modifier_shredder_whirling_death_debuff") then
				local chakramPrediction = Ability.GetCastPoint(chakram) + (Entity.GetAbsOrigin(enemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 900) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
				if blink and Ability.IsReady(blink) and (Entity.GetAbsOrigin(enemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D()) >= 800 then
					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy))
					return
				elseif not Ability.IsHidden(chakram) then
					if chakram and Ability.IsCastable(chakram, myMana) then
						Ability.CastPosition(chakram, fooAllInOne.castLinearPrediction(myHero, enemy, chakramPrediction))
						fooAllInOne.lastCastTime = 1
						return
					end
				elseif not Ability.IsHidden(chakramAgha) and Ability.IsHidden(chakram) then
					if chakramAgha and Ability.IsCastable(chakramAgha, myMana) then
						Ability.CastPosition(chakramAgha, fooAllInOne.castLinearPrediction(myHero, enemy, chakramPrediction))
						fooAllInOne.lastCastTime2 = 1
						return
					end
				end
			end
		end
	end

	if not Ability.IsHidden(chakramReturn) and fooAllInOne.lastCastTime == 1 then
		if chakramReturn and Ability.IsCastable(chakramReturn, myMana) and (Ability.SecondsSinceLastUse(chakram) >= 1 and not NPC.HasModifier(enemy, "modifier_shredder_chakram_debuff")) or (NPC.HasModifier(enemy, "modifier_shredder_chakram_debuff") and Ability.SecondsSinceLastUse(chakram) >= 2.5) then
			Ability.CastNoTarget(chakramReturn)
			fooAllInOne.lastCastTime = 0
			return
		end
	end
	if not Ability.IsHidden(chakramAghaReturn) and fooAllInOne.lastCastTime2 == 1 then
		if chakramAghaReturn and Ability.IsCastable(chakramAghaReturn, myMana) and (Ability.SecondsSinceLastUse(chakramAgha) >= 1 and not NPC.HasModifier(enemy, "modifier_shredder_chakram_debuff")) or (NPC.HasModifier(enemy, "modifier_shredder_chakram_debuff") and Ability.SecondsSinceLastUse(chakramAgha) >= 2.5) then
			Ability.CastNoTarget(chakramAghaReturn)
			fooAllInOne.lastCastTime2 = 0
			return
		end
	end
end

function fooAllInOne.TimberSaveChakramReturn(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroTimber) then return end

	local chakramReturn = NPC.GetAbility(myHero, "shredder_return_chakram")
	local chakramAghaReturn = NPC.GetAbility(myHero, "shredder_return_chakram_2")
	
	if Menu.IsKeyDownOnce(fooAllInOne.optionComboKey)then
		if not enemy then
			if not Ability.IsHidden(chakramReturn) and fooAllInOne.lastCastTime == 1 then
				if chakramReturn and Ability.IsReady(chakramReturn) then
					Ability.CastNoTarget(chakramReturn)
					fooAllInOne.lastCastTime = 0
					return
				end
			end
			if not Ability.IsHidden(chakramAghaReturn) and fooAllInOne.lastCastTime2 == 1 then
				if chakramAghaReturn and Ability.IsReady(chakramAghaReturn) then
					Ability.CastNoTarget(chakramAghaReturn)
					fooAllInOne.lastCastTime2 = 0
					return
				end
			end
		end
	end
end

function fooAllInOne.EmberCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroEmber) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1600)	then return end

	local chains = NPC.GetAbility(myHero, "ember_spirit_searing_chains")
	local fist = NPC.GetAbility(myHero, "ember_spirit_sleight_of_fist")
	local flameGuard = NPC.GetAbility(myHero, "ember_spirit_flame_guard")
	local activeRemnant = NPC.GetAbilityByIndex(myHero, 3)
	local remnant = NPC.GetAbility(myHero, "ember_spirit_fire_remnant")
	local blink = NPC.GetItem(myHero, "item_blink", true)

	local myMana = NPC.GetMana(myHero)
	local remnantModifier = NPC.GetModifier(myHero, "modifier_ember_spirit_fire_remnant_charge_counter")

	local fistRange = 650
		if fist then
			fistRange = fistRange + Ability.GetLevelSpecialValueFor(fist, "radius")
		end
		
	fooAllInOne.itemUsage(myHero, enemy)

	local myPos = Entity.GetAbsOrigin(myHero)
	if NPC.HasModifier(myHero, "modifier_ember_spirit_sleight_of_fist_caster_invulnerability") then
		if chains and Ability.IsCastable(chains, myMana) then
			if NPC.IsEntityInRange(myHero, enemy, 85) then
				Ability.CastNoTarget(chains)
			end
		end
	end

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
		if not NPC.IsEntityInRange(myHero, enemy, fistRange) then
			if blink and Ability.IsReady(blink) and not NPC.HasModifier(myHero, "modifier_ember_spirit_sleight_of_fist_caster_invulnerability") then
				Ability.CastPosition(blink, (Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(200)))
			end
		else
			
			if fist and Ability.IsCastable(fist, myMana) then
				fooAllInOne.noItemCastFor(0.5)
				if NPC.IsEntityInRange(myHero, enemy, 650) then
					Ability.CastPosition(fist, Entity.GetAbsOrigin(enemy))
				else
					Ability.CastPosition(fist, (Entity.GetAbsOrigin(myHero) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(690)))
				end
			end

			if flameGuard and Ability.IsCastable(flameGuard, myMana) and not NPC.HasModifier(myHero, "modifier_ember_spirit_sleight_of_fist_caster_invulnerability") and NPC.HasModifier(enemy, "modifier_ember_spirit_searing_chains") then
				Ability.CastNoTarget(flameGuard)
			end
	
			if remnant and Ability.IsReady(remnant) and not NPC.HasModifier(myHero, "modifier_ember_spirit_sleight_of_fist_caster_invulnerability") and NPC.GetMana(myHero) >= Ability.GetManaCost(activeRemnant) and NPC.HasModifier(enemy, "modifier_ember_spirit_searing_chains") then
				local remnantCharges = Modifier.GetStackCount(remnantModifier)
				if Menu.GetValue(fooAllInOne.optionHeroEmberUlt) == 0 then
					if remnantCharges == 3 then
						Ability.CastPosition(remnant, Entity.GetAbsOrigin(enemy))
						Ability.CastPosition(remnant, Entity.GetAbsOrigin(enemy))
						Ability.CastPosition(remnant, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastTick = os.clock()			
					end
					if remnantCharges == 2 then
						Ability.CastPosition(remnant, Entity.GetAbsOrigin(enemy))
						Ability.CastPosition(remnant, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastTick = os.clock()
					end
					if remnantCharges == 1 then
						Ability.CastPosition(remnant, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastTick = os.clock()
					end
				end
				if Menu.GetValue(fooAllInOne.optionHeroEmberUlt) == 1 then
					if remnantCharges > 2 and fooAllInOne.SleepReady(3) then
						Ability.CastPosition(remnant, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastTick = os.clock()
					end
					if remnantCharges >= 2 and fooAllInOne.SleepReady(3) then
						Ability.CastPosition(remnant, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastTick = os.clock()
					end
				end
			end
			local remnantCharges = Modifier.GetStackCount(remnantModifier)
			if activeRemnant and remnantCharges < 3 and Ability.IsCastable(activeRemnant, myMana) and NPC.HasModifier(enemy, "modifier_ember_spirit_searing_chains") then
				for i = 1, NPCs.Count() do 
				local npc = NPCs.Get(i)
					if npc and npc ~= myHero and Entity.IsSameTeam(myHero, npc) then
						if Entity.GetOwner(myHero) == Entity.GetOwner(npc) or Entity.OwnedBy(npc, myHero) then
							if NPC.GetUnitName(npc) == "npc_dota_ember_spirit_remnant" then
								if NPC.IsEntityInRange(npc, enemy, 350) then
									Ability.CastPosition(activeRemnant, Entity.GetAbsOrigin(npc))
									break
								end
							end
						end
					end
				end
			end
		end
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end	
end

function fooAllInOne.UrsaCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroUrsa) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1200)	then return end

	local earthShock = NPC.GetAbilityByIndex(myHero, 0)
	local overPower = NPC.GetAbilityByIndex(myHero, 1)
	local enrage = NPC.GetAbilityByIndex(myHero, 3)

	local blink = NPC.GetItem(myHero, "item_blink", true)

	local myMana = NPC.GetMana(myHero)
	fooAllInOne.itemUsage(myHero, enemy)

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 then
		if overPower and Ability.IsCastable(overPower, myMana) then
			Ability.CastNoTarget(overPower)
			fooAllInOne.lastTick = os.clock()
		end
		if fooAllInOne.SleepReady(Ability.GetCastPoint(overPower)) then
			if not NPC.IsEntityInRange(myHero, enemy, 375) then
				if NPC.IsEntityInRange(myHero, enemy, 1150) then
					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy))
					return
				else
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
				if not blink or (blink and not Ability.IsReady(blink)) then
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			else
				if earthShock and Ability.IsCastable(earthShock, myMana) then
					Ability.CastNoTarget(earthShock)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		end
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
	
	for k, _ in ipairs(NPC.GetHeroesInRadius(myHero, 650, Enum.TeamType.TEAM_ENEMY)) do		
		if (Entity.GetHealth(myHero) / Entity.GetMaxHealth(myHero)) <= 0.35 and #NPC.GetHeroesInRadius(myHero, 650, Enum.TeamType.TEAM_ENEMY) >= 2 then
			if fooAllInOne.SleepReady(Ability.GetCastPoint(earthShock)) and enrage and Ability.IsCastable(enrage, myMana) then
				Ability.CastNoTarget(enrage)
				break
				return
			end
		end
	end
end

function fooAllInOne.TACombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroTA) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1500)	then return end

	local refraction = NPC.GetAbilityByIndex(myHero, 0)
	local meld = NPC.GetAbilityByIndex(myHero, 1)
	local psionicTrap = NPC.GetAbilityByIndex(myHero, 4)
	local trap = NPC.GetAbilityByIndex(myHero, 3)

	local blink = NPC.GetItem(myHero, "item_blink", true)

	local myMana = NPC.GetMana(myHero)
	fooAllInOne.itemUsage(myHero, enemy)

	local refractionModifier = NPC.GetModifier(myHero, "modifier_templar_assassin_refraction_damage")
	local meldModifier = NPC.GetModifier(myHero, "modifier_templar_assassin_meld")

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 then
		if refraction and Ability.IsCastable(refraction, myMana) then
			Ability.CastNoTarget(refraction)
		end
		if psionicTrap and Ability.IsCastable(psionicTrap, myMana) then
			Ability.CastPosition(psionicTrap, fooAllInOne.castPrediction(myHero, enemy, Ability.GetCastPoint(psionicTrap) + 0.25 + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)))
			fooAllInOne.lastTick = os.clock()
			return
		end
		if fooAllInOne.SleepReady(Ability.GetCastPoint(psionicTrap)) and trap and Ability.IsReady(trap) and Ability.SecondsSinceLastUse(psionicTrap) > 0 and Ability.SecondsSinceLastUse(psionicTrap) < 1 then
			Ability.CastNoTarget(trap)
			fooAllInOne.lastTick = os.clock()
			return
		end
		if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) then
			if fooAllInOne.SleepReady(Ability.GetCastPoint(psionicTrap)) then
				if fooAllInOne.SleepReady(0.1) and blink and Ability.IsReady(blink) and Menu.IsEnabled(fooAllInOne.optionHeroTABlink) then
					Ability.CastPosition(blink, (Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(200)))
					return
				end
				if fooAllInOne.SleepReady(0.1) and not blink or (blink and not Ability.IsReady(blink)) or not Menu.IsEnabled(fooAllInOne.optionHeroTABlink) then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(0, 0, 0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		else
			if fooAllInOne.SleepReady(Ability.GetCastPoint(psionicTrap)) and meld and Ability.IsCastable(meld, myMana) then
				fooAllInOne.noItemCastFor(0.1)
				Ability.CastNoTarget(meld)
				fooAllInOne.lastTick = os.clock()
				return
			end
			if fooAllInOne.SleepReady(0.1) and NPC.HasModifier(myHero, "modifier_templar_assassin_meld") then
				Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(0, 0, 0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end		
end

function fooAllInOne.LegionCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroLegion) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1200)	then return end

	local odds = NPC.GetAbilityByIndex(myHero, 0)
	local pressTheAttack = NPC.GetAbilityByIndex(myHero, 1)
    	local duel = NPC.GetAbilityByIndex(myHero, 3)

	local Blademail = NPC.GetItem(myHero, "item_blade_mail", true)
	local blink = NPC.GetItem(myHero, "item_blink", true)

	local myMana = NPC.GetMana(myHero)

	fooAllInOne.itemUsage(myHero, enemy)

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 then

		if not NPC.IsEntityInRange(myHero, enemy, 150) then
			if not (NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk")) then
				if blink and Ability.IsReady(blink) then
					if Blademail and Ability.IsCastable(Blademail, myMana) and Ability.IsCastable(duel, myMana) then
						Ability.CastNoTarget(Blademail)
						return
					end
					if pressTheAttack and Ability.IsCastable(pressTheAttack, myMana) then
						Ability.CastTarget(pressTheAttack, myHero)
						fooAllInOne.lastTick = os.clock()
						return
					end
					if fooAllInOne.SleepReady(Ability.GetCastPoint(pressTheAttack)) then
						Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy))
						return
					end
				end
				if not blink or (blink and not Ability.IsReady(blink)) then
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(0, 0, 0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
			if NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk") then
				if fooAllInOne.SleepReady(0.1) then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(0, 0, 0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		else
			if NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk") then
				if fooAllInOne.SleepReady(0.1) then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(0, 0, 0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
					fooAllInOne.lastTick = os.clock()
					return
				end
			else	
				if Blademail and Ability.IsCastable(Blademail, myMana) and Ability.IsCastable(duel, myMana) then
					Ability.CastNoTarget(Blademail)
					return
				end
				if pressTheAttack and Ability.IsCastable(pressTheAttack, myMana) then
					Ability.CastTarget(pressTheAttack, myHero)
					fooAllInOne.lastTick = os.clock()
					return
				end
				if fooAllInOne.SleepReady(Ability.GetCastPoint(pressTheAttack)) then
					if NPC.IsLinkensProtected(enemy) then
						if fooAllInOne.LinkensBreakerNew(myHero) ~= nil then
							Ability.CastTarget(NPC.GetItem(myHero, fooAllInOne.LinkensBreakerNew(myHero), true), enemy)
							return
						end
					else
						if duel and Ability.IsCastable(duel, myMana) then
							Ability.CastTarget(duel, enemy)
							return
						end
					end
				end
			end
		end
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
end

function fooAllInOne.SlardarCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroSlardar) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1200)	then return end

	local sprint = NPC.GetAbilityByIndex(myHero, 0)
	local crush = NPC.GetAbilityByIndex(myHero, 1)
	local haze = NPC.GetAbilityByIndex(myHero, 3)

	local blink = NPC.GetItem(myHero, "item_blink", true)

	local myMana = NPC.GetMana(myHero)
	fooAllInOne.itemUsage(myHero, enemy)

	local crushRadius = 300
		if NPC.IsRunning(enemy) then
			crushRadius = 200
		end


	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 then
		if not NPC.IsEntityInRange(myHero, enemy, crushRadius) then
			if not (NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk")) then
				if blink and Ability.IsReady(blink) then
					if Menu.GetValue(fooAllInOne.optionHeroSlardarStyle) == 0 then
						Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy))
						return
					else
						Ability.CastPosition(blink, fooAllInOne.getBestPosition(NPCs.InRadius(Entity.GetAbsOrigin(enemy), 350, Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY), 330))
						return
					end
				end
				if not blink or (blink and not Ability.IsReady(blink)) then
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(0, 0, 0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
			if NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk") then
				if fooAllInOne.SleepReady(0.1) then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(0, 0, 0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		else
			
			if NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk") then
				if fooAllInOne.SleepReady(0.1) then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(0, 0, 0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
					fooAllInOne.lastTick = os.clock()
					return
				end
			else
				
				if crush and Ability.IsCastable(crush, myMana) and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
					Ability.CastNoTarget(crush)
					fooAllInOne.lastTick = os.clock()
					return
				end
				if fooAllInOne.SleepReady(Ability.GetCastPoint(crush)) and NPC.IsLinkensProtected(enemy) then
					if fooAllInOne.LinkensBreakerNew(myHero) ~= nil then
						Ability.CastTarget(NPC.GetItem(myHero, fooAllInOne.LinkensBreakerNew(myHero), true), enemy)
						return
					end
				end
				if fooAllInOne.SleepReady(Ability.GetCastPoint(crush)) and haze and Ability.IsCastable(haze, myMana) and NPC.HasModifier(enemy, "modifier_stunned") then
					Ability.CastTarget(haze, enemy)
					return
				end
				if not NPC.IsStunned(enemy) and not Ability.IsReady(crush) then
					if NPC.GetMoveSpeed(enemy) + 20 > NPC.GetMoveSpeed(myHero) then
						if sprint and Ability.IsCastable(sprint, myMana) then
							Ability.CastNoTarget(sprint)
							return
						end
					end
				end
			end
		end
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
end

function fooAllInOne.ClinkzCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroClinkz) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1500)	then return end

	local strafe = NPC.GetAbilityByIndex(myHero, 0)
	local searingArrows = NPC.GetAbilityByIndex(myHero, 1)
	local skeletonWalk = NPC.GetAbilityByIndex(myHero, 2)
	local deathPact = NPC.GetAbilityByIndex(myHero, 3)

	local myMana = NPC.GetMana(myHero)

	fooAllInOne.itemUsage(myHero, enemy)
	
	local clinkzAttackRange = NPC.GetAttackRange(myHero)
		if NPC.HasModifier(myHero, "modifier_item_dragon_lance") then
			clinkzAttackRange = clinkzAttackRange + 140
		end
	
	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 then
		if NPC.IsEntityInRange(myHero, enemy, clinkzAttackRange) then
			if strafe and Ability.IsCastable(strafe, myMana) then
				Ability.CastNoTarget(strafe)
			end
		end
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end					
end

function fooAllInOne.ClinkzAutoUlt(myHero)

	if not Menu.IsEnabled(fooAllInOne.optionHeroClinkz) then return end
	if (os.clock() - fooAllInOne.lastTick) < fooAllInOne.delay then return end

	AncientNameList = { "npc_dota_neutral_black_drake",
    				"npc_dota_neutral_black_dragon",
    				"npc_dota_neutral_blue_dragonspawn_sorcerer",
    				"npc_dota_neutral_blue_dragonspawn_overseer",
    				"npc_dota_neutral_granite_golem",
    				"npc_dota_neutral_elder_jungle_stalker",
    				"npc_dota_neutral_prowler_acolyte",
    				"npc_dota_neutral_prowler_shaman",
    				"npc_dota_neutral_rock_golem",
    				"npc_dota_neutral_small_thunder_lizard",
    				"npc_dota_neutral_jungle_stalker",
    				"npc_dota_neutral_big_thunder_lizard",
    				"npc_dota_roshan" }

	local deathPact = NPC.GetAbilityByIndex(myHero, 3)

	local myMana = NPC.GetMana(myHero)

	local maxHPcreep
	local maxHP = 0
	local ancientChecker = false
	for _, creeps in ipairs(NPC.GetUnitsInRadius(myHero, 380, Enum.TeamType.TEAM_ENEMY)) do
		if creeps then
			if Entity.IsHero(creeps) then 
				return 
			end
			local creepName = NPC.GetUnitName(creeps)
			for _, ancientName in ipairs(AncientNameList) do
				if creepName ~= nil then	
					if creepName == ancientName then 
						ancientChecker = true
					end
				end
			end
      			if not ancientChecker and (NPC.IsCreep(creeps) or NPC.IsLaneCreep(creeps)) and Entity.GetMaxHealth(creeps) >= 550 and Entity.GetHealth(creeps) >= maxHP then
           			maxHPcreep = creeps
            			maxHP = Entity.GetMaxHealth(creeps)
        		end
   		end
	end

	if next(NPC.GetUnitsInRadius(myHero, 380, Enum.TeamType.TEAM_ENEMY)) == nil then
		maxHP = 0
	end

	if maxHPcreep and deathPact and Ability.IsCastable(deathPact, myMana) and not NPC.IsChannellingAbility(myHero) and not NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) and not NPC.HasModifier(myHero, "modifier_clinkz_death_pact") then
		Ability.CastTarget(deathPact, maxHPcreep)
		fooAllInOne.makeDelay(Ability.GetCastPoint(deathPact))
		return
	end

end

function fooAllInOne.QoPCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroQoP) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1200)	then return end

	local shadowStrike = NPC.GetAbilityByIndex(myHero, 0)
	local qopBlink = NPC.GetAbilityByIndex(myHero, 1)
	local screamOfPain = NPC.GetAbilityByIndex(myHero, 2)
	local sonicWave = NPC.GetAbilityByIndex(myHero, 3)

	local aghanims = NPC.GetItem(myHero, "item_ultimate_scepter", true)

	local myMana = NPC.GetMana(myHero)

	fooAllInOne.itemUsage(myHero, enemy)

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
		if not NPC.IsEntityInRange(myHero, enemy, 425) then
			if Menu.IsEnabled(fooAllInOne.optionHeroQoPblink) then
				if qopBlink and Ability.IsCastable(qopBlink, myMana) then
					Ability.CastPosition(qopBlink, (Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(350)))
					fooAllInOne.lastTick = os.clock()
					return
				end
				if not qopBlink or (qopBlink and not Ability.IsReady(qopBlink)) then
					if fooAllInOne.SleepReady(0.5) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			else
				if fooAllInOne.SleepReady(0.5) then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end		
		else
			if fooAllInOne.SleepReady(0.1) and screamOfPain and Ability.IsCastable(screamOfPain, myMana) then
				Ability.CastNoTarget(screamOfPain)
				return
			end
			if fooAllInOne.SleepReady(0.1) and shadowStrike and Ability.IsCastable(shadowStrike, myMana) then
				Ability.CastTarget(shadowStrike, enemy)
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end

	if aghanims or NPC.HasModifier(myHero, "modifier_item_ultimate_scepter_consumed") then
		if NPC.IsEntityInRange(myHero, enemy, 1000) then
			if sonicWave and Ability.IsCastable(sonicWave, myMana) then
				if Entity.GetHealth(enemy) <= Ability.GetLevelSpecialValueFor(sonicWave, "damage_scepter") then
					Ability.CastPosition(sonicWave, (Entity.GetAbsOrigin(myHero) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(600)))
				end
			end
		end
	end
end

function fooAllInOne.SvenCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroSven) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1200)	then return end

	local stormHammer = NPC.GetAbilityByIndex(myHero, 0)
	local warCry = NPC.GetAbilityByIndex(myHero, 2)
	local godsStrength = NPC.GetAbilityByIndex(myHero, 3)

	local blink = NPC.GetItem(myHero, "item_blink", true)
	local maskOfMadness = NPC.GetItem(myHero, "item_mask_of_madness", true)

	local myMana = NPC.GetMana(myHero)

	fooAllInOne.itemUsage(myHero, enemy)

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 then
		if not NPC.IsEntityInRange(myHero, enemy, 150) then
			if not (NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk")) then
				if blink and Ability.IsReady(blink) then
					if warCry and Ability.IsCastable(warCry, myMana) then
						Ability.CastNoTarget(warCry)
						return
					end
					if godsStrength and Ability.IsCastable(godsStrength, myMana) then
						Ability.CastNoTarget(godsStrength)
						fooAllInOne.lastTick = os.clock()
						return
					end
					if fooAllInOne.SleepReady(0.05) then
						Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy))
						return
					end
				end
				if not blink or (blink and not Ability.IsReady(blink)) then
					if stormHammer and Ability.IsCastable(stormHammer, myMana) and not (NPC.IsLinkensProtected(enemy) or NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE)) then
						Ability.CastTarget(stormHammer, enemy)
						return
					end
				end
			end
			if NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk") then
				if fooAllInOne.SleepReady(0.1) then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(0, 0, 0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		else
			if not (NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk")) then
				
				if stormHammer and Ability.IsCastable(stormHammer, myMana) and not (NPC.IsLinkensProtected(enemy) or NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE)) then
					Ability.CastTarget(stormHammer, enemy)
					fooAllInOne.lastTick = os.clock()
					return
				end
				if fooAllInOne.SleepReady(Ability.GetCastPoint(stormHammer)) and warCry and Ability.IsCastable(warCry, myMana) then
					Ability.CastNoTarget(warCry)
					return
				end
				if fooAllInOne.SleepReady(Ability.GetCastPoint(stormHammer)) and godsStrength and Ability.IsCastable(godsStrength, myMana) then
					Ability.CastNoTarget(godsStrength)
					fooAllInOne.lastTick = os.clock()
					return
				end
				if NPC.IsLinkensProtected(enemy) then
					if fooAllInOne.LinkensBreakerNew(myHero) ~= nil then
						Ability.CastTarget(NPC.GetItem(myHero, fooAllInOne.LinkensBreakerNew(myHero), true), enemy)
						return
					end
				end
				if not (Ability.IsCastable(stormHammer, myMana) and Ability.IsCastable(warCry, myMana) and Ability.IsCastable(godsStrength, myMana)) then
					if fooAllInOne.SleepReady(0.3) and maskOfMadness and Ability.IsCastable(maskOfMadness, myMana) then
						Ability.CastNoTarget(maskOfMadness)
						return
					end
				end
			end
		end
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
end

function fooAllInOne.VisageCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroVisage) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1500)	then return end

	local graveChill = NPC.GetAbilityByIndex(myHero, 0)
	local soulAssumption = NPC.GetAbilityByIndex(myHero, 1)
	local soulMaxStacks = Ability.GetLevelSpecialValueFor(soulAssumption, "stack_limit")
	local myMana = NPC.GetMana(myHero)

	local soulModifier = NPC.GetModifier(myHero, "modifier_visage_soul_assumption")
	local soulStackCounter 
		if soulModifier then
			soulStackCounter = Modifier.GetStackCount(soulModifier)
		end
	
	local familiars = NPC.GetAbilityByIndex(myHero, 3)
	local familiarsLevel = Ability.GetLevel(familiars)

	local familiarEntityTable = {}
	for _, npc in ipairs(NPC.GetUnitsInRadius(myHero, 99999, Enum.TeamType.TEAM_FRIEND)) do
		if familiars then
			if npc and npc ~= myHero then
				if (Entity.GetOwner(myHero) == Entity.GetOwner(npc) or Entity.OwnedBy(npc, myHero)) then
					if NPC.GetUnitName(npc) == "npc_dota_visage_familiar" .. familiarsLevel then
						if not (NPC.HasModifier(npc, "modifier_visage_summonfamiliars_timer") or NPC.HasModifier(npc, "modifier_rooted")) then
							if Entity.IsAlive(npc) then
								if npc ~= nil then
									table.insert(familiarEntityTable, npc)
								end
							end
						end
					end
				end
			end
		end
	end

	if next(familiarEntityTable) ~= nil then

		for _, familiarAttack in ipairs(familiarEntityTable) do
			if Menu.IsKeyDown(fooAllInOne.optionComboKey) then
				if familiarAttack and not NPC.IsEntityInRange(familiarAttack, enemy, NPC.GetAttackRange(familiarAttack)) then
					fooAllInOne.GenericAttackIssuer2("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, familiarAttack)
				end
			end
		end

		for _, familiarStun in ipairs(familiarEntityTable) do
			if Menu.IsKeyDown(fooAllInOne.optionComboKey) then
				if familiarStun and (os.clock() - fooAllInOne.ControlledUnitCastTime) >= (Ability.GetLevelSpecialValueForFloat(NPC.GetAbilityByIndex(familiarStun, 0), "stun_duration") - 0.1 - NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING)) then
					fooAllInOne.VisageFamiliarControl(myHero, enemy, familiarStun, soulAssumption, soulMaxStacks, soulStackCounter, NPC.GetAbilityByIndex(familiarStun, 0), myMana)
					break
				end
			end
		end
	end
	

	fooAllInOne.itemUsage(myHero, enemy)

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
		if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) then
			if fooAllInOne.SleepReady(0.2) then
				Player.AttackTarget(Players.GetLocal(), myHero, enemy)
				fooAllInOne.lastTick = os.clock()
			end
		else
			if graveChill and Ability.IsCastable(graveChill, myMana) then
				Ability.CastTarget(graveChill, enemy)
				fooAllInOne.lastTick = os.clock()
			end
			if fooAllInOne.SleepReady(Ability.GetCastPoint(graveChill)) and soulAssumption and Ability.IsCastable(soulAssumption, myMana) then
				if soulMaxStacks <= soulStackCounter then
					Ability.CastTarget(soulAssumption, enemy)
				end
			end
			if not Ability.IsReady(graveChill) then
				if not Ability.IsReady(soulAssumption) or soulStackCounter < soulMaxStacks then
					if fooAllInOne.SleepReady(0.2) then
						Player.AttackTarget(Players.GetLocal(), myHero, enemy)
						fooAllInOne.lastTick = os.clock()
					end
				end
			end	
		end
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
end

function fooAllInOne.VisageFamiliarControl(myHero, enemy, familiarEntity, soulAssumption, soulMaxStacks, soulStackCounter, stoneForm, myMana)

	if not familiarEntity then return end
	if not Entity.IsAlive(familiarEntity) then return end

	local familiarDMGmod = NPC.GetModifier(familiarEntity, "modifier_visage_summon_familiars_damage_charge")
	local familiarDMGcharges 
		if familiarDMGmod then
			familiarDMGcharges  = Modifier.GetStackCount(familiarDMGmod)
		end

	local stunRange = 300
		if NPC.IsRunning(enemy) then
			stunRange = 50
		end

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
			if stoneForm and Ability.IsReady(stoneForm) then
				if familiarDMGcharges < Menu.GetValue(fooAllInOne.optionHeroVisageDMGStacks) then
					if not NPC.HasModifier(enemy, "modifier_rooted") or not NPC.HasModifier(enemy, "modifier_sheepstick_debuff") then
						if NPC.IsEntityInRange(familiarEntity, enemy, stunRange) then
							fooAllInOne.ControlledUnitCastTime = os.clock()
							Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_NO_TARGET, enemy, Vector(0,0,0), stoneForm, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, familiarEntity)
							return
						else
							if os.clock() - fooAllInOne.lastCastTime2 > 0.1 then
								Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy) + Entity.GetRotation(enemy):GetForward():Normalized():Scaled(75), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, familiarEntity)
								fooAllInOne.lastCastTime2 = os.clock()
								return
							end
						end
					end
				end
			end
		if soulAssumption and Ability.IsCastable(soulAssumption, myMana) and NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)-50) then
			if soulMaxStacks <= soulStackCounter then
				Ability.CastTarget(soulAssumption, enemy)
			end
		end
	end
end

function fooAllInOne.ArcWardenCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroArcWarden) then return end

	local flux = NPC.GetAbilityByIndex(myHero, 0)
	local magneticField = NPC.GetAbilityByIndex(myHero, 1)
	local sparkWraith = NPC.GetAbilityByIndex(myHero, 2)
	local tempestDouble = NPC.GetAbilityByIndex(myHero, 3)

	local dragonLance = NPC.GetItem(myHero, "item_dragon_lance", true)
	local hurricanePike = NPC.GetItem(myHero, "item_hurricane_pike", true)
	local arcWardenAttackRange = NPC.GetAttackRange(myHero)
	if dragonLance or hurricanePike then
		arcWardenAttackRange = NPC.GetAttackRange(myHero) + 140
	end

	local myMana = NPC.GetMana(myHero)
	
	for i = 1, NPCs.Count() do
        local npc = NPCs.Get(i)
		if tempestDouble then
			if npc and npc ~= myHero then
				if NPC.GetUnitName(npc) == "npc_dota_hero_arc_warden" then
					if NPC.HasModifier(npc, "modifier_arc_warden_tempest_double") then
						if npc ~= nil then
							if Entity.IsAlive(npc) then
								fooAllInOne.TempestDoubleHandler(myHero, enemy, npc, tempestDouble, myMana, arcWardenAttackRange)
							end
						end
					end
				end
			end
		end
	end

	local necronomicon = NPC.GetItem(myHero, "item_necronomicon", true)
	if not necronomicon then
		for i = 2, 3 do
			necronomicon = NPC.GetItem(myHero, "item_necronomicon_" .. i, true)
			if necronomicon then 
				break 
			end
		end
	end

	fooAllInOne.itemUsage(myHero, enemy)
	
	if Menu.IsKeyDown(fooAllInOne.optionArcWardenTempestKey) then
		if tempestDouble and Ability.IsCastable(tempestDouble, myMana) then
			Ability.CastNoTarget(tempestDouble)
			return
		end
	end

	if Menu.IsEnabled(fooAllInOne.optionHeroArcWardenTempest) then
		if Menu.IsKeyDown(fooAllInOne.optionArcWardenPushKey) then
			if fooAllInOne.ArcWardenPort(myHero) ~= nil then
				if tempestDouble and Ability.IsCastable(tempestDouble, myMana) then
					Ability.CastNoTarget(tempestDouble)
					return
				end
			end
		end
	end
	
	if enemy and NPC.IsEntityInRange(myHero, enemy, 1200) then
		if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 then
			if not NPC.IsEntityInRange(myHero, enemy, arcWardenAttackRange - 25) then
				if fooAllInOne.SleepReady(0.2) then
					if not (NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk")) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, NPC.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
					end
					if NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk") then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(0,0,0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
					end
				end
			else
				if fooAllInOne.SleepReady(0.2) and NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk") then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(0,0,0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
					fooAllInOne.noItemCastFor(0.3)
					fooAllInOne.lastTick = os.clock()
				end
				if not (NPC.HasModifier(myHero, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(myHero, "modifier_item_silver_edge_windwalk")) then
					
					if tempestDouble and Ability.IsCastable(tempestDouble, myMana) then
						Ability.CastNoTarget(tempestDouble)
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.noItemCastFor(0.3)
						return
					end
				
					if fooAllInOne.SleepReady(0.2) and flux and Ability.IsCastable(flux, myMana) and #NPC.GetHeroesInRadius(enemy, 225, Enum.TeamType.TEAM_FRIEND) < 1 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
						Ability.CastTarget(flux, enemy)
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.noItemCastFor(0.3)
						return
					end
					
					if Menu.IsEnabled(fooAllInOne.optionHeroArcWardenMagnetic) and fooAllInOne.SleepReady(0.2) and magneticField and Ability.IsCastable(magneticField, myMana) then
						Ability.CastPosition(magneticField, Entity.GetAbsOrigin(myHero))
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.noItemCastFor(0.3)
						return
					end
					if fooAllInOne.SleepReady(0.2) and sparkWraith and Ability.IsCastable(sparkWraith, myMana) and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
						local sparkPrediction = 2.3 + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
						Ability.CastPosition(sparkWraith, fooAllInOne.castPrediction(myHero, enemy, sparkPrediction))
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.noItemCastFor(0.3)
						return
					end
					if necronomicon and Ability.IsCastable(necronomicon, myMana) then
						Ability.CastNoTarget(necronomicon)
					end
					if fooAllInOne.SleepReady(0.2) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(0,0,0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, myHero)
						fooAllInOne.lastTick = os.clock()
						return
					end
					for _, necro in ipairs(fooAllInOne.GetNecronomiconEntityTable(myHero, myHero)) do
						fooAllInOne.NecronomiconController(necro, enemy, nil)
					end
					if #fooAllInOne.GetIllusionEntityTable(myHero, myHero) > 0 then
						fooAllInOne.MantaIlluController(enemy, nil, myHero, myHero)
					end
				end
			end	
		end
	end	
end

function fooAllInOne.TempestDoubleHandler(myHero, enemy, tempestDoubleEntity, tempestDouble, myMana, arcWardenAttackRange)
	
	if not tempestDoubleEntity then return end
	if not Entity.IsAlive(tempestDoubleEntity) then return end
	if tempestDoubleEntity == myHero then return end
	if os.clock() - fooAllInOne.ControlledUnitPauseTime < 3.1 then return end

	if tempestDoubleEntity then
		fooAllInOne.ArcWardenEntity = tempestDoubleEntity
	end

	local travelBoots1 = NPC.GetItem(tempestDoubleEntity, "item_travel_boots", true)
	local travelBoots2 = NPC.GetItem(tempestDoubleEntity, "item_travel_boots_2", true)
	local wardenMana = NPC.GetMana(tempestDoubleEntity)

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) then
		if enemy and Entity.GetHealth(enemy) > 0 then
			fooAllInOne.ArcWardenFight(myHero, enemy, tempestDoubleEntity, arcWardenAttackRange)
		end
	end

	if Menu.IsKeyDown(fooAllInOne.optionArcWardenTempestKey) then
		fooAllInOne.ArcWardenDoubleCombo(myHero, tempestDoubleEntity, enemy, arcWardenAttackRange)
	end

	if Menu.IsEnabled(fooAllInOne.optionHeroArcWardenTempest) then
		if Menu.IsKeyDown(fooAllInOne.optionArcWardenPushKey) then
			if fooAllInOne.ArcWardenPort(myHero) ~= nil then
				if travelBoots1 and Ability.IsCastable(travelBoots1, wardenMana) then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_POSITION, target, fooAllInOne.ArcWardenPort(myHero), travelBoots1, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
					fooAllInOne.ControlledUnitPauseTime = os.clock()
					return
				end
				if travelBoots2 and Ability.IsCastable(travelBoots2, wardenMana) then
					Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_POSITION, target, fooAllInOne.ArcWardenPort(myHero), travelBoots2, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
					fooAllInOne.ControlledUnitPauseTime = os.clock()
					return
				end
			end
		end
	end
			
	if not Menu.IsKeyDown(fooAllInOne.optionArcWardenTempestKey) then
		if not NPC.HasModifier(tempestDoubleEntity ,"modifier_teleporting") then
			if NPC.HasItem(myHero, "item_travel_boots", true) or NPC.HasItem(myHero, "item_travel_boots_2", true) then
				if not ((travelBoots1 and Ability.IsReady(travelBoots1)) or (travelBoots2 and Ability.IsReady(travelBoots2))) then
					fooAllInOne.ArcWardenTPPush(myHero, tempestDoubleEntity, arcWardenAttackRange)
				end
			end
		end
	end

	if not NPC.HasModifier(tempestDoubleEntity ,"modifier_teleporting") then
		if not Menu.IsKeyDown(fooAllInOne.optionArcWardenPushKey) then
			fooAllInOne.utilityItemMidas(tempestDoubleEntity, NPC.GetItem(tempestDoubleEntity, "item_hand_of_midas", true), 40)
		end
	end
end	

function fooAllInOne.ArcWardenFight(myHero, enemy, tempestDoubleEntity, arcWardenAttackRange)

	if not tempestDoubleEntity then return end
	if not enemy then return end
	if not Entity.IsAlive(tempestDoubleEntity) then return end
	if tempestDoubleEntity == myHero then return end

	local flux = NPC.GetAbilityByIndex(tempestDoubleEntity, 0)
	local magneticField = NPC.GetAbilityByIndex(tempestDoubleEntity, 1)
	local sparkWraith = NPC.GetAbilityByIndex(tempestDoubleEntity, 2)

	local blink = NPC.GetItem(tempestDoubleEntity, "item_blink", true)
	local silverEdge = NPC.GetItem(tempestDoubleEntity, "item_silver_edge", true)
	local bkb = NPC.GetItem(tempestDoubleEntity, "item_black_king_bar", true)

	local diffusalBlade = NPC.GetItem(tempestDoubleEntity, "item_diffusal_blade", true)
	if not diffusalBlade then
		for i = 2, 2 do
			diffusalBlade = NPC.GetItem(tempestDoubleEntity, "item_diffusal_blade_" .. i, true)
			if diffusalBlade then 
				break 
			end
		end
	end

	local necronomicon = NPC.GetItem(tempestDoubleEntity, "item_necronomicon", true)
	if not necronomicon then
		for i = 2, 3 do
			necronomicon = NPC.GetItem(tempestDoubleEntity, "item_necronomicon_" .. i, true)
			if necronomicon then 
				break 
			end
		end
	end	 

	local wardenMana = NPC.GetMana(tempestDoubleEntity)

	if silverEdge and Ability.IsCastable(silverEdge, wardenMana) then
		Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_NO_TARGET, target, Vector(0,0,0), silverEdge, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
		fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "silverEdge", "DOTA_UNIT_ORDER_CAST_NO_TARGET")
		fooAllInOne.noItemCastFor(0.5)
	end

	fooAllInOne.itemUsage(tempestDoubleEntity, enemy)

	if not NPC.IsEntityInRange(tempestDoubleEntity, enemy, arcWardenAttackRange - 25) then
		if blink and Ability.IsReady(blink) then
			Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_POSITION, target, (Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(250)), blink, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
			fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "blink", "DOTA_UNIT_ORDER_CAST_POSITION")
		end
		if not blink or (blink and not Ability.IsReady(blink)) then
			fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, NPC.GetAbsOrigin(enemy), tempestDoubleEntity)
		end
	else
		
		if NPC.HasModifier(tempestDoubleEntity, "modifier_item_silver_edge_windwalk") then
			fooAllInOne.noItemCastFor(0.3)
			Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET, enemy, Vector(0,0,0), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
			fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "attack", "DOTA_UNIT_ORDER_ATTACK_TARGET")
			return
		end
			
		if (os.clock() - fooAllInOne.ControlledUnitCastTime) > fooAllInOne.GetAvgLatency() and diffusalBlade and Ability.IsReady(diffusalBlade) and Item.GetCurrentCharges(diffusalBlade) >= 1 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
			Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_TARGET, enemy, Vector(0,0,0), diffusalBlade, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
			fooAllInOne.ControlledUnitCastTime = os.clock()
			fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "diffusalBlade", "DOTA_UNIT_ORDER_CAST_TARGET")
		end
		if (os.clock() - fooAllInOne.ControlledUnitCastTime) > fooAllInOne.GetAvgLatency() and necronomicon and Ability.IsCastable(necronomicon, wardenMana) then
			Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_NO_TARGET, target, Vector(0,0,0), necronomicon, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
			fooAllInOne.ControlledUnitCastTime = os.clock()
			fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "necrobook", "DOTA_UNIT_ORDER_CAST_NO_TARGET")
		end
		if (os.clock() - fooAllInOne.ControlledUnitCastTime) > fooAllInOne.GetAvgLatency() and bkb and Ability.IsReady(bkb) then
			Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_NO_TARGET, target, Vector(0,0,0), bkb, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
			fooAllInOne.ControlledUnitCastTime = os.clock()
			fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "bkb", "DOTA_UNIT_ORDER_CAST_NO_TARGET")
		end		
	
		if (os.clock() - fooAllInOne.ControlledUnitCastTime) > fooAllInOne.CastAnimationDelay(flux) and flux and Ability.IsCastable(flux, wardenMana) and #NPC.GetHeroesInRadius(enemy, 225, Enum.TeamType.TEAM_FRIEND) < 1 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
			Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_TARGET, enemy, Vector(0,0,0), flux, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
			fooAllInOne.ControlledUnitCastTime = os.clock()
			fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "flux", "DOTA_UNIT_ORDER_CAST_TARGET")
			return
		end
		if (os.clock() - fooAllInOne.ControlledUnitCastTime) > fooAllInOne.CastAnimationDelay(magneticField) and magneticField and Ability.IsCastable(magneticField, wardenMana) and not NPC.HasModifier(tempestDoubleEntity, "modifier_arc_warden_magnetic_field") and not Ability.IsInAbilityPhase(NPC.GetAbilityByIndex(myHero, 1)) then
			Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_POSITION, target, Entity.GetAbsOrigin(tempestDoubleEntity) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(tempestDoubleEntity)):Normalized():Scaled(50), magneticField, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
			fooAllInOne.ControlledUnitCastTime = os.clock()
			fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "magneticField", "DOTA_UNIT_ORDER_CAST_POSITION")
			return
		end
		if (os.clock() - fooAllInOne.ControlledUnitCastTime) > fooAllInOne.CastAnimationDelay(sparkWraith) and sparkWraith and Ability.IsCastable(sparkWraith, wardenMana) and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
			local sparkPrediction = 2.3 + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
			Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_POSITION, target, fooAllInOne.castPrediction(tempestDoubleEntity, enemy, sparkPrediction), sparkWraith, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
			fooAllInOne.ControlledUnitCastTime = os.clock()
			fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "sparkWraith", "DOTA_UNIT_ORDER_CAST_POSITION")
			return
		end
		if (os.clock() - fooAllInOne.ControlledUnitCastTime) > 0.5 then
			fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, tempestDoubleEntity)
		end

		for _, necro in ipairs(fooAllInOne.GetNecronomiconEntityTable(myHero, tempestDoubleEntity)) do
			fooAllInOne.NecronomiconController(necro, enemy, nil)
		end

		if #fooAllInOne.GetIllusionEntityTable(myHero, tempestDoubleEntity) > 0 then
			fooAllInOne.MantaIlluController(enemy, nil, myHero, tempestDoubleEntity)
		end
	end
end
	
function fooAllInOne.ArcWardenPort(myHero)

	if not Menu.IsEnabled(fooAllInOne.optionHeroArcWardenPush) then return end

	local enemyFountainPos = fooAllInOne.GetEnemyFountainPos(myHero)
	local myFountainPos = fooAllInOne.GetMyFountainPos(myHero)

	if Menu.GetValue(fooAllInOne.optionHeroArcWardenPushTPStyle) == 1 then
		local targetCreep
		local maxDistance = 99999
		if NPC.HasItem(myHero, "item_travel_boots", true) or NPC.HasItem(myHero, "item_travel_boots_2", true) then
			for i = 1, NPCs.Count() do 
			local npc = NPCs.Get(i)
    				if npc and Entity.IsSameTeam(myHero, npc) and Entity.IsAlive(npc) and NPC.IsLaneCreep(npc) and NPC.IsRanged(npc) and not NPC.IsDormant(npc) and not NPC.IsWaitingToSpawn(npc) then
					if npc ~= nil then
						local creepPosition = Entity.GetAbsOrigin(npc)
						local distanceToMouse = (creepPosition - Input.GetWorldCursorPos()):Length2D()
						if distanceToMouse < maxDistance then
							targetCreep = npc
							maxDistance = distanceToMouse
						end
					end
				end
			end
		end

		if targetCreep == nil then
			maxDistance = 99999
		end

		if targetCreep then
			return Entity.GetAbsOrigin(targetCreep)
		end
	end	

	if Menu.GetValue(fooAllInOne.optionHeroArcWardenPushTPStyle) == 0 then
		local targetCreep
		local pushDistance = 99999
		if NPC.HasItem(myHero, "item_travel_boots", true) or NPC.HasItem(myHero, "item_travel_boots_2", true) then
			for i = 1, NPCs.Count() do 
			local npc = NPCs.Get(i)
    				if npc and Entity.IsSameTeam(myHero, npc) and NPC.IsLaneCreep(npc) and NPC.IsRanged(npc) and not NPC.IsDormant(npc) and not NPC.IsWaitingToSpawn(npc) then
					if #NPC.GetUnitsInRadius(npc, 1200, Enum.TeamType.TEAM_ENEMY) >= 3 and #NPC.GetHeroesInRadius(npc, 900, Enum.TeamType.TEAM_ENEMY) <= 1  and #NPC.GetHeroesInRadius(npc, 1000, Enum.TeamType.TEAM_FRIEND) <= 1 then
						if (Entity.GetHealth(npc) / Entity.GetMaxHealth(npc)) >= 0.8 and #NPC.GetUnitsInRadius(npc, 500, Enum.TeamType.TEAM_FRIEND) >= 2 then	
							if npc ~= nil then
								if (Entity.GetAbsOrigin(npc) - Entity.GetAbsOrigin(myHero)):Length2D() > 3000 then
									if Menu.GetValue(fooAllInOne.optionHeroArcWardenPushTPSelect) == 0 then
										if (Entity.GetAbsOrigin(npc) - enemyFountainPos):Length2D() < pushDistance then
											targetCreep = npc
											pushDistance = (Entity.GetAbsOrigin(npc) - enemyFountainPos):Length2D()
											break
										end
									end
									if Menu.GetValue(fooAllInOne.optionHeroArcWardenPushTPSelect) == 1 then
										if (Entity.GetAbsOrigin(npc) - myFountainPos):Length2D() < pushDistance then
											targetCreep = npc
											pushDistance = (Entity.GetAbsOrigin(npc) - myFountainPos):Length2D()
											break
										end
									end
								end
							end
						end
					end
				end
			end
		end

		if targetCreep == nil then
			pushDistance = 99999
		end

		if targetCreep ~= nil then
			return Entity.GetAbsOrigin(targetCreep)
		end
	end
end

function fooAllInOne.ArcWardenDoubleCombo(myHero, tempestDoubleEntity, enemy, arcWardenAttackRange)

	if not tempestDoubleEntity then return end
	if not Entity.IsAlive(tempestDoubleEntity) then return end
	if tempestDoubleEntity == myHero then return end

	local wardenMana = NPC.GetMana(tempestDoubleEntity)

	fooAllInOne.utilityItemMidas(tempestDoubleEntity, NPC.GetItem(tempestDoubleEntity, "item_hand_of_midas", true), 40)

	local necronomicon = NPC.GetItem(tempestDoubleEntity, "item_necronomicon", true)
	if not necronomicon then
		for i = 2, 3 do
			necronomicon = NPC.GetItem(tempestDoubleEntity, "item_necronomicon_" .. i, true)
			if necronomicon then 
				break 
			end
		end
	end

	if (os.clock() - fooAllInOne.ControlledUnitCastTime) > fooAllInOne.GetAvgLatency() and necronomicon and Ability.IsCastable(necronomicon, wardenMana) then
		Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_NO_TARGET, target, Vector(0,0,0), necronomicon, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
		fooAllInOne.ControlledUnitCastTime = os.clock()
		fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "necronomicon", "DOTA_UNIT_ORDER_CAST_NO_TARGET")
	end

	local targetHero
	local enemyHeroHealth = 99999
	local targetCreep
	local enemyCreepHealth = 99999

	if enemy and NPC.IsPositionInRange(enemy, Input.GetWorldCursorPos(), 200, 0) then
		targetHero = enemy
	else targetHero = nil
	end
	if not targetHero then
		for i, heroes in ipairs(NPC.GetHeroesInRadius(tempestDoubleEntity, 1499, Enum.TeamType.TEAM_ENEMY)) do
			if heroes then
        			if Entity.IsAlive(heroes) and not Entity.IsDormant(heroes) and not NPC.IsIllusion(heroes) then
					if NPC.IsPositionInRange(heroes, Input.GetWorldCursorPos(), 200, 0) then
						targetHero = heroes
						enemyHeroHealth = 99999
					else
						if Entity.GetHealth(heroes) < enemyHeroHealth then
							targetHero = heroes
							enemyHeroHealth = Entity.GetHealth(heroes)
						end
					end
				end
			end
		end
		if #NPC.GetHeroesInRadius(tempestDoubleEntity, 1499, Enum.TeamType.TEAM_ENEMY) < 1 then
			for i = 1, NPCs.Count() do 
			local creeps = NPCs.Get(i)
				if creeps and not Entity.IsSameTeam(myHero, creeps) then
					if NPC.IsEntityInRange(tempestDoubleEntity, creeps, 1499) then
						if Entity.IsAlive(creeps) and not Entity.IsDormant(creeps) and NPC.IsKillable(creeps) and not NPC.IsWaitingToSpawn(creeps) then
							if Entity.GetHealth(creeps) < enemyCreepHealth then
								if creeps ~= nil then
									targetCreep = creeps
									enemyCreepHealth = Entity.GetHealth(creeps)
								end
							end
						end
					end
				end
			end
		end
	end

	if #NPC.GetUnitsInRadius(tempestDoubleEntity, 1500, Enum.TeamType.TEAM_ENEMY) < 1 then
		targetHero = nil
		enemyHeroHealth = 99999
		targetCreep = nil
		enemyCreepHealth = 99999
	end

	if targetHero then
		targetCreep = nil
		enemyCreepHealth = 99999
	end
	
	if targetHero then
		fooAllInOne.ArcWardenFight(myHero, targetHero, tempestDoubleEntity, arcWardenAttackRange)
		fooAllInOne.itemUsageSmartOrder(tempestDoubleEntity, targetHero, true)
	end

	if targetCreep then

		fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", targetCreep, nil, tempestDoubleEntity)

		if #NPC.GetUnitsInRadius(tempestDoubleEntity, 600, Enum.TeamType.TEAM_ENEMY) > 3 then
			if (os.clock() - fooAllInOne.ControlledUnitCastTime) > fooAllInOne.CastAnimationDelay(NPC.GetAbilityByIndex(tempestDoubleEntity, 1)) and NPC.GetAbilityByIndex(tempestDoubleEntity, 1) and Ability.IsCastable(NPC.GetAbilityByIndex(tempestDoubleEntity, 1), wardenMana) then
				Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_POSITION, target, Entity.GetAbsOrigin(tempestDoubleEntity), NPC.GetAbilityByIndex(tempestDoubleEntity, 1), Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
				fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "magneticField", "DOTA_UNIT_ORDER_CAST_POSITION")
				fooAllInOne.ControlledUnitCastTime = os.clock()
				return
			end
			if (os.clock() - fooAllInOne.ControlledUnitCastTime) > fooAllInOne.CastAnimationDelay(NPC.GetAbilityByIndex(tempestDoubleEntity, 2)) and NPC.GetAbilityByIndex(tempestDoubleEntity, 2) and Ability.IsCastable(NPC.GetAbilityByIndex(tempestDoubleEntity, 2), wardenMana) and not NPC.IsStructure(targetCreep) then
				Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_POSITION, target, Entity.GetAbsOrigin(targetCreep), NPC.GetAbilityByIndex(tempestDoubleEntity, 2), Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
				fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "magneticField", "DOTA_UNIT_ORDER_CAST_POSITION")
				fooAllInOne.ControlledUnitCastTime = os.clock()
				return
			end
		end
		for _, necro in ipairs(fooAllInOne.GetNecronomiconEntityTable(myHero, tempestDoubleEntity)) do
			fooAllInOne.NecronomiconController(necro, nil, fooAllInOne.GenericLanePusher(tempestDoubleEntity))
		end
		if #fooAllInOne.GetIllusionEntityTable(myHero, tempestDoubleEntity) > 0 then
			fooAllInOne.MantaIlluController(nil, fooAllInOne.GenericLanePusher(tempestDoubleEntity), myHero, tempestDoubleEntity)
		end		
	end

	if not targetHero and not targetCreep then

		fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE", nil, fooAllInOne.GenericLanePusher(tempestDoubleEntity), tempestDoubleEntity)

		for _, necro in ipairs(fooAllInOne.GetNecronomiconEntityTable(myHero, tempestDoubleEntity)) do
			fooAllInOne.NecronomiconController(necro, nil, fooAllInOne.GenericLanePusher(tempestDoubleEntity))
		end

		if #fooAllInOne.GetIllusionEntityTable(myHero, tempestDoubleEntity) > 0 then
			fooAllInOne.MantaIlluController(nil, fooAllInOne.GenericLanePusher(tempestDoubleEntity), myHero, tempestDoubleEntity)
		end
	end	
end

function fooAllInOne.ArcWardenTPPush(myHero, tempestDoubleEntity, arcWardenAttackRange)
	
	if not tempestDoubleEntity then return end
	if not Entity.IsAlive(tempestDoubleEntity) then return end
	if tempestDoubleEntity == myHero then return end
	if (NPC.GetAbsOrigin(myHero) - NPC.GetAbsOrigin(tempestDoubleEntity)):Length2D() < 500 then return end

	local wardenMana = NPC.GetMana(tempestDoubleEntity)
	local mantaStyle = NPC.GetItem(tempestDoubleEntity, "item_manta", true)

	fooAllInOne.utilityItemMidas(tempestDoubleEntity, NPC.GetItem(tempestDoubleEntity, "item_hand_of_midas", true), 40)

	local necronomicon = NPC.GetItem(tempestDoubleEntity, "item_necronomicon", true)
	if not necronomicon then
		for i = 2, 3 do
			necronomicon = NPC.GetItem(tempestDoubleEntity, "item_necronomicon_" .. i, true)
			if necronomicon then 
				break 
			end
		end
	end

	if (os.clock() - fooAllInOne.ControlledUnitCastTime) > fooAllInOne.GetAvgLatency() and necronomicon and Ability.IsCastable(necronomicon, wardenMana) then
		Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_NO_TARGET, target, Vector(0,0,0), necronomicon, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
		fooAllInOne.ControlledUnitCastTime = os.clock()
		fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "necronomicon", "DOTA_UNIT_ORDER_CAST_NO_TARGET")
	end
	if (os.clock() - fooAllInOne.ControlledUnitCastTime) > fooAllInOne.GetAvgLatency() and mantaStyle and Ability.IsCastable(mantaStyle, wardenMana) then
		Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_NO_TARGET, target, Vector(0,0,0), mantaStyle, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
		fooAllInOne.ControlledUnitCastTime = os.clock()
		fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "mantaStyle", "DOTA_UNIT_ORDER_CAST_NO_TARGET")
	end

	local targetHero
	local enemyHeroHealth = 99999
	local targetCreep
	local enemyCreepHealth = 99999
	for i, heroes in ipairs(NPC.GetHeroesInRadius(tempestDoubleEntity, 799, Enum.TeamType.TEAM_ENEMY)) do
		if heroes then
        		if Entity.IsAlive(heroes) and not Entity.IsDormant(heroes) and not NPC.HasState(heroes, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) and not NPC.IsIllusion(heroes) then
				if Entity.GetHealth(heroes) < enemyHeroHealth then
					targetHero = heroes
					enemyHeroHealth = Entity.GetHealth(heroes)
				end
			end
		end
	end
	if #NPC.GetHeroesInRadius(tempestDoubleEntity, 799, Enum.TeamType.TEAM_ENEMY) < 1 then
		for i = 1, NPCs.Count() do 
		local creeps = NPCs.Get(i)
			if creeps and not Entity.IsSameTeam(myHero, creeps) then
				if NPC.IsEntityInRange(tempestDoubleEntity, creeps, 799) then
					if Entity.IsAlive(creeps) and not Entity.IsDormant(creeps) and NPC.IsKillable(creeps) and not NPC.IsWaitingToSpawn(creeps) then
						if Entity.GetHealth(creeps) < enemyCreepHealth then
							if creeps ~= nil then
								targetCreep = creeps
								enemyCreepHealth = Entity.GetHealth(creeps)
							end
						end
					end
				end
			end
		end
	end
	
	if #NPC.GetUnitsInRadius(tempestDoubleEntity, 800, Enum.TeamType.TEAM_ENEMY) < 1 then
		targetHero = nil
		enemyHeroHealth = 99999
		targetCreep = nil
		enemyCreepHealth = 99999
	end
	
	if targetHero then
		fooAllInOne.ArcWardenFight(myHero, targetHero, tempestDoubleEntity, arcWardenAttackRange)
		fooAllInOne.itemUsageSmartOrder(tempestDoubleEntity, targetHero, true)
	end

	if targetCreep then

		fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", targetCreep, nil, tempestDoubleEntity)

		if #NPC.GetUnitsInRadius(tempestDoubleEntity, 600, Enum.TeamType.TEAM_ENEMY) > 3 then
			if (os.clock() - fooAllInOne.ControlledUnitCastTime) > fooAllInOne.CastAnimationDelay(NPC.GetAbilityByIndex(tempestDoubleEntity, 1)) and NPC.GetAbilityByIndex(tempestDoubleEntity, 1) and Ability.IsCastable(NPC.GetAbilityByIndex(tempestDoubleEntity, 1), wardenMana) then
				Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_POSITION, target, Entity.GetAbsOrigin(tempestDoubleEntity), NPC.GetAbilityByIndex(tempestDoubleEntity, 1), Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
				fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "magneticField", "DOTA_UNIT_ORDER_CAST_POSITION")
				fooAllInOne.ControlledUnitCastTime = os.clock()
				return
			end
			if (os.clock() - fooAllInOne.ControlledUnitCastTime) > fooAllInOne.CastAnimationDelay(NPC.GetAbilityByIndex(tempestDoubleEntity, 2)) and NPC.GetAbilityByIndex(tempestDoubleEntity, 2) and Ability.IsCastable(NPC.GetAbilityByIndex(tempestDoubleEntity, 2), wardenMana) and not NPC.IsStructure(targetCreep) then
				Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_CAST_POSITION, target, Entity.GetAbsOrigin(targetCreep), NPC.GetAbilityByIndex(tempestDoubleEntity, 2), Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY, tempestDoubleEntity)
				fooAllInOne.Debugger(GameRules.GetGameTime(), tempestDoubleEntity, "magneticField", "DOTA_UNIT_ORDER_CAST_POSITION")
				fooAllInOne.ControlledUnitCastTime = os.clock()
				return
			end
		end
		for _, necro in ipairs(fooAllInOne.GetNecronomiconEntityTable(myHero, tempestDoubleEntity)) do
			fooAllInOne.NecronomiconController(necro, nil, fooAllInOne.GenericLanePusher(tempestDoubleEntity))
		end
		if #fooAllInOne.GetIllusionEntityTable(myHero, tempestDoubleEntity) > 0 then
			fooAllInOne.MantaIlluController(nil, fooAllInOne.GenericLanePusher(tempestDoubleEntity), myHero, tempestDoubleEntity)
		end		
	end

	if not targetHero and not targetCreep then

		fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE", nil, fooAllInOne.GenericLanePusher(tempestDoubleEntity), tempestDoubleEntity)

		for _, necro in ipairs(fooAllInOne.GetNecronomiconEntityTable(myHero, tempestDoubleEntity)) do
			fooAllInOne.NecronomiconController(necro, nil, fooAllInOne.GenericLanePusher(tempestDoubleEntity))
		end

		if #fooAllInOne.GetIllusionEntityTable(myHero, tempestDoubleEntity) > 0 then
			fooAllInOne.MantaIlluController(nil, fooAllInOne.GenericLanePusher(tempestDoubleEntity), myHero, tempestDoubleEntity)
		end
	end
end

function fooAllInOne.drawArcWardenIndicators(tempestDoubleEntity)

	if not Menu.IsEnabled(fooAllInOne.optionHeroArcWardenDraw) then return end
	if not tempestDoubleEntity then return end

	local travelBoots1 = NPC.GetItem(tempestDoubleEntity, "item_travel_boots", true)
	local travelBoots2 = NPC.GetItem(tempestDoubleEntity, "item_travel_boots_2", true)
	local midas = NPC.GetItem(tempestDoubleEntity, "item_hand_of_midas", true)
	local necronomicon = NPC.GetItem(tempestDoubleEntity, "item_necronomicon", true)
	if not necronomicon then
		for i = 2, 3 do
			necronomicon = NPC.GetItem(tempestDoubleEntity, "item_necronomicon_" .. i, true)
			if necronomicon then 
				break 
			end
		end
	end

	local tempTable = {}
	if travelBoots1 then
		table.insert(tempTable, travelBoots1)
	end
	if travelBoots2 then
		table.insert(tempTable, travelBoots2)
	end
	if midas then
		table.insert(tempTable, midas)
	end
	if necronomicon then
		table.insert(tempTable, necronomicon)
	end

	local w, h = Renderer.GetScreenSize()
	for i, item in ipairs(tempTable) do 
		fooAllInOne.drawArcWardenCooldowns(item, w, h, i-1)
	end

end

function fooAllInOne.drawArcWardenCooldowns(item, w, h, index)

	if item then
		if math.floor(Ability.GetCooldownTimeLeft(item)) > 0 then
			Renderer.SetDrawColor(255, 0, 0)
			Renderer.DrawText(fooAllInOne.font, (w-300) + Menu.GetValue(fooAllInOne.optionHeroArcWardenXPos), 300 + Menu.GetValue(fooAllInOne.optionHeroArcWardenYPos) + (index*25) + 5, Ability.GetName(item).." - "..math.floor(Ability.GetCooldownTimeLeft(item)), 1)
		else
			Renderer.SetDrawColor(0, 255, 0)
			Renderer.DrawText(fooAllInOne.font, (w-300) + Menu.GetValue(fooAllInOne.optionHeroArcWardenXPos), 300 + Menu.GetValue(fooAllInOne.optionHeroArcWardenYPos) + (index*25) + 5, Ability.GetName(item).." - "..math.floor(Ability.GetCooldownTimeLeft(item)), 1)
		end	
	end

end
		
function fooAllInOne.MorphCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroMorphling) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1500)	then return end

	local waveForm = NPC.GetAbilityByIndex(myHero, 0)
	local adaptiveStrike = NPC.GetAbilityByIndex(myHero, 1)

	local blink = NPC.GetItem(myHero, "item_blink", true)

	local myMana = NPC.GetMana(myHero)
	fooAllInOne.itemUsage(myHero, enemy)

	local maxDMG
	local maxDMGwoWave
	for k, v in ipairs(fooAllInOne.GetMorphShotgunDMG(myHero, myMana, enemy)) do
		maxDMG = v[1]
		maxDMGwoWave = v[2]
	end

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
		if not NPC.IsEntityInRange(myHero, enemy, 800) then
			if blink and Ability.IsReady(blink) then
				Ability.CastPosition(blink, (Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(300)))
			end
			if fooAllInOne.SleepReady(0.1) and not blink or (blink and not Ability.IsReady(blink)) then
				Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, NPC.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
				fooAllInOne.lastTick = os.clock()
			end	
		else
			if NPC.HasItem(myHero, "item_ethereal_blade", true) then
				if NPC.HasModifier(enemy, "modifier_item_ethereal_blade_ethereal") then
					if Entity.GetHealth(enemy) < maxDMGwoWave then
						if adaptiveStrike and Ability.IsCastable(adaptiveStrike, myMana) then
							Ability.CastTarget(adaptiveStrike, enemy)
							fooAllInOne.lastTick = os.clock()
							return
						end
					end
					if Entity.GetHealth(enemy) >= maxDMGwoWave then
						if adaptiveStrike and Ability.IsCastable(adaptiveStrike, myMana) then
							Ability.CastTarget(adaptiveStrike, enemy)
							fooAllInOne.lastTick = os.clock()
						end
						if fooAllInOne.SleepReady(0.4) and waveForm and Ability.IsCastable(waveForm, myMana) and not Ability.IsReady(adaptiveStrike) then
						Ability.CastPosition(waveForm, Entity.GetAbsOrigin(enemy))
						end
					end
				end
			else
				if Entity.GetHealth(enemy) < maxDMGwoWave then
					if adaptiveStrike and Ability.IsCastable(adaptiveStrike, myMana) then
						Ability.CastTarget(adaptiveStrike, enemy)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
				if Entity.GetHealth(enemy) >= maxDMGwoWave then
					if adaptiveStrike and Ability.IsCastable(adaptiveStrike, myMana) then
						Ability.CastTarget(adaptiveStrike, enemy)
						fooAllInOne.lastTick = os.clock()
					end
					if fooAllInOne.SleepReady(0.4) and waveForm and Ability.IsCastable(waveForm, myMana) and not Ability.IsReady(adaptiveStrike) then
						Ability.CastPosition(waveForm, Entity.GetAbsOrigin(enemy))
					end
				end
			end
		end
	end
end

function fooAllInOne.GetMorphShotgunDMG(myHero, myMana, enemy)

	if not myHero then return end
	if not enemy then return end
	if not NPC.GetUnitName(myHero) == "npc_dota_hero_morphling" then return end

	local waveForm = NPC.GetAbilityByIndex(myHero, 0)
	local adaptiveStrike = NPC.GetAbilityByIndex(myHero, 1)

	local waveFormLevel
	if waveForm then
		waveFormLevel = Ability.GetLevel(waveForm)
	end
	local waveFormDMG
	if waveForm and Ability.IsCastable(waveForm, myMana) then
		waveFormDMG = 100 + 75 * (waveFormLevel - 1)
	elseif not waveForm or (waveForm and not Ability.IsCastable(waveForm, myMana)) then
		waveFormDMG = 0
	end

	local adaptiveStrikeLevel
	if adaptiveStrike then
		adaptiveStrikeLevel = Ability.GetLevel(adaptiveStrike)
	end
	local adaptiveStrikeDMG
	if adaptiveStrike and Ability.IsCastable(adaptiveStrike, myMana) then
		local basicDamage = 100
		local myAgility = Hero.GetAgilityTotal(myHero)
		local myStrength = Hero.GetStrengthTotal(myHero)
		local minMultiplier = 0.25
		local maxMultiplier = 0.5 + 0.5 * (adaptiveStrikeLevel - 1)

		local ratio = myAgility / myStrength
		local minRatio = 2/3
		local maxRatio = 3/2
		local multiplier = minMultiplier+(maxMultiplier-minMultiplier)*(ratio-minRatio)/(maxRatio-minRatio)
		multiplier = multiplier > maxMultiplier and maxMultiplier or multiplier
		multiplier = multiplier < minMultiplier and minMultiplier or multiplier

		adaptiveStrikeDMG = basicDamage + myAgility * multiplier
	elseif not adaptiveStrike or (adaptiveStrike and not Ability.IsCastable(adaptiveStrike, myMana)) then
		adaptiveStrikeDMG = 0
	end
	
	local eBlade = NPC.GetItem(myHero, "item_ethereal_blade", true)
	local eBladeDMG
	if eBlade and Ability.IsCastable(eBlade, myMana) then
		local myAgility = Hero.GetAgilityTotal(myHero)
		eBladeDMG = (2 * myAgility + 75)
	elseif not eBlade or (eBlade and not Ability.IsCastable(eBlade, myMana)) then
		eBladeDMG = 0
	end

	local veil = NPC.GetItem(myHero, "item_veil_of_discord", true)

	local overAllDMG = waveFormDMG + adaptiveStrikeDMG + eBladeDMG
	if veil and Ability.IsCastable(veil, myMana) then
		overAllDMG = overAllDMG * 1.25
	end
	if eBlade and Ability.IsCastable(eBlade, myMana) then
		overAllDMG = overAllDMG * 1.4
	end

	local overAllDMGwoWave = adaptiveStrikeDMG + eBladeDMG
	if veil and Ability.IsCastable(veil, myMana) then
		overAllDMGwoWave = overAllDMGwoWave * 1.25
	end
	if eBlade and Ability.IsCastable(eBlade, myMana) then
		overAllDMGwoWave = overAllDMGwoWave * 1.4
	end
	
	local trueOverallDMG = math.floor((1 - NPC.GetMagicalArmorValue(enemy)) * overAllDMG + overAllDMG * (Hero.GetIntellectTotal(myHero) / 14 / 100))
	local trueOverallDMGwoWave = math.floor((1 - NPC.GetMagicalArmorValue(enemy)) * overAllDMGwoWave + overAllDMGwoWave * (Hero.GetIntellectTotal(myHero) / 14 / 100))
	return { {trueOverallDMG, trueOverallDMGwoWave} }
end		

function fooAllInOne.drawMorphlingKillIndicator(myHero)

	if not myHero then return end	
	if not NPC.GetUnitName(myHero) == "npc_dota_hero_morphling" then return end
	
	if imageHandle == nil then
		imageHandle = Renderer.LoadImage(fooAllInOne.IconPath .. "15401" .. ".png")
	end

	local myMana = NPC.GetMana(myHero)
	
	
	for _, heroes in ipairs(NPC.GetHeroesInRadius(myHero, 1200, Enum.TeamType.TEAM_ENEMY)) do
		if not heroes then return end
		local pos = Entity.GetAbsOrigin(heroes)

       		local x, y, vis = Renderer.WorldToScreen(pos)
			if not vis then return end
	
		if NPC.IsHero(heroes) and not NPC.IsIllusion(heroes) and not NPC.IsDormant(heroes) and Entity.GetHealth(heroes) > 0 and not NPC.HasState(heroes, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
			for k, v in ipairs(fooAllInOne.GetMorphShotgunDMG(myHero, myMana, heroes)) do
				if Entity.GetHealth(heroes) <= v[1] - 35 then
					Renderer.SetDrawColor(255, 255, 255, 255)
					Renderer.DrawImage(imageHandle, x, y, 25, 25)
				end
			end
		end
	end  
end

function fooAllInOne.PuckCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroPuck) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1500)	then return end

	local illusoryOrb = NPC.GetAbilityByIndex(myHero, 0)
	local etherealJaunt = NPC.GetAbility(myHero, "puck_ethereal_jaunt")
	local waningRift = NPC.GetAbilityByIndex(myHero, 1)
	local phaseShift = NPC.GetAbility(myHero, "puck_phase_shift")
	local dreamCoil = NPC.GetAbility(myHero, "puck_dream_coil")

	local blink = NPC.GetItem(myHero, "item_blink", true)

	local myMana = NPC.GetMana(myHero)
	fooAllInOne.itemUsage(myHero, enemy)

	local orbIsFlying = false
	if illusoryOrb and Ability.SecondsSinceLastUse(illusoryOrb) > 0 and Ability.SecondsSinceLastUse(illusoryOrb) <= 2.995 then
		orbIsFlying = true
	end

	if orbIsFlying then
		fooAllInOne.lastPosition = Vector(0, 0, 0)
	end
		
	if Menu.IsEnabled(fooAllInOne.optionHeroPuckPanic) then
		if Menu.IsKeyDownOnce(fooAllInOne.optionHeroPuckPanicKey) then
			fooAllInOne.GenericUpValue = false
		end
		if Menu.IsKeyDown(fooAllInOne.optionHeroPuckPanicKey) then
			fooAllInOne.PuckPanic(myHero, enemy, myMana, orbIsFlying)
		end
	end

	if Menu.IsEnabled(fooAllInOne.optionHeroPuckDefend) then
		fooAllInOne.PuckDefend(myHero, enemy, myMana, waningRift)
	end

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and Entity.GetHealth(enemy) > 0 and not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
		if not NPC.IsEntityInRange(myHero, enemy, 375) then
			if blink and Ability.IsReady(blink) then
				if NPC.IsEntityInRange(myHero, enemy, 1000) then
					fooAllInOne.lastPosition = Entity.GetAbsOrigin(myHero)
					if Menu.GetValue(fooAllInOne.optionHeroPuckJump) == 0 then
						Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(175))
						return
					else
						if #NPCs.InRadius(Entity.GetAbsOrigin(enemy), 375, Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY) <= 1 then
							Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(175))
							return
						else
							Ability.CastPosition(blink, fooAllInOne.getBestPosition(NPCs.InRadius(Entity.GetAbsOrigin(enemy), 375, Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY), 350))
							return
						end
					end
				else
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end

			if not blink and Menu.IsEnabled(fooAllInOne.optionHeroPuckOrbInit) then
				if fooAllInOne.SleepReady(0.15) and illusoryOrb and Ability.IsCastable(illusoryOrb, myMana) then
					local orbPrediction = Ability.GetCastPoint(illusoryOrb) + (Entity.GetAbsOrigin(enemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 651) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
					Ability.CastPosition(illusoryOrb, fooAllInOne.castLinearPrediction(myHero, enemy, orbPrediction))
					fooAllInOne.lastTick = os.clock()
					fooAllInOne.PuckOrbCastTime = GameRules.GetGameTime()
					return
				end
				if etherealJaunt and Ability.IsReady(etherealJaunt) then
					for _, v in ipairs(fooAllInOne.PuckOrbHitSim) do
						local origin = v[1]
						local velocity = v[2]
						local orbPos = origin + velocity:Scaled(GameRules.GetGameTime() - fooAllInOne.PuckOrbCastTime)
						if NPC.IsPositionInRange(enemy, orbPos, 150, 0) then
							Ability.CastNoTarget(etherealJaunt)
							fooAllInOne.PuckOrbHitSim = {}
							return
						end
					end
				end		
			end
					
		--	if (blink and not Ability.IsReady(blink)) then
		--		if fooAllInOne.SleepReady(0.1) then
		--			Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
		--			fooAllInOne.lastTick = os.clock()
		--			return
		--		end
		--	end
		else
			if not Ability.IsChannelling(phaseShift) or NPC.HasModifier(myHero, "modifier_eul_cyclone") then
				if fooAllInOne.SleepReady(0.15) and waningRift and Ability.IsCastable(waningRift, myMana) then 
					Ability.CastNoTarget(waningRift)
					fooAllInOne.lastTick = os.clock()
				end
				if Menu.IsKeyDown(fooAllInOne.optionHeroPuckComboAltKey) then	
					if fooAllInOne.SleepReady(0.15) and dreamCoil and Ability.IsCastable(dreamCoil, myMana) then
						Ability.CastPosition(dreamCoil, fooAllInOne.getBestPosition(NPCs.InRadius(Entity.GetAbsOrigin(enemy), 375, Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY), 350))
						fooAllInOne.lastTick = os.clock()
					end
				end
				if fooAllInOne.SleepReady(0.15) and illusoryOrb and Ability.IsCastable(illusoryOrb, myMana) then
					if fooAllInOne.lastPosition:__tostring() ~= Vector(0, 0, 0):__tostring() then
						Ability.CastPosition(illusoryOrb, Entity.GetAbsOrigin(myHero) + (fooAllInOne.lastPosition - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(500))
						fooAllInOne.lastTick = os.clock()
						return
					end
					if fooAllInOne.lastPosition:__tostring() == Vector(0, 0, 0):__tostring() then
						Ability.CastPosition(illusoryOrb, Entity.GetAbsOrigin(myHero) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(500))
						fooAllInOne.lastTick = os.clock()
						return
					end
				end

				fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, myHero)				

			else
				fooAllInOne.GenericUpValue = false
				fooAllInOne.PuckPanic(myHero, enemy, myMana, orbIsFlying)
			end
		end
	end
end

function fooAllInOne.PuckPanic(myHero, enemy, myMana, orbIsFlying)

	if NPC.IsStunned(myHero) then return end

	local illusoryOrb = NPC.GetAbilityByIndex(myHero, 0)
	local etherealJaunt = NPC.GetAbility(myHero, "puck_ethereal_jaunt")
	local phaseShift = NPC.GetAbility(myHero, "puck_phase_shift")

	local blink = NPC.GetItem(myHero, "item_blink", true)
	local euls = NPC.GetItem(myHero, "item_cyclone", true)

	local orbFlyingTimeLeft = 0
		if orbIsFlying then
			orbFlyingTimeLeft = 2.995 - Ability.SecondsSinceLastUse(illusoryOrb)
		end

	if NPC.IsSilenced(myHero) then
		if not fooAllInOne.GenericUpValue then
			if blink and Ability.IsReady(blink) then
				if Menu.GetValue(fooAllInOne.optionHeroPuckPanicDirection) == 0 then
					Ability.CastPosition(blink, Entity.GetAbsOrigin(myHero) + (fooAllInOne.GetMyFountainPos(myHero) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(1150))
					fooAllInOne.GenericUpValue = true
					return
				else
					Ability.CastPosition(blink, Entity.GetAbsOrigin(myHero) + (Input.GetWorldCursorPos() - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(1150))
					fooAllInOne.GenericUpValue = true
					return
				end
			end
			if (blink and Ability.GetCooldownTimeLeft(blink) <= 2.5) or (illusoryOrb and Ability.GetCooldownTimeLeft(illusoryOrb) <= 2.5) or (phaseShift and blink and Ability.GetCooldownTimeLeft(blink) <= 2.5 + Ability.GetLevelSpecialValueForFloat(phaseShift, "duration")) then
				if euls and Ability.IsCastable(euls, myMana) then
					Ability.CastTarget(euls, myHero)
					return
				end
			end
		end
		if (not euls or (euls and not Ability.IsCastable(euls, myMana))) and (not blink or (blink and not Ability.IsReady(blink))) then
			return
		end	
	else
		if not fooAllInOne.GenericUpValue and not Ability.IsChannelling(phaseShift) then
			if illusoryOrb and Ability.SecondsSinceLastUse(illusoryOrb) > 0 and Ability.SecondsSinceLastUse(illusoryOrb) <= 2.995 then
				if Ability.SecondsSinceLastUse(illusoryOrb) > 0 and Ability.SecondsSinceLastUse(illusoryOrb) <= 1.25 then
					if phaseShift and Ability.IsReady(phaseShift) then
						Ability.CastNoTarget(phaseShift)
						return
					end
				end
				if Ability.SecondsSinceLastUse(illusoryOrb) > 1.25 and Ability.SecondsSinceLastUse(illusoryOrb) <= 2.995 then
					if etherealJaunt and Ability.IsReady(etherealJaunt) then
						Ability.CastNoTarget(etherealJaunt)
						fooAllInOne.GenericUpValue = true
						return
					end
				end
			end		
			if blink then
				if Ability.IsReady(blink) then
					if Menu.GetValue(fooAllInOne.optionHeroPuckPanicDirection) == 0 then
						Ability.CastPosition(blink, Entity.GetAbsOrigin(myHero) + (fooAllInOne.GetMyFountainPos(myHero) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(1150))
						fooAllInOne.GenericUpValue = true
						return
					else
						Ability.CastPosition(blink, Entity.GetAbsOrigin(myHero) + (Input.GetWorldCursorPos() - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(1150))
						fooAllInOne.GenericUpValue = true
						return
					end
				end
				if Ability.GetCooldownTimeLeft(blink) > 0.1 and Ability.GetCooldownTimeLeft(blink) < Ability.GetLevelSpecialValueForFloat(phaseShift, "duration") then
					if phaseShift and Ability.IsReady(phaseShift) then
						Ability.CastNoTarget(phaseShift)
						return
					end
				end
			end
			if illusoryOrb and Ability.IsCastable(illusoryOrb, myMana) and (phaseShift and Ability.IsReady(phaseShift)) then
				if Menu.GetValue(fooAllInOne.optionHeroPuckPanicDirection) == 0 then
					Ability.CastPosition(illusoryOrb, Entity.GetAbsOrigin(myHero) + (fooAllInOne.GetMyFountainPos(myHero) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(500))
					Ability.CastNoTarget(phaseShift, true)
					return
				else
					Ability.CastPosition(illusoryOrb, Entity.GetAbsOrigin(myHero) + (Input.GetWorldCursorPos() - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(500))
					Ability.CastNoTarget(phaseShift, true)
					return
				end
			end
			if euls and Ability.IsCastable(euls, myMana) then
				if (blink and Ability.GetCooldownTimeLeft(blink) > Ability.GetLevelSpecialValueForFloat(phaseShift, "duration") and Ability.GetCooldownTimeLeft(blink) <= Ability.GetLevelSpecialValueForFloat(phaseShift, "duration") + 2.5) or (illusoryOrb and Ability.GetCooldownTimeLeft(illusoryOrb) > 0 and Ability.GetCooldownTimeLeft(illusoryOrb) < 2.5 and phaseShift and Ability.GetCooldownTimeLeft(phaseShift) < 2.5) then
					Ability.CastTarget(euls, myHero)
					return
				end
			end	
		end
	end

	if Ability.IsChannelling(phaseShift) then
		if not fooAllInOne.GenericUpValue then
			if orbIsFlying then
				local phaseShiftTimeLeft = math.max(Ability.GetChannelStartTime(phaseShift) + Ability.GetLevelSpecialValueForFloat(phaseShift, "duration") - GameRules.GetGameTime(), 0)
				if etherealJaunt and Ability.IsReady(etherealJaunt) then
					if phaseShiftTimeLeft > orbFlyingTimeLeft then
						if orbFlyingTimeLeft / 2.995 <= 0.25 then
							Ability.CastNoTarget(etherealJaunt)
							fooAllInOne.GenericUpValue = true
							return
						end
					else
						if phaseShiftTimeLeft / Ability.GetLevelSpecialValueForFloat(phaseShift, "duration") <= 0.25 then
							Ability.CastNoTarget(etherealJaunt)
							fooAllInOne.GenericUpValue = true
							return
						end
					end
						
				end
			end
			if not orbIsFlying then
				if blink and Ability.IsReady(blink) then
					if Menu.GetValue(fooAllInOne.optionHeroPuckPanicDirection) == 0 then
						Ability.CastPosition(blink, Entity.GetAbsOrigin(myHero) + (fooAllInOne.GetMyFountainPos(myHero) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(1150))
						fooAllInOne.GenericUpValue = true
						return
					else
						Ability.CastPosition(blink, Entity.GetAbsOrigin(myHero) + (Input.GetWorldCursorPos() - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(1150))
						fooAllInOne.GenericUpValue = true
						return
					end
				end
			end
			
		end
	end				
end


function fooAllInOne.PuckDefend(myHero, enemy, myMana, waningRift)

	if NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) then return end
	if NPC.IsStunned(myHero) or NPC.IsSilenced(myHero) then return end

	for _, heroes in ipairs(NPC.GetHeroesInRadius(myHero, 400, Enum.TeamType.TEAM_ENEMY)) do
		if heroes and not NPC.IsDormant(heroes) and Entity.IsAlive(heroes) then
			local enemyDagger = NPC.GetItem(heroes, "item_blink", true)
			if enemyDagger and NPC.IsEntityInRange(myHero, heroes, 375) and Ability.GetCooldownTimeLeft(enemyDagger) >= 9 and Ability.SecondsSinceLastUse(enemyDagger) > 0 and Ability.SecondsSinceLastUse(enemyDagger) <= 1 then
				if waningRift and Ability.IsCastable(waningRift, myMana) and not NPC.HasState(heroes, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
					Ability.CastNoTarget(waningRift)
					break
				end
			end
		end
	end
end

function fooAllInOne.ProphetHelper(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroProphet) then return end
	
	if Menu.IsKeyDownOnce(fooAllInOne.optionHeroProphetToggleKey) then
		fooAllInOne.Toggler = not fooAllInOne.Toggler
		fooAllInOne.TogglerTime = os.clock()
	end

	local treantEntities = {}
	if fooAllInOne.Toggler then
		for i = 1, NPCs.Count() do 
		local npc = NPCs.Get(i)
			if npc and Entity.IsSameTeam(myHero, npc) and Entity.IsAlive(npc) then
				if npc ~= myHero then
					if Entity.GetOwner(npc) == myHero then
						if npc ~= nil then
							if NPC.GetUnitName(npc) == "npc_dota_furion_treant" then
								if npc ~= nil then
									fooAllInOne.GenericAttackIssuer2("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE", nil, fooAllInOne.GenericLanePusher(npc), npc)
								end
							end	
						end
					end
				end
			end
		end
	end
			
end

function fooAllInOne.DrawProphetHelperSwitch()

	local w, h = Renderer.GetScreenSize()
	Renderer.SetDrawColor(255, 0, 255)

	if os.clock() - fooAllInOne.TogglerTime < 3 then
		if fooAllInOne.Toggler then
			Renderer.DrawTextCentered(fooAllInOne.font, w / 2, h / 2 + 300, "LANE PUSH ON", 1)
		else 
			Renderer.DrawTextCentered(fooAllInOne.font, w / 2, h / 2 + 300, "LANE PUSH OFF", 1)
		end
	end

end

function fooAllInOne.DrawProphetAwareness(myHero)

	if not myHero then return end
	local w, h = Renderer.GetScreenSize()
	Renderer.SetDrawColor(255, 255, 255)

	for i = 1, Heroes.Count() do 
	local hero = Heroes.Get(i)
		if hero and not Entity.IsSameTeam(myHero, hero) and Entity.IsAlive(hero) then
			if not Entity.IsDormant(hero) and not NPC.IsIllusion(hero) then
				if Entity.GetHealth(hero) / Entity.GetMaxHealth(hero) <= 0.20 then
					Renderer.DrawTextCentered(fooAllInOne.font, w / 2, h / 2 + 300, "POSSIBLE PORT TARGET", 1)
					fooAllInOne.DrawProphetAwarenessMinimap(hero)
				end
			end
		end
	end
end

function fooAllInOne.DrawProphetAwarenessMinimap(hero)

	if not hero then return end
	if not Menu.IsEnabled(fooAllInOne.optionProphetDrawKSminimap) then return end

	local w, h = Renderer.GetScreenSize()
	local targetPos = Entity.GetAbsOrigin(hero)
	Renderer.SetDrawColor(255, 255, 255)

	position = fooAllInOne:WorldToMiniMap(targetPos, w, h)
	Renderer.DrawText(fooAllInOne.font, position:GetX(), position:GetY(), "X", 1)

end

function fooAllInOne.InvokerCombo(myHero, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroInvoker) then return end
	if NPC.IsStunned(myHero) then return end

	if Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0)) < 1 or Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 2)) < 1 or Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 2)) < 1 then
		return
	end

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) then
		if fooAllInOne.InvokerLockedTarget == nil then
			fooAllInOne.InvokerLockedTarget = enemy
		end
	else
		fooAllInOne.InvokerLockedTarget = nil
	end

	if fooAllInOne.InvokerLockedTarget ~= nil then
		if not Entity.IsAlive(fooAllInOne.InvokerLockedTarget) then
			fooAllInOne.InvokerLockedTarget = nil
		elseif not NPC.IsEntityInRange(myHero, fooAllInOne.InvokerLockedTarget, 1500) then
			fooAllInOne.InvokerLockedTarget = nil
		end
	end

	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerLockTargetIndicator) then
		fooAllInOne.invokerTargetIndicator(myHero)
	end

	local invokerTarget
		if Menu.IsEnabled(fooAllInOne.optionHeroInvokerLockTarget) then
			invokerTarget = fooAllInOne.InvokerLockedTarget
		else
			invokerTarget = enemy
		end

	local sunStrike = NPC.GetAbility(myHero, "invoker_sun_strike")
	local emp = NPC.GetAbility(myHero, "invoker_emp")
	local tornado = NPC.GetAbility(myHero, "invoker_tornado")
	local ghostWalk = NPC.GetAbility(myHero, "invoker_ghost_walk")
	local deafeningBlast = NPC.GetAbility(myHero, "invoker_deafening_blast")
	local chaosMeteor = NPC.GetAbility(myHero, "invoker_chaos_meteor")
	local iceWall = NPC.GetAbility(myHero, "invoker_ice_wall")
	local coldSnap = NPC.GetAbility(myHero, "invoker_cold_snap")
	local alacrity = NPC.GetAbility(myHero, "invoker_alacrity")
	local forgeSpirit = NPC.GetAbility(myHero, "invoker_forge_spirit")

	local invoke = NPC.GetAbility(myHero, "invoker_invoke")
	local myMana = NPC.GetMana(myHero)
	local aghanims = NPC.GetItem(myHero, "item_ultimate_scepter", true)
	local refresher = NPC.GetItem(myHero, "item_refresher", true)
	local blink = NPC.GetItem(myHero, "item_blink", true)
	local euls = NPC.GetItem(myHero, "item_cyclone", true)

	local invokeTranslator = {
		"invoker_tornado",
		"invoker_emp",
		"invoker_chaos_meteor", 
		"invoker_deafening_blast",
		"invoker_sun_strike",
		"invoker_ice_wall",
		"invoker_cold_snap",
		"invoker_forge_spirit",
		"invoker_alacrity"
			}

	if Menu.IsKeyDown(fooAllInOne.optionHeroInvokerAltKey) and Menu.IsKeyDown(fooAllInOne.optionComboKey) then
		if fooAllInOne.InvokerComboSelector == 1 then
			fooAllInOne.PreInvokeSkills = {{coldSnap, forgeSpirit}}
		elseif fooAllInOne.InvokerComboSelector == 2 then
			fooAllInOne.PreInvokeSkills = {{coldSnap, forgeSpirit}}
		elseif fooAllInOne.InvokerComboSelector == 3 then
			fooAllInOne.PreInvokeSkills = {{emp, tornado}}
		elseif fooAllInOne.InvokerComboSelector == 4 then
			fooAllInOne.PreInvokeSkills = {{chaosMeteor, tornado}}
		elseif fooAllInOne.InvokerComboSelector == 5 then
			fooAllInOne.PreInvokeSkills = {{chaosMeteor, sunStrike}}
		elseif fooAllInOne.InvokerComboSelector == 6 then
			fooAllInOne.PreInvokeSkills = {{emp, tornado}}
		elseif fooAllInOne.InvokerComboSelector == 7 then
			fooAllInOne.PreInvokeSkills = {{sunStrike, tornado}}
		elseif fooAllInOne.InvokerComboSelector == 8 then
			fooAllInOne.PreInvokeSkills = {{sunStrike, tornado}}
		elseif fooAllInOne.InvokerComboSelector == 9 then
			fooAllInOne.PreInvokeSkills = {{emp, tornado}}
		elseif fooAllInOne.InvokerComboSelector == 10 then
			fooAllInOne.PreInvokeSkills = {{deafeningBlast, chaosMeteor}}
		elseif fooAllInOne.InvokerComboSelector == 12 then
			fooAllInOne.PreInvokeSkills = {{NPC.GetAbility(myHero, invokeTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill2)]), NPC.GetAbility(myHero, invokeTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill1)])}}
		end
	end
	
	if next(fooAllInOne.PreInvokeSkills) ~= nil then
		fooAllInOne.InvokerPreInvoke(myHero, myMana, invoke)
	end
	if Menu.IsKeyDown(fooAllInOne.optionHeroInvokerIcewallKey) then
		fooAllInOne.InvokerFastIceWall(myHero, myMana, invoke, enemy)
	end

	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerCancelEnable) then
		fooAllInOne.InvokerCancelChannelingAbilities(myHero, myMana, enemy, invoke, coldSnap, tornado)
	end

	if Menu.IsEnabled(fooAllInOne.optionKillStealInvokerTPpartice) then
		fooAllInOne.EnemyHPTracker(myHero)
	end

	if Menu.IsKeyDown(fooAllInOne.optionComboKey) and not Menu.IsKeyDown(fooAllInOne.optionHeroInvokerAltKey) then
		if invokerTarget and Entity.GetHealth(invokerTarget) > 0 and not NPC.HasState(invokerTarget, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
			if fooAllInOne.InvokerComboSelector == 0 then
				return
			elseif fooAllInOne.InvokerComboSelector == 1 then
				fooAllInOne.InvokerComboCSAlacritySpirit(myHero, myMana, invokerTarget, coldSnap, alacrity, forgeSpirit, blink, invoke)
			elseif fooAllInOne.InvokerComboSelector == 2 then
				fooAllInOne.InvokerComboCSSpiritSunstrike(myHero, myMana, invokerTarget, coldSnap, forgeSpirit, sunStrike, blink, invoke)
			elseif fooAllInOne.InvokerComboSelector == 3 then
				fooAllInOne.InvokerComboTornadoEmpIcewall(myHero, myMana, invokerTarget, tornado, emp, iceWall, coldSnap, blink, invoke)
			elseif fooAllInOne.InvokerComboSelector == 4 then
				fooAllInOne.InvokerComboTornadoMeteorBlast(myHero, myMana, invokerTarget, tornado, chaosMeteor, deafeningBlast, blink, invoke)
			elseif fooAllInOne.InvokerComboSelector == 5 then
				fooAllInOne.InvokerComboEulsSunstrikeMeteorBlast(myHero, myMana, invokerTarget, sunStrike, chaosMeteor, deafeningBlast, blink, euls, invoke)
			elseif fooAllInOne.InvokerComboSelector == 6 then
				fooAllInOne.InvokerComboAghaTornadoEmpMeteorBlast(myHero, myMana, invokerTarget, tornado, emp, chaosMeteor, deafeningBlast, aghanims, blink, invoke)
			elseif fooAllInOne.InvokerComboSelector == 7 then
				fooAllInOne.InvokerComboAghaTornadoSunstrikeMeteorBlast(myHero, myMana, invokerTarget, tornado, sunStrike, chaosMeteor, deafeningBlast, aghanims, blink, invoke)
			elseif fooAllInOne.InvokerComboSelector == 8 then
				fooAllInOne.InvokerComboRefresherAghaTornadoSunstrikeMeteorBlast(myHero, myMana, invokerTarget, tornado, sunStrike, chaosMeteor, deafeningBlast, aghanims, refresher, blink, invoke)
			elseif fooAllInOne.InvokerComboSelector == 9 then
				fooAllInOne.InvokerComboRefresherAghaTornadoEmpMeteorBlast(myHero, myMana, invokerTarget, tornado, emp, chaosMeteor, deafeningBlast, aghanims, refresher, blink, invoke)
			elseif fooAllInOne.InvokerComboSelector == 10 then
				fooAllInOne.InvokerComboRefresherAghaBlastMeteorSunstrike(myHero, myMana, invokerTarget, deafeningBlast, chaosMeteor, sunStrike, blink, aghanims, refresher, invoke)
			elseif fooAllInOne.InvokerComboSelector == 11 then
				fooAllInOne.InvokerComboDynamicMode(myHero, myMana, invokerTarget, blink, invoke)
			elseif fooAllInOne.InvokerComboSelector == 12 then
				fooAllInOne.InvokerComboCustomMode(myHero, myMana, invokerTarget, blink, invoke)
			end
		end
	end

end

function fooAllInOne.InvokerIceWallHelper(myHero, enemy, iceWall, myMana)
	
	if not myHero then return end
	if not enemy then return end
	if NPC.IsStunned(myHero) or NPC.IsSilenced(myHero) then return end
	if not iceWall then return end
	if not Ability.IsReady(iceWall) or not Ability.IsCastable(iceWall, myMana) or not fooAllInOne.InvokerIsAbilityInvoked(myHero, iceWall) then return end
	if not NPC.IsEntityInRange(myHero, enemy, 600) then return end

	local betaRad = math.acos(200 / (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D())
	local beta = betaRad * 180 / math.pi
	local delta = math.acos((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Dot(Entity.GetRotation(myHero):GetForward()) / (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() * (Entity.GetRotation(myHero):GetForward()):Length2D()) * 180 / math.pi

	if NPC.IsEntityInRange(myHero, enemy, 275) then
		Ability.CastNoTarget(iceWall)
		return
	else
		if math.abs(delta - beta) > 5 then
			fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(myHero) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(5):Rotated(Angle(0, beta, 0)))
			return
		else
			Ability.CastNoTarget(iceWall)
			return
		end
	end

end		

function fooAllInOne.InvokerComboCSAlacritySpirit(myHero, myMana, enemy, coldSnap, alacrity, forgeSpirit, blink, invoke)

	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	fooAllInOne.itemUsage(myHero, enemy)

	if fooAllInOne.InvokerInvokedChecker(myHero, "invoker_cold_snap", "invoker_forge_spirit") and invoke and Ability.IsReady(invoke) then
		if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) then
			if blink and Ability.IsReady(blink) then
				if NPC.IsEntityInRange(myHero, enemy, 1150 + 400) then
					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(400))
					return
				else
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
			if not blink or (blink and not Ability.IsReady(blink)) then
				fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, myHero)
				return
			end
		else
			if fooAllInOne.SleepReady(0.05) and coldSnap and Ability.IsCastable(coldSnap, myMana) then
				Ability.CastTarget(coldSnap, enemy)
				fooAllInOne.lastTick = os.clock()
				return
			end
			if fooAllInOne.SleepReady(0.05) and forgeSpirit and Ability.IsCastable(forgeSpirit, myMana) then
				Ability.CastNoTarget(forgeSpirit)
				fooAllInOne.lastTick = os.clock()
				return
			end
			if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) then
				fooAllInOne.invokerInvokeAbility(myHero, alacrity)
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	end
	if not Ability.IsReady(coldSnap) and not Ability.IsReady(forgeSpirit) then
		if fooAllInOne.SleepReady(0.05) and alacrity and Ability.IsCastable(alacrity, myMana) then
			Ability.CastTarget(alacrity, myHero)
			fooAllInOne.lastTick = os.clock()
			return
		end
	end

	fooAllInOne.invokerForgedSpiritController(myHero, enemy)

	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerSwitch) then
		if not Ability.IsReady(coldSnap) and not Ability.IsReady(forgeSpirit) and not Ability.IsReady(alacrity) then
			fooAllInOne.InvokerComboSelector = 11
		end
	end

	fooAllInOne.invokerProcessInstancesWhileComboing(myHero)
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	return


end

function fooAllInOne.InvokerComboCSSpiritSunstrike(myHero, myMana, enemy, coldSnap, forgeSpirit, sunStrike, blink, invoke)

	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	fooAllInOne.itemUsage(myHero, enemy)

	if fooAllInOne.InvokerInvokedChecker(myHero, "invoker_cold_snap", "invoker_forge_spirit") and invoke and Ability.IsReady(invoke) then
		if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) then
			if blink and Ability.IsReady(blink) then
				if NPC.IsEntityInRange(myHero, enemy, 1150 + 400) then
					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(400))
					return
				else
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
			if not blink or (blink and not Ability.IsReady(blink)) then
				fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, myHero)
				return
			end
		else
			if fooAllInOne.SleepReady(0.05) and coldSnap and Ability.IsCastable(coldSnap, myMana) then
				Ability.CastTarget(coldSnap, enemy)
				fooAllInOne.lastTick = os.clock()
				return
			end
			if not Ability.IsReady(coldSnap) and fooAllInOne.SleepReady(0.05) and forgeSpirit and Ability.IsCastable(forgeSpirit, myMana) then
				Ability.CastNoTarget(forgeSpirit)
				fooAllInOne.lastTick = os.clock()
				return
			end
			if not Ability.IsReady(forgeSpirit) and fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) then
				fooAllInOne.invokerInvokeAbility(myHero, sunStrike)
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	end
	
	fooAllInOne.invokerForgedSpiritController(myHero, enemy)

	if not Ability.IsReady(coldSnap) and not Ability.IsReady(forgeSpirit) then
		if fooAllInOne.SleepReady(0.05) and sunStrike and Ability.IsCastable(sunStrike, myMana) and fooAllInOne.InvokerIsAbilityInvoked(myHero, sunStrike) then
			if not Entity.IsTurning(enemy) then
				Ability.CastPosition(sunStrike, fooAllInOne.castPrediction(myHero, enemy, Ability.GetCastPoint(NPC.GetAbility(myHero, "invoker_sun_strike")) + 1.7 + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)))
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	end

	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerSwitch) then
		if not Ability.IsReady(coldSnap) and not Ability.IsReady(forgeSpirit) and not Ability.IsReady(sunStrike) then
			fooAllInOne.InvokerComboSelector = 11
		end
	end

	fooAllInOne.invokerProcessInstancesWhileComboing(myHero)
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	return

end


function fooAllInOne.InvokerComboTornadoEmpIcewall(myHero, myMana, enemy, tornado, emp, iceWall, coldSnap, blink, invoke)

	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	local rangeChecker
		if 400 + (400 * Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 1))) < 1000 then
			rangeChecker = 400 + (400 * Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 1)))
		else
			rangeChecker = 1000
		end

	if fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(emp), Ability.GetName(tornado)) and invoke and Ability.IsReady(invoke) then
		if not NPC.IsEntityInRange(myHero, enemy, 1000) then
			if blink and Ability.IsReady(blink) then
				if NPC.IsEntityInRange(myHero, enemy, 1150 + NPC.GetAttackRange(myHero)) then
					fooAllInOne.noItemCastFor(0.5)
					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(600))
					return
				else
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.noItemCastFor(0.5)
						return
					end
				end
			end
			if not blink or (blink and not Ability.IsReady(blink)) and not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, myHero)
				fooAllInOne.noItemCastFor(0.5)
				return
			end
		else
			local travelTime = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000
			local tornadoTiming = fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))] + travelTime
			if tornadoTiming < 2.9 then
				if fooAllInOne.SleepReady(0.05) and emp and Ability.IsCastable(emp, myMana) then
					if NPC.IsEntityInRange(myHero, enemy, 925) then
						Ability.CastPosition(emp, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.lastCastTime = os.clock()
						return
					else
						Ability.CastPosition(emp, Entity.GetAbsOrigin(myHero) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(925))
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.lastCastTime = os.clock()
						return
					end
				end
				if not Ability.IsReady(emp) then
					if fooAllInOne.SleepReady(0.05) and tornado and Ability.IsCastable(tornado, myMana) then
						if os.clock() - fooAllInOne.lastCastTime <= 2.9 - tornadoTiming - 0.5 then
							fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, myHero)
							return
						else	
							if Menu.GetValue(fooAllInOne.optionHeroInvokerSkillshotStyle) == 0 then
								local tornadoPrediction = Ability.GetCastPoint(tornado) + (Entity.GetAbsOrigin(enemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1000) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
								Ability.CastPosition(tornado, fooAllInOne.castLinearPrediction(myHero, enemy, tornadoPrediction))
								fooAllInOne.lastTick = os.clock()
								return
							else
								Ability.CastPosition(tornado, Input.GetWorldCursorPos())
								fooAllInOne.lastTick = os.clock()
								return
							end
						end
					end
				end
			else
				if fooAllInOne.SleepReady(0.05) and tornado and Ability.IsCastable(tornado, myMana) then
					if Menu.GetValue(fooAllInOne.optionHeroInvokerSkillshotStyle) == 0 then
						local tornadoPrediction = Ability.GetCastPoint(tornado) + (Entity.GetAbsOrigin(enemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1000) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
						Ability.CastPosition(tornado, fooAllInOne.castLinearPrediction(myHero, enemy, tornadoPrediction))
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.lastCastTime = os.clock()
						fooAllInOne.noItemCastFor((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + 0.5)
						return
					else
						Ability.CastPosition(tornado, Input.GetWorldCursorPos())
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.lastCastTime = os.clock()
						fooAllInOne.noItemCastFor((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + 0.5)
						return
					end
				end
				if fooAllInOne.SleepReady(0.05) and emp and Ability.IsCastable(emp, myMana) then
					local travelTime = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000
					local tornadoTiming = fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))] + travelTime
					if os.clock() - fooAllInOne.lastCastTime > tornadoTiming - 2.9 + 0.05 then
						if NPC.IsEntityInRange(myHero, enemy, 925) then
							Ability.CastPosition(emp, Entity.GetAbsOrigin(enemy))
							fooAllInOne.lastTick = os.clock()
							return
						else
							Ability.CastPosition(emp, Entity.GetAbsOrigin(myHero) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(925))
							fooAllInOne.lastTick = os.clock()
							return
						end
					end
				end
			end
			if not Ability.IsReady(emp) and not Ability.IsReady(tornado) and NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				local distance = math.abs((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() - 550)
				local timeToTarget = distance / NPC.GetMoveSpeed(myHero)
				if GameRules.GetGameTime() + timeToTarget <= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) then
					if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) then
						fooAllInOne.invokerInvokeAbility(myHero, iceWall)
						fooAllInOne.lastTick = os.clock()
						return
					end
				else
					if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) then
						fooAllInOne.invokerInvokeAbility(myHero, coldSnap)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
		end
	end

	if not Ability.IsReady(tornado) and not Ability.IsReady(emp) then
		if fooAllInOne.InvokerIsAbilityInvoked(myHero, iceWall) then
			if fooAllInOne.SleepReady(0.05) and iceWall and Ability.IsCastable(iceWall, myMana) then
				if not NPC.IsEntityInRange(myHero, enemy, 550) then
					fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(500), myHero)
				else
					fooAllInOne.InvokerIceWallHelper(myHero, enemy, iceWall, myMana)
				--	Ability.CastNoTarget(iceWall)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		end
		if fooAllInOne.InvokerIsAbilityInvoked(myHero, coldSnap) then
			if fooAllInOne.SleepReady(0.05) and coldSnap and Ability.IsCastable(coldSnap, myMana) then
				if NPC.HasModifier(enemy, "modifier_invoker_tornado") then
					if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) then
						fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(NPC.GetAttackRange(myHero) - 25), myHero)
					end
				else
					Ability.CastTarget(coldSnap, enemy)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		end
	end

	fooAllInOne.itemUsage(myHero, enemy)

	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerSwitch) then
		if not Ability.IsReady(tornado) and not Ability.IsReady(emp) and (not Ability.IsReady(coldSnap) or not Ability.IsReady(iceWall)) then
			fooAllInOne.InvokerComboSelector = 11
		end
	end

	fooAllInOne.invokerProcessInstancesWhileComboing(myHero)
	if not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
		fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
	return

end

function fooAllInOne.InvokerComboTornadoMeteorBlast(myHero, myMana, enemy, tornado, chaosMeteor, deafeningBlast, blink, invoke)

	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	if fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(chaosMeteor), Ability.GetName(tornado)) and invoke and Ability.IsReady(invoke) then
		if not NPC.IsEntityInRange(myHero, enemy, 950) then
			if blink and Ability.IsReady(blink) then
				if NPC.IsEntityInRange(myHero, enemy, 1150 + NPC.GetAttackRange(myHero)) then
					fooAllInOne.noItemCastFor(0.5)
					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(600))
					return
				else
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.noItemCastFor(0.5)
						return
					end
				end
			end
			if not blink or (blink and not Ability.IsReady(blink)) and not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, myHero)
				fooAllInOne.noItemCastFor(0.5)
				return
			end
		else
			local travelTime = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000
			local tornadoTiming = fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))] + travelTime
			if tornadoTiming < 1.3 then
				if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
					Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(250))
					fooAllInOne.lastTick = os.clock()
					fooAllInOne.lastCastTime = os.clock()
					return
				end
				if not Ability.IsReady(chaosMeteor) then
					if fooAllInOne.SleepReady(0.05) and tornado and Ability.IsCastable(tornado, myMana) then
						if os.clock() - fooAllInOne.lastCastTime <= 1.3 - tornadoTiming then
							fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, myHero)
							return
						else	
							if Menu.GetValue(fooAllInOne.optionHeroInvokerSkillshotStyle) == 0 then
								local tornadoPrediction = Ability.GetCastPoint(tornado) + (Entity.GetAbsOrigin(enemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1000) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
								Ability.CastPosition(tornado, fooAllInOne.castLinearPrediction(myHero, enemy, tornadoPrediction))
								fooAllInOne.lastTick = os.clock()
								return
							else
								Ability.CastPosition(tornado, Input.GetWorldCursorPos())
								fooAllInOne.lastTick = os.clock()
								return
							end
						end
					end
				end
				if NPC.HasModifier(enemy, "modifier_invoker_tornado") then
					if fooAllInOne.SleepReady(0.05) and not Ability.IsReady(tornado) and invoke and Ability.IsCastable(invoke, myMana) then
						fooAllInOne.invokerInvokeAbility(myHero, deafeningBlast)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			else
				if fooAllInOne.SleepReady(0.05) and tornado and Ability.IsCastable(tornado, myMana) then
					if Menu.GetValue(fooAllInOne.optionHeroInvokerSkillshotStyle) == 0 then
						local tornadoPrediction = Ability.GetCastPoint(tornado) + (Entity.GetAbsOrigin(enemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1000) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
						Ability.CastPosition(tornado, fooAllInOne.castLinearPrediction(myHero, enemy, tornadoPrediction))
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.noItemCastFor((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + 0.5)
						return
					else
						Ability.CastPosition(tornado, Input.GetWorldCursorPos())
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.noItemCastFor((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + 0.5)
						return
					end
				end
				if NPC.HasModifier(enemy, "modifier_invoker_tornado") then
					if fooAllInOne.SleepReady(0.05) and not Ability.IsReady(tornado) and invoke and Ability.IsCastable(invoke, myMana) then
						fooAllInOne.invokerInvokeAbility(myHero, deafeningBlast)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
		end
	end

	if not Ability.IsReady(tornado) then
		if Ability.IsReady(chaosMeteor) and NPC.HasModifier(enemy, "modifier_invoker_tornado") then
			local distance = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() - NPC.GetAttackRange(myHero)
				if distance < 0 then
					distance = 0
				end
			local timeToPosition = distance / NPC.GetMoveSpeed(myHero)
			if GameRules.GetGameTime() + timeToPosition < Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.3 then
				if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) then
					fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(NPC.GetAttackRange(myHero)), myHero)	
				else
					if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.3 then
						if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
							Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(100))
							fooAllInOne.lastTick = os.clock()
							return
						end
					end
				end
			else
				if not NPC.IsEntityInRange(myHero, enemy, 950) then
					fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(950), myHero)	
				else
					if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.3 then
						if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
							Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(100))
							fooAllInOne.lastTick = os.clock()
							return
						end
					end
				end
			end
		else
			if fooAllInOne.SleepReady(0.05) and deafeningBlast and Ability.IsCastable(deafeningBlast, myMana) and fooAllInOne.InvokerIsAbilityInvoked(myHero, deafeningBlast) then
				if NPC.HasModifier(enemy, "modifier_invoker_tornado") then
					local blastTime = ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100) - 0.25
					if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - blastTime - NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) then
						Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastTick = os.clock()
						return
					end
				else
					Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		end
	end

	fooAllInOne.itemUsage(myHero, enemy)

	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerSwitch) then
		if not Ability.IsReady(tornado) and not Ability.IsReady(chaosMeteor) and not Ability.IsReady(deafeningBlast) then
			fooAllInOne.InvokerComboSelector = 11
		end
	end

	fooAllInOne.invokerProcessInstancesWhileComboing(myHero)
	if not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
		fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
	return

end

function fooAllInOne.InvokerComboEulsSunstrikeMeteorBlast(myHero, myMana, enemy, sunStrike, chaosMeteor, deafeningBlast, blink, euls, invoke)

	if not euls then return end
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	if fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(chaosMeteor), Ability.GetName(sunStrike)) and invoke and Ability.IsReady(invoke) then
		if not NPC.IsEntityInRange(myHero, enemy, 550) then
			if blink and Ability.IsReady(blink) then
				if NPC.IsEntityInRange(myHero, enemy, 1150 + NPC.GetAttackRange(myHero)) then
					fooAllInOne.noItemCastFor(0.5)
					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(500))
					return
				else
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.noItemCastFor(0.5)
						return
					end
				end
			end
			if not blink or (blink and not Ability.IsReady(blink)) and not NPC.HasModifier(enemy, "modifier_eul_cyclone") then
				fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy), myHero)
				fooAllInOne.noItemCastFor(0.5)
				return
			end
		else
			if fooAllInOne.SleepReady(0.05) and euls and Ability.IsCastable(euls, myMana) then
				Ability.CastTarget(euls, enemy)
				fooAllInOne.lastTick = os.clock()
				fooAllInOne.noItemCastFor(2.5)
				return
			end
			if NPC.HasModifier(enemy, "modifier_eul_cyclone") then
				if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_eul_cyclone")) - 1.7 then
					if fooAllInOne.SleepReady(0.05) and sunStrike and Ability.IsCastable(sunStrike, myMana) then
						Ability.CastPosition(sunStrike, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
			if fooAllInOne.SleepReady(0.05) and not Ability.IsReady(sunStrike) and invoke and Ability.IsCastable(invoke, myMana) and not fooAllInOne.InvokerIsAbilityInvoked(myHero, deafeningBlast) then
				fooAllInOne.invokerInvokeAbility(myHero, deafeningBlast)
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	end
	if fooAllInOne.InvokerIsAbilityInvoked(myHero, deafeningBlast) and not Ability.IsReady(sunStrike) then
		if NPC.HasModifier(enemy, "modifier_eul_cyclone") then
			if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_eul_cyclone")) - 1.3 then
				if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
					Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(100))
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
			local blastTime = ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100) - 0.25
			if not Ability.IsReady(chaosMeteor) then
				if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_eul_cyclone")) - blastTime - NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) then
					Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		end
	end

	fooAllInOne.itemUsage(myHero, enemy)

	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerSwitch) then
		if not Ability.IsReady(sunStrike) and not Ability.IsReady(chaosMeteor) and not Ability.IsReady(deafeningBlast) then
			fooAllInOne.InvokerComboSelector = 11
		end
	end

	fooAllInOne.invokerProcessInstancesWhileComboing(myHero)
	if not NPC.HasModifier(enemy, "modifier_eul_cyclone") then
		fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
	return

end


function fooAllInOne.InvokerComboAghaTornadoEmpMeteorBlast(myHero, myMana, enemy, tornado, emp, chaosMeteor, deafeningBlast, aghanims, blink, invoke)

	if not aghanims and not NPC.HasModifier(myHero, "modifier_item_ultimate_scepter_consumed") then return end
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	if fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(emp), Ability.GetName(tornado)) and invoke and Ability.IsReady(invoke) then
		if not NPC.IsEntityInRange(myHero, enemy, 1000) then
			if blink and Ability.IsReady(blink) then
				if NPC.IsEntityInRange(myHero, enemy, 1150 + NPC.GetAttackRange(myHero)) then
					fooAllInOne.noItemCastFor(0.5)
					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(600))
					return
				else
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.noItemCastFor(0.5)
						return
					end
				end
			end
			if not blink or (blink and not Ability.IsReady(blink)) and not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, myHero)
				fooAllInOne.noItemCastFor(0.5)
				return
			end
		else
			if fooAllInOne.SleepReady(0.05) and tornado and Ability.IsCastable(tornado, myMana) then
				if Menu.GetValue(fooAllInOne.optionHeroInvokerSkillshotStyle) == 0 then
					local tornadoPrediction = Ability.GetCastPoint(tornado) + (Entity.GetAbsOrigin(enemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1000) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
					Ability.CastPosition(tornado, fooAllInOne.castLinearPrediction(myHero, enemy, tornadoPrediction))
					fooAllInOne.lastTick = os.clock()
					fooAllInOne.lastCastTime = os.clock()
					fooAllInOne.noItemCastFor((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + 0.5)
					return
				else
					Ability.CastPosition(tornado, Input.GetWorldCursorPos())
					fooAllInOne.lastTick = os.clock()
					fooAllInOne.lastCastTime = os.clock()
					fooAllInOne.noItemCastFor((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + 0.5)
					return
				end
			end
			if not Ability.IsReady(tornado) then
				if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) then
					fooAllInOne.invokerInvokeAbility(myHero, chaosMeteor)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end	
		end
	end

	if not Ability.IsReady(tornado) and fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(chaosMeteor), Ability.GetName(emp)) then
		if fooAllInOne.SleepReady(0.05) and emp and Ability.IsCastable(emp, myMana) then
			local travelTime = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000
			local tornadoTiming = fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))] + travelTime
			if os.clock() - fooAllInOne.lastCastTime > tornadoTiming - 2.9 + 0.25 then
				if NPC.IsEntityInRange(myHero, enemy, 925) then
					Ability.CastPosition(emp, Entity.GetAbsOrigin(enemy))
					fooAllInOne.lastTick = os.clock()
					return
				else
					Ability.CastPosition(emp, Entity.GetAbsOrigin(myHero) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(925))
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		end
		if NPC.HasModifier(enemy, "modifier_invoker_tornado") then
			if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
				local distance = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() - NPC.GetAttackRange(myHero)
					if distance < 0 then
						distance = 0
					end
				local timeToPosition = distance / NPC.GetMoveSpeed(myHero)
				if GameRules.GetGameTime() + timeToPosition < Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.3 then
					if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) then
						fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(NPC.GetAttackRange(myHero)), myHero)	
					else
						if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.3 then
							if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
								Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(100))
								fooAllInOne.lastTick = os.clock()
								return
							end
						end
					end
				else
					if not NPC.IsEntityInRange(myHero, enemy, 950) then
						fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(950), myHero)	
					else
						if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.3 then
							if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
								Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(100))
								fooAllInOne.lastTick = os.clock()
								return
							end
						end
					end
				end
			end
		end			
	end
	if not Ability.IsReady(chaosMeteor) then
		if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) and not fooAllInOne.InvokerIsAbilityInvoked(myHero, deafeningBlast) then
			fooAllInOne.invokerInvokeAbility(myHero, deafeningBlast)
			fooAllInOne.lastTick = os.clock()
			return
		end
		if fooAllInOne.SleepReady(0.05) and deafeningBlast and Ability.IsCastable(deafeningBlast, myMana) and fooAllInOne.InvokerIsAbilityInvoked(myHero, deafeningBlast) then
			if NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				local blastTime = ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100) - 0.25
				if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - blastTime - NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) then
					Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
					fooAllInOne.lastTick = os.clock()
					return
				end
			else
				Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	end

	fooAllInOne.itemUsage(myHero, enemy)

	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerSwitch) then
		if not Ability.IsReady(tornado) and not Ability.IsReady(emp) and not Ability.IsReady(chaosMeteor) and not Ability.IsReady(deafeningBlast) then
			fooAllInOne.InvokerComboSelector = 11
		end
	end

	fooAllInOne.invokerProcessInstancesWhileComboing(myHero)
	if not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
		fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
	return

	
end

function fooAllInOne.InvokerComboAghaTornadoSunstrikeMeteorBlast(myHero, myMana, enemy, tornado, sunStrike, chaosMeteor, deafeningBlast, aghanims, blink, invoke)

	if not aghanims and not NPC.HasModifier(myHero, "modifier_item_ultimate_scepter_consumed") then return end
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	if fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(sunStrike), Ability.GetName(tornado)) and invoke and Ability.IsReady(invoke) then
		if not NPC.IsEntityInRange(myHero, enemy, 1000) then
			if blink and Ability.IsReady(blink) then
				if NPC.IsEntityInRange(myHero, enemy, 1150 + NPC.GetAttackRange(myHero)) then
					fooAllInOne.noItemCastFor(0.5)
					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(600))
					return
				else
					if fooAllInOne.SleepReady(0.1) then
						Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.noItemCastFor(0.5)
						return
					end
				end
			end
			if not blink or (blink and not Ability.IsReady(blink)) and not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, myHero)
				fooAllInOne.noItemCastFor(0.5)
				return
			end
		else
			if fooAllInOne.SleepReady(0.05) and tornado and Ability.IsCastable(tornado, myMana) then
				if Menu.GetValue(fooAllInOne.optionHeroInvokerSkillshotStyle) == 0 then
					local tornadoPrediction = Ability.GetCastPoint(tornado) + (Entity.GetAbsOrigin(enemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1000) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
					Ability.CastPosition(tornado, fooAllInOne.castLinearPrediction(myHero, enemy, tornadoPrediction))
					fooAllInOne.lastTick = os.clock()
					fooAllInOne.noItemCastFor((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + 0.5)
					return
				else
					Ability.CastPosition(tornado, Input.GetWorldCursorPos())
					fooAllInOne.lastTick = os.clock()
					fooAllInOne.noItemCastFor((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + 0.5)
					return
				end
			end
			if not Ability.IsReady(tornado) then
				if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) then
					fooAllInOne.invokerInvokeAbility(myHero, chaosMeteor)
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		end
	end
		
	if NPC.HasModifier(enemy, "modifier_invoker_tornado") and fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(chaosMeteor), Ability.GetName(sunStrike)) then
		if fooAllInOne.SleepReady(0.05) and sunStrike and Ability.IsCastable(sunStrike, myMana) then
			local distance = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() - NPC.GetAttackRange(myHero)
				if distance < 0 then
					distance = 0
				end
			local timeToPosition = distance / NPC.GetMoveSpeed(myHero)
			if GameRules.GetGameTime() + timeToPosition < Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.7 then
				if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) then
					fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(NPC.GetAttackRange(myHero)), myHero)	
				else
					if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.7 then
						if fooAllInOne.SleepReady(0.05) and sunStrike and Ability.IsCastable(sunStrike, myMana) then
							Ability.CastPosition(sunStrike, Entity.GetAbsOrigin(enemy))
							fooAllInOne.lastTick = os.clock()
							return
						end
					end
				end
			else
				if not NPC.IsEntityInRange(myHero, enemy, 950) then
					fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(950), myHero)	
				else
					if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.7 then
						if fooAllInOne.SleepReady(0.05) and sunStrike and Ability.IsCastable(sunStrike, myMana) then
							Ability.CastPosition(sunStrike, Entity.GetAbsOrigin(enemy))
							fooAllInOne.lastTick = os.clock()
							return
						end
					end
				end
			end
		end			
		
		if not Ability.IsReady(tornado) and not Ability.IsReady(sunStrike) then
			if NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.3 then
					if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
						Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(250))
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
		end
	end

	if not Ability.IsReady(chaosMeteor) then
		if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) and not fooAllInOne.InvokerIsAbilityInvoked(myHero, deafeningBlast) then
			fooAllInOne.invokerInvokeAbility(myHero, deafeningBlast)
			fooAllInOne.lastTick = os.clock()
			return
		end
		if fooAllInOne.SleepReady(0.05) and deafeningBlast and Ability.IsCastable(deafeningBlast, myMana) and fooAllInOne.InvokerIsAbilityInvoked(myHero, deafeningBlast) then
			if NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				local blastTime = ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100) - 0.25
				if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - blastTime - NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) then
					Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
					fooAllInOne.lastTick = os.clock()
					return
				end
			else
				Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
				fooAllInOne.lastTick = os.clock()
				return
			end	
		end
	end

	fooAllInOne.itemUsage(myHero, enemy)

	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerSwitch) then
		if not Ability.IsReady(tornado) and not Ability.IsReady(sunStrike) and not Ability.IsReady(chaosMeteor) and not Ability.IsReady(deafeningBlast) then
			fooAllInOne.InvokerComboSelector = 11
		end
	end

	fooAllInOne.invokerProcessInstancesWhileComboing(myHero)
	if not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
		fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
	return
		
end

function fooAllInOne.InvokerComboRefresherAghaTornadoSunstrikeMeteorBlast(myHero, myMana, enemy, tornado, sunStrike, chaosMeteor, deafeningBlast, aghanims, refresher, blink, invoke)

	if not aghanims and not NPC.HasModifier(myHero, "modifier_item_ultimate_scepter_consumed") then return end
	if not refresher then return end
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	if Ability.IsReady(refresher) then
		if fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(sunStrike), Ability.GetName(tornado)) and invoke and Ability.IsReady(invoke) then
			if not NPC.IsEntityInRange(myHero, enemy, 1000) then
				if blink and Ability.IsReady(blink) then
					if NPC.IsEntityInRange(myHero, enemy, 1150 + NPC.GetAttackRange(myHero)) then
						fooAllInOne.noItemCastFor(0.5)
						Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(600))
						return
					else
						if fooAllInOne.SleepReady(0.1) then
							Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
							fooAllInOne.lastTick = os.clock()
							fooAllInOne.noItemCastFor(0.5)
							return
						end
					end
				end
				if not blink or (blink and not Ability.IsReady(blink)) and not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
					fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, myHero)
					fooAllInOne.noItemCastFor(0.5)
					return
				end
			else
				if fooAllInOne.SleepReady(0.05) and tornado and Ability.IsCastable(tornado, myMana) then
					if Menu.GetValue(fooAllInOne.optionHeroInvokerSkillshotStyle) == 0 then
						local tornadoPrediction = Ability.GetCastPoint(tornado) + (Entity.GetAbsOrigin(enemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1000) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
						Ability.CastPosition(tornado, fooAllInOne.castLinearPrediction(myHero, enemy, tornadoPrediction))
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.noItemCastFor((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + 0.5)
						return
					else
						Ability.CastPosition(tornado, Input.GetWorldCursorPos())
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.noItemCastFor((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + 0.5)
						return
					end
				end
				if not Ability.IsReady(tornado) then
					if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) then
						fooAllInOne.invokerInvokeAbility(myHero, chaosMeteor)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
		end
		
		if NPC.HasModifier(enemy, "modifier_invoker_tornado") and fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(chaosMeteor), Ability.GetName(sunStrike)) then
			if fooAllInOne.SleepReady(0.05) and sunStrike and Ability.IsCastable(sunStrike, myMana) then
				local distance = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() - NPC.GetAttackRange(myHero)
					if distance < 0 then
						distance = 0
					end
				local timeToPosition = distance / NPC.GetMoveSpeed(myHero)
				if GameRules.GetGameTime() + timeToPosition < Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.7 then
					if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) then
						fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(NPC.GetAttackRange(myHero)), myHero)	
					else
						if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.7 then
							if fooAllInOne.SleepReady(0.05) and sunStrike and Ability.IsCastable(sunStrike, myMana) then
								Ability.CastPosition(sunStrike, Entity.GetAbsOrigin(enemy))
								fooAllInOne.lastTick = os.clock()
								return
							end
						end
					end
				else
					if not NPC.IsEntityInRange(myHero, enemy, 950) then
						fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(950), myHero)	
					else
						if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.7 then
							if fooAllInOne.SleepReady(0.05) and sunStrike and Ability.IsCastable(sunStrike, myMana) then
								Ability.CastPosition(sunStrike, Entity.GetAbsOrigin(enemy))
								fooAllInOne.lastTick = os.clock()
								return
							end
						end
					end
				end
			end			
		
			if not Ability.IsReady(tornado) and not Ability.IsReady(sunStrike) then
				if NPC.HasModifier(enemy, "modifier_invoker_tornado") then
					if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.3 then
						if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
							Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(250))
							fooAllInOne.lastTick = os.clock()
							return
						end
					end
				end
			end
		end
		

		if not Ability.IsReady(chaosMeteor) then
			if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) and not fooAllInOne.InvokerIsAbilityInvoked(myHero, deafeningBlast) then
				fooAllInOne.invokerInvokeAbility(myHero, deafeningBlast)
				fooAllInOne.lastTick = os.clock()
				return
			end
			if fooAllInOne.SleepReady(0.05) and deafeningBlast and Ability.IsCastable(deafeningBlast, myMana) and fooAllInOne.InvokerIsAbilityInvoked(myHero, deafeningBlast) then
				if NPC.HasModifier(enemy, "modifier_invoker_tornado") then
					local blastTime = ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100) - 0.25
					if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - blastTime - NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) then
						Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastTick = os.clock()
						return
					end
				else
					Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
					fooAllInOne.lastTick = os.clock()
					return
				end	
			end
		end

		if not Ability.IsReady(tornado) and not Ability.IsReady(sunStrike) and not Ability.IsReady(chaosMeteor) and not Ability.IsReady(deafeningBlast) then
			if refresher and Ability.IsCastable(refresher, myMana) then
				Ability.CastNoTarget(refresher)
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	end

	fooAllInOne.itemUsage(myHero, enemy)

	if not Ability.IsReady(refresher) and Ability.SecondsSinceLastUse(refresher) > 0 and Ability.SecondsSinceLastUse(refresher) < 3 then
		if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
			Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy))
			fooAllInOne.lastTick = os.clock()
			return
		end
		if not Ability.IsReady(chaosMeteor) and not fooAllInOne.InvokerIsAbilityInvoked(myHero, sunStrike) then
			if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) then
				fooAllInOne.invokerInvokeAbility(myHero, sunStrike)
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
		if fooAllInOne.InvokerIsAbilityInvoked(myHero, sunStrike) then
			if fooAllInOne.SleepReady(0.05) and sunStrike and Ability.IsCastable(sunStrike, myMana) then
					Ability.CastPosition(sunStrike, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(300))
					fooAllInOne.lastTick = os.clock()
					return
			end
		end
		if not Ability.IsReady(sunStrike) then
			if fooAllInOne.SleepReady(0.05) and deafeningBlast and Ability.IsCastable(deafeningBlast, myMana) and fooAllInOne.InvokerIsAbilityInvoked(myHero, deafeningBlast) then
				Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	end

	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerSwitch) then
		if not Ability.IsReady(refresher) and not Ability.IsReady(chaosMeteor) and not Ability.IsReady(sunStrike) and not Ability.IsReady(deafeningBlast) then
			fooAllInOne.InvokerComboSelector = 11
		end
	end
	
	fooAllInOne.invokerProcessInstancesWhileComboing(myHero)
	if not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
		fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
	return		
end

function fooAllInOne.InvokerComboRefresherAghaTornadoEmpMeteorBlast(myHero, myMana, enemy, tornado, emp, chaosMeteor, deafeningBlast, aghanims, refresher, blink, invoke)

	if not aghanims and not NPC.HasModifier(myHero, "modifier_item_ultimate_scepter_consumed") then return end
	if not refresher then return end
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	if Ability.IsReady(refresher) then
		if fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(emp), Ability.GetName(tornado)) and invoke and Ability.IsReady(invoke) then
			if not NPC.IsEntityInRange(myHero, enemy, 1000) then
				if blink and Ability.IsReady(blink) then
					if NPC.IsEntityInRange(myHero, enemy, 1150 + NPC.GetAttackRange(myHero)) then
						fooAllInOne.noItemCastFor(0.5)
						Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(600))
						return
					else
						if fooAllInOne.SleepReady(0.1) then
							Player.PrepareUnitOrders(Players.GetLocal(), Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION, target, Entity.GetAbsOrigin(enemy), ability, Enum.PlayerOrderIssuer.DOTA_ORDER_ISSUER_HERO_ONLY, npc, queue, showEffects)
							fooAllInOne.lastTick = os.clock()
							fooAllInOne.noItemCastFor(0.5)
							return
						end
					end
				end
				if not blink or (blink and not Ability.IsReady(blink)) and not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
					fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, myHero)
					fooAllInOne.noItemCastFor(0.5)
					return
				end
			else
				if fooAllInOne.SleepReady(0.05) and tornado and Ability.IsCastable(tornado, myMana) then
					if Menu.GetValue(fooAllInOne.optionHeroInvokerSkillshotStyle) == 0 then
						local tornadoPrediction = Ability.GetCastPoint(tornado) + (Entity.GetAbsOrigin(enemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1000) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
						Ability.CastPosition(tornado, fooAllInOne.castLinearPrediction(myHero, enemy, tornadoPrediction))
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.lastCastTime = os.clock()
						fooAllInOne.noItemCastFor((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + 0.5)
						return
					else
						Ability.CastPosition(tornado, Input.GetWorldCursorPos())
						fooAllInOne.lastTick = os.clock()
						fooAllInOne.lastCastTime = os.clock()
						fooAllInOne.noItemCastFor((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + 0.5)
						return
					end
				end
				if not Ability.IsReady(tornado) then
					if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) then
						fooAllInOne.invokerInvokeAbility(myHero, chaosMeteor)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end	
			end
		end

		if not Ability.IsReady(tornado) and fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(chaosMeteor), Ability.GetName(emp)) then
			if fooAllInOne.SleepReady(0.05) and emp and Ability.IsCastable(emp, myMana) then
				local travelTime = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000
				local tornadoTiming = fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))] + travelTime
				if os.clock() - fooAllInOne.lastCastTime > tornadoTiming - 2.9 + 0.25 then
					if NPC.IsEntityInRange(myHero, enemy, 925) then
						Ability.CastPosition(emp, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastTick = os.clock()
						return
					else
						Ability.CastPosition(emp, Entity.GetAbsOrigin(myHero) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(925))
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
			if NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
					local distance = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() - NPC.GetAttackRange(myHero)
						if distance < 0 then
							distance = 0
						end
					local timeToPosition = distance / NPC.GetMoveSpeed(myHero)
					if GameRules.GetGameTime() + timeToPosition < Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.3 then
						if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) then
							fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(NPC.GetAttackRange(myHero)), myHero)	
						else
							if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.3 then
								if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
									Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(100))
									fooAllInOne.lastTick = os.clock()
									return
								end
							end
						end
					else
						if not NPC.IsEntityInRange(myHero, enemy, 950) then
							fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(950), myHero)	
						else
							if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.3 then
								if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
									Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(100))
									fooAllInOne.lastTick = os.clock()
									return
								end
							end
						end
					end
				end
			end			
		end		

		if not Ability.IsReady(chaosMeteor) then
			if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) and not fooAllInOne.InvokerIsAbilityInvoked(myHero, deafeningBlast) then
				fooAllInOne.invokerInvokeAbility(myHero, deafeningBlast)
				fooAllInOne.lastTick = os.clock()
				return
			end
			if fooAllInOne.SleepReady(0.05) and deafeningBlast and Ability.IsCastable(deafeningBlast, myMana) and fooAllInOne.InvokerIsAbilityInvoked(myHero, deafeningBlast) then
				if NPC.HasModifier(enemy, "modifier_invoker_tornado") then
					local blastTime = ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100) - 0.25
					if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - blastTime - NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) then
						Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastTick = os.clock()
						return
					end
				else
					Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
					fooAllInOne.lastTick = os.clock()
					return
				end
			end
		end

		if not Ability.IsReady(tornado) and not Ability.IsReady(emp) and not Ability.IsReady(chaosMeteor) and not Ability.IsReady(deafeningBlast) then
			if refresher and Ability.IsCastable(refresher, myMana) then
				Ability.CastNoTarget(refresher)
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	end

	fooAllInOne.itemUsage(myHero, enemy)

	if not Ability.IsReady(refresher) and Ability.SecondsSinceLastUse(refresher) > 0 and Ability.SecondsSinceLastUse(refresher) < 3 then
		if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
			Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy))
			fooAllInOne.lastTick = os.clock()
			return
		end
		if not Ability.IsReady(chaosMeteor) and not fooAllInOne.InvokerIsAbilityInvoked(myHero, emp) then
			if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) then
				fooAllInOne.invokerInvokeAbility(myHero, emp)
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
		if fooAllInOne.InvokerIsAbilityInvoked(myHero, emp) then
			if fooAllInOne.SleepReady(0.05) and emp and Ability.IsCastable(emp, myMana) then
				if NPC.IsEntityInRange(myHero, enemy, 625) then
							Ability.CastPosition(emp, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(300))
							fooAllInOne.lastTick = os.clock()
							return
						else
							Ability.CastPosition(emp, Entity.GetAbsOrigin(enemy))
							fooAllInOne.lastTick = os.clock()
							return
						end
					Ability.CastPosition(emp, Entity.GetAbsOrigin(enemy))
					fooAllInOne.lastTick = os.clock()
					return
			end
		end
		if not Ability.IsReady(emp) then
			if fooAllInOne.SleepReady(0.05) and deafeningBlast and Ability.IsCastable(deafeningBlast, myMana) and fooAllInOne.InvokerIsAbilityInvoked(myHero, deafeningBlast) then
				Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	end

	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerSwitch) then
		if not Ability.IsReady(refresher) and not Ability.IsReady(chaosMeteor) and not Ability.IsReady(emp) and not Ability.IsReady(deafeningBlast) then
			fooAllInOne.InvokerComboSelector = 11
		end
	end

	fooAllInOne.invokerProcessInstancesWhileComboing(myHero)
	if not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
		fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	end
	return		
end

function fooAllInOne.InvokerComboRefresherAghaBlastMeteorSunstrike(myHero, myMana, enemy, deafeningBlast, chaosMeteor, sunStrike, blink, aghanims, refresher, invoke)

	if not aghanims and not NPC.HasModifier(myHero, "modifier_item_ultimate_scepter_consumed") then return end
	if not refresher then return end
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end
	fooAllInOne.itemUsage(myHero, enemy)

	if Ability.IsReady(refresher) then
		if fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(deafeningBlast), Ability.GetName(chaosMeteor)) and invoke and Ability.IsReady(invoke) then
			if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)) then
				if blink and Ability.IsReady(blink) then
					if NPC.IsEntityInRange(myHero, enemy, 1150 + NPC.GetAttackRange(myHero)) then
						Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(NPC.GetAttackRange(myHero)-50))
						fooAllInOne.lastTick = os.clock()
						return
					else
						fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION", nil, Entity.GetAbsOrigin(enemy), myHero)
						return
					end
				end
				if not blink or (blink and not Ability.IsReady(blink)) then
					fooAllInOne.GenericAttackIssuer("Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil, myHero)
					return
				end
			else
				if fooAllInOne.SleepReady(0.05) and deafeningBlast and Ability.IsCastable(deafeningBlast, myMana) then
					Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
					fooAllInOne.lastTick = os.clock()
					return
				end

				if not Ability.IsReady(deafeningBlast) then
					if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
						Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy))
						fooAllInOne.lastTick = os.clock()
						return
					end
				end

				if not Ability.IsReady(deafeningBlast) and not Ability.IsReady(chaosMeteor) and not fooAllInOne.InvokerIsAbilityInvoked(myHero, sunStrike) then
					if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) then
						fooAllInOne.invokerInvokeAbility(myHero, sunStrike)
						fooAllInOne.lastTick = os.clock()
						return
					end
				end
			end
		end
		
		if NPC.HasModifier(enemy, "modifier_invoker_deafening_blast_knockback") and fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(sunStrike), Ability.GetName(deafeningBlast)) then
			if fooAllInOne.SleepReady(0.05) and sunStrike and Ability.IsCastable(sunStrike, myMana) then
				Ability.CastPosition(sunStrike, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(300))
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	
		if not Ability.IsReady(deafeningBlast) and not Ability.IsReady(chaosMeteor) and not Ability.IsReady(sunStrike) then
			if refresher and Ability.IsCastable(refresher, myMana) then
				Ability.CastNoTarget(refresher)
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	end

	if not Ability.IsReady(refresher) and Ability.SecondsSinceLastUse(refresher) > 0 and Ability.SecondsSinceLastUse(refresher) < 3 then
		if fooAllInOne.SleepReady(0.05) and deafeningBlast and Ability.IsCastable(deafeningBlast, myMana) then
			if NPC.HasModifier(enemy, "modifier_invoker_deafening_blast_knockback") then
				local blastTime = ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100) - 0.25
				if GameRules.GetGameTime() >= Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_deafening_blast_knockback")) - blastTime - NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) then
					Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
					fooAllInOne.lastTick = os.clock()
					return
				end
			else
				Ability.CastPosition(deafeningBlast, Entity.GetAbsOrigin(enemy))
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
		if not Ability.IsReady(deafeningBlast) and not fooAllInOne.InvokerIsAbilityInvoked(myHero, chaosMeteor) then
			if fooAllInOne.SleepReady(0.05) and invoke and Ability.IsCastable(invoke, myMana) then
				fooAllInOne.invokerInvokeAbility(myHero, chaosMeteor)
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
		if not Ability.IsReady(deafeningBlast) and fooAllInOne.InvokerIsAbilityInvoked(myHero, chaosMeteor) then
			if fooAllInOne.SleepReady(0.05) and sunStrike and Ability.IsCastable(sunStrike, myMana) then
				Ability.CastPosition(sunStrike, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(300))
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
		if not Ability.IsReady(deafeningBlast) and fooAllInOne.InvokerIsAbilityInvoked(myHero, chaosMeteor) and not Ability.IsReady(sunStrike) then
			if fooAllInOne.SleepReady(0.05) and chaosMeteor and Ability.IsCastable(chaosMeteor, myMana) then
				Ability.CastPosition(chaosMeteor, Entity.GetAbsOrigin(enemy))
				fooAllInOne.lastTick = os.clock()
				return
			end
		end
	end

	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerSwitch) then
		if not Ability.IsReady(refresher) and not Ability.IsReady(chaosMeteor) and not Ability.IsReady(sunStrike) and not Ability.IsReady(deafeningBlast) then
			fooAllInOne.InvokerComboSelector = 11
		end
	end

	fooAllInOne.invokerProcessInstancesWhileComboing(myHero)
	fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
	return

end

function fooAllInOne.InvokerSkillProcessingTornado(myHero, myMana, enemy)

	if not enemy then return end

	local tornado = NPC.GetAbility(myHero, "invoker_tornado")
		if not tornado then return end

	local tornadoTravelTime = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000
	local blastTravelTime = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100
	local tornadoLiftDuration = fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))]
	local tornadoTiming = tornadoTravelTime + tornadoLiftDuration

	local curTime = GameRules.GetGameTime()

	local delay
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_emp")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_emp")) <= 2.9 then
		if tornadoTiming > 2.95 then
			delay = curTime - Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_emp")) + 2.95 - tornadoTravelTime
		else
			delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
		end
	elseif Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_sun_strike")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_sun_strike")) <= 1.7 then
		if tornadoTiming > 1.75 then
			delay = curTime - Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_sun_strike")) + 1.75 - tornadoTravelTime + 0.1
		else
			delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
		end
	elseif Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_chaos_meteor")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_chaos_meteor")) <= 1.3 + 2 then
		if tornadoTiming > 1.3 then
			delay = curTime - Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_chaos_meteor")) + 3.0 - tornadoTravelTime
		else
			delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
		end
	elseif Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_deafening_blast")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_deafening_blast")) <= Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0)) * 0.25 + blastTravelTime then
		if tornadoTiming > Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0)) * 0.25 + blastTravelTime then
			delay = curTime - Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_deafening_blast")) + Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0)) * 0.25 + blastTravelTime - tornadoTravelTime
		else
			delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
		end
	elseif NPC.HasModifier(enemy, "modifier_invoker_cold_snap") then
		delay = Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_cold_snap")) - 0.1 - tornadoTravelTime
	elseif  NPC.HasModifier(enemy, "modifier_sheepstick_debuff") then
		delay = Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_sheepstick_debuff")) - 0.1 - tornadoTravelTime
	elseif fooAllInOne.TargetDisableTimer(myHero, enemy) > 0 then
		delay = fooAllInOne.TargetDisableTimer(myHero, enemy) + 0.05 - tornadoTravelTime
	else
		delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
	end
		

	return { delay, fooAllInOne.castLinearPrediction(myHero, enemy, Ability.GetCastPoint(NPC.GetAbility(myHero, "invoker_tornado")) + (Entity.GetAbsOrigin(enemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1000) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)) }

end

function fooAllInOne.InvokerSkillProcessingEMP(myHero, myMana, enemy)

	if not enemy then return end

	local emp = NPC.GetAbility(myHero, "invoker_emp")
		if not emp then return end

	local tornadoTravelTime = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000
	local tornadoLiftDuration = fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))]
	local tornadoTiming = tornadoTravelTime + tornadoLiftDuration

	local curTime = GameRules.GetGameTime()

	local delay
	if fooAllInOne.InvokerLastCastedSkill == nil then
		delay = 0.05
	else
		if Ability.GetName(fooAllInOne.InvokerLastCastedSkill) == "invoker_tornado" then
			if fooAllInOne.InvokerLastCastedSkillTime + tornadoTiming > curTime + 2.9 then
				delay = fooAllInOne.InvokerLastCastedSkillTime + tornadoTiming - 2.9
			else
				delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
			end
		else
			delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
		end
	end

	return { delay, Entity.GetAbsOrigin(enemy) }

end

function fooAllInOne.InvokerSkillProcessingMeteor(myHero, myMana, enemy)

	if not enemy then return end

	local chaosMeteor = NPC.GetAbility(myHero, "invoker_chaos_meteor")
		if not chaosMeteor then return end

	local tornadoTravelTime = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000
	local tornadoLiftDuration = fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))]
	local tornadoTiming = tornadoTravelTime + tornadoLiftDuration

	local curTime = GameRules.GetGameTime()

	local delay
	if fooAllInOne.InvokerLastCastedSkill == nil then
		if fooAllInOne.TargetIsInvulnarable(myHero, enemy) > 0 then
			local timing = fooAllInOne.TargetIsInvulnarable(myHero, enemy) - 1.25
			delay = timing
		else
			delay = 0.05
		end
	else
		if Ability.GetName(fooAllInOne.InvokerLastCastedSkill) == "invoker_tornado" then
			if fooAllInOne.InvokerLastCastedSkillTime + tornadoTiming > curTime + 1.3 then
				delay = fooAllInOne.InvokerLastCastedSkillTime + tornadoTiming - 1.3
			else
				delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
			end
		else
			if fooAllInOne.TargetIsInvulnarable(myHero, enemy) > 0 then
				local timing = fooAllInOne.TargetIsInvulnarable(myHero, enemy) - 1.25
				delay = timing
			elseif not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) > 0 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) < ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))] + 0.5) then
					delay = curTime - Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) + tornadoTiming - 1.3
				else
					delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
				end
			elseif NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				delay = Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.3
			else
				delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
			end
		end
	end

	local position = Vector()
	if NPC.HasModifier(enemy, "modifier_invoker_deafening_blast_knockback") or Ability.IsReady(NPC.GetAbility(myHero, "invoker_deafening_blast")) then
		position = Entity.GetAbsOrigin(enemy)
	elseif fooAllInOne.InvokerLastCastedSkill ~= nil and Ability.GetName(fooAllInOne.InvokerLastCastedSkill) == "invoker_deafening_blast" then
		position = Entity.GetAbsOrigin(enemy)
	elseif Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_deafening_blast")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_deafening_blast")) < ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100 + 0.25) then
		position = Entity.GetAbsOrigin(enemy)
	else
		position = (Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(100))
	end

	return { delay, position }

end

function fooAllInOne.InvokerSkillProcessingBlast(myHero, myMana, enemy)

	if not enemy then return end

	local deafeningBlast = NPC.GetAbility(myHero, "invoker_deafening_blast")
		if not deafeningBlast then return end

	local tornadoTravelTime = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000
	local tornadoLiftDuration = fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))]
	local tornadoTiming = tornadoTravelTime + tornadoLiftDuration
	
	local curTime = GameRules.GetGameTime()

	local delay
	if fooAllInOne.InvokerLastCastedSkill == nil then
		if fooAllInOne.TargetIsInvulnarable(myHero, enemy) > 0 then
			local timing = fooAllInOne.TargetIsInvulnarable(myHero, enemy) - ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100) + 0.25
			delay = timing
		else
			delay = 0.05
		end
	else
		if Ability.GetName(fooAllInOne.InvokerLastCastedSkill) == "invoker_tornado" then
			if fooAllInOne.InvokerLastCastedSkillTime + tornadoTiming > curTime + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100 - 0.25 then
				delay = fooAllInOne.InvokerLastCastedSkillTime + tornadoTiming - ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100) + 0.25
			else
				delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
			end
		else
			if fooAllInOne.TargetIsInvulnarable(myHero, enemy) > 0 then
				local timing = fooAllInOne.TargetIsInvulnarable(myHero, enemy) - ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100) + 0.25
				delay = timing
			elseif not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) > 0 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) < ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))] + 0.5) then
					delay = curTime - Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) + tornadoTiming - ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100) + 0.25
				else
					delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
				end
			elseif NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				delay = Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100) + 0.25
			else
				delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
			end
		end
	end

	return { delay, Entity.GetAbsOrigin(enemy) }

end

function fooAllInOne.InvokerSkillProcessingSunstrike(myHero, myMana, enemy)

	if not enemy then return end

	local sunStrike = NPC.GetAbility(myHero, "invoker_sun_strike")
		if not sunStrike then return end

	local tornadoTravelTime = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000
	local tornadoLiftDuration = fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))]
	local tornadoTiming = tornadoTravelTime + tornadoLiftDuration

	local curTime = GameRules.GetGameTime()

	local delay
	if fooAllInOne.InvokerLastCastedSkill == nil then
		if next(fooAllInOne.invokerSunstrikeKSdisabledTargetProcess(myHero, enemy)) ~= {0,0} then
			local timing = fooAllInOne.invokerSunstrikeKSdisabledTargetProcess(myHero, enemy)[1]
			delay = timing
		else
			delay = 0.05
		end
	else
		if Ability.GetName(fooAllInOne.InvokerLastCastedSkill) == "invoker_tornado" then
			if fooAllInOne.InvokerLastCastedSkillTime + tornadoTiming > curTime + 1.7 then
				delay = fooAllInOne.InvokerLastCastedSkillTime + tornadoTiming - 1.7
			else
				delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
			end
		else
			if fooAllInOne.invokerSunstrikeKSdisabledTargetProcess(myHero, enemy)[1] > 0 then
				local timing = fooAllInOne.invokerSunstrikeKSdisabledTargetProcess(myHero, enemy)[1]
				delay = timing
			elseif not NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) < ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))] + 0.5) then
					delay = curTime - Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) + tornadoTiming - 1.7
				else
					delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
				end
			elseif NPC.HasModifier(enemy, "modifier_invoker_tornado") then
				delay = Modifier.GetDieTime(NPC.GetModifier(enemy, "modifier_invoker_tornado")) - 1.7
			else
				delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
			end
		end
	end

	local position = Vector()
	if NPC.HasModifier(enemy, "modifier_invoker_deafening_blast_knockback") then
		position = (Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(250))
	elseif fooAllInOne.InvokerLastCastedSkill ~= nil and Ability.GetName(fooAllInOne.InvokerLastCastedSkill) == "invoker_deafening_blast" then
		position = (Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(300 - (curTime - fooAllInOne.InvokerLastCastedSkillTime)*150))
	elseif Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_deafening_blast")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_deafening_blast")) < ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1100 + 0.25) then
		position = (Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Normalized():Scaled(300))
	elseif NPC.HasModifier(enemy, "modifier_invoker_tornado") then
		position = Entity.GetAbsOrigin(enemy)
	else
		if fooAllInOne.invokerSunstrikeKSdisabledTargetProcess(myHero, enemy)[1] > 0 then
			position = Entity.GetAbsOrigin(enemy)
		else
			position = fooAllInOne.castPrediction(myHero, enemy, Ability.GetCastPoint(NPC.GetAbility(myHero, "invoker_sun_strike")) + 1.7 + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2))
		end
	end

	return { delay, position }

end

function fooAllInOne.InvokerSkillProcessingIcewall(myHero, myMana, enemy)

	if not enemy then return end

	local iceWall = NPC.GetAbility(myHero, "invoker_ice_wall")
		if not iceWall then return end

	local tornadoTravelTime = (Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000
	local tornadoLiftDuration = fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))]
	local tornadoTiming = tornadoTravelTime + tornadoLiftDuration

	local curTime = GameRules.GetGameTime()

	local delay
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) < ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))] + 0.1) then
		delay = curTime - Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) + tornadoTiming - 0.5
	else
		delay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
	end

	return { delay, nil }

end

function fooAllInOne.InvokerComboCustomMode(myHero, myMana, enemy, blink, invoke)

	if not myHero then return end
	if not enemy then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1500) then return end
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	local skillTranslator = {
		"invoker_tornado",
		"invoker_emp",
		"invoker_chaos_meteor", 
		"invoker_deafening_blast",
		"invoker_sun_strike",
		"invoker_ice_wall",
		"invoker_cold_snap",
		"invoker_forge_spirit",
		"invoker_alacrity"
			}
		
	local skillOrder = {}
	if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill1) > 0 then
		table.insert(skillOrder, skillTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill1)])
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill2) > 0 then
		table.insert(skillOrder, skillTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill2)])
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill3) > 0 then
		table.insert(skillOrder, skillTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill3)])
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill4) > 0 then
		table.insert(skillOrder, skillTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill4)])
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill5) > 0 then
		table.insert(skillOrder, skillTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill5)])
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill6) > 0 then
		table.insert(skillOrder, skillTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill6)])
	end

	local skillProcessing = { 
		["invoker_tornado"] = { "position", fooAllInOne.InvokerSkillProcessingTornado(myHero, myMana, enemy) }, 
		["invoker_emp"] = { "position", fooAllInOne.InvokerSkillProcessingEMP(myHero, myMana, enemy) },
		["invoker_chaos_meteor"] = { "position", fooAllInOne.InvokerSkillProcessingMeteor(myHero, myMana, enemy) },
		["invoker_deafening_blast"] = { "position", fooAllInOne.InvokerSkillProcessingBlast(myHero, myMana, enemy) },
		["invoker_sun_strike"] = { "position", fooAllInOne.InvokerSkillProcessingSunstrike(myHero, myMana, enemy) },
		["invoker_ice_wall"] = { "no target", fooAllInOne.InvokerSkillProcessingIcewall(myHero, myMana, enemy) },
		["invoker_cold_snap"] = { "target", enemy },
		["invoker_forge_spirit"] = { "no target", nil },
		["invoker_alacrity"] = { "target", myHero }
				}

	local readyTable = {}
	for i = 1, #skillOrder do
		if Ability.IsReady(NPC.GetAbility(myHero, skillOrder[i])) then
			table.insert(readyTable, NPC.GetAbility(myHero, skillOrder[i]))
		end
	end

	local skill
		if #readyTable > 0 then
			skill = readyTable[1]
		else
			skill = nil
		end
	
	local invokeSkill
		if not Ability.IsReady(NPC.GetAbilityByIndex(myHero, 4)) and Ability.IsReady(NPC.GetAbilityByIndex(myHero, 3)) then
			if #readyTable > 1 then
				invokeSkill = readyTable[2]
			else
				invokeSkill = nil
			end
		elseif not Ability.IsReady(NPC.GetAbilityByIndex(myHero, 4)) and not Ability.IsReady(NPC.GetAbilityByIndex(myHero, 3)) then
			if #readyTable > 0 then
				invokeSkill = readyTable[1]
			else
				invokeSkill = nil
			end
		end

	if invokeSkill then
		if not fooAllInOne.InvokerIsAbilityInvoked(myHero, invokeSkill) then
			if GameRules.GetGameTime() - fooAllInOne.lastCastTime3 > 0.05 and invoke and Ability.IsCastable(invoke, myMana) then
				fooAllInOne.invokerInvokeAbility(myHero, invokeSkill)
				fooAllInOne.lastCastTime3 = GameRules.GetGameTime()
				return
			end
		end
	end

	local processingTempTable = {}
		if skill then
			if Ability.GetName(skill) == "invoker_tornado" or Ability.GetName(skill) == "invoker_emp" or Ability.GetName(skill) == "invoker_chaos_meteor" or Ability.GetName(skill) == "invoker_deafening_blast" or Ability.GetName(skill) == "invoker_sun_strike" or Ability.GetName(skill) == "invoker_ice_wall" then
				table.insert(processingTempTable, skillProcessing[Ability.GetName(skill)][2])
			else
				processingTempTable = {}
			end
		end

	local targetingStyle
		if skill then
			targetingStyle = skillProcessing[Ability.GetName(skill)][1]
		end

	local targetingDelay
		if skill then
			if fooAllInOne.InvokerLastCastedSkill == nil then
				targetingDelay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
			elseif Ability.GetName(skill) == "invoker_tornado" or Ability.GetName(skill) == "invoker_emp" or Ability.GetName(skill) == "invoker_chaos_meteor" or Ability.GetName(skill) == "invoker_deafening_blast" or Ability.GetName(skill) == "invoker_sun_strike" or Ability.GetName(skill) == "invoker_ice_wall" then
				targetingDelay = processingTempTable[1][1]
			else
				targetingDelay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
			end
		end

	local targetingTarget	
		if skill then
			if Ability.GetName(skill) == "invoker_tornado" or Ability.GetName(skill) == "invoker_emp" or Ability.GetName(skill) == "invoker_chaos_meteor" or Ability.GetName(skill) == "invoker_deafening_blast" or Ability.GetName(skill) == "invoker_sun_strike" then
				targetingTarget = processingTempTable[1][2]
			else
				targetingTarget = skillProcessing[Ability.GetName(skill)][2]
			end
		end

	if skill then
		if Ability.GetName(skill) == "invoker_tornado" then
			fooAllInOne.noItemCastFor(((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000) + 0.5)
		else
			fooAllInOne.itemUsage(myHero, enemy)
		end
	end

	if not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_INVULNERABLE) then
		fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
		fooAllInOne.invokerForgedSpiritController(myHero, enemy)
	end


	if skill then
		if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)+200) then
			if blink and Ability.IsReady(blink) then
				if NPC.IsEntityInRange(myHero, enemy, 1150 + NPC.GetAttackRange(myHero)) then
					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(NPC.GetAttackRange(myHero)-100))
					return
				end
			end
		else
			if fooAllInOne.InvokerIsAbilityInvoked(myHero, skill) then
				if GameRules.GetGameTime() > targetingDelay then
					if Ability.IsCastable(skill, myMana) then
						if skillProcessing[Ability.GetName(skill)][1] == "position" then
							Ability.CastPosition(skill, targetingTarget)
							fooAllInOne.InvokerLastCastedSkillTime = GameRules.GetGameTime()
							fooAllInOne.InvokerLastCastedSkill = skill
							return
						end
						if skillProcessing[Ability.GetName(skill)][1] == "target" then
							if not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_INVULNERABLE) then
								Ability.CastTarget(skill, targetingTarget)
								fooAllInOne.InvokerLastCastedSkillTime = GameRules.GetGameTime()
								fooAllInOne.InvokerLastCastedSkill = skill
								return
							end
						end
						if skillProcessing[Ability.GetName(skill)][1] == "no target" then
							if Ability.GetName(skill) == "invoker_ice_wall" then
								if not NPC.IsEntityInRange(myHero, enemy, 600) then
									fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
									return
								else
									fooAllInOne.InvokerIceWallHelper(myHero, enemy, skill, myMana)
									fooAllInOne.InvokerLastCastedSkillTime = GameRules.GetGameTime() + 0.1
									fooAllInOne.InvokerLastCastedSkill = skill
									return
								end
							else
								Ability.CastNoTarget(skill)
								fooAllInOne.InvokerLastCastedSkillTime = GameRules.GetGameTime()
								fooAllInOne.InvokerLastCastedSkill = skill
								return
							end			
						end
					end
				end
			end
		end
	end

	if Menu.IsEnabled(fooAllInOne.optionHeroInvokerSwitch) then
		if next(readyTable) == nil then
			fooAllInOne.InvokerComboSelector = 11
		end
	end
	fooAllInOne.invokerProcessInstancesWhileComboing(myHero)

		
end

function fooAllInOne.InvokerComboDynamicMode(myHero, myMana, enemy, blink, invoke)

	if not myHero then return end
	if not enemy then return end
	if not NPC.IsEntityInRange(myHero, enemy, 1500) then return end
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	local InvokerDynamicSpellsOrder = {}
	if Menu.GetValue(fooAllInOne.optionHeroInvokerDynCS) > 0 then
		table.insert(InvokerDynamicSpellsOrder, { Menu.GetValue(fooAllInOne.optionHeroInvokerDynCS), "invoker_cold_snap" })
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerDynFS) > 0 then
		table.insert(InvokerDynamicSpellsOrder, { Menu.GetValue(fooAllInOne.optionHeroInvokerDynFS), "invoker_forge_spirit" })
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerDynAL) > 0 then
		table.insert(InvokerDynamicSpellsOrder, { Menu.GetValue(fooAllInOne.optionHeroInvokerDynAL), "invoker_alacrity" })
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerDynIW) > 0 then
		table.insert(InvokerDynamicSpellsOrder, { Menu.GetValue(fooAllInOne.optionHeroInvokerDynIW), "invoker_ice_wall" })
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerDynTO) > 0 then
		table.insert(InvokerDynamicSpellsOrder, { Menu.GetValue(fooAllInOne.optionHeroInvokerDynTO), "invoker_tornado" })
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerDynEMP) > 0 then
		table.insert(InvokerDynamicSpellsOrder, { Menu.GetValue(fooAllInOne.optionHeroInvokerDynEMP), "invoker_emp" })
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerDynSS) > 0 then
		table.insert(InvokerDynamicSpellsOrder, { Menu.GetValue(fooAllInOne.optionHeroInvokerDynSS), "invoker_sun_strike" })
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerDynCM) > 0 then
		table.insert(InvokerDynamicSpellsOrder, { Menu.GetValue(fooAllInOne.optionHeroInvokerDynCM), "invoker_chaos_meteor" })
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerDynDB) > 0 then
		table.insert(InvokerDynamicSpellsOrder, { Menu.GetValue(fooAllInOne.optionHeroInvokerDynDB), "invoker_deafening_blast" })
	end

	table.sort(InvokerDynamicSpellsOrder, function(a, b)
        	return a[1] < b[1]
    	end)

	local skillPicker = {}
		if Menu.IsEnabled(fooAllInOne.optionHeroInvokerDynOrder) then
			i = 1
			repeat
				table.insert(skillPicker, InvokerDynamicSpellsOrder[i][2])
				i = i + 1
			until i > #InvokerDynamicSpellsOrder
		else
			skillPicker[1] = "invoker_cold_snap"
			skillPicker[2] = "invoker_forge_spirit"
			skillPicker[3] = "invoker_alacrity" 
			skillPicker[4] = "invoker_ice_wall"
			skillPicker[5] = "invoker_tornado"
			skillPicker[6] = "invoker_emp"
			skillPicker[7] = "invoker_sun_strike"
			skillPicker[8] = "invoker_chaos_meteor" 
			skillPicker[9] = "invoker_deafening_blast"
		end

	

	local skillProcessing = { 
		["invoker_tornado"] = { "position", fooAllInOne.InvokerSkillProcessingTornado(myHero, myMana, enemy) }, 
		["invoker_emp"] = { "position", fooAllInOne.InvokerSkillProcessingEMP(myHero, myMana, enemy) },
		["invoker_chaos_meteor"] = { "position", fooAllInOne.InvokerSkillProcessingMeteor(myHero, myMana, enemy) },
		["invoker_deafening_blast"] = { "position", fooAllInOne.InvokerSkillProcessingBlast(myHero, myMana, enemy) },
		["invoker_sun_strike"] = { "position", fooAllInOne.InvokerSkillProcessingSunstrike(myHero, myMana, enemy) },
		["invoker_ice_wall"] = { "no target", fooAllInOne.InvokerSkillProcessingIcewall(myHero, myMana, enemy) },
		["invoker_cold_snap"] = { "target", enemy },
		["invoker_forge_spirit"] = { "no target", nil },
		["invoker_alacrity"] = { "target", myHero }
				}

	local readyTable = {}
	for i = 1, #skillPicker do
		if Ability.IsReady(NPC.GetAbility(myHero, skillPicker[i])) and not fooAllInOne.InvokerIsAbilityInvoked(myHero, NPC.GetAbility(myHero, skillPicker[i])) then
			table.insert(readyTable, NPC.GetAbility(myHero, skillPicker[i]))
		end
	end

	local skill
	local invokeSkill
	if Ability.IsReady(NPC.GetAbilityByIndex(myHero, 3)) and Ability.GetName(NPC.GetAbilityByIndex(myHero, 3)) == "invoker_tornado" and fooAllInOne.TargetDisableTimer(myHero, enemy) == 0 then
		skill = NPC.GetAbilityByIndex(myHero, 3)	
	elseif Ability.IsReady(NPC.GetAbilityByIndex(myHero, 4)) and Ability.GetName(NPC.GetAbilityByIndex(myHero, 4)) == "invoker_ice_wall" then
		if NPC.IsEntityInRange(myHero, enemy, 800) then
			skill = NPC.GetAbilityByIndex(myHero, 4)
		else
			if Ability.IsReady(NPC.GetAbilityByIndex(myHero, 3)) then
				skill = NPC.GetAbilityByIndex(myHero, 3)
			else
				if next(readyTable) ~= nil then
					if #readyTable >= 1 then
						invokeSkill = readyTable[1]
					else
						skill = nil
						invokeSkill = nil
					end
				end
			end
		end
	elseif Ability.IsReady(NPC.GetAbilityByIndex(myHero, 4)) and Ability.GetName(NPC.GetAbilityByIndex(myHero, 4)) == "invoker_ghost_walk" then
		if Ability.IsReady(NPC.GetAbilityByIndex(myHero, 3)) then
			skill = NPC.GetAbilityByIndex(myHero, 3)
		else
			if next(readyTable) ~= nil then
				if #readyTable >= 1 then
					invokeSkill = readyTable[1]
				else
					skill = nil
					invokeSkill = nil
				end
			end
		end
	elseif Ability.IsReady(NPC.GetAbilityByIndex(myHero, 3)) and Ability.GetName(NPC.GetAbilityByIndex(myHero, 3)) == "invoker_ghost_walk" then
		if Ability.IsReady(NPC.GetAbilityByIndex(myHero, 4)) then
			skill = NPC.GetAbilityByIndex(myHero, 4)
		else
			if next(readyTable) ~= nil then
				if #readyTable >= 1 then
					invokeSkill = readyTable[1]
				else
					skill = nil
					invokeSkill = nil
				end
			end
		end
	elseif Ability.IsReady(NPC.GetAbilityByIndex(myHero, 4)) and Ability.GetName(NPC.GetAbilityByIndex(myHero, 4)) == "invoker_tornado" and fooAllInOne.TargetDisableTimer(myHero, enemy) > 0 then
		skill = NPC.GetAbilityByIndex(myHero, 3)
	elseif Ability.IsReady(NPC.GetAbilityByIndex(myHero, 4)) and Ability.GetName(NPC.GetAbilityByIndex(myHero, 4)) ~= "invoker_ghost_walk" then
		skill = NPC.GetAbilityByIndex(myHero, 4)
	elseif Ability.IsReady(NPC.GetAbilityByIndex(myHero, 3)) and Ability.GetName(NPC.GetAbilityByIndex(myHero, 3)) ~= "invoker_ghost_walk" then
		skill = NPC.GetAbilityByIndex(myHero, 3)
	end

	
	if not Ability.IsReady(NPC.GetAbilityByIndex(myHero, 4)) then
		if next(readyTable) ~= nil then
			if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_tornado")) < ((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000 + fooAllInOne.invokerTornadoLiftDuration[Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0))]) and NPC.GetCurrentLevel(myHero) >= 10 then
				if Ability.GetName(NPC.GetAbilityByIndex(myHero, 3)) == "invoker_emp" then
					if Ability.IsReady(NPC.GetAbility(myHero, "invoker_chaos_meteor")) then
						invokeSkill = NPC.GetAbility(myHero, "invoker_chaos_meteor")
					else
						if Ability.IsReady(NPC.GetAbility(myHero, "invoker_deafening_blast")) then
							invokeSkill = NPC.GetAbility(myHero, "invoker_deafening_blast")
						else
							invokeSkill = readyTable[1]
						end
					end
				elseif Ability.GetName(NPC.GetAbilityByIndex(myHero, 3)) == "invoker_sun_strike" then
					if Ability.IsReady(NPC.GetAbility(myHero, "invoker_chaos_meteor")) then
						invokeSkill = NPC.GetAbility(myHero, "invoker_chaos_meteor")
					else
						if Ability.IsReady(NPC.GetAbility(myHero, "invoker_deafening_blast")) then
							invokeSkill = NPC.GetAbility(myHero, "invoker_deafening_blast")
						else
							invokeSkill = readyTable[1]
						end
					end
				elseif Ability.GetName(NPC.GetAbilityByIndex(myHero, 3)) == "invoker_chaos_meteor" then
					if Ability.IsReady(NPC.GetAbility(myHero, "invoker_deafening_blast")) then
						invokeSkill = NPC.GetAbility(myHero, "invoker_deafening_blast")
					else
						invokeSkill = readyTable[1]
					end
				else
					invokeSkill = readyTable[1]
				end
			else
				if fooAllInOne.InvokerLastCastedSkill ~= nil and Ability.GetName(fooAllInOne.InvokerLastCastedSkill) == "invoker_deafening_blast" and Ability.GetName(NPC.GetAbilityByIndex(myHero, 3)) == "invoker_chaos_meteor" then
					if Ability.IsReady(NPC.GetAbility(myHero, "invoker_sun_strike")) then
						invokeSkill = NPC.GetAbility(myHero, "invoker_sun_strike")
					else
						invokeSkill = readyTable[1]
					end
				elseif  Ability.GetName(readyTable[1]) == "invoker_ice_wall" and #readyTable >= 1 then
					if NPC.IsEntityInRange(myHero, enemy, 800) then
						invokeSkill = readyTable[1]
					else
						if #readyTable > 1 then
							invokeSkill = readyTable[2]
						else
							invokeSkill = nil
						end
					end
				elseif  Ability.GetName(readyTable[1]) == "invoker_sun_strike" and #readyTable >= 1 then
					if fooAllInOne.invokerSunstrikeKSdisabledTargetProcess(myHero, enemy)[1] > 0 then
						invokeSkill = readyTable[1]
					else
						if NPC.HasModifier(enemy, "modifier_sheepstick_debuff") or NPC.HasModifier(enemy, "modifier_invoker_cold_snap") or NPC.HasModifier(enemy, "modifier_invoker_ice_wall_slow_debuff") then
							invokeSkill = readyTable[1]
						else
							if #readyTable > 1 then
								invokeSkill = readyTable[2]
							else
								invokeSkill = nil
							end
						end
					end
				else
					invokeSkill = readyTable[1]
				end
			end
		end
	end

	if invokeSkill then
		if not fooAllInOne.InvokerIsAbilityInvoked(myHero, invokeSkill) then
			if GameRules.GetGameTime() - fooAllInOne.lastCastTime3 > 0.05 and invoke and Ability.IsCastable(invoke, myMana) then
				fooAllInOne.invokerInvokeAbility(myHero, invokeSkill)
				fooAllInOne.lastCastTime3 = GameRules.GetGameTime()
				return
			end
		end
	end

	local processingTempTable = {}
		if skill then
			if Ability.GetName(skill) == "invoker_tornado" or Ability.GetName(skill) == "invoker_emp" or Ability.GetName(skill) == "invoker_chaos_meteor" or Ability.GetName(skill) == "invoker_deafening_blast" or Ability.GetName(skill) == "invoker_sun_strike" or Ability.GetName(skill) == "invoker_ice_wall" then
				table.insert(processingTempTable, skillProcessing[Ability.GetName(skill)][2])
			else
				processingTempTable = {}
			end
		end

	local targetingStyle
		if skill then
			targetingStyle = skillProcessing[Ability.GetName(skill)][1]
		end

	local targetingDelay
		if skill then
			if Ability.GetName(skill) == "invoker_tornado" or Ability.GetName(skill) == "invoker_emp" or Ability.GetName(skill) == "invoker_chaos_meteor" or Ability.GetName(skill) == "invoker_deafening_blast" or Ability.GetName(skill) == "invoker_sun_strike" or Ability.GetName(skill) == "invoker_ice_wall" then
				targetingDelay = processingTempTable[1][1]
			elseif Ability.GetName(skill) == "invoker_alacrity" or Ability.GetName(skill) == "invoker_forge_spirit" or Ability.GetName(skill) == "invoker_cold_snap" then
				targetingDelay = fooAllInOne.InvokerLastCastedSkillTime + 0.05
			end
		end

	local targetingTarget	
		if skill then
			if Ability.GetName(skill) == "invoker_tornado" or Ability.GetName(skill) == "invoker_emp" or Ability.GetName(skill) == "invoker_chaos_meteor" or Ability.GetName(skill) == "invoker_deafening_blast" or Ability.GetName(skill) == "invoker_sun_strike" then
				targetingTarget = processingTempTable[1][2]
			else
				targetingTarget = skillProcessing[Ability.GetName(skill)][2]
			end
		end

	if skill then
		if Ability.GetName(skill) == "invoker_tornado" then
			fooAllInOne.noItemCastFor(((Entity.GetAbsOrigin(enemy) - Entity.GetAbsOrigin(myHero)):Length2D() / 1000) + 0.5)
		else
			fooAllInOne.itemUsage(myHero, enemy)
		end
	end

	if not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_INVULNERABLE) then
		if skill and not Ability.GetName(skill) == "invoker_ice_wall" then
			fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
			fooAllInOne.invokerForgedSpiritController(myHero, enemy)
		elseif not skill then
			fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
			fooAllInOne.invokerForgedSpiritController(myHero, enemy)
		end
	end

	if skill then
		if not NPC.IsEntityInRange(myHero, enemy, NPC.GetAttackRange(myHero)+200) then
			if blink and Ability.IsReady(blink) then
				if NPC.IsEntityInRange(myHero, enemy, 1150 + NPC.GetAttackRange(myHero)) then
					Ability.CastPosition(blink, Entity.GetAbsOrigin(enemy) + (Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Normalized():Scaled(NPC.GetAttackRange(myHero)-100))
					return
				end
			end
		else
			if fooAllInOne.InvokerIsAbilityInvoked(myHero, skill) then
				if GameRules.GetGameTime() > targetingDelay then
					if Ability.IsCastable(skill, myMana) then
						if skillProcessing[Ability.GetName(skill)][1] == "position" then
							Ability.CastPosition(skill, targetingTarget)
							fooAllInOne.InvokerLastCastedSkillTime = GameRules.GetGameTime()
							fooAllInOne.InvokerLastCastedSkill = skill
							return
						end
						if skillProcessing[Ability.GetName(skill)][1] == "target" then
							if not NPC.HasState(enemy, Enum.ModifierState.MODIFIER_STATE_INVULNERABLE) then
								Ability.CastTarget(skill, targetingTarget)
								fooAllInOne.InvokerLastCastedSkillTime = GameRules.GetGameTime()
								fooAllInOne.InvokerLastCastedSkill = skill
								return
							end
						end
						if skillProcessing[Ability.GetName(skill)][1] == "no target" then
							if Ability.GetName(skill) == "invoker_ice_wall" then
								if not NPC.IsEntityInRange(myHero, enemy, 600) then
									fooAllInOne.GenericMainAttack(myHero, "Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET", enemy, nil)
									return
								else
									fooAllInOne.InvokerIceWallHelper(myHero, enemy, skill, myMana)
									fooAllInOne.InvokerLastCastedSkillTime = GameRules.GetGameTime() + 0.5
									fooAllInOne.InvokerLastCastedSkill = skill
									return
								end
							else
								Ability.CastNoTarget(skill)
								fooAllInOne.InvokerLastCastedSkillTime = GameRules.GetGameTime()
								fooAllInOne.InvokerLastCastedSkill = skill
								return
							end		
						end
					end
				end
			end
		end
	end
	fooAllInOne.invokerProcessInstancesWhileComboing(myHero)
end

function fooAllInOne.InvokerFastIceWall(myHero, myMana, invoke, enemy)

	if not Menu.IsEnabled(fooAllInOne.optionHeroInvokerIcewallEnable) then return end
	if not myHero then return end
	if enemy then
		if not NPC.IsEntityInRange(myHero, enemy, 600) then
			enemy = nil
		end
	end

	if NPC.IsSilenced(myHero) or NPC.IsStunned(myHero) then return end
	
	if Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0)) < 1 or Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 2)) < 1 then return end
	
	local iceWall = NPC.GetAbility(myHero, "invoker_ice_wall")
		if not iceWall then return end
		if not Ability.IsReady(iceWall) then return end

	if not fooAllInOne.InvokerIsAbilityInvoked(myHero, iceWall) then
		if invoke and Ability.IsCastable(invoke, myMana-175) then
			if enemy then
				fooAllInOne.invokerInvokeAbility(myHero, iceWall)
				fooAllInOne.InvokerIceWallHelper(myHero, enemy, iceWall, myMana)
				return
			else
				fooAllInOne.invokerInvokeAbility(myHero, iceWall)
				Ability.CastNoTarget(iceWall, true)
				return
			end
		end
	else
		if Ability.IsCastable(iceWall, myMana) then
			if enemy then
				fooAllInOne.InvokerIceWallHelper(myHero, enemy, iceWall, myMana)
			else
				Ability.CastNoTarget(iceWall)
				return
			end
		end
	end

end

function fooAllInOne.InvokerCancelChannelingAbilities(myHero, myMana, enemy, invoke, coldSnap, tornado)

	if Menu.IsKeyDownOnce(fooAllInOne.optionComboKey) then return end
	if Menu.IsKeyDown(fooAllInOne.optionComboKey) then return end

	if os.clock() - fooAllInOne.invokerChannellingKillstealTimer <= 3 then return end

	if not myHero then return end

	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end
	if NPC.HasModifier(myHero, "modifier_teleporting") then return end
	if NPC.IsChannellingAbility(myHero) then return end
	if NPC.IsSilenced(myHero) or NPC.IsStunned(myHero) or NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) or NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVULNERABLE) then return end	

	if Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0)) < 1 or Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 1)) < 1 or Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 2)) < 1 then return end

	if not coldSnap or not tornado then return end
	if not Ability.IsReady(coldSnap) and not Ability.IsReady(tornado) then return end
	if not fooAllInOne.InvokerIsAbilityInvoked(myHero, coldSnap) and not fooAllInOne.InvokerIsAbilityInvoked(myHero, tornado) and not Ability.IsCastable(invoke, myMana) then return end

	local channellingTable = {
		npc_dota_hero_bane = { "bane_fiends_grip", { 5, 5, 5 } },
		npc_dota_hero_crystal_maiden = { "crystal_maiden_freezing_field", { 10, 10, 10} },
		npc_dota_hero_enigma = { "enigma_black_hole", { 4, 4, 4 } },
		npc_dota_hero_oracle = { "oracle_fortunes_end", { 2.5, 2.5, 2.5, 2.5 } },
		npc_dota_hero_pudge = { "pudge_dismember", { 3, 3, 3 } },
		npc_dota_hero_pugna = { "pugna_life_drain", { 10, 10, 10 } },
		npc_dota_hero_sand_king = { "sandking_epicenter", { 2, 2, 2} },
		npc_dota_hero_shadow_shaman = { "shadow_shaman_shackles", { 2.75, 3.5, 4.25, 5 } },
		npc_dota_hero_tinker = { "tinker_rearm", { 3, 1.5, 0.75 } },
		npc_dota_hero_warlock = { "warlock_upheaval", { 16, 16, 16, 16 } },
		npc_dota_hero_witch_doctor = { "witch_doctor_death_ward", { 8, 8, 8} }
				}

	local cancelEnemies = NPC.GetHeroesInRadius(myHero, 1950, Enum.TeamType.TEAM_ENEMY)
	for _, cancelEnemy in ipairs(cancelEnemies) do
		if cancelEnemy and not NPC.IsDormant(cancelEnemy) and not NPC.IsIllusion(cancelEnemy) and Entity.IsAlive(cancelEnemy) then
			if NPC.IsChannellingAbility(cancelEnemy) or NPC.HasModifier(cancelEnemy, "modifier_teleporting") then
				local skillSelector
				if not NPC.IsLinkensProtected(cancelEnemy) then
					if fooAllInOne.InvokerIsAbilityInvoked(myHero, coldSnap) then
						if Ability.IsCastable(coldSnap, myMana) then
							if NPC.IsEntityInRange(myHero, cancelEnemy, 999) then
								skillSelector = coldSnap
							else
								if Ability.IsCastable(tornado, myMana) then
									if NPC.IsEntityInRange(myHero, cancelEnemy, (400 + Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 1)) * 400)) then
										skillSelector = tornado
									else
										skillSelector = nil
									end
								else
									skillSelector = nil
								end
							end
						else
							if NPC.IsEntityInRange(myHero, cancelEnemy, (400 + Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 1)) * 400)) then
								skillSelector = tornado
							else
								skillSelector = nil
							end
						end
					else
						if fooAllInOne.InvokerIsAbilityInvoked(myHero, tornado) then
							if Ability.IsCastable(tornado, myMana) then
								if NPC.IsEntityInRange(myHero, cancelEnemy, (400 + Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 1)) * 400)) then	
									skillSelector = tornado
								else
									if NPC.IsEntityInRange(myHero, cancelEnemy, 999) then
										skillSelector = coldSnap
									else
										skillSelector = nil
									end
								end
							else
								if NPC.IsEntityInRange(myHero, cancelEnemy, 999) then
									skillSelector = coldSnap
								else
									skillSelector = nil
								end
							end
						else
							if Ability.IsCastable(coldSnap, myMana) then
								if NPC.IsEntityInRange(myHero, cancelEnemy, 999) then
									skillSelector = coldSnap
								else
									if Ability.IsCastable(tornado, myMana) then
										if NPC.IsEntityInRange(myHero, cancelEnemy, (400 + Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 1)) * 400)) then
											skillSelector = tornado
										else
											skillSelector = nil
										end
									else
										skillSelector = nil
									end
								end
							else
								skillSelector = tornado
							end
						end	
					end
				else
					if Ability.IsCastable(tornado, myMana) then
						if NPC.IsEntityInRange(myHero, cancelEnemy, (400 + Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 1)) * 400)) then
							skillSelector = tornado
						else
							skillSelector = nil
						end
					else
						skillSelector = nil
					end
				end
				if skillSelector == nil then
					break
					return
				end
				if not NPC.HasState(cancelEnemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) then
					if skillSelector == coldSnap then
						if NPC.GetUnitName(cancelEnemy) ~= nil then
							for i, v in pairs(channellingTable) do
								if (NPC.GetUnitName(cancelEnemy) == i and Ability.IsChannelling(NPC.GetAbility(cancelEnemy, v[1]))) or NPC.HasModifier(cancelEnemy, "modifier_teleporting") then
									if not fooAllInOne.InvokerIsAbilityInvoked(myHero, coldSnap) then
										if invoke and Ability.IsCastable(invoke, myMana) then
											fooAllInOne.invokerInvokeAbility(myHero, coldSnap)
											return
										end
									else
										if Ability.IsCastable(coldSnap, myMana) then
											Ability.CastTarget(coldSnap, cancelEnemy)
											fooAllInOne.invokerChannellingKillstealTimer = os.clock()
											break
											return
										end
									end
								end
							end
						end
					elseif skillSelector == tornado then
						if NPC.IsChannellingAbility(cancelEnemy) then
							if NPC.GetUnitName(cancelEnemy) ~= nil then
								for i, v in pairs(channellingTable) do
									if NPC.GetUnitName(cancelEnemy) == i and Ability.IsChannelling(NPC.GetAbility(cancelEnemy, v[1])) then
										if Ability.GetChannelStartTime(NPC.GetAbility(cancelEnemy, v[1])) + v[2][Ability.GetLevel(NPC.GetAbility(cancelEnemy, v[1]))] > GameRules.GetGameTime() + ((Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Length2D() / 1000) then
											if not fooAllInOne.InvokerIsAbilityInvoked(myHero, tornado) then
												if invoke and Ability.IsCastable(invoke, myMana) then
													fooAllInOne.invokerInvokeAbility(myHero, tornado)
													return
												end
											else
												if Ability.IsCastable(tornado, myMana) then
													Ability.CastPosition(tornado, Entity.GetAbsOrigin(cancelEnemy))
													fooAllInOne.invokerChannellingKillstealTimer = os.clock()
													break
													return
												end
											end
										else
											return
										end
									end
								end
							end
						end
						if NPC.HasModifier(cancelEnemy, "modifier_teleporting") then
							if GameRules.GetGameTime() + ((Entity.GetAbsOrigin(myHero) - Entity.GetAbsOrigin(enemy)):Length2D() / 1000) < Modifier.GetDieTime(NPC.GetModifier(cancelEnemy, "modifier_teleporting")) then
								if not fooAllInOne.InvokerIsAbilityInvoked(myHero, tornado) then
									if invoke and Ability.IsCastable(invoke, myMana) then
										fooAllInOne.invokerInvokeAbility(myHero, tornado)
										return
									end
								else
									if Ability.IsCastable(tornado, myMana) then
										Ability.CastPosition(tornado, Entity.GetAbsOrigin(cancelEnemy))
										fooAllInOne.invokerChannellingKillstealTimer = os.clock()
										return
									end
								end
							else
								return
							end
						end
					end
				end
			end
		end
	end

	if next(cancelEnemies) == nil then
		if fooAllInOne.TPParticleTime > 0 and fooAllInOne.TPParticlePosition ~= Vector() then
			if GameRules.GetGameTime() + ((Entity.GetAbsOrigin(myHero) - fooAllInOne.TPParticlePosition):Length2D() / 1000) < fooAllInOne.TPParticleTime + 2.5 then
				if NPC.IsPositionInRange(myHero, fooAllInOne.TPParticlePosition, (400 + Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 1)) * 400), 0) then
					if tornado and Ability.IsReady(tornado) then
						if not fooAllInOne.InvokerIsAbilityInvoked(myHero, tornado) then
							if invoke and Ability.IsCastable(invoke, myMana) then
								fooAllInOne.invokerInvokeAbility(myHero, tornado)
								return
							end
						else
							if Ability.IsCastable(tornado, myMana) then
								Ability.CastPosition(tornado, fooAllInOne.TPParticlePosition)
								fooAllInOne.invokerChannellingKillstealTimer = os.clock()
								fooAllInOne.TPParticleIndex = nil
								fooAllInOne.TPParticleTime = 0
								fooAllInOne.TPParticlePosition = Vector()
								return
							end
						end
					end
				end
			end
		end
	end			

end

function fooAllInOne.InvokerPreInvoke(myHero, myMana, invoke)

	if not myHero then return end
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	if os.clock() - fooAllInOne.lastTick < 0.5 then return end

	if Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0)) < 1 or Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 1)) < 1 or Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 2)) < 1 then
		fooAllInOne.PreInvokeSkills = {}
		return
	end

	local skill1
	local skill2
	for _, v in ipairs(fooAllInOne.PreInvokeSkills) do
		if v then
			skill1 = v[1]
			skill2 = v[2]
		end
	end
		
	local invokeChecker = fooAllInOne.InvokerInvokedChecker(myHero, Ability.GetName(skill1), Ability.GetName(skill2))

	if invokeChecker then
		fooAllInOne.PreInvokeSkills = {}
		return
	end

	if next(fooAllInOne.PreInvokeSkills) == nil then return end

	if Ability.GetName(NPC.GetAbilityByIndex(myHero, 3)) ~= Ability.GetName(skill2) then
		if invoke and Ability.IsCastable(invoke, myMana) then
			fooAllInOne.invokerInvokeAbility(myHero, skill2)
			fooAllInOne.lastTick = os.clock()
			return
		end
	end

	if Ability.GetName(NPC.GetAbilityByIndex(myHero, 3)) == Ability.GetName(skill2) then
		if invoke and Ability.IsCastable(invoke, myMana) then
			fooAllInOne.invokerInvokeAbility(myHero, skill1)
			fooAllInOne.lastTick = os.clock()
			return
		end
	end
end
			
function fooAllInOne.InvokerIsAbilityInvoked(myHero, skill)

	for i = 3, 4 do
		if Ability.GetName(NPC.GetAbilityByIndex(myHero, i)) == Ability.GetName(skill) then
			return true
		end
	end
	
	return false

end
	

function fooAllInOne.InvokerInvokedChecker(myHero, skill1, skill2)

	if Ability.GetName(NPC.GetAbilityByIndex(myHero,3)) == skill1 and Ability.GetName(NPC.GetAbilityByIndex(myHero,4)) == skill2 then
		return true
	end
	
	return false

end

function fooAllInOne.invokerInvokeAbility(myHero, ability)
	
	if not myHero then return end
	if not ability then return end

	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	local skillName = Ability.GetName(ability)
    		if not skillName then return end

	local invokeOrder = fooAllInOne.invokerInvokeOrder[skillName]
    		if not invokeOrder then return end

	local invoke = NPC.GetAbility(myHero, "invoker_invoke")
		if not invoke then return end

	for i, v in ipairs(invokeOrder) do
        	local orb = NPC.GetAbilityByIndex(myHero, v)

        	if orb then
			Ability.CastNoTarget(orb)
		end
	end

	Ability.CastNoTarget(invoke)

end

function fooAllInOne.invokerProcessInstancesWhileComboing(myHero)

	if not myHero then return end
	if NPC.IsChannellingAbility(myHero) then return end
	if NPC.IsSilenced(myHero) or NPC.IsStunned(myHero) or NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) or NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVULNERABLE) then return end

	if Ability.GetCooldownTimeLeft(NPC.GetAbility(myHero, "invoker_invoke")) < 0.25 then return end
	if Ability.IsReady(NPC.GetAbility(myHero, "invoker_invoke")) then return end
	

	if os.clock() - fooAllInOne.InvokerCaptureManualInstances < 2.5 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 1 then return end

	if os.clock() - fooAllInOne.InvokerLastChangedInstance < 0.75 then return end

	local instanceTable = {}
	local modifiers = NPC.GetModifiers(myHero)
	for _, modifier in ipairs(modifiers) do
		if modifier then
			local modifierName = Modifier.GetName(modifier)
			if modifierName == "modifier_invoker_quas_instance" or modifierName == "modifier_invoker_wex_instance" or modifierName == "modifier_invoker_exort_instance" then
				table.insert(instanceTable, modifierName)
			end
		end
	end

	if #instanceTable < 3 then return end

	if Entity.GetHealth(myHero) < Entity.GetMaxHealth(myHero) * 0.25 then
		if instanceTable[1] ~= "modifier_invoker_quas_instance" or instanceTable[2] ~= "modifier_invoker_quas_instance" or instanceTable[3] ~= "modifier_invoker_quas_instance" then
			fooAllInOne.invokerChangeInstances(myHero, "QQQ")
			fooAllInOne.InvokerLastChangedInstance = os.clock()
		end
	else
		if instanceTable[1] ~= "modifier_invoker_exort_instance" or instanceTable[2] ~= "modifier_invoker_exort_instance" or instanceTable[3] ~= "modifier_invoker_exort_instance" then
			fooAllInOne.invokerChangeInstances(myHero, "EEE")
			fooAllInOne.InvokerLastChangedInstance = os.clock()
		end
	end

end

function fooAllInOne.invokerProcessInstances(myHero, order)

	if not myHero then return end
	if not order then return end
	if os.clock() - fooAllInOne.InvokerCaptureManualInstances < 2.5 then return end
	if next(fooAllInOne.PreInvokeSkills) ~= nil then return end

	if Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0)) < 1 or Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 2)) < 1 or Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 2)) < 1 then
		return
	end

	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 1 then return end
	
	if NPC.HasModifier(myHero, "modifier_teleporting") then return end
	if NPC.IsChannellingAbility(myHero) then return end
	if NPC.IsSilenced(myHero) or NPC.IsStunned(myHero) or NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) or NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVULNERABLE) then return end

	if os.clock() - fooAllInOne.InvokerLastChangedInstance < Menu.GetValue(fooAllInOne.optionHeroInvokerInstanceDelay) * 0.25 then return end

	if Menu.IsKeyDownOnce(fooAllInOne.optionComboKey) then return end
	if Menu.IsKeyDown(fooAllInOne.optionComboKey) then return end

	local instanceTable = {}
	local modifiers = NPC.GetModifiers(myHero)
	for _, modifier in ipairs(modifiers) do
		if modifier then
			local modifierName = Modifier.GetName(modifier)
			if modifierName == "modifier_invoker_quas_instance" or modifierName == "modifier_invoker_wex_instance" or modifierName == "modifier_invoker_exort_instance" then
				table.insert(instanceTable, modifierName)
			end
		end
	end

	if #instanceTable < 3 then return end

	if order == Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_POSITION or order == Enum.UnitOrder.DOTA_UNIT_ORDER_MOVE_TO_TARGET then
		if Entity.GetHealth(myHero) < Entity.GetMaxHealth(myHero) then
			if instanceTable[1] ~= "modifier_invoker_quas_instance" or instanceTable[2] ~= "modifier_invoker_quas_instance" or instanceTable[3] ~= "modifier_invoker_quas_instance" then
				fooAllInOne.invokerChangeInstances(myHero, "QQQ")
				fooAllInOne.InvokerLastChangedInstance = os.clock()
			end
		else
			if instanceTable[1] ~= "modifier_invoker_wex_instance" or instanceTable[2] ~= "modifier_invoker_wex_instance" or instanceTable[3] ~= "modifier_invoker_wex_instance" then
				fooAllInOne.invokerChangeInstances(myHero, "WWW")
				fooAllInOne.InvokerLastChangedInstance = os.clock()
			end
		end
	end

	if order == Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_MOVE or order == Enum.UnitOrder.DOTA_UNIT_ORDER_ATTACK_TARGET then
		if instanceTable[1] ~= "modifier_invoker_exort_instance" or instanceTable[2] ~= "modifier_invoker_exort_instance" or instanceTable[3] ~= "modifier_invoker_exort_instance" then
			fooAllInOne.invokerChangeInstances(myHero, "EEE")
			fooAllInOne.InvokerLastChangedInstance = os.clock()
		end
	end

end		

function fooAllInOne.invokerChangeInstances(myHero, instance)

	if not myHero then return end
	if not instance then return end

	if Menu.IsKeyDownOnce(fooAllInOne.optionHeroInvokerGhostKey) then return end
	if Menu.IsKeyDown(fooAllInOne.optionHeroInvokerGhostKey) then return end
	
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 1 then return end
	if NPC.HasModifier(myHero, "modifier_invoker_ghost_walk_self") then return end

	if Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 0)) < 1 or Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 2)) < 1 or Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 2)) < 1 then
		return
	end

	local invokeOrder = {}
	if instance == "QQQ" then
		invokeOrder = {0,0,0}
	elseif instance == "WWW" then
		invokeOrder = {1,1,1}
	elseif instance == "EEE" then
		invokeOrder = {2,2,2}
	end

	for i, v in ipairs(invokeOrder) do
        	local orb = NPC.GetAbilityByIndex(myHero, v)

        	if orb then
			Ability.CastNoTarget(orb)
		end
	end

end

function fooAllInOne.invokerSunstrikeKSdisabledTargetProcess(myHero, enemy)

	if not myHero then return end
	if not enemy then return end

	local sunStrike = NPC.GetAbility(myHero, "invoker_sun_strike")
	if not sunStrike or (sunStrike and not Ability.IsReady(sunStrike)) then return { 0, 0 } end
	local aghanims = NPC.GetItem(myHero, "item_ultimate_scepter", true)
	local sunStrikeDMG = 37.5 + (62.5 * Ability.GetLevel(NPC.GetAbility(myHero, "invoker_exort")))
		if aghanims or NPC.HasModifier(myHero, "modifier_item_ultimate_scepter_consumed") then
			sunStrikeDMG = 37.5 + (62.5 * (Ability.GetLevel(NPC.GetAbility(myHero, "invoker_exort")) + 1))
		end

	local curTime = GameRules.GetGameTime()

	local stunRootList = {
		"modifier_stunned",
		"modifier_bashed",
		"modifier_alchemist_unstable_concoction", 
		"modifier_ancientapparition_coldfeet_freeze", 
		"modifier_axe_berserkers_call",
		"modifier_bane_fiends_grip",
		"modifier_bane_nightmare",
		"modifier_bloodseeker_rupture",
		"modifier_rattletrap_hookshot", 
		"modifier_earthshaker_fissure_stun", 
		"modifier_earth_spirit_boulder_smash",
		"modifier_enigma_black_hole_pull",
		"modifier_faceless_void_chronosphere_freeze",
		"modifier_jakiro_ice_path_stun", 
		"modifier_keeper_of_the_light_mana_leak_stun", 
		"modifier_kunkka_torrent", 
		"modifier_legion_commander_duel", 
		"modifier_lion_impale", 
		"modifier_magnataur_reverse_polarity", 
		"modifier_medusa_stone_gaze_stone", 
		"modifier_morphling_adaptive_strike", 
		"modifier_naga_siren_ensnare", 
		"modifier_nyx_assassin_impale", 
		"modifier_pudge_dismember", 
		"modifier_sandking_impale", 
		"modifier_shadow_shaman_shackles", 
		"modifier_techies_stasis_trap_stunned", 
		"modifier_tidehunter_ravage", 
		"modifier_treant_natures_guise",
		"modifier_windrunner_shackle_shot",
		"modifier_rooted", 
		"modifier_crystal_maiden_frostbite", 
		"modifier_ember_spirit_searing_chains", 
		"modifier_meepo_earthbind",
		"modifier_lone_druid_spirit_bear_entangle_effect",
		"modifier_slark_pounce_leash",
		"modifier_storm_spirit_electric_vortex_pull",
		"modifier_treant_overgrowth", 
		"modifier_abyssal_underlord_pit_of_malice_ensare", 
		"modifier_item_rod_of_atos_debuff",
		"modifier_eul_cyclone",
		"modifier_obsidian_destroyer_astral_imprisonment_prison",
		"modifier_shadow_demon_disruption",
		"modifier_teleporting"
			}
	
	local searchMod
	for _, modifier in ipairs(stunRootList) do
		if NPC.HasModifier(enemy, modifier) then
			searchMod = NPC.GetModifier(enemy, modifier)
			break
		end
	end

	local timing = 0
	local HPtreshold = 0
	if searchMod then
		if NPC.HasModifier(enemy, Modifier.GetName(searchMod)) then
			if Modifier.GetName(searchMod) == "modifier_enigma_black_hole_pull" then
				if Modifier.GetCreationTime(searchMod) + 4 - curTime >= 1.5 then
					timing = Modifier.GetCreationTime(searchMod) + 0.3
					HPtreshold = sunStrikeDMG + 2 * fooAllInOne.GetTeammateAbilityLevel(myHero, "enigma_black_hole") * 37
				else
					timing = 0
					HPtreshold = 0
				end
			elseif Modifier.GetName(searchMod) == "modifier_faceless_void_chronosphere_freeze" then
				if Modifier.GetCreationTime(searchMod) + (3.5 + fooAllInOne.GetTeammateAbilityLevel(myHero, "faceless_void_chronosphere") * 0.5) - curTime >= 1.5 then
					timing = Modifier.GetCreationTime(searchMod)
					HPtreshold = sunStrikeDMG * 1.25
				else
					timing = 0
					HPtreshold = 0
				end
			elseif Modifier.GetName(searchMod) == "modifier_axe_berserkers_call" then
				if Modifier.GetDieTime(searchMod) - curTime >= 1.5 then
					timing = Modifier.GetCreationTime(searchMod)
					HPtreshold = sunStrikeDMG * 1.35
				else
					timing = 0
					HPtreshold = 0
				end
			elseif Modifier.GetName(searchMod) == "modifier_bane_fiends_grip" then
				if Modifier.GetDieTime(searchMod) - curTime >= 1.5 then
					timing = Modifier.GetCreationTime(searchMod) + 0.3
					HPtreshold = sunStrikeDMG + 2 * (45 + fooAllInOne.GetTeammateAbilityLevel(myHero, "bane_fiends_grip") * 55)
				else
					timing = 0
					HPtreshold = 0
				end
			elseif Modifier.GetName(searchMod) == "modifier_legion_commander_duel" then
				if Modifier.GetDieTime(searchMod) - curTime >= 1.5 then
					timing = Modifier.GetCreationTime(searchMod)
					HPtreshold = sunStrikeDMG * 1.35
				else
					timing = 0
					HPtreshold = 0
				end
			elseif Modifier.GetName(searchMod) == "modifier_pudge_dismember" then
				if Modifier.GetDieTime(searchMod) - curTime >= 1.5 then
					timing = Modifier.GetCreationTime(searchMod) + 0.3
					HPtreshold = sunStrikeDMG + 2 * (22 + fooAllInOne.GetTeammateAbilityLevel(myHero, "pudge_dismember") * 22)
				else
					timing = 0
					HPtreshold = 0
				end
			elseif Modifier.GetName(searchMod) == "modifier_crystal_maiden_frostbite" then
				if Modifier.GetDieTime(searchMod) - curTime >= 1.5 then
					timing = Modifier.GetCreationTime(searchMod) + 0.3
					HPtreshold = sunStrikeDMG + 75
				else
					timing = 0
					HPtreshold = 0
				end
			elseif Modifier.GetName(searchMod) == "modifier_ember_spirit_searing_chains" then
				if Modifier.GetDieTime(searchMod) - curTime >= 1.5 then
					timing = Modifier.GetCreationTime(searchMod) + 0.3
					HPtreshold = sunStrikeDMG + 85
				else
					timing = 0
					HPtreshold = 0
				end
			elseif Modifier.GetName(searchMod) == "modifier_eul_cyclone" then
				if Modifier.GetDieTime(searchMod) - curTime >= 1.5 then
					timing = Modifier.GetDieTime(searchMod) - 1.7 + 0.05
					HPtreshold = sunStrikeDMG - 10
				else
					timing = 0
					HPtreshold = 0
				end
			elseif Modifier.GetName(searchMod) == "modifier_obsidian_destroyer_astral_imprisonment_prison" then
				if Modifier.GetDieTime(searchMod) - curTime >= 1.5 then
					timing = Modifier.GetDieTime(searchMod) - 1.7 + 0.15
					HPtreshold = sunStrikeDMG + (25 + fooAllInOne.GetTeammateAbilityLevel(myHero, "obsidian_destroyer_astral_imprisonment") * 75) * 0.75
				else
					timing = 0
					HPtreshold = 0
				end
			elseif Modifier.GetName(searchMod) == "modifier_shadow_demon_disruption" then
				if Modifier.GetDieTime(searchMod) - curTime >= 1.5 then
					timing = Modifier.GetDieTime(searchMod) - 1.7 + 0.1
					HPtreshold = sunStrikeDMG - 10
				else
					timing = 0
					HPtreshold = 0
				end
			elseif Modifier.GetName(searchMod) == "modifier_teleporting" then
				if Modifier.GetDieTime(searchMod) - curTime >= 1.5 then
					timing = Modifier.GetCreationTime(searchMod)
					HPtreshold = sunStrikeDMG - 10
				else
					timing = 0
					HPtreshold = 0
				end
			else
				if Modifier.GetDieTime(searchMod) - curTime >= 1.5 then
					timing = Modifier.GetCreationTime(searchMod)
					HPtreshold = sunStrikeDMG * (1 + Menu.GetValue(fooAllInOne.optionKillStealInvokerTreshold) / 100)
				else
					timing = 0
					HPtreshold = 0
				end
			end
		else
			timing = 0
			HPtreshold = 0
		end
	else
		timing = 0
		HPtreshold = 0
	end

	return { timing, HPtreshold }

end

function fooAllInOne.invokerSunstrikeKSParticleProcess(myHero)

	if not myHero then return false end
	local sunStrike = NPC.GetAbility(myHero, "invoker_sun_strike")
	if not sunStrike or (sunStrike and not Ability.IsReady(sunStrike)) then return false end
	local aghanims = NPC.GetItem(myHero, "item_ultimate_scepter", true)
	local sunStrikeDMG = 37.5 + (62.5 * Ability.GetLevel(NPC.GetAbility(myHero, "invoker_exort")))
		if aghanims or NPC.HasModifier(myHero, "modifier_item_ultimate_scepter_consumed") then
			sunStrikeDMG = 37.5 + (62.5 * (Ability.GetLevel(NPC.GetAbility(myHero, "invoker_exort")) + 1))
		end

	if fooAllInOne.TPParticleTime > 0 and fooAllInOne.TPParticlePosition ~= Vector() and fooAllInOne.TPParticleUnit ~= nil then
		for hero, data in pairs(fooAllInOne.enemyHeroTable) do
			local heroHP = data[1]
			local heroHPreg = data[2]
			local timeStamp = data[3]
			if hero and NPC.IsDormant(hero) and hero == fooAllInOne.TPParticleUnit then
				if GameRules.GetGameTime() - timeStamp <= 10 then
					if heroHP + heroHPreg * (math.ceil(GameRules.GetGameTime() - timeStamp)) <= sunStrikeDMG and heroHP > 0 then
						return true
					end
				end
			end
		end
	end
	return false

end

function fooAllInOne.InvokerDraw(myHero)

	if not myHero then return end
	if not Menu.IsEnabled(fooAllInOne.optionHeroInvoker) then return end

	local w, h = Renderer.GetScreenSize()
	Renderer.SetDrawColor(255, 255, 255)

	local startX = w - 300 - Menu.GetValue(fooAllInOne.optionHeroInvokerPanelXPos)
	local startY = 300 + Menu.GetValue(fooAllInOne.optionHeroInvokerPanelYPos)

	local numberCombos = 11
	local maxSkills = 6

	if Menu.IsKeyDownOnce(fooAllInOne.optionHeroInvokerToggleKey) then
		fooAllInOne.Toggler = not fooAllInOne.Toggler
	end

	if not fooAllInOne.Toggler then return end
		
	 -- black background
	Renderer.SetDrawColor(0, 0, 0, 150)
	Renderer.DrawFilledRect(startX, startY, (38 * maxSkills) + 4, (40 * numberCombos) + 12)
	Renderer.DrawFilledRect(startX, startY+40*12+12, (38 * maxSkills) + 4, (40 + 2))

	-- black border
	Renderer.SetDrawColor(0, 0, 0, 255)
	Renderer.DrawOutlineRect(startX, startY, (38 * maxSkills) + 4, (40 * numberCombos) + 12)
	Renderer.DrawOutlineRect(startX, startY+40*12+12, (38 * maxSkills) + 4, (40 + 2))

	local hoveringOverCombo1 = Input.IsCursorInRect(startX+1, startY+1+40*0 + 0, (38 * maxSkills)+2 , 40)
	local hoveringOverCombo2 = Input.IsCursorInRect(startX+1, startY+1+40*1 + 1, (38 * maxSkills)+2 , 40)
	local hoveringOverCombo3 = Input.IsCursorInRect(startX+1, startY+1+40*2 + 2, (38 * maxSkills)+2 , 40)
	local hoveringOverCombo4 = Input.IsCursorInRect(startX+1, startY+1+40*3 + 3, (38 * maxSkills)+2 , 40)
	local hoveringOverCombo5 = Input.IsCursorInRect(startX+1, startY+1+40*4 + 4, (38 * maxSkills)+2 , 40)
	local hoveringOverCombo6 = Input.IsCursorInRect(startX+1, startY+1+40*5 + 5, (38 * maxSkills)+2 , 40)
	local hoveringOverCombo7 = Input.IsCursorInRect(startX+1, startY+1+40*6 + 6, (38 * maxSkills)+2 , 40)
	local hoveringOverCombo8 = Input.IsCursorInRect(startX+1, startY+1+40*7 + 7, (38 * maxSkills)+2 , 40)
	local hoveringOverCombo9 = Input.IsCursorInRect(startX+1, startY+1+40*8 + 8, (38 * maxSkills)+2 , 40)
	local hoveringOverCombo10 = Input.IsCursorInRect(startX+1, startY+1+40*9 + 9, (38 * maxSkills)+2 , 40)
	local hoveringOverCombo11 = Input.IsCursorInRect(startX+1, startY+1+40*10 + 10, (38 * maxSkills)+2 , 40)
	local hoveringOverCombo12 = Input.IsCursorInRect(startX+1, startY+1+40*12 + 12, (38 * maxSkills)+2 , 40)

	local sunStrike = NPC.GetAbility(myHero, "invoker_sun_strike")
	local emp = NPC.GetAbility(myHero, "invoker_emp")
	local tornado = NPC.GetAbility(myHero, "invoker_tornado")
	local deafeningBlast = NPC.GetAbility(myHero, "invoker_deafening_blast")
	local chaosMeteor = NPC.GetAbility(myHero, "invoker_chaos_meteor")
	local coldSnap = NPC.GetAbility(myHero, "invoker_cold_snap")
	local forgeSpirit = NPC.GetAbility(myHero, "invoker_forge_spirit")
	local alacrity = NPC.GetAbility(myHero, "invoker_alacrity")
	local iceWall = NPC.GetAbility(myHero, "invoker_ice_wall")
	local euls = NPC.GetItem(myHero, "item_cyclone", true)
	local refresher = NPC.GetItem(myHero, "item_refresher", true)

	local invokeTranslator = {
		"invoker_tornado",
		"invoker_emp",
		"invoker_chaos_meteor", 
		"invoker_deafening_blast",
		"invoker_sun_strike",
		"invoker_ice_wall",
		"invoker_cold_snap",
		"invoker_forge_spirit",
		"invoker_alacrity"
			}

	if hoveringOverCombo1 and Input.IsKeyDownOnce(Enum.ButtonCode.MOUSE_LEFT) then
		if Menu.IsEnabled(fooAllInOne.optionHeroInvokerAutoInvoke) then
			if fooAllInOne.InvokerComboSelector ~= 1 then
				fooAllInOne.PreInvokeSkills = {{coldSnap, forgeSpirit}}
				fooAllInOne.InvokerComboSelector = 1
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		else
			if fooAllInOne.InvokerComboSelector ~= 1 then
				fooAllInOne.InvokerComboSelector = 1
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		end
	elseif hoveringOverCombo2 and Input.IsKeyDownOnce(Enum.ButtonCode.MOUSE_LEFT) then
		if Menu.IsEnabled(fooAllInOne.optionHeroInvokerAutoInvoke) then
			if fooAllInOne.InvokerComboSelector ~= 2 then
				fooAllInOne.PreInvokeSkills = {{coldSnap, forgeSpirit}}
				fooAllInOne.InvokerComboSelector = 2
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		else
			if fooAllInOne.InvokerComboSelector ~= 2 then
				fooAllInOne.InvokerComboSelector = 2
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		end
	elseif hoveringOverCombo3 and Input.IsKeyDownOnce(Enum.ButtonCode.MOUSE_LEFT) then
		if Menu.IsEnabled(fooAllInOne.optionHeroInvokerAutoInvoke) then
			if fooAllInOne.InvokerComboSelector ~= 3 then
				fooAllInOne.PreInvokeSkills = {{emp, tornado}}
				fooAllInOne.InvokerComboSelector = 3
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		else
			if fooAllInOne.InvokerComboSelector ~= 3 then
				fooAllInOne.InvokerComboSelector = 3
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		end
	elseif hoveringOverCombo4 and Input.IsKeyDownOnce(Enum.ButtonCode.MOUSE_LEFT) then
		if Menu.IsEnabled(fooAllInOne.optionHeroInvokerAutoInvoke) then
			if fooAllInOne.InvokerComboSelector ~= 4 then
				fooAllInOne.PreInvokeSkills = {{chaosMeteor, tornado}}
				fooAllInOne.InvokerComboSelector = 4
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		else
			if fooAllInOne.InvokerComboSelector ~= 4 then
				fooAllInOne.InvokerComboSelector = 4
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		end
	elseif hoveringOverCombo5 and Input.IsKeyDownOnce(Enum.ButtonCode.MOUSE_LEFT) then
		if Menu.IsEnabled(fooAllInOne.optionHeroInvokerAutoInvoke) then
			if fooAllInOne.InvokerComboSelector ~= 5 then
				fooAllInOne.PreInvokeSkills = {{chaosMeteor, sunStrike}}
				fooAllInOne.InvokerComboSelector = 5
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		else
			if fooAllInOne.InvokerComboSelector ~= 5 then
				fooAllInOne.InvokerComboSelector = 5
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		end
	elseif hoveringOverCombo6 and Input.IsKeyDownOnce(Enum.ButtonCode.MOUSE_LEFT) then
		if Menu.IsEnabled(fooAllInOne.optionHeroInvokerAutoInvoke) then
			if fooAllInOne.InvokerComboSelector ~= 6 then
				fooAllInOne.PreInvokeSkills = {{emp, tornado}}
				fooAllInOne.InvokerComboSelector = 6
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		else
			if fooAllInOne.InvokerComboSelector ~= 6 then
				fooAllInOne.InvokerComboSelector = 6
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		end
	elseif hoveringOverCombo7 and Input.IsKeyDownOnce(Enum.ButtonCode.MOUSE_LEFT) then
		if Menu.IsEnabled(fooAllInOne.optionHeroInvokerAutoInvoke) then
			if fooAllInOne.InvokerComboSelector ~= 7 then
				fooAllInOne.PreInvokeSkills = {{sunStrike, tornado}}
				fooAllInOne.InvokerComboSelector = 7
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		else
			if fooAllInOne.InvokerComboSelector ~= 7 then
				fooAllInOne.InvokerComboSelector = 7
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		end
	elseif hoveringOverCombo8 and Input.IsKeyDownOnce(Enum.ButtonCode.MOUSE_LEFT) then
		if Menu.IsEnabled(fooAllInOne.optionHeroInvokerAutoInvoke) then
			if fooAllInOne.InvokerComboSelector ~= 8 then
				fooAllInOne.PreInvokeSkills = {{sunStrike, tornado}}
				fooAllInOne.InvokerComboSelector = 8
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		else
			if fooAllInOne.InvokerComboSelector ~= 8 then
				fooAllInOne.InvokerComboSelector = 8
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		end
	elseif hoveringOverCombo9 and Input.IsKeyDownOnce(Enum.ButtonCode.MOUSE_LEFT) then
		if Menu.IsEnabled(fooAllInOne.optionHeroInvokerAutoInvoke) then
			if fooAllInOne.InvokerComboSelector ~= 9 then
				fooAllInOne.PreInvokeSkills = {{emp, tornado}}
				fooAllInOne.InvokerComboSelector = 9
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		else
			if fooAllInOne.InvokerComboSelector ~= 9 then
				fooAllInOne.InvokerComboSelector = 9
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		end
	elseif hoveringOverCombo10 and Input.IsKeyDownOnce(Enum.ButtonCode.MOUSE_LEFT) then
		if Menu.IsEnabled(fooAllInOne.optionHeroInvokerAutoInvoke) then
			if fooAllInOne.InvokerComboSelector ~= 10 then
				fooAllInOne.PreInvokeSkills = {{deafeningBlast, chaosMeteor}}
				fooAllInOne.InvokerComboSelector = 10
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		else
			if fooAllInOne.InvokerComboSelector ~= 10 then
				fooAllInOne.InvokerComboSelector = 10
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		end
	elseif hoveringOverCombo11 and Input.IsKeyDownOnce(Enum.ButtonCode.MOUSE_LEFT) then
		if fooAllInOne.InvokerComboSelector ~= 11 then
			fooAllInOne.InvokerComboSelector = 11
		else
			fooAllInOne.InvokerComboSelector = 0
		end
	elseif hoveringOverCombo12 and Input.IsKeyDownOnce(Enum.ButtonCode.MOUSE_LEFT) then
		if Menu.IsEnabled(fooAllInOne.optionHeroInvokerAutoInvoke) then
			if fooAllInOne.InvokerComboSelector ~= 12 then
				if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill1) > 0 and Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill2) > 0 then
					fooAllInOne.PreInvokeSkills = {{NPC.GetAbility(myHero, invokeTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill2)]), NPC.GetAbility(myHero, invokeTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill1)])}}
					fooAllInOne.InvokerComboSelector = 12
				else
					fooAllInOne.InvokerComboSelector = 0
				end	
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		else
			if fooAllInOne.InvokerComboSelector ~= 12 then
				fooAllInOne.InvokerComboSelector = 12
			else
				fooAllInOne.InvokerComboSelector = 0
			end
		end
	end

	-- border
	if fooAllInOne.InvokerComboSelector == 1 then
		Renderer.SetDrawColor(0, 255, 0, 255)
		Renderer.DrawOutlineRect(startX+1, startY+1+40*0 + 0, (38 * maxSkills)+2 , 40)
	end
	if fooAllInOne.InvokerComboSelector == 2 then
		Renderer.SetDrawColor(0, 255, 0, 255)
		Renderer.DrawOutlineRect(startX+1, startY+1+40*1 + 1, (38 * maxSkills)+2 , 40)
	end
	if fooAllInOne.InvokerComboSelector == 3 then
		Renderer.SetDrawColor(0, 255, 0, 255)
		Renderer.DrawOutlineRect(startX+1, startY+1+40*2 + 2, (38 * maxSkills)+2 , 40)
	end
	if fooAllInOne.InvokerComboSelector == 4 then
		Renderer.SetDrawColor(0, 255, 0, 255)
		Renderer.DrawOutlineRect(startX+1, startY+1+40*3 + 3, (38 * maxSkills)+2 , 40)
	end
	if fooAllInOne.InvokerComboSelector == 5 then
		Renderer.SetDrawColor(0, 255, 0, 255)
		Renderer.DrawOutlineRect(startX+1, startY+1+40*4 + 4, (38 * maxSkills)+2 , 40)
	end
	if fooAllInOne.InvokerComboSelector == 6 then
		Renderer.SetDrawColor(0, 255, 0, 255)
		Renderer.DrawOutlineRect(startX+1, startY+1+40*5 + 5, (38 * maxSkills)+2 , 40)
	end
	if fooAllInOne.InvokerComboSelector == 7 then
		Renderer.SetDrawColor(0, 255, 0, 255)
		Renderer.DrawOutlineRect(startX+1, startY+1+40*6 + 6, (38 * maxSkills)+2 , 40)
	end
	if fooAllInOne.InvokerComboSelector == 8 then
		Renderer.SetDrawColor(0, 255, 0, 255)
		Renderer.DrawOutlineRect(startX+1, startY+1+40*7 + 7, (38 * maxSkills)+2 , 40)
	end
	if fooAllInOne.InvokerComboSelector == 9 then
		Renderer.SetDrawColor(0, 255, 0, 255)
		Renderer.DrawOutlineRect(startX+1, startY+1+40*8 + 8, (38 * maxSkills)+2 , 40)
	end
	if fooAllInOne.InvokerComboSelector == 10 then
		Renderer.SetDrawColor(0, 255, 0, 255)
		Renderer.DrawOutlineRect(startX+1, startY+1+40*9 + 9, (38 * maxSkills)+2 , 40)
	end
	if fooAllInOne.InvokerComboSelector == 11 then
		Renderer.SetDrawColor(0, 255, 0, 255)
		Renderer.DrawOutlineRect(startX+1, startY+1+40*10 + 10, (38 * maxSkills)+2 , 40)
	end
	if fooAllInOne.InvokerComboSelector == 12 then
		Renderer.SetDrawColor(0, 255, 0, 255)
		Renderer.DrawOutlineRect(startX+1, startY+1+40*12 + 12, (38 * maxSkills)+2 , 40)
	end

	local imageHandleSnap = fooAllInOne.InvokerCachedIconsSnap
	if imageHandleSnap == nil then
		imageHandleSnap = Renderer.LoadImage("resource/flash3/images/spellicons/" .. "invoker_cold_snap" .. ".png")
		fooAllInOne.InvokerCachedIconsSnap = imageHandleSnap
	end
	local imageHandleSunStrike = fooAllInOne.InvokerCachedIconsSunStrike
	if imageHandleSunStrike == nil then
		imageHandleSunStrike = Renderer.LoadImage("resource/flash3/images/spellicons/" .. "invoker_sun_strike" .. ".png")
		fooAllInOne.InvokerCachedIconsSunStrike = imageHandleSunStrike
	end
	local imageHandleEmp = fooAllInOne.InvokerCachedIconsEmp
	if imageHandleEmp == nil then
		imageHandleEmp = Renderer.LoadImage("resource/flash3/images/spellicons/" .. "invoker_emp" .. ".png")
		fooAllInOne.InvokerCachedIconsEmp = imageHandleEmp
	end
	local imageHandleTornado = fooAllInOne.InvokerCachedIconsTornado
	if imageHandleTornado == nil then
		imageHandleTornado = Renderer.LoadImage("resource/flash3/images/spellicons/" .. "invoker_tornado" .. ".png")
		fooAllInOne.InvokerCachedIconsTornado = imageHandleTornado
	end
	local imageHandleAlacrity = fooAllInOne.InvokerCachedIconsAlacrity
	if imageHandleAlacrity == nil then
		imageHandleAlacrity = Renderer.LoadImage("resource/flash3/images/spellicons/" .. "invoker_alacrity" .. ".png")
		fooAllInOne.InvokerCachedIconsAlacrity = imageHandleAlacrity
	end
	local imageHandleBlast = fooAllInOne.InvokerCachedIconsBlast
	if imageHandleBlast == nil then
		imageHandleBlast = Renderer.LoadImage("resource/flash3/images/spellicons/" .. "invoker_deafening_blast" .. ".png")
		fooAllInOne.InvokerCachedIconsBlast = imageHandleBlast
	end
	local imageHandleMeteor = fooAllInOne.InvokerCachedIconsMeteor
	if imageHandleMeteor == nil then
		imageHandleMeteor = Renderer.LoadImage("resource/flash3/images/spellicons/" .. "invoker_chaos_meteor" .. ".png")
		fooAllInOne.InvokerCachedIconsMeteor = imageHandleMeteor
	end
	local imageHandleIcewall = fooAllInOne.InvokerCachedIconsIcewall
	if imageHandleIcewall == nil then
		imageHandleIcewall = Renderer.LoadImage("resource/flash3/images/spellicons/" .. "invoker_ice_wall" .. ".png")
		fooAllInOne.InvokerCachedIconsIcewall = imageHandleIcewall
	end
	local imageHandleSpirit = fooAllInOne.InvokerCachedIconsSpirit
	if imageHandleSpirit == nil then
		imageHandleSpirit = Renderer.LoadImage("resource/flash3/images/spellicons/" .. "invoker_forge_spirit" .. ".png")
		fooAllInOne.InvokerCachedIconsSpirit = imageHandleSpirit
	end
	local imageHandleGhost = fooAllInOne.InvokerCachedIconsGhost
	if imageHandleGhost == nil then
		imageHandleGhost = Renderer.LoadImage("resource/flash3/images/spellicons/" .. "invoker_ghost_walk" .. ".png")
		fooAllInOne.InvokerCachedIconsGhost = imageHandleGhost
	end
	local imageHandleAgha = fooAllInOne.InvokerCachedIconsAgha
	if imageHandleAgha == nil then
		imageHandleAgha = Renderer.LoadImage("resource/flash3/images/items/" .. "ultimate_scepter" .. ".png")
		fooAllInOne.InvokerCachedIconsAgha = imageHandleAgha
	end
	local imageHandleRefresher = fooAllInOne.InvokerCachedIconsRefresher
	if imageHandleRefresher == nil then
		imageHandleRefresher = Renderer.LoadImage("resource/flash3/images/items/" .. "refresher" .. ".png")
		fooAllInOne.InvokerCachedIconsRefresher = imageHandleRefresher
	end
	local imageHandleDagger = fooAllInOne.InvokerCachedIconsDagger
	if imageHandleDagger == nil then
		imageHandleDagger = Renderer.LoadImage("resource/flash3/images/items/" .. "blink" .. ".png")
		fooAllInOne.InvokerCachedIconsDagger = imageHandleDagger
	end
	local imageHandleEul = fooAllInOne.InvokerCachedIconsEul
	if imageHandleEul == nil then
		imageHandleEul = Renderer.LoadImage("resource/flash3/images/items/" .. "cyclone" .. ".png")
		fooAllInOne.InvokerCachedIconsEul = imageHandleEul
	end

	-- combo CS, Forge, Alacrity
	if fooAllInOne.InvokerComboSelector == 1 then
		if fooAllInOne.InvokerInvokedChecker(myHero, "invoker_cold_snap", "invoker_forge_spirit") and Ability.IsReady(NPC.GetAbility(myHero, "invoker_invoke")) then
			Renderer.SetDrawColor(0, 205, 0, 255)
		else
			Renderer.SetDrawColor(255, 255, 0, 255)
		end
	else	
		Renderer.SetDrawColor(255, 255, 255, 150)
	end
	Renderer.DrawImage(imageHandleSnap, startX+2+38*0, startY+2, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(coldSnap) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*0+4, startY+2+4, math.floor(Ability.GetCooldownTimeLeft(coldSnap)), 0)
			end
		end
	Renderer.DrawImage(imageHandleSpirit, startX+2+38*1, startY+2, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(forgeSpirit) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*1+4, startY+2+4, math.floor(Ability.GetCooldownTimeLeft(forgeSpirit)), 0)
			end
		end
	Renderer.DrawImage(imageHandleAlacrity, startX+2+38*2, startY+2, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(alacrity) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*2+4, startY+2+4, math.floor(Ability.GetCooldownTimeLeft(alacrity)), 0)
			end
		end

	-- combo CS, Forge, SS
	if fooAllInOne.InvokerComboSelector == 2 then
		if fooAllInOne.InvokerInvokedChecker(myHero, "invoker_cold_snap", "invoker_forge_spirit") and Ability.IsReady(NPC.GetAbility(myHero, "invoker_invoke")) then
			Renderer.SetDrawColor(0, 205, 0, 255)
		else
			Renderer.SetDrawColor(255, 255, 0, 255)
		end
	else	
		Renderer.SetDrawColor(255, 255, 255, 150)
	end
	Renderer.DrawImage(imageHandleSnap, startX+2+38*0, startY+3+40*1, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(coldSnap) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*0+4, startY+3+40*1+4, math.floor(Ability.GetCooldownTimeLeft(coldSnap)), 0)
			end
		end
	Renderer.DrawImage(imageHandleSpirit, startX+2+38*1, startY+3+40*1, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(forgeSpirit) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*1+4, startY+3+40*1+4, math.floor(Ability.GetCooldownTimeLeft(forgeSpirit)), 0)
			end
		end
	Renderer.DrawImage(imageHandleSunStrike, startX+2+38*2, startY+3+40*1, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(sunStrike) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*2+4, startY+3+40*1+4, math.floor(Ability.GetCooldownTimeLeft(sunStrike)), 0)
			end
		end

	-- combo Tornado, EMP, Icewall
	if fooAllInOne.InvokerComboSelector == 3 then
		if fooAllInOne.InvokerInvokedChecker(myHero, "invoker_emp", "invoker_tornado") and Ability.IsReady(NPC.GetAbility(myHero, "invoker_invoke")) then
			Renderer.SetDrawColor(0, 205, 0, 255)
		else
			Renderer.SetDrawColor(255, 255, 0, 255)
		end
	else	
		Renderer.SetDrawColor(255, 255, 255, 150)
	end
	Renderer.DrawImage(imageHandleTornado, startX+2+38*0, startY+4+40*2, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(tornado) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*0+4, startY+4+40*2+4, math.floor(Ability.GetCooldownTimeLeft(tornado)), 0)
			end
		end
	Renderer.DrawImage(imageHandleEmp, startX+2+38*1, startY+4+40*2, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(emp) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*1+4, startY+4+40*2+4, math.floor(Ability.GetCooldownTimeLeft(emp)), 0)
			end
		end
	Renderer.DrawImage(imageHandleIcewall, startX+2+38*2, startY+4+40*2, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(iceWall) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*2+4, startY+4+40*2+4, math.floor(Ability.GetCooldownTimeLeft(iceWall)), 0)
			end
		end
	Renderer.DrawText(fooAllInOne.font, startX+9+38*3, startY+4+40*2+3, "or", 1)
	Renderer.DrawImage(imageHandleSnap, startX+2+38*4, startY+4+40*2, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(coldSnap) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*4+4, startY+4+40*2+4, math.floor(Ability.GetCooldownTimeLeft(coldSnap)), 0)
			end
		end

	-- combo Tornado, Meteor, Blast
	if fooAllInOne.InvokerComboSelector == 4 then
		if fooAllInOne.InvokerInvokedChecker(myHero, "invoker_chaos_meteor", "invoker_tornado") and Ability.IsReady(NPC.GetAbility(myHero, "invoker_invoke")) then
			Renderer.SetDrawColor(0, 205, 0, 255)
		else
			Renderer.SetDrawColor(255, 255, 0, 255)
		end
	else	
		Renderer.SetDrawColor(255, 255, 255, 150)
	end
	Renderer.DrawImage(imageHandleTornado, startX+2+38*0, startY+5+40*3, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(tornado) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*0+4, startY+5+40*3+4, math.floor(Ability.GetCooldownTimeLeft(tornado)), 0)
			end
		end
	Renderer.DrawImage(imageHandleMeteor, startX+2+38*1, startY+5+40*3, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(chaosMeteor) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*1+4, startY+5+40*3+4, math.floor(Ability.GetCooldownTimeLeft(chaosMeteor)), 0)
			end
		end
	Renderer.DrawImage(imageHandleBlast, startX+2+38*2, startY+5+40*3, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(deafeningBlast) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*2+4, startY+5+40*3+4, math.floor(Ability.GetCooldownTimeLeft(deafeningBlast)), 0)
			end
		end

	-- combo Eul, Sunstrike, Meteor, Blast
	if fooAllInOne.InvokerComboSelector == 5 then
		if fooAllInOne.InvokerInvokedChecker(myHero, "invoker_chaos_meteor", "invoker_sun_strike") and Ability.IsReady(NPC.GetAbility(myHero, "invoker_invoke")) then
			Renderer.SetDrawColor(0, 205, 0, 255)
		else
			Renderer.SetDrawColor(255, 255, 0, 255)
		end
	else	
		Renderer.SetDrawColor(255, 255, 255, 150)
	end
	Renderer.DrawImage(imageHandleEul, startX+2+38*0, startY+6+40*4, 38, 38)
	Renderer.DrawImage(imageHandleSunStrike, startX+2+38*1, startY+6+40*4, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(sunStrike) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*1+4, startY+6+40*4+4, math.floor(Ability.GetCooldownTimeLeft(sunStrike)), 0)
			end
		end
	Renderer.DrawImage(imageHandleMeteor, startX+2+38*2, startY+6+40*4, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(chaosMeteor) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*2+4, startY+6+40*4+4, math.floor(Ability.GetCooldownTimeLeft(chaosMeteor)), 0)
			end
		end
	Renderer.DrawImage(imageHandleBlast, startX+2+38*3, startY+6+40*4, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(deafeningBlast) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*3+4, startY+6+40*4+4, math.floor(Ability.GetCooldownTimeLeft(deafeningBlast)), 0)
			end
		end

	-- combo Tornado, EMP, Meteor, Blast
	if fooAllInOne.InvokerComboSelector == 6 then
		if fooAllInOne.InvokerInvokedChecker(myHero, "invoker_emp", "invoker_tornado") and Ability.IsReady(NPC.GetAbility(myHero, "invoker_invoke")) then
			Renderer.SetDrawColor(0, 205, 0, 255)
		else
			Renderer.SetDrawColor(255, 255, 0, 255)
		end
	else	
		Renderer.SetDrawColor(255, 255, 255, 150)
	end
	Renderer.DrawImage(imageHandleAgha, startX+2+38*0, startY+7+40*5, 38, 38)
	Renderer.DrawImage(imageHandleTornado, startX+2+38*1, startY+7+40*5, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(tornado) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*1+4, startY+7+40*5+4, math.floor(Ability.GetCooldownTimeLeft(tornado)), 0)
			end
		end
	Renderer.DrawImage(imageHandleEmp, startX+2+38*2, startY+7+40*5, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(emp) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*2+4, startY+7+40*5+4, math.floor(Ability.GetCooldownTimeLeft(emp)), 0)
			end
		end
	Renderer.DrawImage(imageHandleMeteor, startX+2+38*3, startY+7+40*5, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(chaosMeteor) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*3+4, startY+7+40*5+4, math.floor(Ability.GetCooldownTimeLeft(chaosMeteor)), 0)
			end
		end
	Renderer.DrawImage(imageHandleBlast, startX+2+38*4, startY+7+40*5, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(deafeningBlast) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*4+4, startY+7+40*5+4, math.floor(Ability.GetCooldownTimeLeft(deafeningBlast)), 0)
			end
		end

	-- combo Tornado, Sunstrike, Meteor, Blast
	if fooAllInOne.InvokerComboSelector == 7 then
		if fooAllInOne.InvokerInvokedChecker(myHero, "invoker_sun_strike", "invoker_tornado") and Ability.IsReady(NPC.GetAbility(myHero, "invoker_invoke")) then
			Renderer.SetDrawColor(0, 205, 0, 255)
		else
			Renderer.SetDrawColor(255, 255, 0, 255)
		end
	else	
		Renderer.SetDrawColor(255, 255, 255, 150)
	end
	Renderer.DrawImage(imageHandleAgha, startX+2+38*0, startY+8+40*6, 38, 38)
	Renderer.DrawImage(imageHandleTornado, startX+2+38*1, startY+8+40*6, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(tornado) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*1+4, startY+8+40*6+4, math.floor(Ability.GetCooldownTimeLeft(tornado)), 0)
			end
		end
	Renderer.DrawImage(imageHandleSunStrike, startX+2+38*2, startY+8+40*6, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(sunStrike) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*2+4, startY+8+40*6+4, math.floor(Ability.GetCooldownTimeLeft(sunStrike)), 0)
			end
		end
	Renderer.DrawImage(imageHandleMeteor, startX+2+38*3, startY+8+40*6, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(chaosMeteor) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*3+4, startY+8+40*6+4, math.floor(Ability.GetCooldownTimeLeft(chaosMeteor)), 0)
			end
		end
	Renderer.DrawImage(imageHandleBlast, startX+2+38*4, startY+8+40*6, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(deafeningBlast) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*4+4, startY+8+40*6+4, math.floor(Ability.GetCooldownTimeLeft(deafeningBlast)), 0)
			end
		end

	-- combo Tornado, Sunstrike, Meteor, Blast, Refresher
	if fooAllInOne.InvokerComboSelector == 8 then
		if fooAllInOne.InvokerInvokedChecker(myHero, "invoker_sun_strike", "invoker_tornado") and Ability.IsReady(NPC.GetAbility(myHero, "invoker_invoke")) then
			Renderer.SetDrawColor(0, 205, 0, 255)
		else
			Renderer.SetDrawColor(255, 255, 0, 255)
		end
	else	
		Renderer.SetDrawColor(255, 255, 255, 150)
	end
	Renderer.DrawImage(imageHandleRefresher, startX+2+38*0, startY+9+40*7, 38, 38)
	Renderer.DrawImage(imageHandleAgha, startX+2+38*1, startY+9+40*7, 38, 38)
	Renderer.DrawImage(imageHandleTornado, startX+2+38*2, startY+9+40*7, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(tornado) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*2+4, startY+9+40*7+4, math.floor(Ability.GetCooldownTimeLeft(tornado)), 0)
			end
		end
	Renderer.DrawImage(imageHandleSunStrike, startX+2+38*3, startY+9+40*7, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(sunStrike) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*3+4, startY+9+40*7+4, math.floor(Ability.GetCooldownTimeLeft(sunStrike)), 0)
			end
		end
	Renderer.DrawImage(imageHandleMeteor, startX+2+38*4, startY+9+40*7, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(chaosMeteor) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*4+4, startY+9+40*7+4, math.floor(Ability.GetCooldownTimeLeft(chaosMeteor)), 0)
			end
		end
	Renderer.DrawImage(imageHandleBlast, startX+2+38*5, startY+9+40*7, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(deafeningBlast) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*5+4, startY+9+40*7+4, math.floor(Ability.GetCooldownTimeLeft(deafeningBlast)), 0)
			end
		end

	-- combo Tornado, Sunstrike, Meteor, Blast, Refresher
	if fooAllInOne.InvokerComboSelector == 9 then
		if fooAllInOne.InvokerInvokedChecker(myHero, "invoker_emp", "invoker_tornado") and Ability.IsReady(NPC.GetAbility(myHero, "invoker_invoke")) then
			Renderer.SetDrawColor(0, 205, 0, 255)
		else
			Renderer.SetDrawColor(255, 255, 0, 255)
		end
	else	
		Renderer.SetDrawColor(255, 255, 255, 150)
	end
	Renderer.DrawImage(imageHandleRefresher, startX+2+38*0, startY+10+40*8, 38, 38)
	Renderer.DrawImage(imageHandleAgha, startX+2+38*1, startY+10+40*8, 38, 38)
	Renderer.DrawImage(imageHandleTornado, startX+2+38*2, startY+10+40*8, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(tornado) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*2+4, startY+10+40*8+4, math.floor(Ability.GetCooldownTimeLeft(tornado)), 0)
			end
		end
	Renderer.DrawImage(imageHandleEmp, startX+2+38*3, startY+10+40*8, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(emp) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*3+4, startY+10+40*8+4, math.floor(Ability.GetCooldownTimeLeft(emp)), 0)
			end
		end
	Renderer.DrawImage(imageHandleMeteor, startX+2+38*4, startY+10+40*8, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(chaosMeteor) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*4+4, startY+10+40*8+4, math.floor(Ability.GetCooldownTimeLeft(chaosMeteor)), 0)
			end
		end
	Renderer.DrawImage(imageHandleBlast, startX+2+38*5, startY+10+40*8, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(deafeningBlast) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*5+4, startY+10+40*8+4, math.floor(Ability.GetCooldownTimeLeft(deafeningBlast)), 0)
			end
		end

	-- combo Dagger, Blast, Meteor, Sunstrike
	if fooAllInOne.InvokerComboSelector == 10 then
		if fooAllInOne.InvokerInvokedChecker(myHero, "invoker_deafening_blast", "invoker_chaos_meteor") and Ability.IsReady(NPC.GetAbility(myHero, "invoker_invoke")) then
			Renderer.SetDrawColor(0, 205, 0, 255)
		else
			Renderer.SetDrawColor(255, 255, 0, 255)
		end
	else	
		Renderer.SetDrawColor(255, 255, 255, 150)
	end
	Renderer.DrawImage(imageHandleRefresher, startX+2+38*0, startY+11+40*9, 38, 38)
	Renderer.DrawImage(imageHandleAgha, startX+2+38*1, startY+11+40*9, 38, 38)
	Renderer.DrawImage(imageHandleDagger, startX+2+38*2, startY+11+40*9, 38, 38)
	Renderer.DrawImage(imageHandleBlast, startX+2+38*3, startY+11+40*9, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(deafeningBlast) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*3+4, startY+11+40*9+4, math.floor(Ability.GetCooldownTimeLeft(deafeningBlast)), 0)
			end
		end
	Renderer.DrawImage(imageHandleMeteor, startX+2+38*4, startY+11+40*9, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(chaosMeteor) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*4+4, startY+11+40*9+4, math.floor(Ability.GetCooldownTimeLeft(chaosMeteor)), 0)
			end
		end
	Renderer.DrawImage(imageHandleSunStrike, startX+2+38*5, startY+11+40*9, 38, 38)
		if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 2 then
			if Ability.GetCooldownTimeLeft(sunStrike) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+2+38*5+4, startY+11+40*9+4, math.floor(Ability.GetCooldownTimeLeft(sunStrike)), 0)
			end
		end

	-- dynamic mode
	if fooAllInOne.InvokerComboSelector == 11 then
		Renderer.SetDrawColor(0, 205, 0, 255)
	else	
		Renderer.SetDrawColor(255, 255, 255, 150)
	end
	Renderer.DrawImage(imageHandleBlast, startX+2+19*0, startY+12+40*10, 19, 19)
	Renderer.DrawImage(imageHandleMeteor, startX+2+19*1, startY+12+40*10, 19, 19)
	
	Renderer.DrawImage(imageHandleSunStrike, startX+2+19*0, startY+12+40*10+19, 19, 19)
	Renderer.DrawImage(imageHandleTornado, startX+2+19*1, startY+12+40*10+19, 19, 19)
	
	Renderer.DrawImage(imageHandleEmp, startX+2+19*2, startY+12+40*10, 19, 19)
	Renderer.DrawImage(imageHandleSnap, startX+2+19*3, startY+12+40*10, 19, 19)
	
	Renderer.DrawImage(imageHandleSpirit, startX+2+19*2, startY+12+40*10+19, 19, 19)
	Renderer.DrawImage(imageHandleAlacrity, startX+2+19*3, startY+12+40*10+19, 19, 19)
	
	Renderer.DrawImage(imageHandleIcewall, startX+2+19*4, startY+12+40*10, 19, 19)
	Renderer.DrawImage(imageHandleGhost, startX+2+19*4, startY+12+40*10+19, 19, 19)

	Renderer.DrawText(fooAllInOne.font, startX+2+19*6, startY+12+40*10+5, "dynamic", 1)


	-- custom mode
	local skillTranslator = {
		imageHandleTornado,
		imageHandleEmp,
		imageHandleMeteor, 
		imageHandleBlast,
		imageHandleSunStrike,
		imageHandleIcewall,
		imageHandleSnap,
		imageHandleSpirit,
		imageHandleAlacrity
			}

	if fooAllInOne.InvokerComboSelector == 12 then
		if fooAllInOne.InvokerInvokedChecker(myHero, invokeTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill2)], invokeTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill1)]) and Ability.IsReady(NPC.GetAbility(myHero, "invoker_invoke")) then
			Renderer.SetDrawColor(0, 205, 0, 255)
		else
			Renderer.SetDrawColor(255, 255, 0, 255)
		end
	else	
		Renderer.SetDrawColor(255, 255, 255, 150)
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill1) > 0 then
		Renderer.DrawImage(skillTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill1)], startX+2+38*0, startY+14+40*12, 38, 38)
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill2) > 0 then
		Renderer.DrawImage(skillTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill2)], startX+2+38*1, startY+14+40*12, 38, 38)
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill3) > 0 then
		Renderer.DrawImage(skillTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill3)], startX+2+38*2, startY+14+40*12, 38, 38)
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill4) > 0 then
		Renderer.DrawImage(skillTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill4)], startX+2+38*3, startY+14+40*12, 38, 38)
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill5) > 0 then
		Renderer.DrawImage(skillTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill5)], startX+2+38*4, startY+14+40*12, 38, 38)
	end
	if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill6) > 0 then
		Renderer.DrawImage(skillTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill6)], startX+2+38*5, startY+14+40*12, 38, 38)
	end
	Renderer.SetDrawColor(255, 50, 0, 150)
	Renderer.DrawText(fooAllInOne.font, startX+2+38*1, startY+25+40*11, "custom combo", 1)
	
	-- longest CDs
	if Menu.GetValue(fooAllInOne.optionHeroInvokerPanelCD) == 1 then
		Renderer.SetDrawColor(255, 0, 0, 150)
		if fooAllInOne.GetLongestCooldown(myHero, coldSnap, forgeSpirit, alacrity) > 0 then
			Renderer.DrawText(fooAllInOne.font, startX+1-35, startY+2+40*0+6, fooAllInOne.GetLongestCooldown(myHero, coldSnap, forgeSpirit, alacrity), 1)
		end
		if fooAllInOne.GetLongestCooldown(myHero, coldSnap, forgeSpirit, sunStrike) > 0 then
			Renderer.DrawText(fooAllInOne.font, startX+1-35, startY+3+40*1+6, fooAllInOne.GetLongestCooldown(myHero, coldSnap, forgeSpirit, sunStrike), 1)
		end
		if fooAllInOne.GetLongestCooldown(myHero, coldSnap, iceWall, tornado, emp) > 0 then
		Renderer.DrawText(fooAllInOne.font, startX+1-35, startY+4+40*2+6, fooAllInOne.GetLongestCooldown(myHero, coldSnap, iceWall, tornado, emp), 1)
		end
		if fooAllInOne.GetLongestCooldown(myHero, tornado, chaosMeteor, deafeningBlast) > 0 then
			Renderer.DrawText(fooAllInOne.font, startX+1-35, startY+5+40*3+6, fooAllInOne.GetLongestCooldown(myHero, tornado, chaosMeteor, deafeningBlast), 1)
		end
		if fooAllInOne.GetLongestCooldown(myHero, euls, sunStrike, chaosMeteor, deafeningBlast) > 0 then
		Renderer.DrawText(fooAllInOne.font, startX+1-35, startY+6+40*4+6, fooAllInOne.GetLongestCooldown(myHero, euls, sunStrike, chaosMeteor, deafeningBlast), 1)
		end
		if fooAllInOne.GetLongestCooldown(myHero, tornado, emp, chaosMeteor, deafeningBlast) > 0 then
			Renderer.DrawText(fooAllInOne.font, startX+1-35, startY+7+40*5+6, fooAllInOne.GetLongestCooldown(myHero, tornado, emp, chaosMeteor, deafeningBlast), 1)
		end
		if fooAllInOne.GetLongestCooldown(myHero, tornado, sunStrike, chaosMeteor, deafeningBlast) > 0 then
			Renderer.DrawText(fooAllInOne.font, startX+1-35, startY+8+40*6+6, fooAllInOne.GetLongestCooldown(myHero, tornado, sunStrike, chaosMeteor, deafeningBlast), 1)
		end
		if fooAllInOne.GetLongestCooldown(myHero, tornado, sunStrike, chaosMeteor, deafeningBlast, refresher) > 0 then
			Renderer.DrawText(fooAllInOne.font, startX+1-35, startY+9+40*7+6, fooAllInOne.GetLongestCooldown(myHero, tornado, sunStrike, chaosMeteor, deafeningBlast, refresher), 1)
		end
		if fooAllInOne.GetLongestCooldown(myHero, tornado, emp, chaosMeteor, deafeningBlast, refresher) > 0 then
			Renderer.DrawText(fooAllInOne.font, startX+1-35, startY+10+40*8+6, fooAllInOne.GetLongestCooldown(myHero, tornado, emp, chaosMeteor, deafeningBlast, refresher), 1)
		end
		if fooAllInOne.GetLongestCooldown(myHero, sunStrike, chaosMeteor, deafeningBlast, refresher) > 0 then
			Renderer.DrawText(fooAllInOne.font, startX+1-35, startY+11+40*9+6, fooAllInOne.GetLongestCooldown(myHero, sunStrike, chaosMeteor, deafeningBlast, refresher), 1)
		end
		if Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill1) > 0 and Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill2) > 0 and Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill3) > 0 then
			if fooAllInOne.GetLongestCooldown(myHero, NPC.GetAbility(myHero, invokeTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill1)]), NPC.GetAbility(myHero, invokeTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill2)]), NPC.GetAbility(myHero, invokeTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill3)])) > 0 then
				Renderer.DrawText(fooAllInOne.font, startX+1-35, startY+14+40*12+6, fooAllInOne.GetLongestCooldown(myHero, NPC.GetAbility(myHero, invokeTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill1)]), NPC.GetAbility(myHero, invokeTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill2)]), NPC.GetAbility(myHero, invokeTranslator[Menu.GetValue(fooAllInOne.optionHeroInvokerCombo1Skill3)])), 1)
			end
		end
	end

end

function fooAllInOne.invokerTargetIndicator(myHero)

	if not myHero then return end
	if fooAllInOne.InvokerLockedTarget == nil then return end

	local curtime = GameRules.GetGameTime()	

	if curtime > fooAllInOne.particleNextTime then
		if fooAllInOne.currentParticle ~= nil then
			Particle.Destroy(fooAllInOne.currentParticle)
			fooAllInOne.currentParticle = nil
		end

	if Menu.GetValue(fooAllInOne.optionHeroInvokerLockTargetIndicatorStyle) == 0 then
		local sparkParticle = Particle.Create("particles/items_fx/aegis_resspawn_flash.vpcf")
		fooAllInOne.currentParticle = sparkParticle
		Particle.SetControlPoint(sparkParticle, 0, Entity.GetAbsOrigin(fooAllInOne.InvokerLockedTarget))
	else
		local bloodParticle = Particle.Create("particles/items2_fx/soul_ring_blood.vpcf")
		fooAllInOne.currentParticle = bloodParticle
		Particle.SetControlPoint(bloodParticle, 0, Entity.GetAbsOrigin(fooAllInOne.InvokerLockedTarget))
	end

        fooAllInOne.particleNextTime = curtime + 0.35
	
	end

end
				

-- killsteal functions
function fooAllInOne.AutoNukeKillSteal(myHero)

	local myMana = NPC.GetMana(myHero)

	for _, stealEnemyEntity in ipairs(NPC.GetHeroesInRadius(myHero, 1200, Enum.TeamType.TEAM_ENEMY)) do
		if not stealEnemyEntity then return end

	stealEnemy = fooAllInOne.targetChecker(stealEnemyEntity)
		if not stealEnemy then return end
		if NPC.HasState(stealEnemy, Enum.ModifierState.MODIFIER_STATE_MAGIC_IMMUNE) or NPC.IsChannellingAbility(myHero) or NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) then return end

		for n, v in ipairs(fooAllInOne.AbilityList) do
			local heroName = v[1]
	      		local skillName = v[2]
			local skillType = v[3]
			local targetMode = v[4]
			local specialAttribute = v[5]
		
			
			if NPC.GetUnitName(myHero) == heroName then
				if skillType == "nuke" and not Ability.IsUltimate(NPC.GetAbility(myHero, skillName)) then
					if Entity.GetHealth(stealEnemy) > 0 then
						if NPC.IsEntityInRange(myHero, stealEnemy, Ability.GetCastRange(NPC.GetAbility(myHero, skillName))) then
							local skillDamage = Ability.GetDamage(NPC.GetAbility(myHero, skillName), 0)
							if  skillDamage < 1 then
								if skillName == "skywrath_mage_arcane_bolt" then
									skillDamage = Ability.GetLevelSpecialValueFor(NPC.GetAbility(myHero, skillName), specialAttribute) + (1.6 * Hero.GetIntellectTotal(myHero))
								else
									skillDamage = Ability.GetLevelSpecialValueFor(NPC.GetAbility(myHero, skillName), specialAttribute)
								end
							end
							if Entity.GetHealth(stealEnemy) <= (((1 - NPC.GetMagicalArmorValue(stealEnemy)) * skillDamage) + (skillDamage * (Hero.GetIntellectTotal(myHero) / 14 / 100))) then
								if NPC.GetAbility(myHero, skillName) and Ability.IsCastable(NPC.GetAbility(myHero, skillName), myMana) then
									if targetMode == "target" and not NPC.IsLinkensProtected(enemy) then
										Ability.CastTarget(NPC.GetAbility(myHero, skillName), stealEnemy)
										return
									end
									if targetMode == "position" then
										Ability.CastPosition(NPC.GetAbility(myHero, skillName), Entity.GetAbsOrigin(stealEnemy))
										return
									end
									if targetMode == "no target" then
										Ability.CastNoTarget(NPC.GetAbility(myHero, skillName))
										return
									end
									if targetMode == "skillshot" then
										if skillName == "windrunner_powershot" then
											local powershotPrediction = 1 + (Entity.GetAbsOrigin(stealEnemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 3000) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
											Ability.CastPosition(NPC.GetAbility(myHero, skillName), fooAllInOne.castLinearPrediction(myHero, stealEnemy, powershotPrediction))
											return
										end
										if skillName == "kunkka_torrent" then
											local kunkkaPrediction = 2 + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
											Ability.CastPosition(NPC.GetAbility(myHero, skillName), fooAllInOne.castPrediction(myHero, stealEnemy, kunkkaPrediction))
											return
										end
										if skillName == "lina_dragon_slave" then
											local dragonSlavePrediction = Ability.GetCastPoint(NPC.GetAbility(myHero, skillName)) + (Entity.GetAbsOrigin(stealEnemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1200) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
											Ability.CastPosition(NPC.GetAbility(myHero, skillName), fooAllInOne.castLinearPrediction(myHero, stealEnemy, dragonSlavePrediction))
											return
										end
										if skillName == "magnataur_shockwave" then
											local shockwavePrediction = Ability.GetCastPoint(NPC.GetAbility(myHero, skillName)) + (Entity.GetAbsOrigin(stealEnemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1050) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
											Ability.CastPosition(NPC.GetAbility(myHero, skillName), fooAllInOne.castLinearPrediction(myHero, stealEnemy, shockwavePrediction))
											return
										end
									--	if skillName == "morphling_waveform" then
									--		local wavePrediction = Ability.GetCastPoint(NPC.GetAbility(myHero, skillName)) + (Entity.GetAbsOrigin(stealEnemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1250) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
									--		Ability.CastPosition(NPC.GetAbility(myHero, skillName), fooAllInOne.castLinearPrediction(myHero, stealEnemy, wavePrediction))
									--		return
									--	end
										if skillName == "pugna_nether_blast" then
											local blastPrediction = Ability.GetCastPoint(NPC.GetAbility(myHero, skillName)) + 0.9 + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
											Ability.CastPosition(NPC.GetAbility(myHero, skillName), fooAllInOne.castPrediction(myHero, stealEnemy, blastPrediction))
											return
										end
										if skillName == "rattletrap_rocket_flare" then
											local flairPrediction = Ability.GetCastPoint(NPC.GetAbility(myHero, skillName)) + (Entity.GetAbsOrigin(stealEnemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1750) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
											Ability.CastPosition(NPC.GetAbility(myHero, skillName), fooAllInOne.castLinearPrediction(myHero, stealEnemy, flairPrediction))
											return
										end
										if skillName == "tusk_ice_shards" then
											local shardsPrediction = Ability.GetCastPoint(NPC.GetAbility(myHero, skillName)) + (Entity.GetAbsOrigin(stealEnemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 1100) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
											Ability.CastPosition(NPC.GetAbility(myHero, skillName), fooAllInOne.castLinearPrediction(myHero, stealEnemy, shardsPrediction))
											return
										end
										if skillName == "vengefulspirit_wave_of_terror" then
											local wavePrediction = Ability.GetCastPoint(NPC.GetAbility(myHero, skillName)) + (Entity.GetAbsOrigin(stealEnemy):__sub(Entity.GetAbsOrigin(myHero)):Length2D() / 2000) + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
											Ability.CastPosition(NPC.GetAbility(myHero, skillName), fooAllInOne.castLinearPrediction(myHero, stealEnemy, wavePrediction))
											return
										end
										if skillName == "zuus_lightning_bolt" then
											local boltPrediction = 0.4 + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)
											Ability.CastPosition(NPC.GetAbility(myHero, skillName), fooAllInOne.castPrediction(myHero, stealEnemy, boltPrediction))
											return
										end
									end
								end
							end	
						end
						if NPC.IsEntityInRange(myHero, stealEnemy, Ability.GetCastRange(NPC.GetAbility(myHero, skillName))) and targetMode == "special" then
							if skillName == "nyx_assassin_mana_burn" then
								local skillDamage = Ability.GetLevelSpecialValueForFloat(NPC.GetAbility(myHero, skillName), "float_multiplier") * Hero.GetIntellectTotal(stealEnemy) * (1 + Hero.GetIntellectTotal(myHero) / 16 / 100)
								if Entity.GetHealth(stealEnemy) <= (((1 - NPC.GetMagicalArmorValue(stealEnemy)) * skillDamage) + (skillDamage * (Hero.GetIntellectTotal(myHero) / 14 / 100))) and NPC.GetMana(stealEnemy) >= Entity.GetHealth(stealEnemy) then
									if NPC.GetAbility(myHero, skillName) and Ability.IsCastable(NPC.GetAbility(myHero, skillName), myMana) then
										Ability.CastTarget(NPC.GetAbility(myHero, skillName), stealEnemy)
										return
									end
								end
							end
						end
						if skillName == "queenofpain_scream_of_pain" then
							if NPC.IsEntityInRange(myHero, stealEnemy, Ability.GetLevelSpecialValueFor(NPC.GetAbility(myHero, skillName), "area_of_effect")) and targetMode == "special" then
								if Entity.GetHealth(stealEnemy) <= (1 - NPC.GetMagicalArmorValue(stealEnemy))*Ability.GetDamage(NPC.GetAbility(myHero, skillName), 0) + (Ability.GetDamage(NPC.GetAbility(myHero, skillName), 0) * (Hero.GetIntellectTotal(myHero) / 14 / 100)) then
									if NPC.GetAbility(myHero, skillName) and Ability.IsCastable(NPC.GetAbility(myHero, skillName), myMana) then
										Ability.CastNoTarget(NPC.GetAbility(myHero, skillName))
										return
									end
								end
							end
						end
						if skillName == "nevermore_shadowraze1" and targetMode == "special" then
							local razePos = Entity.GetAbsOrigin(myHero) + Entity.GetRotation(myHero):GetForward():Normalized():Scaled(200)
							if NPC.IsPositionInRange(stealEnemy, razePos, 200, 0) and not Entity.IsTurning(myHero) then
								local skillDamage = Ability.GetDamage(NPC.GetAbility(myHero, skillName))
								if Entity.GetHealth(stealEnemy) <= (((1 - NPC.GetMagicalArmorValue(stealEnemy)) * skillDamage) + (skillDamage * (Hero.GetIntellectTotal(myHero) / 14 / 100))) and NPC.GetMana(stealEnemy) >= Entity.GetHealth(stealEnemy) then
									if NPC.GetAbility(myHero, skillName) and Ability.IsCastable(NPC.GetAbility(myHero, skillName), myMana) then
										if os.clock() - fooAllInOne.lastCastTime2 >= 0.55 then
											Ability.CastNoTarget(NPC.GetAbility(myHero, skillName))
											fooAllInOne.lastCastTime2 = os.clock()
											return
										end
									end
								end
							end
						end
						if skillName == "nevermore_shadowraze2" and targetMode == "special" then
							local razePos = Entity.GetAbsOrigin(myHero) + Entity.GetRotation(myHero):GetForward():Normalized():Scaled(450)
							if NPC.IsPositionInRange(stealEnemy, razePos, 200, 0) and not Entity.IsTurning(myHero) then
								local skillDamage = Ability.GetDamage(NPC.GetAbility(myHero, skillName))
								if Entity.GetHealth(stealEnemy) <= (((1 - NPC.GetMagicalArmorValue(stealEnemy)) * skillDamage) + (skillDamage * (Hero.GetIntellectTotal(myHero) / 14 / 100))) and NPC.GetMana(stealEnemy) >= Entity.GetHealth(stealEnemy) then
									if NPC.GetAbility(myHero, skillName) and Ability.IsCastable(NPC.GetAbility(myHero, skillName), myMana) then
										if os.clock() - fooAllInOne.lastCastTime2 >= 0.55 then
											Ability.CastNoTarget(NPC.GetAbility(myHero, skillName))
											fooAllInOne.lastCastTime2 = os.clock()
											return
										end
									end
								end
							end
						end
						if skillName == "nevermore_shadowraze3" and targetMode == "special" then
							local razePos = Entity.GetAbsOrigin(myHero) + Entity.GetRotation(myHero):GetForward():Normalized():Scaled(700)
							if NPC.IsPositionInRange(stealEnemy, razePos, 200, 0) and not Entity.IsTurning(myHero) then
								local skillDamage = Ability.GetDamage(NPC.GetAbility(myHero, skillName))
								if Entity.GetHealth(stealEnemy) <= (((1 - NPC.GetMagicalArmorValue(stealEnemy)) * skillDamage) + (skillDamage * (Hero.GetIntellectTotal(myHero) / 14 / 100))) and NPC.GetMana(stealEnemy) >= Entity.GetHealth(stealEnemy) then
									if NPC.GetAbility(myHero, skillName) and Ability.IsCastable(NPC.GetAbility(myHero, skillName), myMana) then
										if os.clock() - fooAllInOne.lastCastTime2 >= 0.55 then
											Ability.CastNoTarget(NPC.GetAbility(myHero, skillName))
											fooAllInOne.lastCastTime2 = os.clock()
											return
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

function fooAllInOne.AutoSunstrikeKillStealNew(myHero)

	if not myHero then return end
	if os.clock() - fooAllInOne.invokerChannellingKillstealTimer <= 3 then return end

	if Ability.GetLevel(NPC.GetAbilityByIndex(myHero, 2)) < 1 then return end
	if Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) > -1 and Ability.SecondsSinceLastUse(NPC.GetAbility(myHero, "invoker_ghost_walk")) < 0.25 then return end
	if NPC.HasModifier(myHero, "modifier_teleporting") then return end
	if NPC.IsChannellingAbility(myHero) then return end
	if NPC.IsSilenced(myHero) or NPC.IsStunned(myHero) or NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVISIBLE) or NPC.HasState(myHero, Enum.ModifierState.MODIFIER_STATE_INVULNERABLE) then return end

	if Menu.IsKeyDownOnce(fooAllInOne.optionComboKey) then return end
	if Menu.IsKeyDown(fooAllInOne.optionComboKey) then return end

	local myMana = NPC.GetMana(myHero)

	local exort = NPC.GetAbility(myHero, "invoker_exort")
	local invoke = NPC.GetAbility(myHero, "invoker_invoke")
	local aghanims = NPC.GetItem(myHero, "item_ultimate_scepter", true)
	local sunStrike = NPC.GetAbility(myHero, "invoker_sun_strike")
	local sunStrikeDMG = 37.5 + (62.5 * Ability.GetLevel(exort))
		if aghanims or NPC.HasModifier(myHero, "modifier_item_ultimate_scepter_consumed") then
			sunStrikeDMG = 37.5 + (62.5 * (Ability.GetLevel(exort) + 1))
		end
	
	if not sunStrike then return end
	if not Ability.IsReady(sunStrike) then return end

	if Menu.IsEnabled(fooAllInOne.optionKillStealInvokerTPpartice) then
		if fooAllInOne.invokerSunstrikeKSParticleProcess(myHero) == true then
			if not fooAllInOne.InvokerIsAbilityInvoked(myHero, sunStrike) then
				if Menu.IsEnabled(fooAllInOne.optionKillStealAutoInvoke) then
					if invoke and Ability.IsCastable(invoke, myMana) then
						fooAllInOne.invokerInvokeAbility(myHero, sunStrike)
						Ability.CastPosition(sunStrike, fooAllInOne.TPParticlePosition, true)
						fooAllInOne.invokerChannellingKillstealTimer = os.clock()
						fooAllInOne.TPParticleIndex = nil
						fooAllInOne.TPParticleTime = 0
						fooAllInOne.TPParticlePosition = Vector()
						return
					end
				else
					return
				end
			else
				Ability.CastPosition(sunStrike, fooAllInOne.TPParticlePosition)
				fooAllInOne.invokerChannellingKillstealTimer = os.clock()
				fooAllInOne.TPParticleIndex = nil
				fooAllInOne.TPParticleTime = 0
				fooAllInOne.TPParticlePosition = Vector()
				return
			end
		end
	end

	if Menu.IsEnabled(fooAllInOne.optionKillStealInvokerImmobil) then
		for _, immobilizedEntity in ipairs(NPC.GetHeroesInRadius(myHero, 99999, Enum.TeamType.TEAM_ENEMY)) do
			if immobilizedEntity then
				local immobilizedEnemy = fooAllInOne.targetChecker(immobilizedEntity)
				if immobilizedEnemy and Entity.IsAlive(immobilizedEnemy) then
					local enemyProcessing = fooAllInOne.invokerSunstrikeKSdisabledTargetProcess(myHero, immobilizedEnemy)
					if next(enemyProcessing) ~= {0,0} then
						local timing = enemyProcessing[1]
						local HPthreshold = enemyProcessing[2]
						if Entity.GetHealth(immobilizedEnemy) < HPthreshold then
							if GameRules.GetGameTime() >= timing then
								if not fooAllInOne.InvokerIsAbilityInvoked(myHero, sunStrike) then
									if Menu.IsEnabled(fooAllInOne.optionKillStealAutoInvoke) then
										if invoke and Ability.IsCastable(invoke, myMana) then
											fooAllInOne.invokerInvokeAbility(myHero, sunStrike)
											Ability.CastPosition(sunStrike, Entity.GetAbsOrigin(immobilizedEnemy), true)
											fooAllInOne.invokerChannellingKillstealTimer = os.clock()
											return
										end
									else
										return
									end
								else
									Ability.CastPosition(sunStrike, Entity.GetAbsOrigin(immobilizedEnemy))
									fooAllInOne.invokerChannellingKillstealTimer = os.clock()
									return
								end
							end
						end
					end
				end
			end
		end
	end

	if fooAllInOne.InvokerKSparticleProcess[1][5]:__tostring() ~= Vector():__tostring() then
		local processData = table.remove(fooAllInOne.InvokerKSparticleProcess, 1)
		fooAllInOne.InvokerKSparticleProcess = {{nil, nil, 0, nil, Vector()}}
		local name = processData[2]
		local time = processData[3]
		local pos = processData[5]

		for _, v in ipairs(Heroes.InRadius(pos, 175, Entity.GetTeamNum(myHero), Enum.UnitType.TEAM_ENEMY)) do
			if v and not NPC.IsIllusion(v) and Entity.IsAlive(v) then
				if Entity.GetHealth(v) < sunStrikeDMG * (1 + Menu.GetValue(fooAllInOne.optionKillStealInvokerTreshold) / 100) then
					local duration
					if name == "rattletrap_cog_deploy" then
						duration = 2 + fooAllInOne.GetTeammateAbilityLevel(myHero, "rattletrap_cog")
					elseif name == "furion_sprout" then
						duration = 2 + fooAllInOne.GetTeammateAbilityLevel(myHero, "furion_sprout")
					end
					if GameRules.GetGameTime() + 1.5 < time + duration then
						if not fooAllInOne.InvokerIsAbilityInvoked(myHero, sunStrike) then
							if Menu.IsEnabled(fooAllInOne.optionKillStealAutoInvoke) then
								if invoke and Ability.IsCastable(invoke, myMana) then
									fooAllInOne.invokerInvokeAbility(myHero, sunStrike)
									Ability.CastPosition(sunStrike, pos, true)
									fooAllInOne.invokerChannellingKillstealTimer = os.clock()
									return
								end
							else
								return
							end
						else
							Ability.CastPosition(sunStrike, pos)
							fooAllInOne.invokerChannellingKillstealTimer = os.clock()
							return
						end
					end
				end
			end
		end
	end		
	
	if fooAllInOne.GlimpseParticleTime > 0 and fooAllInOne.GlimpseParticleUnit ~= nil and fooAllInOne.GlimpseParticlePosition ~= Vector() and fooAllInOne.GlimpseParticlePositionStart ~= Vector() then
		if not NPC.IsIllusion(fooAllInOne.GlimpseParticleUnit) and Entity.IsAlive(fooAllInOne.GlimpseParticleUnit) then
			if Entity.GetHealth(fooAllInOne.GlimpseParticleUnit) < sunStrikeDMG - 25 then
				local glimpseTiming
					if (fooAllInOne.GlimpseParticlePositionStart - fooAllInOne.GlimpseParticlePosition):Length2D() / 600 >= 1.8 then
						glimpseTiming = 1.8
					else
						glimpseTiming = (fooAllInOne.GlimpseParticlePositionStart - fooAllInOne.GlimpseParticlePosition):Length2D() / 600
					end
				if glimpseTiming > 1.5 then
					if GameRules.GetGameTime() >= fooAllInOne.GlimpseParticleTime + glimpseTiming - 1.65 then
						if not fooAllInOne.InvokerIsAbilityInvoked(myHero, sunStrike) then
							if Menu.IsEnabled(fooAllInOne.optionKillStealAutoInvoke) then
								if invoke and Ability.IsCastable(invoke, myMana) then
									fooAllInOne.invokerInvokeAbility(myHero, sunStrike)
									Ability.CastPosition(sunStrike, fooAllInOne.GlimpseParticlePosition, true)
									fooAllInOne.invokerChannellingKillstealTimer = os.clock()
									return
								end
							else
								return
							end
						else
							Ability.CastPosition(sunStrike, fooAllInOne.GlimpseParticlePosition)
							fooAllInOne.invokerChannellingKillstealTimer = os.clock()
							return
						end
					end
				end
			end
		end
	end

	if Menu.IsEnabled(fooAllInOne.optionKillStealInvokerRunning) then
		for _, stealEnemyEntity in ipairs(NPC.GetHeroesInRadius(myHero, 99999, Enum.TeamType.TEAM_ENEMY)) do
			local sunStrikeEnemy = fooAllInOne.targetChecker(stealEnemyEntity)
			if sunStrikeEnemy and Entity.IsAlive(sunStrikeEnemy) then
				local bestTarget
				local maxAgi = 0
				if Entity.GetHealth(sunStrikeEnemy) <= sunStrikeDMG and Hero.GetAgilityTotal(sunStrikeEnemy) > maxAgi then
					bestTarget = sunStrikeEnemy
					maxAgi = Hero.GetAgilityTotal(sunStrikeEnemy)
				end
				if Entity.GetHealth(sunStrikeEnemy) > sunStrikeDMG or Entity.GetHealth(sunStrikeEnemy) < 1  then
					bestTarget = nil
					maxAgi = 0
				end
				if bestTarget then
					if not NPC.IsRunning(bestTarget) then
						return
					else
						if fooAllInOne.isEnemyTurning(bestTarget) == false then
							if Ability.IsReady(sunStrike) and Ability.IsCastable(sunStrike, myMana) then
								if not fooAllInOne.InvokerIsAbilityInvoked(myHero, sunStrike) then
									if Menu.IsEnabled(fooAllInOne.optionKillStealAutoInvoke) then
										if invoke and Ability.IsCastable(invoke, myMana) then
											fooAllInOne.invokerInvokeAbility(myHero, sunStrike)
											Ability.CastPosition(sunStrike, fooAllInOne.castPrediction(myHero, bestTarget, Ability.GetCastPoint(NPC.GetAbility(myHero, "invoker_sun_strike")) + 1.7 + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)), true)
											return
										end
									else
										return
									end
								else
									Ability.CastPosition(sunStrike, fooAllInOne.castPrediction(myHero, bestTarget, Ability.GetCastPoint(NPC.GetAbility(myHero, "invoker_sun_strike")) + 1.7 + (NetChannel.GetAvgLatency(Enum.Flow.FLOW_OUTGOING) * 2)))
									return
								end
							end
						end
					end
				end
			end
		end
	end

end

function fooAllInOne.Debugger(time, npc, ability, order)

	if not Menu.IsEnabled(fooAllInOne.optionDebugEnable) then return end
	Log.Write(tostring(time) .. " " .. tostring(NPC.GetUnitName(npc)) .. " " .. tostring(ability) .. " " .. tostring(order))

end

return fooAllInOne
