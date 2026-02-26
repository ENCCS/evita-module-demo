# Quiz

:::{homework} Multiple choice, single answer

Why are Python lists inefficient for numerical computations?
- A) They store elements as generic objects with dynamic typing
- B) They are statically typed
- C) They don't support indexing
- D) They don't support loops

What is the main advantage of NumPy arrays (ndarray) over Python lists for numerical tasks?
- A) They can hold multiple data types
- B) They automatically parallelize loops
- C) They store data in a compact, contiguous block of memory
- D) They have larger memory overhead

What is "vectorization" in the context of NumPy?
- A) A way to convert lists to dictionaries
- B) A process of compiling Python code
- C) A plotting technique
- D) Replacing explicit loops with whole-array operations

How does a pandas DataFrame differ from a NumPy array?
- A) DataFrames are slower and less powerful
- B) DataFrames support heterogeneous data types and labeled axes
- C) Arrays use less memory
- D) DataFrames cannot be indexed

What does `scipy.optimize.curve_fit()` do?
- A) Performs numerical integration
- B) Fits data to a model function
- C) Solves a linear system
- D) Computes a histogram
:::




:::{homework} Coding questions

Generate a 1D NumPy array of 1 million random floats. Compute the square root of each element using:
- a) a Python for loop
- b) NumPy’s vectorized np.sqrt

Load a CSV file of weather data (*e.g.*, temperature, humidity, wind).
- a) filter rows where temperature > 30°C
- b) compute the average humidity for each month using `groupby`

Create a random 100×100 matrix A and a vector b.
- a) use `scipy.linalg.solve` to solve the system $Ax = b$
- b) verify the solution by checking the residual norm

Simulate a DataFrame with missing values in numerical columns.
- a) fill missing values with the column mean (using NumPy)
- b) compute basic statistics before and after imputation

Generate noisy data for a quadratic function $y = ax² + bx + c$
- a) use `scipy.optimize.curve_fit` to fit the data and recover the original parameters
- b) plot the original *vs* fitted curve

:::