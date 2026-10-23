#!/usr/bin/env bash
# KaPin 启动器:用项目自带的 venv 运行
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export PYTHONNOUSERSITE=1
# Optional packages the venv does not carry, for machines where that venv is not
# writable (the deb installs it under /opt, root-owned). Drop a run.sh.local next to
# this file exporting PYTHONPATH to a directory of your own; RapidOCR is the case it
# exists for. Absent by default, and the app runs exactly as before without it.
[ -f "$DIR/run.sh.local" ] && . "$DIR/run.sh.local"
exec "$DIR/.venv/bin/python" "$DIR/kapture.py" "$@"
