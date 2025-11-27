# Neovim Setup Guide

This guide covers your custom neovim configuration. Leader key is **Space**.

## File Navigation

### File Tree (nvim-tree)
| Key | Action |
|-----|--------|
| `<Space>e` | Toggle file tree |
| `<Space>o` | Focus file tree |

Inside the tree: `a` to create file, `d` to delete, `r` to rename, `Enter` to open.

### Fuzzy Finder (Telescope)
| Key | Action |
|-----|--------|
| `<Space>ff` | Find files |
| `<Space>fg` | Search text in project (live grep) |
| `<Space>fb` | List open buffers |
| `<Space>fh` | Search help tags |

Inside Telescope: `Ctrl-j/k` to move, `Enter` to select, `Esc` to close.

### Quick Buffer Switching (Snipe)
| Key | Action |
|-----|--------|
| `gb` | Open buffer menu |

Press `gb`, then the character shown next to the buffer you want.

## Buffer & Window Management

### Buffers
| Key | Action |
|-----|--------|
| `Tab` | Next buffer |
| `Shift-Tab` | Previous buffer |
| `<Space>x` | Close current buffer |

### Windows
| Key | Action |
|-----|--------|
| `Ctrl-h` | Move to left window |
| `Ctrl-j` | Move to bottom window |
| `Ctrl-k` | Move to top window |
| `Ctrl-l` | Move to right window |

## Movement & Editing

### Jumping (Leap)
| Key | Action |
|-----|--------|
| `s{char}{char}` | Jump forward to match |
| `S{char}{char}` | Jump backward to match |

Type `s` then two characters. Leap highlights matches—press the label to jump.

### Scrolling (Neoscroll)
| Key | Action |
|-----|--------|
| `Ctrl-u` | Scroll up half page |
| `Ctrl-d` | Scroll down half page |
| `Ctrl-b` | Scroll up full page |
| `Ctrl-f` | Scroll down full page |
| `zz` | Center cursor on screen |
| `zt` | Cursor to top of screen |
| `zb` | Cursor to bottom of screen |

### Line Movement
| Key | Action |
|-----|--------|
| `Alt-j` | Move line down |
| `Alt-k` | Move line up |
| `<` (visual) | Indent left (stays in visual) |
| `>` (visual) | Indent right (stays in visual) |

### Commenting (Comment.nvim)
| Key | Action |
|-----|--------|
| `gcc` | Toggle comment on line |
| `gc` (visual) | Toggle comment on selection |

## Git

### Gitsigns (in-buffer signs)
Signs appear in the gutter: `+` added, `~` changed, `_` deleted.

### Fugitive & Diffview
| Key | Action |
|-----|--------|
| `<Space>gg` | Open Git status (fugitive) |
| `<Space>gd` | Open diff view |
| `<Space>gh` | File history |
| `<Space>gq` | Close diff view |

In fugitive status: `s` to stage, `u` to unstage, `cc` to commit, `=` to toggle diff.

## Diagnostics & TODOs

### Trouble
| Key | Action |
|-----|--------|
| `<Space>tr` | Toggle Trouble panel |

Shows diagnostics, quickfix results, and more in a clean interface.

### TODO Comments
| Key | Action |
|-----|--------|
| `<Space>tt` | Search all TODOs in project |

Recognizes: `TODO`, `FIXME`, `HACK`, `WARN`, `NOTE`, `PERF`.

## General

| Key | Action |
|-----|--------|
| `<Space>w` | Save file |
| `<Space>q` | Quit |
| `Esc` | Clear search highlight |

## Plugin Management

Run these commands to manage plugins:

| Command | Action |
|---------|--------|
| `:Lazy` | Open plugin manager |
| `:Lazy sync` | Install/update/clean plugins |
| `:Lazy profile` | Check startup performance |

## Tips

1. **Finding things**: Use `<Space>fg` (live grep) liberally. It's fast and searches your whole project.

2. **Buffer workflow**: Open files with Telescope, switch between recent ones with `gb` (Snipe) or `Tab`/`Shift-Tab`.

3. **Leap habit**: Train yourself to use `s` for medium-distance jumps. It's faster than `w` spamming or searching.

4. **Git workflow**: `<Space>gg` for quick staging/committing, `<Space>gd` when you need to review changes carefully.

5. **TODOs**: Leave `TODO:` comments in code, find them all later with `<Space>tt`.
