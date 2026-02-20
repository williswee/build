---
description: Set up a new project with all workflows and a CLAUDE.md starter.
---

1. Ask the user for the path of the new project folder (e.g. `/Users/williswee/Downloads/Code/my-new-project`).
2. In that folder, create a `.agent/workflows/` directory.
3. Symlink each file from `/Users/williswee/Downloads/Code/build/.agent/workflows/` into the new folder's `.agent/workflows/` using `ln -sf`.
4. Create a starter `CLAUDE.md` in the root of the new project using the template in `commands/claude-md-template.md`.
5. Confirm with a success summary of what was created.
