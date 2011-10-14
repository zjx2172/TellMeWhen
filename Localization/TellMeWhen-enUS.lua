﻿--GAME_LOCALE = UnitName("player") == "Cybeloras" and "zhCN" --FOR TESTING
local L = LibStub("AceLocale-3.0"):NewLocale("TellMeWhen", "enUS", true)

L["!!Main Addon Description"] = "Provides visual, auditory, and textual notifications about cooldowns, buffs, and pretty much everything else." -- put it here so it doesnt get deleted on mass imports


L["CMD_OPTIONS"] = "Options"
L["ICON_TOOLTIP1"] = "TellMeWhen"
L["ICON_TOOLTIP2NEW"] = [[Right click for icon options.
Right click and drag to another icon to move/copy.
Drag spells or items onto the icon for quick setup.
Typing /tellmewhen or /tmw will lock and enable the addon.]]
L["LDB_TOOLTIP1"] = "|cff7fffffLeft-click|r to toggle the group locks"
L["LDB_TOOLTIP2"] = "|cff7fffffRight-click|r to show the main TMW options"
L["LOADERROR"] = "TellMeWhen_Options could not be loaded: "
L["LOADINGOPT"] = "Loading TellMeWhen_Options."
L["ENABLINGOPT"] = "TellMeWhen_Options is disabled. Enabling..."
L["CONFIGMODE"] = "TellMeWhen is in configuration mode. Icons will not be functional until you leave configuration mode. Type '/tmw' to toggle configuration mode on and off."
L["CONFIGMODE_EXIT"] = "Exit config mode"
L["CONFIGMODE_NEVERSHOW"] = "Don't show again"
L["IMPORTERROR_FAILEDPARSE"] = "There was an error processing the string. Ensure that you copied the entire string from the source."
L["ERROR_MISSINGFILE"] = "A complete restart of WoW is required to use TellMeWhen %s (%s was not found). Would you like to restart WoW now?"

L["LOCKED"] = "Locked"
L["RESIZE"] = "Resize"
L["RESIZE_TOOLTIP"] = "Click and drag to change size"

L["CONDITIONORMETA_CHECKINGINVALID"] = "Warning! Group %d, Icon %d is checking an invalid icon (Group %d, Icon %d)"
L["WARN_DRMISMATCH"] = "Warning! Group %d, Icon %d is checking the diminishing returns on spells from two different known categories. All spells should be from the same category."
L["FROMNEWERVERSION"] = "You are importing data that was created in a newer version of TellMeWhen than your version. Some settings might not work until you upgrade to the latest version."

-- -------------
-- ICONMENU
-- -------------

L["ICONMENU_CHOOSENAME"] = "Choose name(s)/ID(s) to check"
L["ICONMENU_CHOOSENAME_ORBLANK"] = "OR leave blank to track everything"
L["ICONMENU_CHOOSENAME_CNDTIC"] = "Choose name/ID/texture path"
L["ICONMENU_ENABLE"] = "Enabled"
L["CHOOSENAME_EQUIVS_TOOLTIP"] = [[You can select predefined sets of buffs, debuffs, spell casts, diminishing returns, or dispel types (Magic, Curse, etc.) from this menu to insert into the "%s" editbox.]]
L["CHOOSENAME_DIALOG_DDDEFAULT"] = "Predefined Spell Sets/Dispel Types"
L["CHOOSENAME_DIALOG"] = [=[Enter the Name or ID of what you want this icon to monitor. You can add multiple entries (any combination of names, IDs, and equivalencies) by separating them with semicolons (;).

You can shift-click spells/items/chat links or drag spells/items to insert them into this editbox.

|cFFFF5959PET ABILITIES|r must use SpellIDs.]=]
L["CHOOSENAME_DIALOG_MSCD"] = [=[Enter the Name or ID of what the cooldown that you want this icon to monitor. Only the first spell/item will be checked - semicolon-delimited lists are not valid for this icon type.]=]
L["CHOOSENAME_DIALOG_CNDTIC"] = "Enter the Name or ID of the spell that has the texture that you want to use. You may also enter a texture path, such as 'Interface/Icons/spell_nature_healingtouch', or just 'spell_nature_healingtouch' if the path is 'Interface/Icons'"

L["ICONMENU_ALPHA"] = "Opacity"
L["CONDITIONALPHA"] = "Failed Conditions/Reqs."
L["CONDITIONALPHA_DESC"] = "This will be used when conditions fail, or if the duration or stack requirements are not met. This setting will be ignored if the icon is already hidden by the other two opacity settings."
L["CONDITIONALPHA_CONDITIONICON"] = "Failed Duration"
L["CONDITIONALPHA_CONDITIONICON_DESC"] = "This will be used when the duration requirements are not met. This setting will be ignored if the icon is already hidden by the other two opacity settings."


L["ICONMENU_TYPE"] = "Icon type"
L["ICONMENU_SPELLCOOLDOWN"] = "Spell Cooldown"
L["ICONMENU_ITEMCOOLDOWN"] = "Item Cooldown"
L["ICONMENU_BUFFDEBUFF"] = "Buff/Debuff"
L["ICONMENU_REACTIVE"] = "Reactive Ability"
L["ICONMENU_REACTIVE_DESC"] = "Reactive abilities are things like Kill Shot, Revenge, and Conflagrate - abilities that are only usable when certain conditions are met.  Use this icon type to track their usability."
L["ICONMENU_WPNENCHANT"] = "Weapon Enchant"
L["ICONMENU_WPNENCHANT_DESC"] = [=[This icon type tracks the status of temporary weapon enchants on your weapons - most useful for rogues and shaman.

The name field can be left blank to track any weapon enchant in the specified slot, or you can insert the name(s) of weapon enchant(s) to only show it for specific enchants.  The name that must be entered is the name that appears on the tooltip of your weapon while the enchant is active, e.g. "Flametongue", not "Flametongue Weapon."]=]
L["ICONMENU_TOTEM"] = "Totem"
L["ICONMENU_GHOUL"] = "Non-MoG ghoul"
L["ICONMENU_MUSHROOMS"] = "Wild Mushrooms"
L["ICONMENU_MULTISTATECD"] = "Multi-state ability"
L["ICONMENU_MULTISTATECD_DESC"] = [[This should be used when you want to track multiple states/textures/etc of a cooldown. Some examples are Holy Word: Chastise and Dark Simulacrum.

|cFFFF5959IMPORTANT|r: The action being tracked MUST be on your action bars for this icon type to work. You should also make sure that the ability is in its default state before leaving config mode.]]
L["ICONMENU_UNITCOOLDOWN"] = "Unit Cooldown"
L["ICONMENU_UNITCOOLDOWN_DESC"] = [=[This icon type allows you to track the cooldowns of your friends or your enemies.  You must enter the duration of the cooldown of each spell by adding a colon after each spell, followed by the duration.

Note regarding pvp trinkets: they can be tracked using '%s' as the name.]=]
L["ICONMENU_ICD"] = "Internal Cooldown"
L["ICONMENU_ICD_DESC"] = [=[This icon type can be used to track either the internal cooldown of something such as a proc from a talent or a trinket, or the duration of a spell (e.g. traps, mage orb), or even the duration of a summon (e.g. Infernal).

Enter the spellID or name of the buff/debuff that is placed when the cooldown starts, or the name of the spell that you would like to track the duration of. Semicolon-delimited lists are valid.

If the cooldown can be reset by another ability or proc, it is advised that you instead use the "Unit Cooldown" icon type to track the cooldown instead of this icon type]=]
L["ICONMENU_CAST"] = "Spell Cast"
L["ICONMENU_CAST_DESC"] = [=[The name dialog can be left blank to show the icon for any cast, or in order to only shown the icon for certain spells, you can enter a single spell, or a semicolon-delimited list of spells.]=]
L["ICONMENU_CNDTIC"] = "Condition Icon"
L["ICONMENU_CNDTIC_DESC"] = [=[This icon type is for simply checking a condition.

The icon can be set to a specific spell texture or texture path via the "%s" editbox.]=]
L["ICONMENU_META"] = "Meta Icon"
L["ICONMENU_META_DESC"] = [=[This icon type can be used to combine several icons into one.

Icons that have 'Always Hide' checked will still be shown in a meta icon if they would otherwise be shown.]=]
L["ICONMENU_DR"] = "Diminishing Returns"
L["ICONMENU_DR_DESC"] = [=[This icon type can be used to track the length and extent of the diminishing returns of a category of spells.

Spells from different diminishing returns categories should not be checked in one icon.  For example, do not put Polymorph and Cheap Shot in the same icon, as they are not in the same category. It is advised that you used the predefined DR-<category> equivalencies that TMW provides.]=]
L["ICONMENU_RUNES"] = "Rune Cooldown"

