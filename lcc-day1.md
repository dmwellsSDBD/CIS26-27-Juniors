mkdir -p ~/hunt/docs ~/hunt/logs ~/hunt/projects/web ~/hunt/.vault/deep
echo "FLAG{welcome-to-linux}" > ~/hunt/docs/start.txt
echo "FLAG{hidden-files-start-with-a-dot}" > ~/hunt/.vault/deep/secret.txt
for i in $(seq 1 50); do echo "log entry $i: all normal" >> ~/hunt/logs/system.log; done
echo "log entry 51: FLAG{read-the-end-of-the-log}" >> ~/hunt/logs/system.log
echo "<h1>Under construction</h1>" > ~/hunt/projects/web/index.html
echo "FLAG{copy-me}" > ~/hunt/projects/notes.txt