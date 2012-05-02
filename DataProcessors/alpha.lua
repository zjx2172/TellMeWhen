-- --------------------
-- TellMeWhen
-- Originally by Nephthys of Hyjal <lieandswell@yahoo.com>

-- Other contributions by:
--		Sweetmms of Blackrock, Oozebull of Twisting Nether, Oodyboo of Mug'thol,
--		Banjankri of Blackrock, Predeter of Proudmoore, Xenyr of Aszune

-- Currently maintained by
-- Cybeloras of Mal'Ganis
-- --------------------


if not TMW then return end

local TMW = TMW
local L = TMW.L


local Processor = TMW.Classes.IconDataProcessor:New("ALPHA", "alpha")
Processor:AssertDependency("DURATION")
Processor:AssertDependency("STACK")
Processor:AssertDependency("SHOWN")

function Processor:CompileFunctionSegment(t)
	-- GLOBALS: alpha
	t[#t+1] = [[
	alpha = alpha or 0
	local d = (duration or attributes.duration or 0) - (TMW.time - (start or attributes.start or 0))
	local stack = stack or attributes.stack
	
	if
		(icon.ConditionObj and not icon.dontHandleConditionsExternally and icon.ConditionObj.Failed) or 						  -- conditions failed
		(d > 0 and ((icon.DurationMinEnabled and icon.DurationMin > d) or (icon.DurationMaxEnabled and d > icon.DurationMax))) or -- duration requirements failed
		(stack and ((icon.StackMinEnabled and icon.StackMin > stack) or (icon.StackMaxEnabled and stack > icon.StackMax))) 		  -- stack requirements failed
	then
		alpha = alpha ~= 0 and icon.ConditionAlpha or 0 -- use the alpha setting for failed stacks/duration/conditions, but only if the icon isnt being hidden for another reason
	end
	
	if alpha ~= attributes.alpha then
		local oldalpha = attributes.alpha

		attributes.alpha = alpha
		
		-- For ICONFADE. much nicer than using __alpha because it will transition from what is curently visible,
		-- not what should be visible after any current fades end
		-- TODO: maybe do this differently? 
		-- TODO: (misplaced note) more closely assocate icon events with data processors
		-- TODO: (misplaced note) more closely assocate icon animaions with data processors
		attributes.actualAlphaAtLastChange = icon:GetAlpha()

		-- detect events that occured, and handle them if they did
		if alpha == 0 then
			if EventHandlersSet.OnHide then
				icon:QueueEvent("OnHide")
			end
		elseif oldalpha == 0 then
			if EventHandlersSet.OnShow then
				icon:QueueEvent("OnShow")
			end
		elseif alpha > oldalpha then
			if EventHandlersSet.OnAlphaInc then
				icon:QueueEvent("OnAlphaInc")
			end
		else -- it must be less than, because it isnt greater than and it isnt the same
			if EventHandlersSet.OnAlphaDec then
				icon:QueueEvent("OnAlphaDec")
			end
		end

		TMW:Fire(ALPHA.changedEvent, icon, alpha, oldalpha)
		doFireIconUpdated = true
	end
	--]]
end

TMW:RegisterCallback("TMW_ICON_SETUP_PRE", function(event, icon)
	if not TMW.Locked then
		icon:SetInfo("alpha", 0)
	end
end)

Processor:AddDogTag("TMW", "IsShown", {	
	code = function (groupID, iconID, link)
		local group = TMW[groupID]
		local icon = group and group[iconID]
		if icon then
			local attributes = icon.attributes
			return not not attributes.shown and attributes.alpha > 0
		else
			return false
		end
	end,
	arg = {
		'group', 'number', '@req',
		'icon', 'number', '@req',
	},
	events = TMW:CreateDogTagEventString("SHOWN", "ALPHA"),
	ret = "boolean",
	doc = "Returns whether or not an icon is shown.",
	example = '[IsShown] => "true"; [IsShown(icon=3, group=2)] => "false"',
	category = "Icon"
})
Processor:AddDogTag("TMW", "Opacity", {	
	code = function (groupID, iconID, link)
		local group = TMW[groupID]
		local icon = group and group[iconID]
		if icon then
			return icon.attributes.alpha
		else
			return 0
		end
	end,
	arg = {
		'group', 'number', '@req',
		'icon', 'number', '@req',
	},
	events = TMW:CreateDogTagEventString("ALPHA"),
	ret = "boolean",
	doc = "Returns the opacity of an icon. Return value is between 0 and 1.",
	example = '[IsShown] => "true"; [IsShown(icon=3, group=2)] => "false"',
	category = "Icon"
})