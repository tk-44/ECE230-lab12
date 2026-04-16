# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
- Damian Skeen and Tanner Klinge
## Summary
- In this lab we discovred two different ways of coding a FSM. One being a one-hot method and the other being the binary version. We found that we liked the one-hot method more since find the equations and implementing it was very easy.
## Lab Questions

### Compare and contrast One Hot and Binary encodings
- The one hot used 5 flip flops, one for each state and then the Binary used 3 flip flops so it's more compact.
### Which method did your team find easier, and why?
- We found that the one-hot was easier to implement and sold. It was more intuative and easier to understand. Also safer in terms of dead states.
### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
- I think in terms resources the two main ones to consider is the LUT(look-up-table) and FF's or memory. When the first is the limiting resource I would use the one-hot since it has less combinational logic and things like that. However in terms of memory the one-hot uses 5 flip flips in this instance so using the binary version(3 FF's) is going to better for the memory resource.
