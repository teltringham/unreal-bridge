# Unreal Bridge — Agent Context

**Project:** Unreal Bridge (CreativeMCP)
**Location:** `D:\CreativeMCP\unreal-bridge\`
**Upstream:** Fork of `chongdashu/unreal-mcp`
**Purpose:** MCP server for AI control of Unreal Engine 5

---

## Overview

This bridge enables AI assistants to control Unreal Engine through natural language. It's being extended with Fernwood-specific tools for game development.

### Capabilities (Upstream)

| Category | What It Does |
|----------|--------------|
| Actor Management | Create/delete actors, set transforms, query properties |
| Blueprint Development | Create classes, add components, compile |
| Blueprint Node Graph | Add nodes, connect pins, manage variables |
| Editor Control | Focus viewport, control camera |

### Fernwood Extensions (Custom)

Located in `Python/tools/fernwood/`:
- DataTable management (CRUD, CSV import/export)
- NPC creation and configuration
- Store layout and inventory
- Stream metrics and equipment
- Campaign/session management
- Relationship system
- And 60+ more planned tools

---

## Architecture

```
AI Client (Cursor/Claude)
    ↓ MCP Protocol
Python Server (unreal_mcp_server.py)
    ↓ TCP Socket (port 55557)
C++ Plugin (UnrealMCP)
    ↓ Native API
Unreal Engine 5 Editor
```

---

## Key Paths

| What | Where |
|------|-------|
| Python Server | `Python/unreal_mcp_server.py` |
| Upstream Tools | `Python/tools/` |
| Fernwood Tools | `Python/tools/fernwood/` |
| C++ Plugin Source | `MCPGameProject/Plugins/UnrealMCP/` |
| Plugin for Fernwood | Copy to `D:\Fernwood\Plugins\UnrealMCP\` |

---

## Development Workflow

1. **Unreal Editor must be running** with UnrealMCP plugin enabled
2. **Python server connects** via TCP to the plugin
3. **MCP client** (Cursor) sends natural language → tools
4. **Tools execute** commands in Unreal

### Adding Fernwood Tools

1. Create module in `Python/tools/fernwood/`
2. Use `@mcp.tool()` decorator
3. Call `send_command()` to communicate with Unreal
4. Register in `unreal_mcp_server.py`

---

## Related Projects

- **Fernwood Game:** `D:\Fernwood\` (UE5 project)
- **ComfyUI Bridge:** `D:\CreativeMCP\comfyui-bridge\` (AI art generation)
- **Game Design Doc:** `D:\Fernwood\Docs\GDD\THE_DEN_GAME_DESIGN.md`

---

## Current Priority

1. Get basic connection working (upstream tools)
2. Implement `datatable_tools.py` (foundation for all content)
3. Implement `npc_tools.py` (NPCs are central to everything)
4. Implement `time_tools.py` (day/night loop is fundamental)

