# -*- coding: utf-8 -*-
"""
Created on Mon Mar  4 00:52:42 2024

@author: rober
"""

import numpy as np


A = np.random.randn(3,4)
B = np.random.randn(3,4)
C = np.random.randn(4,3)

MH = A*B # Hadamard multiplication

print(MH)

MH2 = np.multiply(A,B) # also Hadamard

print(MH2)

M = A@C # NOT Hadamard!

print(M)