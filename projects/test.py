import subprocess
import os
import sys
import importlib.util
import shlex
import platform

dir_repos = "repos"
dir_extensions = "extensions"
python = sys.executable
git = os.environ.get('GIT', "git")
index_url = os.environ.get('INDEX_URL', "")


