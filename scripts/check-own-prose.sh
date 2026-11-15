#!/usr/bin/env bash
# Dogfood gate: the project's own prose must pass the rules the skill enforces.
# Flags em-dashes (— / ——) and copy-paste model residue outside code spans and
# fenced blocks. Rule files that *teach* these tells (references/, assets/,
# before/after examples) are excluded because they have to quote them.
set -euo pipefail
cd "$(dirname "$0")/.."

files=(README.md README.zh.md CONTRIBUTING.md CHANGELOG.md
       agents/README.md examples/README.md skills/anti-vibe-writing/SKILL.md)

perl -ne '
  BEGIN { $fence = 0; $bad = 0 }
  if (/^\s*```/) { $fence = !$fence; next }
  unless ($fence) {
    (my $l = $_) =~ s/`[^`]*`//g;
    if ($l =~ /\x{2014}|contentReference|oaicite|turn\d+(?:search|news|view)|\[cite[:_]/) {
      print "$ARGV:$.: $_"; $bad++;
    }
  }
  if (eof) { close ARGV; $fence = 0 }
  END { if ($bad) { print STDERR "\n$bad line(s) with AI tells in project prose.\n"; exit 1 }
        print "OK: project prose is clean.\n" }
' -CSD "${files[@]}"
