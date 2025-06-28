# 🧠 Design System for Role-Based AI Assistants

![Cover](prompt-driven-ai-assistants_square-cover.png)

This repository contains a modular framework for building reusable, prompt-driven AI assistants — starting with a **Professional Content Strategist**.

Each assistant is designed using:

- 🔧 Structured behavior prompts  
- 🗂 Configuration aligned with Custom GPTs  
- ✍️ Strategic content modes (High Performance, Balanced Clarity, Narrative Essence)  
- 💬 Portable facing prompts for ChatGPT, Claude, Groq, etc.  
- 🛠 Tooling for version control and safe prompt regeneration  

---

## 📁 Current Assistants

### ✅ Professional Content Strategist

Helps professionals craft scroll-stopping content using one of three strategic modes:

- **High Performance** — maximize reach and conversions  
- **Balanced Clarity** — deliver clear, professional insights  
- **Narrative Essence** — build emotional connection through story

**Folder:** `content-strategist-gpt/`  
Includes:

- `Professional-Content-Strategist-GPT.md` – Main behavior instructions  
- `Professional-Content-Strategist-Facing-Prompt.md` – Prompt to use across ChatGPT, Claude, etc.  
- `Professional-Content-Strategist-GPT-config.json` – Custom GPT configuration snapshot  

---

## 🛠 Tooling

### `update-gpt-config.ps1`

A PowerShell script that updates `.json` config files with properly escaped Markdown instructions.

#### ✅ Features

- Escapes line breaks and special characters for JSON  
- Preserves emoji and formatting  
- Ensures UTF-8 encoding  
- Syncs Markdown `.md` with `.json` config safely  

**Location:** `tools/`

#### 🔧 Usage

```powershell
./tools/update-gpt-config.ps1 `
  -MarkdownPath "../content-strategist-gpt/Professional-Content-Strategist-GPT.md" `
  -JsonPath "../content-strategist-gpt/Professional-Content-Strategist-GPT-config.json"
```

---

## 🚀 How to Use This Repo

| File                              | Purpose                                          |
|----------------------------------|--------------------------------------------------|
| `*-GPT.md`                       | Full Custom GPT instructions                     |
| `*-Facing-Prompt.md`             | Reusable input prompt for general LLMs           |
| `*-GPT-config.json`              | Assistant setup and deployment snapshot          |
| `tools/update-gpt-config.ps1`    | Markdown-to-JSON sync tool                       |
| `README.md`                      | Project overview and instructions                |
| *(optional)* `PROJECTS.md`       | Tracks upcoming assistants                       |

---

## ✅ Best Practices

1. Use the `.md` files to update behavior and share versions  
2. Use the `.json` to document your build or recreate it later  
3. Keep this folder organized or zipped if sharing with others  

---

## 🧪 Prompt Tracking & Feedback Loops

To make assistants more adaptive over time, consider building in feedback loops:

- Track which prompt variations get better engagement, clarity, or creativity
- Use real-world signals like LinkedIn performance or team feedback
- Compare prompt versions via Git commits or changelogs
- Encourage testers or collaborators to give qualitative notes
- Update `.md` files based on actual results, not just assumptions

> This helps your assistant evolve from a static template into a testable, high-performance system.

---

## 📦 File Naming Pattern for Future Assistants

Use the same structure:

- `[YourAssistantName]-GPT.md`  
- `[YourAssistantName]-Facing-Prompt.md`  
- `[YourAssistantName]-GPT-config.json`  

---

## 🧭 Topics & Focus

This project combines:

- 🧠 Prompt engineering  
- 🎛 Modular assistant design  
- 📎 Content creation strategy  
- 🛠 Custom GPT configuration  

Use this structure to build assistants like:

- Copywriters  
- Interviewers  
- Research planners  
- Content strategists  
- Creative collaborators  

---

## 🔗 Repo Metadata

**Title:** `prompt-driven-ai-assistants`  
**Topics:** `prompt-engineering`, `ai-assistants`, `custom-gpt`, `modular-design`, `role-based-ai`, `chatgpt`, `openai`

---

## ✅ Status

- [x] Folder structure complete  
- [x] First assistant implemented (Content Strategist)  
- [x] Markdown + JSON + tooling added  
- [ ] Second assistant in development  

---

## 📄 License

MIT — feel free to adapt, remix, or fork.

---

> Designed for creators, strategists, and AI builders who want more than just a clever prompt — a system that scales.
