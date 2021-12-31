#!/bin/bash

SCRIPT_PATH="$(dirname "$(realpath -s "$0")")"
TABLES_PATH="$SCRIPT_PATH/Tables"

DATABASE="TestDB"
USER="sa"

export PATH="$PATH:/opt/mssql-tools/bin"

sqlcmd -S $SERVER_NAME -U "sa" -P $SA_PASSWORD -i "$SCRIPT_PATH/CreateDB.sql"

for FILE in $TABLES_PATH/*; do
	echo "Invoke $FILE"
	echo $SERVER_NAME
	echo $SA_PASSWORD
	# SERVER_NAME and SA_PASSWORD from .gitlab-ci.yml
	sqlcmd -S $SERVER_NAME -d "TestDB" -U "sa" -P $SA_PASSWORD -i $FILE
done
