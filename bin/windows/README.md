# Node.js + npm + git

This is a portable distribution of node.js in combination with npm (which depends on git).
Usually you would ship the portable msysgit version (on which this package is based on),
but thats way too oversized for this usecase (since npm uses just a pretty small part of git).

In this package instead is a heavily shrinked portable msysgit (removed the unused stuff), the portable version of node
and the portable version of npm.

Resources:
* Node.js v5.9.1 https://nodejs.org/dist/v5.9.1/
* npm v3.8.7 https://registry.npmjs.org/npm/-/npm-3.8.7.tgz (general: https://registry.npmjs.org/npm/-/npm-{version}.tgz)
* PortableGit 1.9.5 https://github.com/msysgit/msysgit/releases
