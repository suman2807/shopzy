@echo off
setlocal enabledelayedexpansion

for %%m in (01 02 03) do (

    for /L %%d in (1,1,31) do (

        REM ~55% activity (realistic gaps)
        set /a chance=!random! %% 10
        if !chance! GEQ 5 (

            REM 1–5 commits/day
            set /a commits=!random! %% 5 + 1

            for /L %%c in (1,1,!commits!) do (

                set day=%%d
                if !day! LSS 10 set day=0!day!

                REM realistic time (10 AM – 9 PM)
                set /a hour=!random! %% 11 + 10
                set /a min=!random! %% 60

                echo %%m-%%d-%%c >> file.txt
                git add .

                set DATE=2025-%%m-!day! !hour!:!min!:00
                set GIT_AUTHOR_DATE=!DATE!
                set GIT_COMMITTER_DATE=!DATE!

                REM JAN = setup
                if %%m==01 (
                    set /a r=!random! %% 7
                    if !r! EQU 0 git commit -m "initialized Shopzy project"
                    if !r! EQU 1 git commit -m "created product listing UI"
                    if !r! EQU 2 git commit -m "setup backend with Express"
                    if !r! EQU 3 git commit -m "connected MongoDB database"
                    if !r! EQU 4 git commit -m "added user authentication"
                    if !r! EQU 5 git commit -m "created basic components"
                    if !r! EQU 6 git commit -m "updated README documentation"
                )

                REM FEB = features
                if %%m==02 (
                    set /a r=!random! %% 8
                    if !r! EQU 0 git commit -m "implemented add to cart feature"
                    if !r! EQU 1 git commit -m "added product filtering and search"
                    if !r! EQU 2 git commit -m "integrated payment gateway"
                    if !r! EQU 3 git commit -m "improved UI interactions"
                    if !r! EQU 4 git commit -m "added order management system"
                    if !r! EQU 5 git commit -m "fixed bugs in cart functionality"
                    if !r! EQU 6 git commit -m "optimized API performance"
                    if !r! EQU 7 git commit -m "enhanced user experience"
                )

                REM MARCH = polish
                if %%m==03 (
                    set /a r=!random! %% 8
                    if !r! EQU 0 git commit -m "improved UI responsiveness"
                    if !r! EQU 1 git commit -m "added admin dashboard"
                    if !r! EQU 2 git commit -m "refactored code structure"
                    if !r! EQU 3 git commit -m "fixed edge case bugs"
                    if !r! EQU 4 git commit -m "optimized loading performance"
                    if !r! EQU 5 git commit -m "cleaned up unused code"
                    if !r! EQU 6 git commit -m "updated product UI design"
                    if !r! EQU 7 git commit -m "updated documentation and final fixes"
                )
            )
        )
    )
)