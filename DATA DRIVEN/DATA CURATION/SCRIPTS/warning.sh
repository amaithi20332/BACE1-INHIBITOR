for i in {1..7080}
do
grep -rl 'WARNING:' . | xargs sed -i '/WARNING:/d'
done