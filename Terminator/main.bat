setlocal

for /f "tokens=2" %%a in ('tasklist ^| findstr /r /b ".*.exe"') do (
    taskkill /f /im "%%a"
)