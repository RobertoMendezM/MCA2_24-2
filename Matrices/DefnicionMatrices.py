# -*- coding: utf-8 -*-
"""

Programa que declara matrices 


author: Roberto Méndez

Libro: Linear Algebra with Python 2023 Tsukada Kobayashi
       Practical Linear Algebra for data science using Python 2022 tx Cohen

date: Sun Mar  3 22:15:50 2024


"""
import numpy as np


"""
Matriz de ceros
https://numpy.org/doc/stable/reference/generated/numpy.zeros.html#numpy.zeros
https://numpy.org/doc/stable/reference/arrays.scalars.html#numpy.int8

"""

A0 = np.zeros(0)

print(A0)

A0 = np.zeros(6)

print(A0)

A0 = np.zeros((6,))

print(A0)

A0 = np.zeros((6,1))

print(A0)

"""
  Ejemplo de error 

"""
try:
    A0 = np.zeros(-1)
except ValueError:
    print("El valor dado debe ser mayot o gual que cero")    


"""
 Cambio de dtype
 https://numpy.org/doc/stable/reference/arrays.scalars.html
"""

A0 = np.zeros(6, dtype = np.complex128)

print(A0)

A0[2] = 1 + 5.6676899898090j

print(A0)

# Notar cambio de representativodad al pasar 
# de 120 a 64

A0 = np.zeros(6, dtype = np.complex64)

print(A0)

A0[2] = 1 + 5.6676899898090j

print(A0)

"""
  Matriz identidad y con diagonal cero
  https://numpy.org/devdocs/reference/generated/numpy.eye.html
"""

print(np.eye(4))

print(np.eye(4, 7))

print(np.eye(4, 7, k = 2, dtype=np.float64))

A = np.array([ [4,5,1],[0,1,11],[4,9,7] ])

print(len(A))
s = 6
print(A + s) 
print(A + s*np.eye(len(A))) 


"""
  Generación de matrices aleatorias con 
  alguna distrución de probabilidad
  
  Matriz transpuesta
  
  https://numpy.org/doc/stable/reference/random/generator.html
"""
Mrows = 4 # shape 0
Ncols = 6 # shape 1
A = np.random.randn(Mrows,Ncols)
A.T # as method
A_T2 = np.transpose(A) # as function
print(A)
print(A.T)
print(A_T2)

A = np.random.uniform(0,1)
print(A)
A = np.random.uniform(0,1,(4,4))
print(A)

