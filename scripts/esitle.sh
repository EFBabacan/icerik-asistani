#!/usr/bin/env bash
# Asıl kaynak: Instagram/.claude/skills/icerik
# Bu betik eklenti kopyasını (plugins/icerik/skills/icerik) onunla eşitler.
set -e
cd "$(dirname "$0")/.."
SRC="Instagram/.claude/skills/icerik"
DST="plugins/icerik/skills/icerik"
mkdir -p "$DST"
for f in SKILL.md takvim.md kitle-sablon.md README.md; do
  cp "$SRC/$f" "$DST/$f"
done
echo "Eşitlendi: $SRC -> $DST"
