#!/bin/bash
mysql -u root -p'foo' -h 127.0.0.1 --port=3307 tp4_db < data.sql
