function sumSquares(n: number): number {
    let sum = 0;
    for (let i = 1; i <= n; i++) {
        sum += i * i;
    }
    return sum;
}

const numIterations = 1000000;
const input = 1000;

const startTime = performance.now();

for (let i = 0; i < numIterations; i++) {
    sumSquares(input);
}

const endTime = performance.now();

console.log(`Elapsed time: ${endTime - startTime} ms`);