L["ICONMENU_COOLDOWNTYPE"] = "Cooldown type"
L["ICONMENU_SPELL"] = "Spell or ability"

L["ICONMENU_SHOWWHEN"] = "Show icon when"
L["ICONMENU_USABLE"] = "Usable"
L["ICONMENU_UNUSABLE"] = "Unusable"

L["ICONMENU_BUFFTYPE"] = "Buff or debuff"
L["ICONMENU_BUFF"] = "Buff"
L["ICONMENU_DEBUFF"] = "Debuff"
L["ICONMENU_BOTH"] = "Either"

L["ICONMENU_CHECKNEXT"] = "Check sub-metas"
L["ICONMENU_CHECKNEXT_DESC"] = "Checking this box will cause this icon to check all the icons of any meta icons that it might be checking at any level. In addition, this icon will not show any icons that have already been shown by another meta icon with a group/icon ID closer to 1."

L["ICONMENU_DISPEL"] = "Dispel Type"
L["ICONMENU_CASTS"] = "Spell Casts"
L["ICONMENU_DRS"] = "Diminishing Returns"

L["ICONMENU_CUSTOMTEX"] = "Custom Texture"
L["ICONMENU_CUSTOMTEX_DESC"] = "If you want to override the texture shown by this icon, enter the Name or ID of the spell that has the texture that you want to use. You may also enter a texture path, such as 'Interface/Icons/spell_nature_healingtouch', or just 'spell_nature_healingtouch' if the path is 'Interface/Icons'"

L["ICONMENU_BINDTEXT_DESC"] = [[Any text in this editbox will be shown on the icon where the keybinding is normally displayed on an action bar. This does NOT set a keybinding to this TellMeWhen icon. It is simply a visual reminder that will be shown on the icon. The text can be configured in this group's settings.

The following substitutions may be used to customize the text shown:

"%u" - Name of current unit being checked
"%s" - Current spell/item/etc being checked]]



