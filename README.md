# bashrc

Add the following lines to your ~/.bashrc:
```
for file in $(ls -1 ~/.bashrc.d/*.bashrc); do
    source "$file"
done

```