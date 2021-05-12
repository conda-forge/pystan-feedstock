set "STAN_VER=%PKG_VERSION:~0,-2%"

python setup.py install -q --single-version-externally-managed --record=record.txt
if errorlevel 1 exit 1
