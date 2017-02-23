#!/bin/sh
s2i build .  dil001/s2i-dotnetcore-sdk:1.1  dotnet-sample-app --runtime-image dil001/s2i-dotnetcore-runtime:1.1  --runtime-artifact=/opt/app-root/publish
