#!/bin/bash
echo Postinstall on $(date)
npm run build --workspace '--dxp--'
npm run build:env-vars --workspace '@sites/--dxp--'
cd 'sites/__dxp__' && cat .env.development | grep SITE_URL