# Setup Fork Script for unreal-bridge
# Run this after you've forked the repo on GitHub

param(
    [Parameter(Mandatory=$true)]
    [string]$ForkUrl
)

Write-Host "Setting up fork remotes..." -ForegroundColor Cyan

# Add origin remote (your fork)
Write-Host "Adding origin remote: $ForkUrl" -ForegroundColor Yellow
git remote add origin $ForkUrl

# Ensure upstream is set correctly
Write-Host "Verifying upstream remote..." -ForegroundColor Yellow
git remote set-url upstream https://github.com/chongdashu/unreal-mcp.git

# Update branch tracking
Write-Host "Updating branch tracking..." -ForegroundColor Yellow
git branch --set-upstream-to=origin/main main

# Show remotes
Write-Host "`nCurrent remotes:" -ForegroundColor Green
git remote -v

Write-Host "`nNext steps:" -ForegroundColor Cyan
Write-Host "1. Push to your fork: git push -u origin main" -ForegroundColor White
Write-Host "2. Verify remotes: git remote -v" -ForegroundColor White

