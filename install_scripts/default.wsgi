import sys
lib = '/usr/local/www/idata'
if sys.version_info[0]<3:       # require python3
 raise Exception("Python3 required! Current (wrong) version: '%s'" % sys.version_info)


if not lib in sys.path:
   sys.path.insert(0, lib)

from idata import app as application
   