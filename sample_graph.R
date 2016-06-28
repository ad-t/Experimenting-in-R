real <- c(1:4000)
im <- c(1:800)
print(real)

res <- real
dim(res) <- c(50, 80)
#print(res)
for(x in 1:50) {
    for (y in 1:80) {
        z = x*y + im[y]
        if (z < 200) {
            res[x, y] = 1
        } else {
            res[x, y] = 0
        }
    }
}
image(res)
