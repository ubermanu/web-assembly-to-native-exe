function fibonacci(n: number): number {
    if (n < 2) {
        return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

const numIterations = 1000;
const input = 20;

const startTime = performance.now();

for (let i = 0; i < numIterations; i++) {
    fibonacci(input);
}

const endTime = performance.now();

console.log(`Elapsed time: ${endTime - startTime} ms`);
