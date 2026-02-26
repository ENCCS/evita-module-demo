# Quiz

:::{homework} Multiple choice, single answer

Why are Python lists inefficient for numerical computations?
- **A) They store elements as generic objects with dynamic typing**


What is the main advantage of NumPy arrays (ndarray) over Python lists for numerical tasks?
- **C) They store data in a compact, contiguous block of memory**

What is "vectorization" in the context of NumPy?
- **D) Replacing explicit loops with whole-array operations**

How does a pandas DataFrame differ from a NumPy array?
- **B) DataFrames support heterogeneous data types and labeled axes**

What does `scipy.optimize.curve_fit()` do?
- **B) Fits data to a model function**
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