@echo off
REM alskai-deai-writer Claude Code安装脚本 (Windows版)
REM 版本: v0.0.1

echo 🚀 开始安装 alskai-deai-writer skill 到 Claude Code...

REM 设置Claude skills目录
set CLAUDE_SKILLS_DIR=%USERPROFILE%\.claude\skills

REM 创建skill目录
echo 📁 创建Claude skill目录: %CLAUDE_SKILLS_DIR%
if not exist "%CLAUDE_SKILLS_DIR%" mkdir "%CLAUDE_SKILLS_DIR%"

REM 检查skill文件是否存在
if not exist "alskai-deai-writer.skill" (
    echo ❌ 错误: 找不到 alskai-deai-writer.skill 文件
    echo 请确保 alskai-deai-writer.skill 在当前目录下
    pause
    exit /b 1
)

REM 解压skill文件 (需要PowerShell)
echo 📦 解压 skill 文件...
powershell -Command "Expand-Archive -Path 'alskai-deai-writer.skill' -DestinationPath '%CLAUDE_SKILLS_DIR%' -Force"

echo.
echo ✅ 安装完成!
echo.
echo 📝 下一步:
echo 1. 在Claude Code中执行: /reload-skills
echo 2. 验证安装: /skills
echo 3. 开始使用: 直接说'帮我改写这段AI生成的文章,去掉AI味'
echo.
echo 💡 提示: 如果skill没有自动触发,可以手动调用: /alskai-deai-writer
echo.
pause
