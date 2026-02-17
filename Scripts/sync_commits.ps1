function Sync-Commits {
    $commitFile = "Docs/COMMIT_MESSAGES.md"
    if (-not (Test-Path $commitFile)) {
        Write-Error "Commit messages file not found: $commitFile"
        return
    }

    $content = Get-Content $commitFile -Raw
    $sections = [regex]::Matches($content, '### (.*?)\r?\n```\r?\n(.*?)\r?\n```', [System.Text.RegularExpressions.RegexOptions]::Singleline)

    foreach ($match in $sections) {
        $filePath = $match.Groups[1].Value.Trim()
        $message = $match.Groups[2].Value.Trim()

        if (Test-Path $filePath) {
            Write-Host "Checking $filePath..."
            $status = git status --porcelain $filePath
            if ($status) {
                Write-Host "Staging and committing $filePath..."
                git add $filePath
                git commit -m "$message"
            } else {
                Write-Host "No changes for $filePath." -ForegroundColor Gray
            }
        } else {
            Write-Warning "File not found: $filePath"
        }
    }

    Write-Host "Pushing all commits to main..." -ForegroundColor Green
    git push origin main
}

Sync-Commits