L["ICONMENU_UNITSTOWATCH"] = "Units to watch"
L["ICONMENU_UNITS"] = "Units"
L["ICONMENU_UNIT_DESC"] = [[Enter the units to watch in this box. Units can be inserted from the dropdown at the right, or advanced users can type in their own units. Standard units (e.g. player) and/or friendly player names (e.g. %s) may be used as units. Separate multiple units with semicolons (;). 

For more information about units, go to http://www.wowpedia.org/UnitId.]]
L["DROPDOWN_UNIT_DESC"] = [[You can select units from this menu to insert into the editbox. Units that end with '|cFFFF0000#|r' require that the '|cFFFF0000#|r' be replaced with a number corresponding to the appropriate unit, or a range of numbers. E.g. change 'raid|cFFFF0000#|r' to 'raid25' to track the 25th raid member, or change it to 'raid1-25' to track the first 25 raid members.

For more information about units, go to http://www.wowpedia.org/UnitId.]]
L["ICONMENU_FOCUS"] = "Focus"
L["ICONMENU_TARGETTARGET"] = "Target's target"
L["ICONMENU_FOCUSTARGET"] = "Focus' target"
L["ICONMENU_PETTARGET"] = "Pet's target"
L["ICONMENU_MOUSEOVER"] = "Mouseover"
L["ICONMENU_MOUSEOVERTARGET"] = "Mouseover's target"
L["ICONMENU_VEHICLE"] = "Vehicle"
L["MAINTANK"] = "Main Tank"
L["MAINASSIST"] = "Main Assist"

L["ICONMENU_PRESENT"] = "Present"
L["ICONMENU_ABSENT"] = "Absent"
L["ICONMENU_ALWAYS"] = "Always"

L["ICONMENU_CNDTSHOWWHEN"] = "Show when conditions"
L["ICONMENU_FAIL"] = "Fail"
L["ICONMENU_SUCCEED"] = "Succeed"

L["ICONMENU_CASTSHOWWHEN"] = "Show when a cast is"
L["ICONMENU_ONLYINTERRUPTIBLE"] = "Only Interruptible"
L["ICONMENU_ONLYINTERRUPTIBLE_DESC"] = "Check this box to only show spell casts that are interruptible"

L["ICONMENU_ONLYMINE"] = "Only show mine"
L["ICONMENU_ONLYMINE_DESC"] = "Check this option to cause this icon to only check for your own buffs/debuffs"
L["ICONMENU_SHOWTIMER"] = "Show timer"
L["ICONMENU_SHOWTIMER_DESC"] = "Check this option to display the standard cooldown sweep animation on the icon when applicable."
L["ICONMENU_SHOWTIMERTEXT"] = "Show timer text"
L["ICONMENU_SHOWTIMERTEXT_DESC"] = [[Check this option to display a textual display of the remaining cooldown/duration on the icon.

This is only applicable if OmniCC is installed.]]

L["ICONMENU_SHOWPBARN"] = "Power bar"
L["ICONMENU_SHOWCBARN"] = "Timer bar"
L["ICONMENU_SHOWPBAR_DESC"] = "Shows a bar that is overlaid across the top half of the icon that will indicate the power still needed to cast the spell (or the power that you have when 'Fill bars up' is checked)"
L["ICONMENU_SHOWCBAR_DESC"] = "Shows a bar that is overlaid across the bottom half of the icon that will indicate the cooldown/duration remaining (or the time that has passed if 'Fill bars up' is checked)"
L["ICONMENU_INVERTBARS"] = "Fill bars up"
L["ICONMENU_INVERTBARS_DESC"] = "Check this option to cause the overlay bars to fill up to cover the whole width of the icon as power become sufficient and duration reaches zero."
L["ICONMENU_OFFS"] = "Offset"
L["ICONMENU_BAROFFS"] = "This amount will be added to the bar in order to offset it. Useful for custom indicators of when you should begin casting a spell to prevent a buff from falling off, or to indicate the power required to cast a spell and still have some left over for an interrupt."

L["ICONMENU_REACT"] = "Unit Reaction"
L["ICONMENU_FRIEND"] = "Friendly"
L["ICONMENU_HOSTILE"] = "Hostile"

L["ICONMENU_ICDTYPE"] = "Triggered by"
L["ICONMENU_SPELLCAST_COMPLETE"] = "Spell Cast Finish/Instant Cast"
L["ICONMENU_SPELLCAST_START"] = "Spell Cast Start"
L["ICONMENU_ICDBDE"] = "Buff/Debuff/Energize/Summon"
L["ICONMENU_SPELLCAST_COMPLETE_DESC"] = [[Select this option if the internal cooldown begins when you finish casting a spell, or when you cast an instant cast spell.

You need to enter the name/ID of the spell that triggers the internal cooldown into the "%s" editbox.]]
L["ICONMENU_SPELLCAST_START_DESC"] = [[Select this option if the internal cooldown begins when you start casting a spell.

You need to enter the name/ID of the spell that triggers the internal cooldown into the "%s" editbox.]]
L["ICONMENU_ICDAURA_DESC"] = [[Select this option if the internal cooldown begins when a buff or debuff is applied by yourself (includes procs), or if the effect energizes you with mana/rage/etc.

You need to enter the name/ID of the buff/debuff that you gain when the internal cooldown is triggered, or the name of the energize effect (check your combat log), into the "%s" editbox.]]

L["ICONMENU_DRPRESENT"] = "Diminished"
L["ICONMENU_DRABSENT"] = "Undiminished"

L["TOTEMS"] = "Totems to check"
L["FIRE"] = "Fire"
L["EARTH"] = "Earth"
L["WATER"] = "Water"
L["AIR"] = "Air"
L["MUSHROOMS"] = "Mushrooms to check"
L["MUSHROOM"] = "Mushroom %d"
L["RUNES"] = "Rune(s) to check"

L["ICONMENU_SHOWTTTEXT"] = "Show variable text"
L["ICONMENU_SHOWTTTEXT_DESC"] = [[Check this to display the first variable associated with the aura that is being displayed. Practical uses include monitoring damage shield amounts.

Numbers are provided by Blizzard API and do not necessarily match numbers found on the tooltip of the aura. In most practical cases, though, the correct number will be shown.]]
L["ICONMENU_RANGECHECK"] = "Range check"
L["ICONMENU_RANGECHECK_DESC"] = "Check this to enable changing the color of the icon when you are out of range"
L["ICONMENU_MANACHECK"] = "Power check"
L["ICONMENU_MANACHECK_DESC"] = "Check this to enable changing the color of the icon when you are out of mana/rage/runic power/etc"
L["ICONMENU_COOLDOWNCHECK"] = "Cooldown check"
L["ICONMENU_COOLDOWNCHECK_DESC"] = "Check this to cause the icon to be considered unusable if it is on cooldown"
L["ICONMENU_IGNORERUNES"] = "Ignore Runes"
L["ICONMENU_IGNORERUNES_DESC"] = "Check this to treat the cooldown as usable if the only thing hindering it is a rune cooldown (or a global cooldown)."
L["ICONMENU_IGNORERUNES_DESC_DISABLED"] = "You must enable the \"Cooldown check\" setting to enable the \"Ignore Runes\" setting."
L["ICONMENU_DONTREFRESH"] = "Don't Refresh"
L["ICONMENU_DONTREFRESH_DESC"] = "Check to force the cooldown to not reset if the trigger occurs while it is still counting down. Useful for talents such as Early Frost."

L["SORTBY"] = "Prioritize"
L["SORTBYNONE"] = "Normally"
L["SORTBYNONE_DESC"] = [[If checked, spells will be checked in and appear in the order that they were entered into the "%s" editbox. If this icon is a buff/debuff icon and the number of auras being checked exceeds the efficiency threshold setting, auras will be checked in the order that they would normally appear on the unit's unit frame.]]
L["ICONMENU_SORTASC"] = "Low duration"
L["ICONMENU_SORTASC_DESC"] = "Check this box to prioritize and show spells with the lowest duration."
L["ICONMENU_SORTDESC"] = "High duration"
L["ICONMENU_SORTDESC_DESC"] = "Check this box to prioritize and show spells with the highest duration."

L["ICONMENU_MOVEHERE"] = "Move here"
L["ICONMENU_COPYHERE"] = "Copy here"
L["ICONMENU_SWAPWITH"] = "Swap with"
L["ICONMENU_ADDMETA"] = "Add to meta icon"
L["ICONMENU_APPENDCONDT"] = "Add as 'Icon Shown' condition"
L["ICONMENU_ANCHOR"] = "Anchor to Group: %s"



L["GENERIC_NUMREQ_CHECK_DESC"] = "Check to enable and configue the %s"

L["STACKS"] = "Stacks"
L["STACKSPANEL_TITLE"] = "Stacks"
L["ICONMENU_STACKS_MIN_DESC"] = "Minimum number of stacks needed to show the icon"
L["ICONMENU_STACKS_MAX_DESC"] = "Maximum number of stacks allowed to show the icon"

L["DURATION"] = "Duration"
L["DURATIONPANEL_TITLE"] = "Duration"
L["ICONMENU_DURATION_MIN_DESC"] = "Minimum duration needed to show the icon"
L["ICONMENU_DURATION_MAX_DESC"] = "Maximum duration allowed to show the icon"

L["CONDITION_TIMERS_HEADER"] = "Timers"
L["CONDITION_TIMERS_SUCCEED_DESC"] = "Duration of a timer to set on the icon when conditions begin succeeding"
L["CONDITION_TIMERS_FAIL_DESC"] = "Duration of a timer to set on the icon when conditions begin failing"

L["METAPANEL_UP"] = "Move up"
L["METAPANEL_DOWN"] = "Move down"
L["METAPANEL_REMOVE"] = "Remove this icon"
L["METAPANEL_INSERT"] = "Insert an icon"

L["ICONALPHAPANEL_FAKEHIDDEN"] = "Always Hide"
L["ICONALPHAPANEL_FAKEHIDDEN_DESC"] = "Causes the icon to be hidden all the time, but whilst still enabled in order to allow the conditions of other icons to check this icon, or for meta icons to include this icon."
L["ICONMENU_WPNENCHANTTYPE"] = "Weapon slot to monitor"
L["ICONMENU_HIDEUNEQUIPPED"] = "Hide when slot is empty"
L["ICONMENU_HIDEUNEQUIPPED_DESC"] = "Check this to force the icon to be hidden if the weapon spot being checked does not have a weapon in it."
L["ICONMENU_USEACTIVATIONOVERLAY"] = "Check activation border"
L["ICONMENU_USEACTIVATIONOVERLAY_DESC"] = "Check this to cause the presence of the sparkly yellow border around an action to force the icon to act as usable."
L["ICONMENU_ONLYEQPPD"] = "Only if equipped"
L["ICONMENU_ONLYEQPPD_DESC"] = "Check this to make the icon show only if the item is equipped."
L["ICONMENU_SHOWSTACKS"] = "Show stacks"
L["ICONMENU_SHOWSTACKS_DESC"] = "Check this to show the number of stacks of the item you have."
L["ICONMENU_STEALABLE"] = "Only stealable"
L["ICONMENU_STEALABLE_DESC"] = "Check this to only show buffs that can be spellstolen. Best used when checking for the 'Magic' dispel type"
L["ICONMENU_ONLYBAGS"] = "Only if in bags"
L["ICONMENU_ONLYBAGS_DESC"] = "Check this to make the icon show only if the item is in your bags (or equipped). If 'Only if equipped' is enabled, this is also forcibly enabled."
L["ICONMENU_ONLYSEEN"] = "Only if seen"
L["ICONMENU_ONLYSEEN_DESC"] = "Check this to make the icon only show a cooldown if the unit has cast it at least once. You should check this if you are checking spells from different classes in one icon."
L["ICONMENU_CHECKREFRESH"] = "Listen for refreshes"
L["ICONMENU_CHECKREFRESH_DESC"] = [[Blizzard's combat log is very buggy when it comes to spell refreshes and fear (or other spells that break after a certain amount of damage). The combat log will say that the spell was refreshed when damage is dealt, even though it technically wasn't. Uncheck this box to disable listening to spell refreshes, but note that legitimate refreshes will be ignored as well.

It is reccommended to leave this checked if the DRs you are checking for don't break after a certain amount of damage.]]
L["ICONMENU_IGNORENOMANA"] = "Ignore lack of power"
L["ICONMENU_IGNORENOMANA_DESC"] = [[Check this to cause the ability to not be treated as unusable if there is only a lack of power to use it.

Useful for abilities such as %s or %s]]
L["ICONMENU_ONLYIFCOUNTING"] = "Only show if timer is active"
L["ICONMENU_ONLYIFCOUNTING_DESC"] = "Check this to make the icon show only if there is currently an active timer running on the icon with a duration greater than 0."


-- -------------
-- UI PANEL
-- -------------

L["UIPANEL_SUBTEXT2"] = "Icons work when locked. When unlocked, you can move/size icon groups and right click individual icons for more settings. You can also type /tellmewhen or /tmw to lock/unlock."
L["UIPANEL_MAINOPT"] = "Main Options"
L["UIPANEL_GROUPS"] = "Groups"
L["UIPANEL_ICONS"] = "Icons"
L["UIPANEL_COLORS"] = "Colors"
L["UIPANEL_ENABLEGROUP"] = "Enable Group"
L["UIPANEL_GROUPNAME"] = "Rename Group"
L["UIPANEL_ROWS"] = "Rows"
L["UIPANEL_COLUMNS"] = "Columns"
L["UIPANEL_ONLYINCOMBAT"] = "Only show in combat"
L["UIPANEL_SPEC"] = "Dual Spec"
L["UIPANEL_TREE"] = "Talent Tree"
L["UIPANEL_TREE_DESC"] = "Check to allow this group to show when this talent tree is active, or uncheck to cause it to hide when it is not active."
L["UIPANEL_PTSINTAL"] = "Points in talent"
L["UIPANEL_PRIMARYSPEC"] = "Primary Spec"
L["UIPANEL_SECONDARYSPEC"] = "Secondary Spec"
L["UIPANEL_GROUPRESET"] = "Reset Position"
L["UIPANEL_TOOLTIP_GROUPRESET"] = "Reset this group's position and scale"
L["UIPANEL_ALLRESET"] = "Reset all"
L["UIPANEL_TOOLTIP_ALLRESET"] = "Reset DATA and POSITION of all icons and groups, as well as any other settings."
L["UIPANEL_LOCKUNLOCK"] = "Lock/Unlock AddOn"
L["UIPANEL_BARTEXTURE"] = "Bar Texture"
L["UIPANEL_BARIGNOREGCD"] = "Bars Ignore GCD"
L["UIPANEL_BARIGNOREGCD_DESC"] = "If checked, cooldown bars will not change values if the cooldown triggered is a global cooldown"
L["UIPANEL_CLOCKIGNOREGCD"] = "Timers Ignore GCD"
L["UIPANEL_CLOCKIGNOREGCD_DESC"] = "If checked, timers and the cooldown clock will not trigger from a global cooldown"
L["UIPANEL_UPDATEINTERVAL"] = "Update Interval"
L["UIPANEL_TOOLTIP_UPDATEINTERVAL"] = "Sets how often (in seconds) icons are checked for show/hide, alpha, conditions, etc. Zero is as fast as possible. Lower values can have a significant impact on framerate for low-end computers"
L["UIPANEL_EFFTHRESHOLD"] = "Buff Efficiency Threshold"
L["UIPANEL_EFFTHRESHOLD_DESC"] = "Sets the minimum number of buffs/debuffs to switch to a more efficient mode of checking them when there are a high number. Note that once the number of auras being checked exceeds this number, older auras will be prioritized instead of priority based on the order in which they were entered."
L["UIPANEL_ICONSPACING"] = "Icon Spacing"
L["UIPANEL_ICONSPACING_DESC"] = "Distance that icons within a group are away from each other"
L["UIPANEL_ADDGROUP"] = "+ Add Another Group +"
L["UIPANEL_ADDGROUP_DESC"] = "The new group will be assigned the next available groupID"
L["UIPANEL_DELGROUP"] = "Delete this Group"
L["UIPANEL_DELGROUP_DESC"] = "Any groups after this group will have their ID shifted up one, and any icons that are checking icons in groups that will be shifted will have their settings automatically updated."
L["UIPANEL_TOOLTIP_ENABLEGROUP"] = "Show and enable this group"
L["UIPANEL_TOOLTIP_ROWS"] = "Set the number of rows in this group"
L["UIPANEL_TOOLTIP_COLUMNS"] = "Set the number of columns in this group"
L["UIPANEL_TOOLTIP_ONLYINCOMBAT"] = "Check to cause this group to only be shown in combat"
L["UIPANEL_TOOLTIP_PRIMARYSPEC"] = "Check to show this group while your primary spec is active"
L["UIPANEL_TOOLTIP_SECONDARYSPEC"] = "Check to show this group while your secondary spec is active"
L["UIPANEL_COLOR_COMPLETE"] = "CD/Duration Complete"
L["UIPANEL_COLOR_STARTED"] = "CD/Duration Begin"
L["UIPANEL_COLOR_COMPLETE_DESC"] = "Color of the cooldown/duration overlay bar when the cooldown/duration is complete"
L["UIPANEL_COLOR_STARTED_DESC"] = "Color of the cooldown/duration overlay bar when the cooldown/duration has just begun"
L["UIPANEL_DRAWEDGE"] = "Highlight timer edge"
L["UIPANEL_DRAWEDGE_DESC"] = "Highlights the edge of the cooldown timer (clock animation) to increase visibility"
L["UIPANEL_WARNINVALIDS"] = "Warn about invalid icons"
L["UIPANEL_COLOR_OOR"] = "Out of range color"
L["UIPANEL_COLOR_OOR_DESC"] = "Tint and alpha of the icon when you are not in range of the target to cast the spell"
L["UIPANEL_COLOR_OOM"] = "Out of power color"
L["UIPANEL_COLOR_OOM_DESC"] = "Tint and alpha of the icon when you lack the mana/rage/energy/focus/runicpower to cast the spell"
L["UIPANEL_COLOR_DESC"] = "The following options only affect the colors of icons when they are set to show all the time"
L["UIPANEL_COLOR_PRESENT"] = "Present color"
L["UIPANEL_COLOR_PRESENT_DESC"] = "The tint of the icon when the buff/debuff/enchant/totem is present and the icon is set to always show."
L["UIPANEL_COLOR_ABSENT"] = "Absent color"
L["UIPANEL_COLOR_ABSENT_DESC"] = "The tint of the icon when the buff/debuff/enchant/totem is absent and the icon is set to always show."
L["FONTCOLOR"] = "Font Color"
L["FONTSIZE"] = "Font Size"
L["DEFAULT"] = "Default"
L["NONE"] = "None of these"
L["CASTERFORM"] = "Caster Form"

L["RESET_ICON"] = "Reset Icon"
L["RESET_NOTIFY"] = "Click the reset button again within 5 seconds to confirm the reset."
L["RESET_EXPIRE"] = "Reset timer expired."
L["RESET_CONFIRM"] = "Confirm Reset"

L["UIPANEL_FONT_Count"] = "Stack Text" -- proper case endings intended
L["UIPANEL_FONT_Bind"] = "Binding/Label Text"
L["UIPANEL_FONTFACE"] = "Font Face"
L["UIPANEL_FONT_DESC"] = "Chose the font to be used by the stack text on icons."
L["UIPANEL_FONT_SIZE"] = "Font Size"
L["UIPANEL_FONT_SIZE_DESC"] = "Change the size of the font used for stack text on icons. If ButtonFacade is used and the set skin has a font size defined, then this value will be ignored."
L["UIPANEL_FONT_OUTLINE"] = "Font Outline"
L["UIPANEL_FONT_OUTLINE_DESC"] = "Sets the outline style for the stack text on icons."
L["OUTLINE_NO"] = "No Outline"
L["OUTLINE_THIN"] = "Thin Outline"
L["OUTLINE_THICK"] = "Thick Outline"
L["OUTLINE_MONOCHORME"] = "Monochrome"
L["UIPANEL_FONT_OVERRIDELBF"] = "Override Masque/ButtonFacade position"
L["UIPANEL_FONT_OVERRIDELBF_DESC"] = [[Check this to override the position of the stack text that is defined in your Masque/ButtonFacade skin.

A UI Reload or a change of skin is required to restore the skin settings to the text should you choose to disable this option after enabling it.]]
L["UIPANEL_FONT_CONSTRAINWIDTH"] = "Constrain Width"
L["UIPANEL_FONT_CONSTRAINWIDTH_DESC"] = [[Check this to force the text to fit within the width of the icon if positioned appropriately.
Uncheck to allow text to extend wider than the icon.]]
L["UIPANEL_FONT_XOFFS"] = "X Offset"
L["UIPANEL_FONT_YOFFS"] = "Y Offset"
L["UIPANEL_POSITION"] = "Position"
L["UIPANEL_POINT"] = "Point"
L["UIPANEL_RELATIVETO"] = "Relative To"
L["UIPANEL_RELATIVETO_DESC"] = "Type '/framestack' to toggle a tooltip that contains a list of all the frames that your mouse is over, and their names, to put into this dialog."
L["UIPANEL_RELATIVEPOINT"] = "Relative Point"
L["CHECKORDER"] = "Update order"
L["CHECKORDER_ICONDESC"] = "Sets the order in which icons within this group will be updated. This really only matters if you are using the feature of meta icons to check sub-metas."
L["CHECKORDER_GROUPDESC"] = "Sets the order in which groups will be updated. This really only matters if you are using the feature of meta icons to check sub-metas."
L["ASCENDING"] = "Ascending"
L["DESCENDING"] = "Descending"
L["UIPANEL_SCALE"] = "Scale"
L["UIPANEL_LEVEL"] = "Frame Level"
L["UIPANEL_STRATA"] = "Frame Strata"
L["UIPANEL_LOCK"] = "Lock Group"
L["UIPANEL_LOCK_DESC"] = "Lock this group, preventing movement or sizing by dragging the group or the scale tab."


-- -------------
-- CONDITION PANEL
-- -------------

L["ICONTOCHECK"] = "Icon to check"
L["MOON"] = "Moon"
L["SUN"] = "Sun"
L["TRUE"] = "True"
L["FALSE"] = "False"
L["CONDITIONPANEL_TYPE"] = "Type"
L["CONDITIONPANEL_UNIT"] = "Unit"
L["CONDITIONPANEL_UNIT_DESC"] = "Enter the unit to watch in this box. The unit can be inserted from the dropdown at the right, or advanced users can type in their own unit. Standard units (e.g. player) and/or friendly player names (e.g. %s) may be used as units."
L["CONDITIONPANEL_UNITDROPDOWN_DESC"] = [[You can select a unit from this menu to insert into the editbox. Units that end with '|cFFFF0000#|r' require that the '|cFFFF0000#|r' be replaced with a number corresponding to the appropriate unit. E.g. change 'raid|cFFFF0000#|r' to 'raid25' to track the 25th raid member.

NOTE: Conditions only accept one unit.]]
L["CONDITIONPANEL_OPERATOR"] = "Operator"
L["CONDITIONPANEL_VALUEN"] = "Value"
L["CONDITIONPANEL_ANDOR"] = "And / Or"
L["CONDITIONPANEL_AND"] = "And"
L["CONDITIONPANEL_OR"] = "Or"
L["CONDITIONPANEL_POWER"] = "Primary Resource"
L["CONDITIONPANEL_COMBO"] = "Combo Points"
L["CONDITIONPANEL_ALTPOWER"] = "Alt. Power"
L["CONDITIONPANEL_ALTPOWER_DESC"] = [[This is the encounter specific power used in several encounters in Cataclysm, including Cho'gall and Atramedes]]
L["CONDITIONPANEL_EXISTS"] = "Unit Exists"
L["CONDITIONPANEL_ALIVE"] = "Unit is Alive"
L["CONDITIONPANEL_ALIVE_DESC"] = "The condition will pass if the unit specified is alive."
L["CONDITIONPANEL_COMBAT"] = "Unit in Combat"
L["CONDITIONPANEL_VEHICLE"] = "Unit Controls Vehicle"
L["CONDITIONPANEL_POWER_DESC"] = [=[Will check for energy if the unit is a druid in cat form, rage if the unit is a warrior, etc.]=]
L["ECLIPSE_DIRECTION"] = "Eclipse Direction"
L["CONDITIONPANEL_ECLIPSE_DESC"] = [=[Eclipse has a range of -100 (a lunar eclipse) to 100 (a solar eclipse).  Input -80 if you want the icon to work with a value of 80 lunar power.]=]
L["CONDITIONPANEL_ICON"] = "Icon Shown"
L["CONDITIONPANEL_ICON_DESC"] = [=[The condition will pass if the icon specified is currently shown with an alpha above 0%, or hidden with an alpha of 0% if set to false.

If you don't want to display the icons that are being checked, check 'Always Hide' in the icon editor of the icon being checked.

The group of the icon being checked must be shown in order to check the icon, even if the condition is set to false.]=]
L["CONDITIONPANEL_RUNES_DESC"] = [=[Use this condition type to only show the icon when the selected runes are available.

Each rune is a check button. A check mark will require that the rune be usable, an 'X' will require that the rune be unusable, no mark will ignore the rune.

The runes in the second row are the death rune version of each rune above.]=]
L["CONDITIONPANEL_PVPFLAG"] = "Unit is PvP Flagged"
L["CONDITIONPANEL_LEVEL"] = "Unit Level"
L["CONDITIONPANEL_CLASS"] = "Unit Class"
L["CONDITIONPANEL_CLASSIFICATION"] = "Unit Classification"
L["CONDITIONPANEL_ROLE"] = "Unit Role"
L["CONDITIONPANEL_RAIDICON"] = "Unit Raid Icon"
L["CONDITIONPANEL_UNITISUNIT"] = "Unit is Unit"
L["CONDITIONPANEL_UNITISUNIT_DESC"] = "This condition will pass if the unit in the first editbox and the second editbox are the same entity."
L["CONDITIONPANEL_UNITISUNIT_EBDESC"] = "Enter a unit in this editbox to be compared with the first unit."
L["UNITTWO"] = "Second Unit"
L["CONDITIONPANEL_THREAT_SCALED"] = "Unit Threat - Scaled"
L["CONDITIONPANEL_THREAT_SCALED_DESC"] = [[This condition checks your scaled threat percentage on a unit.

100% indicates that you are tanking the unit.]]
L["CONDITIONPANEL_THREAT_RAW"] = "Unit Threat - Raw"
L["CONDITIONPANEL_THREAT_RAW_DESC"] = [[This condition checks your raw threat percentage on a unit.

Players in melee range pull aggro at 110%
Players at range pull aggro at 130%
Players with aggro have a raw threat percentage of 255%]]
L["CONDITIONPANEL_CASTTOMATCH"] = "Spell to Match"
L["CONDITIONPANEL_CASTTOMATCH_DESC"] = [[Enter a spell name here to make the condition only pass if the spell cast matches it exactly.

You can leave this blank to check for any and all spell casts/channels]]
L["CONDITIONPANEL_INTERRUPTIBLE"] = "Interruptible"
L["CONDITIONPANEL_NAME"] = "Unit Name"
L["CONDITIONPANEL_NAMETOMATCH"] = "Name to Match"
L["CONDITIONPANEL_NAMETOOLTIP"] = "You can enter multiple names to be matched by separating each one with a semicolon (;). The condition will pass if any names are matched."
L["CONDITIONPANEL_INSTANCETYPE"] = "Instance Type"
L["CONDITIONPANEL_GROUPTYPE"] = "Group Type"
L["CONDITIONPANEL_SWIMMING"] = "Swimming"
L["CONDITIONPANEL_RESTING"] = "Resting"
L["CONDITIONPANEL_MANAUSABLE"] = "Spell Usable (Mana/Energy/etc.)"
L["CONDITIONPANEL_SPELLRANGE"] = "Spell in range of unit"
L["CONDITIONPANEL_ITEMRANGE"] = "Item in range of unit"
L["CONDITIONPANEL_AUTOCAST"] = "Spell autocasting"
L["CONDITIONPANEL_PETMODE"] = "Pet attack mode"
L["CONDITIONPANEL_TRACKING"] = "Tracking active"
L["ONLYCHECKMINE"] = "Only Check Mine"
L["ONLYCHECKMINE_DESC"] = "Check this to cause this condition to only check your own buffs/debuffs"
L["LUACONDITION"] = "Lua (Advanced)"
L["LUACONDITION_DESC"] = [[This condition type allows you to evaluate Lua code to determine the state of a condition.

The input is not an 'if .. then' statement, nor is it a function closure. It is a regular statement to be evaluated, e.g. 'a and b or c'.  If complex functionality is required, use a call to a function, e.g. 'CheckStuff()', that is defined externally.

If more help is needed (but not help about how to write Lua code), open a ticket on CurseForge. For help on how to write Lua, go to the internet.]]
L["MACROCONDITION"] = "Macro Conditional"
L["MACROCONDITION_DESC"] = [[This condition will evaluate a macro conditional, and will pass if it passes. All macro conditionals can be prepended with "no" to reverse what they check.

Examples:
	"[nomodifier:alt]" - not holding down the alt key.
	"[@target, help][mod:ctrl]" - target is friendly OR holding down ctrl
	"[@focus, harm, nomod:shift]" - focus is hostile AND not holding down shift
	
For more help, go to http://www.wowpedia.org/Making_a_macro]]
L["MACROCONDITION_EB_DESC"] = "If using a single condition, opening and closing brackets are optional. Brackets are required if using multiple conditionals."
L["NOTINRANGE"] = "Not in range"
L["INRANGE"] = "In range"
L["STANCE"] = "Stance"
L["AURA"] = "Aura"
L["ASPECT"] = "Aspect"
L["SHAPESHIFT"] = "Shapeshift"
L["PRESENCE"] = "Presence"
L["SPEED"] = "Unit Speed"
L["SPEED_DESC"] = [[This refers to the current movement speed of the unit. If the unit is not moving, it is zero.  If you wish to track the maximum run speed of the unit, use the 'Unit Run Speed' condition instead.]]
L["RUNSPEED"] = "Unit Run Speed"
L["SPELLTOCHECK"] = "Spell to Check"
L["SPELLTOCOMP1"] = "First Spell to Compare"
L["SPELLTOCOMP2"] = "Second Spell to Compare"
L["ITEMTOCHECK"] = "Item to Check"
L["ITEMTOCOMP1"] = "First Item to Compare"
L["ITEMTOCOMP2"] = "Second Item to Compare"
L["BUFFTOCHECK"] = "Buff to Check"
L["BUFFTOCOMP1"] = "First Buff to Compare"
L["BUFFTOCOMP2"] = "Second Buff to Compare"
L["DEBUFFTOCHECK"] = "Debuff to Check"
L["DEBUFFTOCOMP1"] = "First Debuff to Compare"
L["DEBUFFTOCOMP2"] = "Second Debuff to Compare"
L["CODETOEXE"] = "Code to Execute"
L["MACROTOEVAL"] = "Macro Conditional(s) to Evaluate"
L["COMPARISON"] = "Comparison"

L["MELEEHASTE"] = "Melee Haste"
L["MELEECRIT"] = "Melee Crit"
L["RANGEDHASTE"] = "Ranged Haste"
L["RANGEDCRIT"] = "Ranged Crit"
L["SPELLHASTE"] = "Spell Haste"
L["SPELLCRIT"] = "Spell Crit"
L["ITEMINBAGS"] = "Item count (includes charges)"
L["ITEMEQUIPPED"] = "Item is equipped"
L["ITEMCOOLDOWN"] = "Item cooldown"
L["SPELLCOOLDOWN"] = "Spell cooldown"
L["SPELLREACTIVITY"] = "Spell reactivity"
L["MP5"] = "%d MP5"
L["REACTIVECNDT_DESC"] = "This condition only checks the reactive state of the ability, not the cooldown of it."
L["BUFFCNDT_DESC"] = "Only the first spell will be checked, all others will be ignored. Spells entered as IDs will not be forced to have their ID match an aura found; only the name will have to match."
L["CNDT_ONLYFIRST"] = "Only the first spell/item will be checked - semicolon-delimited lists are not valid for this condition type."
L["GCD_ACTIVE"] = "GCD active"

L["CNDTCAT_FREQUENTLYUSED"] = "Frequently Used"
L["CNDTCAT_SPELLSABILITIES"] = "Spells/Items"
L["CNDTCAT_BUFFSDEBUFFS"] = "Buffs/Debuffs"
L["CNDTCAT_STATUS"] = "Attributes"
L["CNDTCAT_STATS"] = "Combat Stats"
L["CNDTCAT_RESOURCES"] = "Resources"
L["CNDTCAT_CURRENCIES"] = "Currencies"

L["CONDITIONPANEL_MOUNTED"] = "Mounted"
L["CONDITIONPANEL_EQUALS"] = "Equals"
L["CONDITIONPANEL_NOTEQUAL"] = "Not Equal to"
L["CONDITIONPANEL_LESS"] = "Less Than"
L["CONDITIONPANEL_LESSEQUAL"] = "Less Than/Equal to"
L["CONDITIONPANEL_GREATER"] = "Greater Than"
L["CONDITIONPANEL_GREATEREQUAL"] = "Greater Than/Equal to"
L["CONDITIONPANEL_REMOVE"] = "Remove this condition"
L["CONDITIONPANEL_ADD"] = "Add a condition"
L["PARENTHESISWARNING"] = "# of opening and closing parentheses isn't equal!"
L["PARENTHESISWARNING2"] = "Some closing parentheses are missing openers!"
L["NUMAURAS"] = "Number of"
L["ACTIVE"] = "%d Active"
L["NUMAURAS_DESC"] = [[This condition checks the number of an aura active - not to be confused with the number of stacks of an aura.  This is for checking things like if you have both weapon enchant procs active at the same time.  Use sparingly, as the process used to count the numbers is a bit CPU intensive.]]
L["TOOLTIPSCAN"] = "Aura Variable"
L["TOOLTIPSCAN_DESC"] = "This condition type will allow you to check the first variable associated with an aura. Numbers are provided by Blizzard API and do not necessarily match numbers found on the tooltip of the aura. There is also no guarantee that a number will be obtained for an aura. In most practical cases, though, the correct number will be checked."



-- ----------
-- STUFF THAT I GOT SICK OF ADDING PREFIXES TOO AND PUTTING IN THE RIGHT PLACE
-- ----------

L["GROUPICON"] = "Group: %s, Icon: %s"
L["ICONGROUP"] = "Icon: %s (Group: %s)"
L["fGROUP"] = "Group: %s"
L["fICON"] = "Icon: %s"
L["ICON"] = "Icon"
L["DISABLED"] = "Disabled"
L["COPYPOSSCALE"] = "Copy position/scale"
L["COPYGROUP"] = "Copy Group"
L["OVERWRITEGROUP"] = "Overwrite group: %s"
L["MAKENEWGROUP"] = "Create new group"
L["CONFIRMOVERWRITE"] = "Confirm overwrite"


L["GROUPADDONSETTINGS"] = "Group Settings"
L["CONDITIONS"] = "Conditions"
L["GROUPCONDITIONS"] = "Group Conditions"
L["MAIN"] = "Main"
L["UNNAMED"] = "((Unnamed))"


L["SENDSUCCESSFUL"] = "Sent successfully"
L["MESSAGERECIEVE"] = "%s has sent you some TellMeWhen data! You can import this data into TellMeWhen using the 'Import/Export' dropdown in the icon editor."
L["MESSAGERECIEVE_SHORT"] = "%s has sent you some TellMeWhen data!"
L["ALLOWCOMM"] = "Allow data importing"
L["NEWVERSION"] = "A new version of TellMeWhen is available: %s"
L["PLAYER_DESC"] = "(You)"


L["IMPORT_EXPORT"] = "Import/Export"
L["IMPORT_EXPORT_DESC"] = [[Click the dropdown arrow to the right of this editbox to import and export icons, groups, and profiles.

Importing to or from a string, or exporting to another player, will require the use of this editbox. See the tooltips within the dropdown menu for details.]]
L["IMPORT_EXPORT_BUTTON_DESC"] = "Click this dropdown to import and export icons, groups, and profiles."
L["IMPORT_EXPORT_DESC_INLINE"] = "Import and Export profiles, groups, icons to or from strings, other players, other profiles, or a backup of your settings."

L["IMPORT_HEADING"] = "Import"
L["IMPORT_FROMLOCAL"] = "From Profile"
L["IMPORT_FROMBACKUP"] = "From Backup"
L["IMPORT_FROMBACKUP_WARNING"] = "BACKUP SETTINGS: %s"
L["IMPORT_FROMBACKUP_DESC"] = "Settings restored from this settings menu will be as they were at: %s"
L["IMPORT_FROMSTRING"] = "From String"
L["IMPORT_FROMSTRING_DESC"] = [[Strings allow you to transfer TellMeWhen configuration data outside the game.

To import from a string, press CTRL+V to paste the string into the editbox after you have copied it to your clipboard, and then navigate back to this sub-menu.]]
L["IMPORT_FROMCOMM"] = "From Player"
L["IMPORT_FROMCOMM_DESC"] = "If another user of TellMeWhen sends you any configuration data, you will be able to import that data from this submenu."
L["IMPORT_PROFILE"] = "Copy Profile"
L["IMPORT_PROFILE_OVERWRITE"] = "Overwrite %s"
L["IMPORT_PROFILE_NEW"] = "Create New Profile"

L["EXPORT_HEADING"] = "Export"
L["EXPORT_TOSTRING"] = "To String"
L["EXPORT_TOCOMM"] = "To Player"
L["EXPORT_TOCOMM_DESC"] = "Type a player's name into the editbox and choose this option to send the data to them. They must be somebody that you can whisper (same faction, server, online), and they must have TellMeWhen v4.0.0+"
L["EXPORT_TOSTRING_DESC"] = "A string containing the necessary data will be pasted into the editbox.  Press Ctrl+C to copy it, and then paste it wherever you want to share it."
L["EXPORT_SPECIALDESC"] = "Other TellMeWhen users can only import entire groups or entire profiles if they have version 4.6.0+"
L["EXPORT_f"] = "Export %s"
L["fPROFILE"] = "Profile: %s"









L["CACHING"] = [[TellMeWhen is caching and filtering all spells in the game. This only needs to be done once per WoW patch. You can speed up or slow down the process using the slider below.

You do not have to wait for this process to complete in order to use TellMeWhen. Only the suggestion list is dependent on the completion of the spell cache.]]
L["CACHINGSPEED"] = "Spells per frame:"
L["SUGGESTIONS"] = "Suggestions:"
L["SUG_TOOLTIPTITLE"] = [[As you type, TellMeWhen will look through its cache and determine the spells that you were most likely looking for.

Spells are categorized and colored as per the list below. Note that the categories that begin with the word "Known" will not have spells put into them until they have been seen as you play or log onto different classes.

Clicking on an entry will insert it into the editbox.

]]--extra newlines intended
L["SUG_DISPELTYPES"] = "Dispel Types"
L["SUG_BUFFEQUIVS"] = "Buff Equivalencies"
L["SUG_DEBUFFEQUIVS"] = "Debuff Equivalencies"
L["SUG_OTHEREQUIVS"] = "Other Equivalencies"
L["SUG_MSCDONBARS"] = "Valid multi-state cooldowns"
L["SUG_PLAYERSPELLS"] = "Your spells"
L["SUG_CLASSSPELLS"] = "Known PC/pet spells"
L["SUG_NPCAURAS"] = "Known NPC buffs/debuffs"
L["SUG_PLAYERAURAS"] = "Known PC/pet buffs/debuffs"
L["SUG_MISC"] = "Miscellaneous"
L["SUG_FINISHHIM"] = "Finish Caching Now"
L["SUG_FINISHHIM_DESC"] = "Click to immediately finish the caching/filtering process. Note that your computer may freeze for a few seconds."
L["SUG_INSERTNAME_LEFT"] = "Left-click to insert as a name"
L["SUG_INSERTID_LEFT"] = "Left-click to insert as an ID"
L["SUG_INSERTNAME_RIGHT"] = "Right-click to insert as a name"
L["SUG_INSERTID_RIGHT"] = "Right-click to insert as an ID"



L["SOUND_EVENT_ONSHOW"] = "On Show"
L["SOUND_EVENT_ONSHOW_DESC"] = "This event triggers when the icon becomes shown (even if 'Always Hide' is checked)."

L["SOUND_EVENT_ONHIDE"] = "On Hide"
L["SOUND_EVENT_ONHIDE_DESC"] = "This event triggers when the icon is hidden (even if 'Always Hide' is checked)."

L["SOUND_EVENT_ONSTART"] = "On Start"
L["SOUND_EVENT_ONSTART_DESC"] = [[This event triggers when the cooldown becomes unusable, the buff/debuff is applied, etc.

NOTE: This event handler will never execute after executing an On Show or On Hide event.]]

L["SOUND_EVENT_ONFINISH"] = "On Finish"
L["SOUND_EVENT_ONFINISH_DESC"] = [[This event triggers when the cooldown becomes usable, the buff/debuff falls off, etc.

NOTE: This event handler will never execute after executing an On Show or On Hide event.]]

L["SOUND_EVENT_ONALPHAINC"] = "On Alpha Increase"
L["SOUND_EVENT_ONALPHAINC_DESC"] = [[This event triggers when the opacity of an icon increases.

NOTE: This event will not trigger when increasing from 0% opacity (On Show).]]

L["SOUND_EVENT_ONALPHADEC"] = "On Alpha Decrease"
L["SOUND_EVENT_ONALPHADEC_DESC"] = [[This event triggers when the opacity of an icon decreases.

NOTE: This event will not trigger when decreasing to 0% opacity (On Hide).]]

L["SOUND_EVENT_ONUNIT"] = "On Unit Changed"
L["SOUND_EVENT_ONUNIT_DESC"] = [[This event triggers when the unit that that the icon is displaying information for has changed.

NOTE: This event only triggers for icons that check units.]]

L["SOUND_EVENT_ONSPELL"] = "On Spell Changed"
L["SOUND_EVENT_ONSPELL_DESC"] = [[This event triggers when the spell/item/etc. that that the icon is displaying information for has changed.]]

L["SOUND_EVENT_GLOBALDESC"] = "Events are checked from top to bottom in this list. If an event is triggered that has a sound to play, no events below that event will play a sound."
L["SOUND_EVENT_DISABLEDFORTYPE"] = "Not available for %s"

L["SOUND_EVENTS"] = "Icon Events"
L["SOUND_SOUNDTOPLAY"] = "Sound to Play"
L["SOUND_CUSTOM"] = "Custom sound file"
L["SOUND_CUSTOM_DESC"] = [[Insert the path to a custom sound to play. Here are some examples, where "file" is the name of your sound, and "ext" is the file's extension (ogg or mp3 only!):

- "CustomSounds\file.ext": a file placed in a new folder named "CustomSounds" that is in WoW's root directory (the same location as Wow.exe, Interface and WTF folders, etc)

- "Interface\AddOns\file.ext": a loose file in the AddOns folder

- "file.ext": a loose file in WoW's root directory ]]
L["SOUND_TAB"] = "Sounds"
L["SOUND_USEMASTER"] = "Always play sounds"
L["SOUND_USEMASTER_DESC"] = "Check this to allow sounds to play even when the game sound has been muted. Uncheck to only play sounds while the game sound is enabled."
L["SOUNDERROR1"] = "File must have an extension!"
L["SOUNDERROR2"] = "Custom WAV files not supported by WoW 4.0+"
L["SOUNDERROR3"] = "|cFFFFD100Only OGG and MP3 files are supported!"

L["ANN_TAB"] = "Text Output"
L["ANN_CHANTOUSE"] = "Channel to Use"
L["ANN_EDITBOX"] = "Text to be outputted"
L["ANN_EDITBOX_DESC"] = [[Type the text that you wish to be outputted when the event triggers. The following substitutions may be used:

"%t" - Target's Name
"%f" - Focus's Name
"%m" - Mouseover's Name

"%u" - Name of current unit being checked
"%s" - Current spell/item/etc being checked]]
L["MOUSEOVER_TOKEN_NOT_FOUND"] = "<no mouseover>"
L["ANN_STICKY"] = "Sticky"
L["ANN_SHOWICON"] = "Show icon texture"
L["ANN_SHOWICON_DESC"] = "Some text destinations can show a texture along with the text. Check this to enable that feature."
L["ANN_SUB_CHANNEL"] = "Sub section"
L["ANN_WHISPERTARGET"] = "Whisper target"
L["ANN_WHISPERTARGET_DESC"] = "Input the name of the player that you would like to whisper. Normal server/faction whisper requirements apply."
L["ANN_EVENT_GLOBALDESC"] = "Events are checked from top to bottom in this list. If an event is triggered that has text to output, no events below that event will output any text."
L["CHAT_MSG_SMART"] = "Smart Channel"
L["CHAT_MSG_SMART_DESC"] = "Will output to Battleground, Raid, Party, or Say - whichever is appropriate."
L["CHAT_MSG_CHANNEL"] = "Chat Channel"
L["CHAT_MSG_CHANNEL_DESC"] = "Will output to a chat channel, such as Trade, or a custom channel that you have joined."

L["CHAT_FRAME"] = "Chat Frame"


L["HELP_FIRSTUCD"] = [[It looks like this is your first time using an icon type that uses the special duration syntax! Spells that are added to the "%s" editbox must define their duration immediately after a spell using the following syntax:

Spell: Duration

For example:

"%s: 120"
"%s: 10; %s: 24"
"%s: 180"
"%s: 3:00"
"62618: 3:00"]]
L["HELP_MISSINGDURS"] = [[The following spells are missing durations:

%s

To add durations, use the following syntax:

Spell Name: Duration

E.g. "%s: 10"]]
L["HELP_POCKETWATCH"] = [[|TInterface\Icons\INV_Misc_PocketWatch_01:20|t -- The pocket watch texture.
This texture is being used because the first valid spell being checked was entered by name and isn't in your spellbook.

The correct texture will be used once you have seen the spell as you play.

To see the correct texture now, change the first spell being checked into a Spell ID. You can easily do this by clicking on the entry in the editbox and right-clicking the correct corresponding entry in the suggestion list.]]


L["TOPLEFT"] = "Top Left"
L["TOP"] = "Top"
L["TOPRIGHT"] = "Top Right"
L["LEFT"] = "Left"
L["CENTER"] = "Center"
L["RIGHT"] = "Right"
L["BOTTOMLEFT"] = "Bottom Left"
L["BOTTOM"] = "Bottom"
L["BOTTOMRIGHT"] = "Bottom Right"

L["STRATA_BACKGROUND"] = "Background"
L["STRATA_LOW"] = "Low"
L["STRATA_MEDIUM"] = "Medium"
L["STRATA_HIGH"] = "High"
L["STRATA_DIALOG"] = "Dialog"
L["STRATA_FULLSCREEN"] = "Fullscreen"
L["STRATA_FULLSCREEN_DIALOG"] = "Fullscreen Dialog"
L["STRATA_TOOLTIP"] = "Tooltip"

-- --------
-- EQUIVS
-- --------

L["CrowdControl"] = "Crowd Control"
L["Bleeding"] = "Bleeding"
L["Feared"] = "Fear"
L["Incapacitated"] = "Incapacitated"
L["Stunned"] = "Stunned"
L["Slowed"] = "Slowed"
--L["DontMelee"] = "Don't Melee"
L["ImmuneToStun"] = "Immune To Stun"
L["ImmuneToMagicCC"] = "Immune To Magic CC"
--L["MovementSlowed"] = "Movement Slowed"
L["Disoriented"] = "Disoriented"
L["Silenced"] = "Silenced"
L["Disarmed"] = "Disarmed"
L["Rooted"] = "Rooted"
L["IncreasedStats"] = "Increased Stats"
L["IncreasedDamage"] = "Increased Damage Done"
L["IncreasedCrit"] = "Increased Crit Chance"
L["IncreasedAP"] = "Increased Attack Power"
L["IncreasedSPsix"] = "Increased Spellpower (6%)"
L["IncreasedSPten"] = "Increased Spellpower (10%)"
L["IncreasedPhysHaste"] = "Increased Physical Haste"
L["IncreasedSpellHaste"] = "Increased Spell Haste"
L["BurstHaste"] = "Heroism/Bloodlust"
L["BonusAgiStr"] = "Increased Agility/Strength"
L["BonusStamina"] = "Increased Stamina"
L["BonusArmor"] = "Increased Armor"
L["BonusMana"] = "Increased Mana Pool"
L["ManaRegen"] = "Increased Mana Regen"
L["BurstManaRegen"] = "Burst Mana Regen"
L["PushbackResistance"] = "Increased Pushback Resistance"
L["Resistances"] = "Increased Spell Resistance"
L["PhysicalDmgTaken"] = "Physical Damage Taken"
L["SpellDamageTaken"] = "Increased Spell Damage Taken"
L["SpellCritTaken"] = "Increased Spell Crit Taken"
L["BleedDamageTaken"] = "Increased Bleed Damage Taken"
L["ReducedAttackSpeed"] = "Reduced Attack Speed"
L["ReducedCastingSpeed"] = "Reduced Casting Speed"
L["ReducedArmor"] = "Reduced Armor"
L["ReducedHealing"] = "Reduced Healing"
L["ReducedPhysicalDone"] = "Reduced Physical Damage Done"
L["DefensiveBuffs"] = "Defensive Buffs"
L["MiscHelpfulBuffs"] = "Misc. Helpful Buffs"
L["DamageBuffs"] = "Damage Buffs"

L["Heals"] = "Player Heals"
L["PvPSpells"] = "PvP Crowd Control, etc."
L["Tier11Interrupts"] = "Tier 11 Interruptibles"
L["Tier12Interrupts"] = "Tier 12 Interruptibles"

L["Magic"] = "Magic"
L["Curse"] = "Curse"
L["Disease"] = "Disease"
L["Poison"] = "Poison"
L["Enraged"] = "Enrage"

L["normal"] = "Normal"
L["rare"] = "Rare"
L["elite"] = "Elite"
L["rareelite"] = "Rare Elite"
L["worldboss"] = "World Boss"

L["DAMAGER"] = "Damage"
L["HEALER"] = "Heal"
L["TANK"] = "Tank"


L["DR-RandomStun"] = "Random stuns"
L["DR-ControlledStun"] = "Controlled stuns"
L["DR-Scatter"] = "Scatter Shot"
L["DR-Fear"] = "Fears"
L["DR-Silence"] = "Silences"
L["DR-Banish"] = "Banish"
L["DR-MindControl"] = "Mind Control"
L["DR-Entrapment"] = "Entrapment"
L["DR-Taunt"] = "Taunts"
L["DR-Disarm"] = "Disarms"
L["DR-Horrify"] = "Horrors"
L["DR-Cyclone"] = "Cyclone"
L["DR-Disorient"] = "Disorients"
L["DR-RandomRoot"] = "Random roots"
L["DR-ControlledRoot"] = "Controlled roots"
L["DR-DragonsBreath"] = "Dragon's Breath"

