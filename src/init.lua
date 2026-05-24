--!strict

-- init.lua
-- Entry point for vfx-lib. Re-exports the public API.

local Emit = require(script.Emit)
local Types = require(script.Types)

export type EmitConfig = Types.EmitConfig
export type VFXLib = Types.VFXLib

local VFXLibModule = {}

-- Emit particles using the supplied EmitConfig.
VFXLibModule.emit = Emit.emit

return VFXLibModule
