#!/bin/bash

ssh -o StrictHostKeyChecking=no pi@localhost -p 2222 sudo shutdown now
