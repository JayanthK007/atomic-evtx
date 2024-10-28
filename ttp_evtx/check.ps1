# Function to count files and display their sizes in a directory
function Get-FilesAndSizes {
    param (
        [string]$Directory
    )

    # Get all files in the current directory
    $files = Get-ChildItem -Path $Directory -File
    $fileCount = $files.Count

    # Only output if there are fewer than 7 files
    if ($fileCount -lt 7) {
        Write-Output "$Directory - $fileCount file(s)"

        # List each file and its size in KB
        foreach ($file in $files) {
            $sizeKB = [math]::Round(($file.Length / 1KB), 2)
            Write-Output "  $($file.Name) - ${sizeKB}KB"
        }
    }
}

# Recursive function to process directories
function Process-Directory {
    param (
        [string]$Directory
    )

    # Process the current directory
    Get-FilesAndSizes -Directory $Directory

    # Recursively process subdirectories
    $subdirectories = Get-ChildItem -Path $Directory -Directory
    foreach ($subdir in $subdirectories) {
        Process-Directory -Directory $subdir.FullName
    }
}

# Start processing from the current directory (or a specified directory)
param (
    [string]$StartDirectory = "."
)
Process-Directory -Directory $StartDirectory
