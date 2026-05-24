--!strict

-- Types.lua
-- Shared type definitions for vfx-lib.

export type EmitConfig = {
	-- The particle emitter (or folder of emitters) to trigger.
	emitter: ParticleEmitter | Folder,

	-- How many particles to emit per burst.
	count: number?,

	-- Optional delay in seconds before emitting.
	delay: number?,

	-- Optional callback invoked after emission completes.
	onComplete: (() -> ())?,
}

export type VFXLib = {
	emit: (config: EmitConfig) -> (),
}

return {}
