# FlowSync AI - FULL AUTO DEPLOY SCRIPT
# Just run this: powershell -ExecutionPolicy Bypass -File DEPLOY.ps1

Write-Host "🚀 FlowSync AI - Starting Auto Deployment..." -ForegroundColor Cyan

# Step 1: Navigate and setup git
$deployPath = "C:\Users\Eddie\flowsync-ai"

if (-not (Test-Path $deployPath)) {
    Write-Host "❌ Folder not found at $deployPath" -ForegroundColor Red
    Write-Host "Make sure you downloaded and extracted the app first!" -ForegroundColor Yellow
    exit
}

cd $deployPath
Write-Host "✅ Navigated to $deployPath" -ForegroundColor Green

# Step 2: Git initialization
Write-Host "\n📦 Initializing Git repository..." -ForegroundColor Cyan
git init
git config user.name "kalashnikv287-star"
git config user.email "kalashniky287@gmail.com"

# Step 3: Add and commit
Write-Host "\n📝 Adding files and committing..." -ForegroundColor Cyan
git add .
git commit -m "Initial FlowSync AI deployment - production ready"

# Step 4: Push to GitHub
Write-Host "\n🔼 Pushing to GitHub..." -ForegroundColor Cyan
git branch -M main
git remote add origin https://github.com/kalashnikv287-star/flowsync-ai.git
git push -u origin main

Write-Host "\n" -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Green
Write-Host "✅ GITHUB PUSH COMPLETE!" -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Green
Write-Host "\nNow you need to:" -ForegroundColor Yellow
Write-Host "1. Go to https://vercel.com" -ForegroundColor Yellow
Write-Host "2. Import the 'flowsync-ai' repository" -ForegroundColor Yellow
Write-Host "3. Add environment variables" -ForegroundColor Yellow
Write-Host "4. Click Deploy" -ForegroundColor Yellow
Write-Host "\nTotal time left: ~15 minutes" -ForegroundColor Cyan
Write-Host "\nPress any key to close..." -ForegroundColor White
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
