# Fork Setup Guide

## Step 1: Fork on GitHub

1. Go to https://github.com/chongdashu/unreal-mcp
2. Click the "Fork" button in the top right
3. Name it `unreal-bridge` (or keep the default name)
4. Click "Create fork"

## Step 2: Get Your Fork URL

After forking, you'll have a URL like:
- `https://github.com/[YOUR_USERNAME]/unreal-bridge.git`

## Step 3: Update Remotes

Once you have your fork URL, run:

```powershell
cd D:\CreativeMCP\unreal-bridge
git remote add origin https://github.com/[YOUR_USERNAME]/unreal-bridge.git
git remote set-url upstream https://github.com/chongdashu/unreal-mcp.git
```

This sets up:
- `origin` → Your fork (where you push your changes)
- `upstream` → Original repo (where you pull updates from)

## Step 4: Push to Your Fork

```powershell
git push -u origin main
```

## Future Workflow

- **Push your changes:** `git push origin main`
- **Pull upstream updates:** `git fetch upstream && git merge upstream/main`
- **Sync your fork:** After merging upstream, push to origin

