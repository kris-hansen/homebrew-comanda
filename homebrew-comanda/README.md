# Homebrew Comanda

This repository contains the Homebrew formula for [Comanda](https://github.com/kris-hansen/comanda), a command-line LLM orchestration engine.

## About Comanda

Comanda (Chain of Models and Actions) is a CLI tool that allows you to chain multiple LLM operations using YAML configurations. It supports multiple AI providers and enables complex agentic workflows.

### Key Features

- 🔗 Multi-step LLM workflow configuration
- 🤖 Cross-provider AI model support (OpenAI, Anthropic, Google, Ollama)
- 📄 File and image processing capabilities
- 🌐 Web content analysis
- 🚀 Parallel processing
- 🔒 Secure configuration encryption

## Installation

```bash
brew tap kris-hansen/comanda
brew install comanda
```

Or install directly:

```bash
brew install kris-hansen/comanda/comanda
```

## Quick Start

After installation, configure your AI providers:

```bash
comanda configure
```

Then run workflows:

```bash
comanda process workflow.yaml
```

## Links

- [Main Repository](https://github.com/kris-hansen/comanda)
- [Documentation](https://github.com/kris-hansen/comanda#readme)
- [License](https://github.com/kris-hansen/comanda/blob/main/LICENSE)

## Contributing

This repository only contains the Homebrew formula. For issues with Comanda itself, please visit the [main repository](https://github.com/kris-hansen/comanda).

For formula issues or improvements, please open an issue or pull request in this repository.
