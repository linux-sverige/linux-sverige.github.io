#!/bin/bash
# Deploy EUnion website to GitHub Pages
# Run this script to upload all files to GitHub

echo "🚀 Deploying EUnion website to GitHub Pages..."
echo ""

# Configuration
GITHUB_USER="mala57"  # Change to your GitHub username
REPO_NAME="eunion.cloud"  # Change to your repo name
BRANCH="gh-pages"  # or "main" depending on your setup

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi

# Initialize git repo if not exists
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
    git remote add origin "https://github.com/${GITHUB_USER}/${REPO_NAME}.git"
fi

# Add all files
echo "📁 Adding files to git..."
git add index.html
git add index-sv.html
git add pricing.html
git add features.html
git add about.html
git add contact.html
git add styles.css
git add README.md

# Commit changes
echo "💾 Committing changes..."
git commit -m "Update EUnion website - Replace Linux Sverige branding

- Updated all pages with EUnion branding
- Fixed pricing.html with correct EUR pricing
- Updated contact.html with EUnion contact info
- Added SEO optimization with JSON-LD structured data
- All references to Linux Sverige changed to EUnion"

# Push to GitHub
echo "☁️ Pushing to GitHub..."
git push origin ${BRANCH}

echo ""
echo "✅ Deployment complete!"
echo "🌐 Your website should be live at: https://${REPO_NAME}"
echo ""
echo "If this is a new repo, make sure to:"
echo "1. Create the repo on GitHub: https://github.com/new"
echo "2. Enable GitHub Pages in repo settings"
echo "3. Set custom domain to eunion.cloud"
