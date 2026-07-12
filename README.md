# ModelFit Homebrew Tap

Homebrew formulae for [modelfit.io](https://modelfit.io) tools.

## Install

```sh
brew tap modelfit-io/tap
brew install modelfit
```

Then:

```sh
modelfit          # THE best local LLM for this machine
modelfit --json   # agent-readable output
modelfit --all    # full ranked list
```

## What is modelfit?

A zero-dependency, offline-first CLI that detects your hardware (Apple Silicon,
NVIDIA GPU, RAM) and names the single best local LLM it can run, with the exact
registry-verified `ollama run` command. Also an embeddable library:
`import { bestModel } from '@modelfit/cli'`.

- Website: https://modelfit.io
- Source: https://github.com/modelfit-io/modelfit
- npm: https://www.npmjs.com/package/@modelfit/cli
- Dataset (CC BY 4.0): https://github.com/modelfit-io/modelfit-hardware-dataset

## License

MIT
