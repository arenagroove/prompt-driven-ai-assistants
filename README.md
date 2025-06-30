# 🧠 Design System for Role-Based AI Assistants

![Cover](prompt-driven-ai-assistants_square-cover.png)

This repository offers a modular framework for building reusable, role-based AI assistants — each with a clear purpose, portable prompts, and structured behavior.

Each assistant is built using:

- 🔧 Structured Markdown instructions for assistant behavior  
- 🗂 Config files aligned with Custom GPT setup  
- 💬 Portable facing prompts for ChatGPT, Claude, Groq, etc.  
- 🛠 Tooling for syncing config, regenerating capabilities, and tracking versions  

---

## 📁 Current Assistants

### ✅ Professional Content Strategist

**Helps professionals craft impactful social media content** using one of three strategic modes — High Performance, Balanced Clarity, or Narrative Essence.  
Each mode aligns with a different goal, tone, and audience using storytelling, copywriting, and prompt engineering.

**Folder:** `content-strategist/`  
Includes:

- `content-strategist-GPT.md` – Full assistant instructions  
- `content-strategist-facing-prompt.md` – Reusable prompt  
- `content-strategist-GPT-config.json` – Assistant config snapshot  
- `content-strategist-GPT-capabilities.md` – Tools & behavior summary  
- `VERSION` – Current version number  
- `README.md` – Assistant-specific readme  

---

### 🧠 AI Reawakener

**Specializes in reviving, reinterpreting, and evolving legacy creative and digital projects** using the latest AI tools and strategies (voice, image, agentic AI, etc.).

**Folder:** `ai-reawakener/`  
Includes:

- `ai-reawakener-GPT.md` – Full reinterpretation assistant logic  
- `ai-reawakener-facing-prompt.md` – Usable prompt for LLMs  
- `ai-reawakener-GPT-config.json` – GPT builder config snapshot  
- `ai-reawakener-GPT-capabilities.md` – Tools & behavior summary  
- `VERSION` – Current version number  
- `README.md` – Assistant-specific readme  

---

## 🛠 Tooling

### `update-gpt.ps1`

A PowerShell script to keep each assistant's `.json`, capabilities file, and README version block fully in sync.

#### ✅ What it does

- Escapes and injects `*-GPT.md` instructions into `*-GPT-config.json`
- Ensures tool flags (`web_browsing`, `code_interpreter`, `image_generation`, `memory`) exist
- Generates `*-GPT-capabilities.md` from config and timestamp
- Reads the assistant version from a `VERSION` file
- Updates the `README.md` inside the assistant folder with the current version and date

#### 📁 Expected Files (in each assistant folder):

- `[name]-GPT.md`  
- `[name]-GPT-config.json`  
- `VERSION`  
- `README.md` *(optional, version block will be updated if present)*

#### 🔧 Usage

```powershell
cd ./ai-reawakener
../tools/update-gpt.ps1
```

> 🧠 Automatically infers the assistant name from the folder it runs in — no need to edit the script per assistant.

---

## ✅ How to Use This Repo

| File                               | Purpose                                               |
|------------------------------------|-------------------------------------------------------|
| `[name]-GPT.md`                    | Full Custom GPT instructions                          |
| `[name]-facing-prompt.md`          | Reusable prompt for ChatGPT, Claude, etc.             |
| `[name]-GPT-config.json`           | Configuration snapshot for OpenAI GPT Builder         |
| `[name]-GPT-capabilities.md`       | Tools, model, and behavior summary                    |
| `VERSION`                          | Plain-text version number (e.g. `1.0.0`)              |
| `README.md`                        | Assistant-specific overview and usage notes           |
| `tools/update-gpt.ps1`             | Sync script (instructions → config → capabilities + README version)  

---

## 🔄 Versioning

Each assistant folder includes a `VERSION` file for centralized tracking.

- Manual version bumps (e.g. `1.0.1` → `1.1.0`) go in `VERSION`
- The sync script auto-injects version into capabilities and README
- You can also track changes in `CHANGELOG.md` (optional)

---

## ✅ Best Practices

1. **Write assistant logic in Markdown**  
2. **Use `update-gpt.ps1` to sync** your `.json`, capabilities, and version metadata  
3. **Run script from inside the assistant folder**  
4. **Keep folders self-contained** for easy reuse, testing, or launch  
5. **Use Git for change history** — one commit per assistant update  
6. **Don’t upload `.json` to OpenAI** — it’s for backup/reference only  

---

## 🧪 Prompt Strategy Tips

Each assistant is designed to support:

- Multi-step prompt chaining  
- Creative drift and prompting techniques  
- Role and tone alignment  
- Portable use across ChatGPT, Claude, Groq, etc.  

Use them as building blocks — not just templates.

---

## 📦 Naming Convention

Each assistant uses:

- `[name]-GPT.md`  
- `[name]-facing-prompt.md`  
- `[name]-GPT-config.json`  
- `[name]-GPT-capabilities.md`  
- `README.md`  
- `VERSION`  

---

## 🧭 Focus Areas

This project combines:

- 🧠 Prompt engineering  
- 🧩 Modular GPT assistant design  
- 📎 Content and strategy workflows  
- 🛠 Custom GPT best practices  
- 🔁 Versioned assistant development  

---

## 🔗 Repo Metadata

**Title:** `prompt-driven-ai-assistants`  
**Topics:** `prompt-engineering`, `ai-assistants`, `custom-gpt`, `modular-design`, `role-based-ai`, `chatgpt`, `openai`

---

## ✅ Status

- [x] Modular folder structure complete  
- [x] PowerShell tooling implemented  
- [x] Versioning system with `VERSION` file  
- [x] `Professional Content Strategist` assistant finalized  
- [x] `AI Reawakener` assistant finalized  
- [ ] Next assistant in exploration  

---

## 📄 License

MIT — feel free to adapt, remix, or fork.

---

> Designed for creators, strategists, and AI builders who want more than clever prompts — a system that scales.
