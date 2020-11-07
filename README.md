# 1.1 Executive Summary
Chandpur Enterprises Limited (CEL) is a diversified manufacturing company based in India that instituted its steel business in 2006. However, the division quickly suffered from various administrative decisions under the managing director, Akshay Mittal, that revolved around observing the most optimal utilization of raw materials for the August production. Steel can be created from any combinations, known as a "batch", of the seven raw materials in proper ratios of iron content: tasla, rangeen, sponge, local scrap, imported scrap, HC, and pig iron. But, material prices could fluctuate anywhere up to 20% in one month, so it is important to optimize each month. Other factors include rate/ton (in rupees), recovery percentage (weight of iron content over the total weight of raw material), batch limits, and monthly limits with a finished product size constraint of 4,000 kilograms (or 4 tons). The production of steel is also conditional on the total weight of raw material because both electricity (in kWh) and time (in hours) consumption costs are linearly dependent.

Linear programming (LP) is a mathematical modeling technique designed to help maximize monthly profits with respect to asset allocation through the maintenance of all these factors and additional variable costs, as well as the minimization of plant downtime. After a series of formulations, the consulting team can conclude both the optimal batch and a batch which will optimize monthly profits. The optimal batch has profit INR5421.07 with a monthly profit of INR1,460,640.995. The batch which optimizes monthly profits will bring in INR1,788,704.747 over the whole month. Suggestions for how to further increase profits include increasing regulatory size and increasing the amounts of certain preferred materials.

# 1.2 Results
There are two types of profit maximizations, which are to maximize the profit of producing only one batch and to maximize the monthly profit. These optimal solutions were solved using AMPL and the results are explained below. If only one batch is produced, the best batch that will give optimal profit (Task 1) is shown in Table 1 below. The profit associated with producing this batch is INR5421.07.

Table 1. Amount of Each Raw Material to Produce One Optimal Batch

|Type of Raw Materials|Amount Used (Tons)|
|---|---|
|Tasla|1.39179|
|Rangeen|1.39179|
|Sponge|0.55672|
|Local Scrap|0.83507|
|Imported Scrap|0|
|HC|1.11343|
|Pig Iron|0.27836|

From the results above, it can be concluded that not all raw materials have to be used, as the managing director did in the past. In this case of maximizing the profit of making only one batch, Imported Scrap is not used. 

One of the constraints in finding the solution in Table 1 is given the regulation for the finished product to be less than 4 tons. However, based on the analysis we have done, the shadow price associated with this constraint is INR3395.27 (Task 2), meaning that for every unit (1 ton) increase allowed of the finished product, the profit increases by INR3395.27 (Section 2.1.3). Thus, this right-hand-side (RHS) constraint hampers our ability to make more profit, and it is recommended for the director to seek regulatory approval to increase this limit.

In the past, the steel division of CEL had used all of the raw materials, but based on the results in Table 1, we can observe that to reach optimality, all raw materials should be used except for the Imported Scrap. The reduced cost of Imported Scrap was reported as -INR2931.38 per ton (Task 3), meaning that for every unit (1 kg) increase of Imported Scrap used, the profit decreases by INR2.93138. Thus, if he uses at least 1 kg of Imported Scrap to make the vendor happy despite the fact that it may not be optimal, he will lose INR2.93138 (Section 2.1.3). 

By creating only one optimal batch stated previously in Table 1, the profit for the month while still satisfying all previously stated constraints can be determined. With the calculations shown in Section 2.1.4, the profit over the month is INR1,460,640.995 (Task 4), which is achieved by producing 269.438 batches with the recipe shown in Table 1.

Besides maximizing the profit of making only one batch, the optimal monthly profit can also be determined with a more holistic view of the director’s goal. Although there is no restriction in the types of batches the director can make, we can make the assumption that optimality can be achieved through making only one type of batch, rather than multiple batches. This is because other variable costs like transportation and time consumption (of raw materials) will prove to be more efficient when only a handful of materials are being ordered. Further evidence would be needed to prove this assumption, but we used the assumption moving forward.
After creating the model in AMPL, the maximum monthly profit is INR1,788,704.747, which is achieved by making 367.074 batches of only one type with the amount of each material shown in Table 2 (Task 5).

Table 2. Amount of Each Raw Material to Produce One Type of Batch to Maximize the Monthly Profit

|Type of Raw Materials|Amount Used in 1 Month (Tons)|Amount Used in 1 Batch (Tons)|
|---|---|---|
|Tasla|789.878|2.15182|
|Rangeen|438.821|1.19545|
|Sponge|175.528|0.47818|
|Local Scrap|263.293|0.71727|
|Imported Scrap|0|0|
|HC|0|0|
|Pig Iron|87.7642|0.23909|

Based on the results above of the optimal ordering, it can be seen that not only is Imported Scrap disregarded, but HC is as well. This is a difference we can observe from Task 4, when monthly profit was calculated from optimizing only on one batch. But with this new model, we can observe a higher monthly profit. In conclusion, the best ordering strategy for Chandpur Enterprises Limited in August is to make 367.074 batches with recipe shown in Table 2 above.

# 1.3 Recommendations
The first suggestion (Task 6), as already evidenced from Task 2, includes the possibility of increasing the regulatory size of 4 tons. Changing this would increase the profit by INR3395.27 per ton. As indicated through sensitivity analysis, avoiding the use of Imported Scraps and HC would further yield in additional monthly profits. 

As briefly seen in Task 5, we made the assumption that making one batch was more optimal than making multiple. However, in the future, this could be actively accounted for through the maximization of the available 600 working hours, meaning reducing wastages in raw material and overall production time. Taken into account all of our given constraints, we can conclude through linear programming that the best ordering strategy for Chandpur Enterprises Limited is to maximize monthly profit from producing one type of batch. However, we must consider that there may be a more optimal solution that could be found from using another programming technique, possibly one that allows for nonlinearity. 

In conclusion, Chandpur Enterprises Limited should increase regulatory size to maximize monthly profits. Also, since the optimal batch for the maximum profit is different per batch than per month, they should also consider investing in the limiting material so that the optimal batch can be used for the whole month. Another option would be to make the optimal batch to its full capacity, and then in the remaining time make a different batch. However, this still would not be the full optimum as if making the optimal batch for the whole month. 
