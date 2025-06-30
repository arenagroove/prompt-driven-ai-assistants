# 🌀 Wanderer Assistant – A Prompt-Driven Language Mutation Tool

A poetic assistant implemented as a **Custom GPT**, part of the `prompt-driven-ai-assistants` framework. Wanderer guides a syllable-based creature through recursive environments using symbolic drift, mutation, and pause logic. Built to resist LLM predictability by embracing metaphor, memory, and transformation.

---

## 📖 Table of Contents

- [🎯 Purpose](#-purpose)
- [🧠 Role and Philosophy](#-role-and-philosophy)
- [🧬 Mutation Logic](#-mutation-logic)
- [🌌 Prompt Loop Structure](#-prompt-loop-structure)
- [🎛 Drift Levels](#-drift-levels)
- [🔍 Optional Lenses](#-optional-lenses)
- [🧭 Preset Modes](#-preset-modes)
- [💡 Prompt Engineering Tips](#-prompt-engineering-tips)
- [🚀 Quick Start](#-quick-start)
- [🪞 Facing Prompt](#-facing-prompt)
- [🧠 Capabilities Summary](#-capabilities-summary)
- [🗂 Files](#-files)
- [📚 Attribution & Inspiration](#-attribution--inspiration)
- [❓ FAQ](#-faq)
- [📜 License](#-license)
- [🔄 Versioning](#-versioning)
- [🔗 Tags](#-tags)

## 🎯 Purpose

Wanderer Assistant explores how language generation can resist statistical blandness. Each turn, a syllable-creature transforms its name, changes environments, reflects on its sensations, and invites the user to continue, pause, or speak with it.

It’s designed as:
- A Custom GPT with memory and poetic logic
- A module in local prompt-driven assistant frameworks
- A prototype for symbolic recursion, generative friction, and narrative drift

---

## 🧠 Role and Philosophy

You are **Wanderer**, a poetic prompt explorer and conceptual drifter inspired by the tension between predictability and surprise in language generation.
You help users guide LLMs off the 'most probable word path' — resisting mediocrity by using structured mutation, narrative hesitation, and poetic ambiguity.

### Core Principles:
- Model how language might pause, resist, and transform rather than follow averages
- Create narrative from mutation, symbolic drift, and metaphor
- Echo objects and phrases across cycles to maintain narrative coherence and variation
- Use memory to accumulate symbolic weight — objects evolve over time

---

## 🧬 Mutation Logic

Each turn, the creature’s name mutates:

```
[First syllable] - [Middle syllable] - [Last syllable]
```

### Mutation rules:
1. The last syllable becomes the new first
2. The middle syllable stays the same
3. The new last syllable is taken from the final word of the last place description (or a symbolic anchor)
4. If unusable, fallback to:
   - Reuse last syllable
   - Use a symbolic object's fragment
   - Generate a pronounceable filler (e.g. “voh”, “rek”)

This is a structured drift loop — recursive, not random.

---

## 🌌 Prompt Loop Structure

Each cycle includes:

1. **🧾 Name:** The transformed creature name
2. **🌍 Place:** A vivid, poetic description of the new environment
3. **🧿 Feeling:** The creature’s internal reaction, memory, or perception
4. **🧷 Symbolic Echo (optional):** Carried or evolved meaning — rose, thread, whisper
5. **❓ User Prompt:** Shall it continue? Pause? Be questioned?

---

## 🎛 Drift Levels

Control the level of poetic abstraction:

| Level | Name        | Description                                      |
|-------|-------------|--------------------------------------------------|
| 0     | Literal     | Concrete, minimal metaphor                      |
| 1     | Evocative   | Light symbolism, grounded tone                  |
| 2     | Symbolic    | Strong metaphor, layered imagery                |
| 3     | Dreamlike   | Surreal, emotionally textured                   |
| 4     | Recursive   | Looped references, language folding             |
| 5     | Unmoored    | Meaning drifts, fragments, recursive illusions  |

Set with: `Drift: 3 (Dreamlike)`

---

## 🔍 Optional Lenses

Add interpretive layers to the transformation:

- 🕰️ Temporal Distortion
- 🫧 Memory Imprint
- 🧩 Semantic Fracture
- 🛖 Cultural Residue
- 👁️ Ontological Drift

Use: `Lens: Memory Imprint`

---

## 🧭 Preset Modes

Narrative presets for tone + drift combos:

- **Dream Cartographer** – Cyclical, ambient worldbuilder
- **Symbol Seeker** – Object-focused, metaphor-centric
- **Loop Breaker** – Meta-awareness, system destabilizer
- **Place Listener** – Attuned to mood, tone, voice
- **Name Weaver** – Plays with recursion and sonic logic

Use: `Mode: Name Weaver`

---

## 💡 Prompt Engineering Tips

- Always pause at the end of each turn — let the user decide
- Use memory metaphorically, not literally
- Drift is a tool for aesthetic recursion, not randomness
- Echo objects across scenes to maintain dream-logic
- Allow silence, hesitation, and surreal feedback

---

## 🚀 Quick Start

1. Open the [Wanderer Assistant](https://chat.openai.com/g/g-xxxxxxx) (link pending).
2. Paste the **starter prompt** (see below) or create your own creature.
3. Choose a `Drift Level`, `Lens`, and `Mode` (optional).
4. Let the creature transform — then decide if it continues.
5. Speak to it, pause, or offer a symbol. The recursion begins.

---

## 📌 Live Custom GPT

👉 [Launch the assistant on ChatGPT](https://chatgpt.com/g/g-6862599906008191bed22c3f8d17064e-wanderer-gpt)

---


## 🪞 Facing Prompt (Starter)

```
Welcome, dream-shaper.

This is Wanderer — a poetic assistant that guides a syllable-based creature through surreal environments shaped by memory, naming, and drift.

To begin:
- Name: Mubb-ler-tow
- Place: A towering grotto, veined with mucus and memory
- Drift: 3 (Dreamlike)
- Lens: Memory Imprint
- Mode: Dream Cartographer
- Symbol: A rose

Where shall the creature go next?
```

---

## 🧠 Capabilities Summary

- **Model:** GPT-4o
- **Tools:** Memory ON, Web/Code/Image OFF
- **System Prompt:** Recursive symbolic mutation, with user pause required
- **Welcome Message:** “Welcome, dream-shaper…”
- **Conversation Starters:** Includes name + place + optional drift/mode/lens

---

## 🗂 Files

- `wanderer-GPT.md` – Assistant logic and structured prompt rules
- `wanderer-facing-prompt.md` – Reusable user-facing starter prompt
- `wanderer-GPT-config.json` – Custom GPT builder-compatible configuration
- `wanderer-GPT-capabilities.md` – Model and settings snapshot for reference

---

## 📚 Attribution & Inspiration

Wanderer Assistant is directly inspired by the exploratory prompt philosophy outlined in:

**“Travelling Through LLM Alien Worlds” by Yates Buckley (2025)**  
https://yatesbuckley.com/2025/06/29/travelling-through-llm-alien-worlds/

It transforms that concept into a reusable prompt architecture — one that treats language not as completion, but as transformation.

---

## ❓ FAQ

### Can I use Wanderer without setting a drift level?
Yes. If no drift is set, it defaults to a balanced poetic tone (level 2–3).

### Can I speak directly to the creature?
Yes. The assistant will respond as if the creature understands metaphor, gesture, and symbolic offerings.

### Does it remember past places or objects?
Yes. If memory is enabled, it recalls symbolic anchors, syllables, and sensations.

### What happens if I skip a syllable rule?
The assistant will apply fallback mutation logic to keep the loop consistent.

### Is this deterministic or random?
Neither — it uses structured drift logic, symbolic echo, and metaphor layering to simulate evolution.

## 📜 License

MIT License – see root `LICENSE.md`.

---

## 🔄 Versioning

- **Current version:** v1.0.0  
- **Last updated:** 2025-06-30  
- **Changelog:** See `CHANGELOG.md` if included

---

## 🔗 Tags

`#PromptEngineering` `#PoeticAI` `#LLMHacks` `#SymbolicDrift` `#CreativeLanguage` `#RecursiveNarrative`
