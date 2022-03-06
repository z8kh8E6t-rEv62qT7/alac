#!/bin/bash
cd codec && make -j$(nproc) && cd ..
cd convert-utility && make -j$(nproc) && cd ..
