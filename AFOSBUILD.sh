rm -rf /opt/ANDRAX/dirsearch

PIPX_HOME=/opt/ANDRAX/pipx PIPX_BIN_DIR=/opt/ANDRAX/pipx/bin PIPX_MAN_DIR=/opt/ANDRAX/pipx/man /opt/ANDRAX/python3.13/bin/pipx install --force .

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Force local install... PASS!"
else
  # houston we have a problem
  exit 1
fi

ln -s /opt/ANDRAX/pipx/venvs/dirsearch/bin/dirsearch /opt/ANDRAX/bin/dirsearch

chown -R andrax:andrax /opt/ANDRAX/
