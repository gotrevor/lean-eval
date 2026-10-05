/-
Copyright (c) 2026 Trevor Morris. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Trevor Morris
-/
import Mathlib
import EvalTools.Markers

namespace LeanEval.NumberTheory.BakerHarmanPintz

/-!
# Primes in short intervals (Baker–Harman–Pintz, θ = 21/40)

For all large `x`, the interval `[x, x + x^(21/40)]` contains `≫ x^(21/40) / log x` primes.
In particular every interval `[x, x + x^0.525]` with `x` large contains a prime.

R. C. Baker, G. Harman, J. Pintz, *The difference between consecutive primes. II*,
Proc. London Math. Soc. (3) 83 (2001), 532–562, p. 562.  Stated in the form quoted by
K. Saito, *Mills' constant is irrational* (2024), Theorem 2.1.

mathlib has the Chebyshev bounds and Bertrand's postulate, but no zero-density estimates and no
Harman sieve.
-/

/-- The number of primes in the real interval `[a, b]`. -/
noncomputable def primesIn (a b : ℝ) : ℕ :=
  ((Finset.Icc ⌈a⌉₊ ⌊b⌋₊).filter Nat.Prime).card

/-- **Baker–Harman–Pintz.** There is `d₀ > 0` such that for all large `x`,
`[x, x + x^(21/40)]` contains at least `d₀ · x^(21/40) / log x` primes. -/
@[eval_problem]
theorem baker_harman_pintz :
    ∃ d₀ > (0 : ℝ), ∃ X : ℝ, ∀ x ≥ X,
      d₀ * x ^ ((21 : ℝ) / 40) / Real.log x ≤ (primesIn x (x + x ^ ((21 : ℝ) / 40)) : ℝ) := by
  sorry

end LeanEval.NumberTheory.BakerHarmanPintz
