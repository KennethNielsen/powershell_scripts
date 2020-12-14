


$name=$args[0]
echo "Entering virtual environment: $name"
cd c:\venv\$name
.\Scripts\Activate.ps1

# Enter src if present
foreach ($f in (Get-ChildItem (Get-Location))){
    if ($f.Name -eq "src"){
        cd $f
        break
    }
}

# Enter project dir is present
foreach ($f in (Get-ChildItem (Get-Location))){
    if ($f.Name -eq $name){
        cd $f
        break
    }
    #echo "UUU $f"
}

