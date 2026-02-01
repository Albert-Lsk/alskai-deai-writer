#!/bin/bash

# ============================================================================
# Export ALSKai De-AI Writer Skill Package
# ============================================================================
# This script creates a .skill package file from the extracted skill folder
# ============================================================================

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
SKILL_NAME="alskai-deai-writer"
SKILL_VERSION="v1.1.0"
SKILL_FOLDER="releases/extracted-skill/alskai-deai-writer-${SKILL_VERSION}"
OUTPUT_FOLDER="releases"
TEMP_FOLDER=".temp/export"

echo -e "${BLUE}============================================================${NC}"
echo -e "${BLUE}  Export ALSKai De-AI Writer Skill Package (${SKILL_VERSION})${NC}"
echo -e "${BLUE}============================================================${NC}"
echo ""

# Check if skill folder exists
if [ ! -d "$SKILL_FOLDER" ]; then
    echo -e "${RED}Error: Skill folder not found: $SKILL_FOLDER${NC}"
    echo -e "${YELLOW}Please run this script from the project root directory.${NC}"
    exit 1
fi

# Check if SKILL.md exists
if [ ! -f "$SKILL_FOLDER/SKILL.md" ]; then
    echo -e "${RED}Error: SKILL.md not found in $SKILL_FOLDER${NC}"
    exit 1
fi

# Create output folder if not exists
mkdir -p "$OUTPUT_FOLDER"
mkdir -p "$TEMP_FOLDER"

# Create version-specific folder in temp
TEMP_VERSION_FOLDER="$TEMP_FOLDER/$SKILL_NAME-$SKILL_VERSION"
mkdir -p "$TEMP_VERSION_FOLDER"

# Copy SKILL.md to temp folder
echo -e "${YELLOW}📦 Preparing skill package...${NC}"
cp "$SKILL_FOLDER/SKILL.md" "$TEMP_VERSION_FOLDER/SKILL.md"

# Get file size
FILE_SIZE=$(du -h "$TEMP_VERSION_FOLDER/SKILL.md" | cut -f1)
echo -e "${GREEN}✅ SKILL.md copied (${FILE_SIZE})${NC}"

# Create .skill file (it's just a ZIP file with .skill extension)
SKILL_FILE="$OUTPUT_FOLDER/${SKILL_NAME}-${SKILL_VERSION}.skill"

echo -e "${YELLOW}📦 Creating skill package...${NC}"

# Remove old skill file if exists
if [ -f "$SKILL_FILE" ]; then
    rm "$SKILL_FILE"
    echo -e "${GREEN}🗑️  Removed old skill file${NC}"
fi

# Create the skill package (ZIP format)
cd "$TEMP_FOLDER"
zip -r "$SKILL_FILE" "$SKILL_NAME-$SKILL_VERSION/" -q

# Get final file size
FINAL_SIZE=$(du -h "$SKILL_FILE" | cut -f1)

cd - > /dev/null

echo ""
echo -e "${GREEN}============================================================${NC}"
echo -e "${GREEN}✅ Skill package created successfully!${NC}"
echo -e "${GREEN}============================================================${NC}"
echo ""
echo -e "${BLUE}📁 Location:${NC} $SKILL_FILE"
echo -e "${BLUE}📦 Size:${NC} $FINAL_SIZE"
echo -e "${BLUE}🏷️  Version:${NC} $SKILL_VERSION"
echo ""

# Cleanup temp folder
echo -e "${YELLOW}🧹 Cleaning up...${NC}"
rm -rf "$TEMP_FOLDER"
echo -e "${GREEN}✅ Temp files cleaned${NC}"

echo ""
echo -e "${GREEN}🎉 Ready to publish!${NC}"
echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo -e "  1. Test the skill package in Claude Code"
echo -e "  2. Commit changes: git add . && git commit -m 'Add style learner feature'"
echo -e "  3. Create tag: git tag v1.1.0"
echo -e "  4. Push: git push && git push --tags"
echo -e "  5. Create GitHub release with the .skill file"
echo ""
echo -e "${BLUE}Good luck! 🚀${NC}"
