#!/bin/sh
#
# pyinstaller --clean -y --onefile --dist $(pwd)/webbreaker/dist --name webbreaker-cli $(pwd)/webbreaker/webbreaker/__main__.py 

if type pip 2>/dev/null; then
        if [ ! -f ./requirements.txt ]; then
                echo "You are not in the root directory of webbreaker where requirements.txt is located!"
        fi
else
        echo "Please install pip"
fi

if type python 2>/dev/null; then
        if [ -f ./setup.py ]; then
                pip install pyOpenSSL
                python setup.py build
                python setup.py install
        else
                echo "You are not in the root directory of webbreaker where setup.py is located!"
        fi
else
        echo "Please install Python 2.7 or higher"
fi