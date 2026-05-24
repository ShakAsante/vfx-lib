--!strict

-- Types.lua
-- Shared type definitions for vfx-lib.

export type MeshEmitter = {
	Mesh: string,
	LockedToPart: boolean,
	Lifetime: number,
	Rate: NumberRange,
	Scale: Sequence3D<number>
	Rotation: Sequence3D<number>
	Transparency: Sequence3D<number>
}

export type Sequence2D<Type> = {
	X: Sequence<Type>
	Y: Sequence<Type>
}

export type Sequence3D<Type> = {
	X: Sequence<Type>
	Y: Sequence<Type>
	Z: Sequence<Type>
}

export type Sequence<Type> = {
	[number]: Type,
}

export type EmitConfig = {
	emitter: ParticleEmitter | MeshEmitter,
	count: number?,
	delay: number?,
}

return {}
