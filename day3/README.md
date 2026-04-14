# Day 3: Solidity Inheritance & Modular Libraries

## 📌 Overview
This repository contains the practical tasks for Day 3 of the Solidity Bootcamp. The focus is on code reusability, inheritance, and using External Libraries to handle logic safely.

---

## 📂 Task 1: Inheritance (Animal, Dog, Cat)
In this task, I implemented a "Parent-Child" relationship between contracts—a fundamental concept in Object-Oriented Programming (OOP).

* **Logic:** The `Animal` contract acts as the base. The `Dog` and `Cat` contracts inherit its structure but change the specific output.
* **Key Keywords:** * `virtual`: Allows a function to be changed by a child.
    * `override`: Tells the compiler we are intentionally changing the parent's logic.
    * `is`: The keyword that creates the inheritance link.

---

## 📂 Task 2: Library & Calculator (Math Operations)
This task demonstrates how to use a Library (`MathLib`) to keep the main contract (`Calculator`) clean and secure.

* **Features:** Implemented Addition, Subtraction, Multiplication, Division, and Modulus.
* **Safety Checks:** Each function includes a `require` statement to handle "Undefined" mathematical scenarios.
    * **Division/Modulus:** Prevents dividing by zero.
    * **Subtraction:** Prevents negative results (Underflow protection).
* **Key Concept:** Used the `using MathLib for uint256;` directive to attach library functions directly to the unsigned integer data type.

---

## 🛠️ Engineering Reflections
As an **Electrical Power & Control Engineering** student, I see a strong parallel between:
1.  **Inheritance and Standardized Components:** We don't redesign the internal physics of a transistor; we inherit its properties and apply them to our specific circuit.
2.  **Libraries and External Tools:** `MathLib` acts like a calibrated Multimeter—a trusted tool we call upon to give us accurate results without cluttering our main project board.

---

## 🚀 How to Test
1.  Open [Remix IDE](https://remix.ethereum.org/).
2.  Compile the `.sol` files (Ensure the Green Checkmark appears).
3.  Deploy the `Dog` contract to hear it "Bark".
4.  Deploy the `Calculator` contract to perform safe math operations.
*Note: Dividing by zero or subtracting a larger number from a smaller one will trigger a Revert with a custom error message.*
