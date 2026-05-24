# vfx-lib

> **[PLACEHOLDER — replace with a one-sentence description of the library]**  
> A lightweight VFX emission library for Roblox, published on [Wally](https://wally.run).

---

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [API Reference](#api-reference)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)

---

## Installation

Add the package to your project's `wally.toml`:

```toml
[dependencies]
VFXLib = "shakasante/vfx-lib@^0.1.0"
```

Then run:

```bash
wally install
```

> **[PLACEHOLDER — add any additional setup steps, e.g. syncing with Rojo]**

---

## Usage

```lua
-- PLACEHOLDER: update the require path to match your project structure
local VFXLib = require(path.to.VFXLib)

-- Emit 5 particles from a single ParticleEmitter
VFXLib.emit({
    emitter = workspace.MyPart.ParticleEmitter,
    count   = 5,
})

-- Emit with a delay and a completion callback
VFXLib.emit({
    emitter    = workspace.MyFolder,   -- emits from every direct-child ParticleEmitter in the folder (non-recursive)
    count      = 10,
    delay      = 0.5,
    onComplete = function()
        print("VFX done!")
    end,
})
```

> **[PLACEHOLDER — add more usage examples relevant to your game]**

---

## API Reference

### `VFXLib.emit(config: EmitConfig) -> ()`

Triggers particle emission according to the provided `EmitConfig`.

#### `EmitConfig`

| Field        | Type                              | Required | Default | Description                                              |
| ------------ | --------------------------------- | -------- | ------- | -------------------------------------------------------- |
| `emitter`    | `ParticleEmitter \| Folder`       | ✅       | —       | The emitter or folder of emitters to trigger. When a `Folder` is supplied, only its **direct children** are checked (non-recursive). |
| `count`      | `number`                          | ❌       | `1`     | Number of particles to emit per burst.                   |
| `delay`      | `number`                          | ❌       | `0`     | Seconds to wait before emitting.                         |
| `onComplete` | `() -> ()`                        | ❌       | `nil`   | Callback invoked after emission (respects `delay`).      |

> **[PLACEHOLDER — document any additional API surface you add over time]**

---

## Configuration

> **[PLACEHOLDER — describe any global configuration options, Studio settings, or environment requirements]**

---

## Contributing

> **[PLACEHOLDER — add contribution guidelines, coding style, and PR instructions]**

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature/my-feature`
3. Commit your changes: `git commit -m "feat: add my feature"`
4. Push to the branch: `git push origin feature/my-feature`
5. Open a Pull Request.

---

## License

This project is licensed under the [MIT License](LICENSE).
