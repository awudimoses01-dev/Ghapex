Param(
  [string]$repoName = $(Read-Host 'GitHub repo name (owner/repo or repo)')
)

# This script helps you initialize a git repo and push to GitHub using gh CLI.
# Requirements: git, GitHub CLI (gh) installed and authenticated.

if(-not (Get-Command gh -ErrorAction SilentlyContinue)){
  Write-Error "GitHub CLI (gh) not found. Install and authenticate 'gh auth login' first."; exit 1
}

if(-not (Test-Path .git)){
  git init
  git add .
  git commit -m "Initial site import"
} else {
  Write-Host "Repository already initialized locally."
}

if($repoName -eq ''){ Write-Error 'No repo name provided'; exit 1 }

# If user passed only repo (no owner), create under the authenticated user
if($repoName -notmatch '/'){
  $created = gh repo create $repoName --public --source=. --push --confirm
} else {
  $created = gh repo create $repoName --public --source=. --push --confirm
}

Write-Host "Repository created and pushed. The GitHub Actions workflow will deploy to gh-pages on push to main."