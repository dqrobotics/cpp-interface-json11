#!/bin/bash
# Source - https://superuser.com/a/521654
# Posted by John Alberts, modified by community. See post 'Timeline' for change history
# Retrieved 2026-04-09, License - CC BY-SA 4.0
echo -e "#include <stdint.h>\n$(cat dropbox/json11/json11.cpp)" > dropbox/json11/json11.cpp
echo -e "#include <stdint.h>\n$(cat dropbox/json11/json11.hpp)" > dropbox/json11/json11.hpp
cat dropbox/json11/json11.cpp
