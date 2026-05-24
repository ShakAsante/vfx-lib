--!strict

-- Emit.lua
-- Handles particle emission logic for vfx-lib.

local Types = require(script.Parent.Types)

type EmitConfig = Types.EmitConfig

local DEFAULT_COUNT = 1

local Emit = {}

-- Emits particles from a single ParticleEmitter or every ParticleEmitter
-- found inside a Folder, respecting the optional delay and count values
-- supplied in the config.
function Emit.emit(config: EmitConfig): ()
	local count: number = config.count or DEFAULT_COUNT
	local delay: number = config.delay or 0
	local onComplete = config.onComplete

	local function emitFromFolder(folder: Folder)
		for _, child in ipairs(folder:GetChildren()) do
			if child:IsA("ParticleEmitter") then
				child:Emit(count)
			end
		end
	end

	local function doEmit()
		local emitter = config.emitter
		if typeof(emitter) ~= "Instance" then
			warn("VFXLib.emit: emitter must be a ParticleEmitter or Folder Instance")
			return
		end

		if emitter:IsA("ParticleEmitter") then
			emitter:Emit(count)
		elseif emitter:IsA("Folder") then
			emitFromFolder(emitter :: Folder)
		end

		if onComplete then
			onComplete()
		end
	end

	if delay > 0 then
		task.delay(delay, doEmit)
	else
		doEmit()
	end
end

return Emit
