# Data Analytics & Business Intelligence Portfolio

A collection of practical analytics projects focused on turning operational, manufacturing, supply-chain, and agro-food data into clear business insights.

## What I work with

**Analytics & BI:** Excel · SQL / SQLite · Power BI · DAX

**Workflow:** Data validation → KPI design → Exploratory analysis → Dashboarding → Business interpretation

## Featured projects

| # | Project | Business focus | Tools |
|---|---|---|---|
| **01** | [Manufacturing Quality & Defect Analysis](projects/01-manufacturing-quality-defect-analysis/) | Defect rates, machine performance, product quality | Excel · Power BI · DAX |
| **02** | [Production Performance & Efficiency Analysis](projects/02-production-performance-efficiency-analysis/) | Efficiency, yield, waste, utilization | Excel · Power BI · DAX |
| **03** | [Inventory & Supply Chain Analysis](projects/03-inventory-supply-chain-analysis/) | Stockout risk, inventory value, suppliers, turnover | Excel · Power BI · DAX |
| **04** | [AgriFood Sales & Demand Analysis](projects/04-agrifood-sales-demand-analysis/) | Revenue, profitability, products, regions, channels, trends, promotions | Excel · SQL · Power BI · DAX |
| **05** | [Customer Segmentation & RFM Analysis](projects/05-customer-segmentation-rfm-analysis/) | Customer segmentation, recency-frequency-monetary profiling, retention signals | SQL · Python · Excel |

## Portfolio progression

The projects are intentionally organized as a business analytics progression:

**Quality → Operations → Supply Chain → Sales & Demand → Customer Segmentation**

This reflects an interest in applying data analysis and business intelligence to operational and agro-food environments.

## What each project demonstrates

- **Business problem framing** — translating operational questions into measurable analytical objectives.
- **Data validation** — checking completeness, duplicates, and calculation assumptions before analysis.
- **KPI development** — defining metrics that support business decisions.
- **SQL analysis** — reproducible aggregations, segmentation, trends, and data-quality checks in Project 04.
- **Power BI & DAX** — interactive reporting, KPI measures, filtering, and visual analysis.
- **Business communication** — turning analytical findings into practical recommendations while distinguishing correlation from causation.

## Repository structure

```text
projects/
├── 01-manufacturing-quality-defect-analysis/
├── 02-production-performance-efficiency-analysis/
├── 03-inventory-supply-chain-analysis/
├── 04-agrifood-sales-demand-analysis/
└── 05-customer-segmentation-rfm-analysis/
```

Each project contains documentation and the supporting files available for that project, such as source data, analysis notes, dashboard assets, Power BI reports, and SQL scripts.

## Data note

The portfolio datasets are **synthetic and created for learning and demonstration purposes**. They do not represent confidential or real company production data.

## About

I am building practical skills in **Data Analytics and Business Intelligence**, with an academic background in **agro-food engineering**. This portfolio is focused on demonstrating the ability to move from raw data and business questions to validated KPIs, dashboards, findings, and recommendations.

Last updated: August 2026

## Project strategy

The five projects form a deliberate progression: **Quality → Operations → Supply Chain → Sales & Demand → Customer Segmentation**. This is a coherent analytics progression that moves from operational metrics (defects, efficiency) through supply chain (inventory, suppliers) to commercial analytics (sales, customers). The progression demonstrates breadth across the domains relevant to an IAA/engineering profile.

However, the current portfolio has gaps in three areas that would materially strengthen it:

1. **Forecasting** — no project includes a forecasting component (demand forecasting, trend projection, seasonal decomposition). This is a core analytics capability.
2. **Optimization / scenario analysis** — no project asks "what should we do?" in a quantified way. Scenario analysis (what-if modeling, tradeoff analysis) is a natural next step after descriptive analytics.
3. **Advanced business decision analysis** — no project frames a decision with explicit alternatives, criteria, and quantified impact. This is the bridge to consulting-style work.

### Recommended new projects (max 3)

**Project 06 — Demand Forecasting & Inventory Optimization (forecasting + supply chain)**

Build on the P03 inventory dataset (or a new one) to add: demand forecasting (moving average, exponential smoothing, or simple ARIMA), safety stock calculation based on demand variability and lead time, and stockout probability estimation. This adds the forecasting capability the portfolio currently lacks and directly connects to the P03 supply chain theme.

*Why this strengthens the profile:* Forecasting is the single most requested analytics skill for supply chain and operations roles. It demonstrates that you can go beyond describing what happened to predicting what will happen.

**Project 07 — Production Scenario Analysis & Decision Framework (optimization + manufacturing)**

Build on the P02 manufacturing dataset to model scenarios: what happens to OEE, output, and cost if M03's downtime is reduced by X%? What if the morning shift waste rate is improved to the afternoon level? What's the tradeoff between increasing planned production vs. improving OEE? Frame the analysis as a decision with quantified alternatives.

*Why this strengthens the profile:* Scenario analysis and decision framing are exactly what separate a dashboard-builder from an analyst who can inform decisions. This directly addresses the consulting-relevant gap.

**Project 08 — Profitability & Customer Lifetime Value Analysis (advanced decision analysis + commercial)**

Extend the P04 or P05 commercial dataset to add: customer lifetime value (CLV) estimation, cohort analysis (retention by cohort over time), and a profitability framing that connects revenue and margin to customer behavior. If using P05's customer data, add a CLV model and compare RFM segments on predicted value.

*Why this strengthens the profile:* CLV and cohort analysis are core commercial analytics techniques. They connect the descriptive RFM work to forward-looking value estimation, which is a natural maturity step.

These three projects are not random additions — they fill specific capability gaps (forecasting, optimization/scenario, advanced decision analysis) and build on the existing domain themes (manufacturing, supply chain, commercial). They would bring the portfolio from "solid descriptive analyst" to "analyst who can predict, optimize, and recommend."

## Consulting preparation

The portfolio shows structured thinking and intellectual honesty (consistent correlation-vs-causation discipline), but it does not yet demonstrate the specific habits consulting firms look for:

### What the portfolio already does well for consulting

- **Structured progression:** problem → data → methodology → KPI → analysis → interpretation → recommendation. This mirrors the consulting workflow.
- **Interpretation discipline:** every project explicitly refuses to overclaim. This is exactly the kind of intellectual honesty McKinsey and other firms value.
- **Multi-dimensional analysis:** P04's decomposition by product, category, region, channel, month, and promotion shows the kind of multi-angle analysis consulting projects require.
- **Signal vs. root cause distinction:** P03's interpretation of the low-stock/stockout gap is consulting-style thinking — identifying what the data actually says vs. what it might mean.

### What needs to change for consulting relevance

1. **Add hypothesis-driven framing.** Instead of "here's what the data shows," structure at least one project as "we hypothesized X; here's how we tested it; here's what we found." This is the core consulting analytical approach.

2. **Add decision criteria to recommendations.** Instead of "investigate M03," frame as "if the objective is to recover the 35,927 kg production gap with minimal investment, prioritize M03 downtime reduction (potential recovery: ~X kg); if the objective is to improve quality at lowest cost, prioritize the defect-rate investigation." Decision criteria make recommendations actionable.

3. **Quantify impact in business terms.** Every recommendation should include an estimated impact: "Reducing M03's downtime to M02's level would recover approximately 25,227 kg of good output" — this is already partially done in P02's OEE analysis, but it should be explicit in the recommendation.

4. **Use explicit frameworks selectively.** Pareto analysis (80/20), OEE decomposition, ABC analysis — these are frameworks that signal structured problem-solving. P03 now has ABC analysis; P02 has OEE. Adding a Pareto analysis to P01 (defects by product/machine) would complete the set.

5. **Show how you handle ambiguity.** All current projects have clean synthetic data with clear signals. A consulting-relevant project would include conflicting evidence, data quality issues that matter, or trade-offs between objectives. This is harder to fake with synthetic data, but the P04 promotion analysis (margin gap, but unknown volume offset) already touches this.

These changes should be incremental — add hypothesis framing and decision criteria to one existing project, demonstrate impact quantification in another. Don't turn the portfolio into a fake "consulting case study" portfolio. The goal is to show that you *think* like a consultant, not that you've memorized consulting frameworks.

## Career positioning

### What your current portfolio supports

- **Business Intelligence Analyst** — Power BI + DAX + SQL is the core BI stack. You have three Power BI projects (P01, P02, P03) plus P04's Power BI + SQL combination. This is a credible BI portfolio.
- **Data Analyst (operations/manufacturing)** — P01, P02, P03 cover manufacturing quality, production efficiency, and inventory/supply chain. An IAA background plus these projects makes you a credible candidate for operations analytics roles in food/manufacturing.
- **Supply Chain Analyst** — P03 covers inventory, stockout risk, supplier performance, turnover, ABC analysis. This is a solid supply chain analytics foundation.
- **Commercial/Data Analyst (retail/food)** — P04 and P05 cover sales analytics and customer segmentation. P04's SQL + Power BI + promotion analysis is the most complete commercial analytics project.
- **Junior BI/Analytics Consultant** — at a boutique or mid-tier firm, your structured approach and domain knowledge would be relevant. The consulting relevance gap (see above) means top-tier firms would not yet see you as a strong candidate.

### What your current portfolio does NOT support

- **Data Scientist / ML Engineer** — no machine learning, no statistical modeling beyond descriptive statistics, no predictive modeling. This is not the goal, but it's a gap if you ever want to pivot.
- **Senior Analytics roles** — the portfolio is appropriately junior. It demonstrates competence, not depth. Senior roles require evidence of impact, ownership, and complexity that a student portfolio cannot provide.
- **Top-tier strategy consulting (McKinsey, BCG, Bain)** — the portfolio shows structured thinking but not the hypothesis-driven, decision-focused, impact-quantified approach these firms look for. See consulting preparation section.
- **Roles requiring production deployment experience** — all projects are synthetic. No project shows deployment in a real business environment, stakeholder management, or production dashboard maintenance.

### Skills to develop over the next 12 months

1. **Forecasting:** exponential smoothing, ARIMA, seasonal decomposition. Apply to a real or realistic dataset. This is the single highest-value skill addition for your target roles.
2. **Scenario analysis / what-if modeling:** build a model where changing inputs produces quantified output changes. Excel with data tables, or Python with simple optimization.
3. **Statistical fundamentals:** correlation with significance testing, confidence intervals, hypothesis testing (t-test, chi-square). This directly addresses the "no statistical testing" gap.
4. **Advanced SQL:** window functions (you already use them in P05), CTEs, query optimization, and working with larger datasets.
5. **Cost modeling:** add cost dimensions to your analysis. Cost of quality, cost of downtime, inventory carrying cost. This is what turns descriptive analysis into business-relevant analysis.
6. **Stakeholder communication:** practice writing one-page executive summaries (the ones you now have for each project are a start) and presenting analytical findings to a non-technical audience.

### Skills to develop over the next 2-3 years

1. **Production deployment:** take an analysis from notebook/dashboard to a production reporting system. This means data refresh, user access, performance, maintenance — the stuff that student projects don't cover.
2. **Advanced analytics:** regression modeling, classification (churn prediction, demand classification), clustering beyond RFM. Not necessarily deep learning — practical predictive analytics is more valuable for your target roles.
3. **Optimization:** linear programming, constraint-based optimization, resource allocation. This is the natural extension of scenario analysis.
4. **Domain depth:** whichever industry you enter (food manufacturing, retail, supply chain), build deep domain knowledge — KPIs, benchmarks, regulations, operational constraints. This is what differentiates an IAA graduate from a generic data analyst.
5. **Stakeholder management and project ownership:** leading an analytical project from question to deployed insight, managing data quality issues in real data, handling conflicting stakeholder demands. This comes from experience, not study.

### Internship types that would complement the portfolio best

1. **Manufacturing/Production Analytics Internship** — applying analytics to real production data (OEE, quality, downtime, yield). This would let you replace synthetic data with real operational data and demonstrate impact.
2. **Supply Chain Analytics Internship** — inventory optimization, demand forecasting, supplier analytics. Directly builds on P03 and adds the forecasting capability the portfolio lacks.
3. **Business Intelligence Internship** — building and maintaining production Power BI/Tableau dashboards, writing SQL for business users, working with real data quality issues. This develops the deployment experience the portfolio currently lacks.
4. **Operations/Performance Internship** — continuous improvement, process analysis, performance measurement. This connects your IAA background to analytics and builds the continuous improvement framing (PDCA, DMAIC) that would strengthen the manufacturing projects.

Any of these four would add real-data experience, deployment context, and domain depth that synthetic portfolio projects cannot provide.

### What PFE (Projet de Fin d'Études) would strengthen this profile most

An industry PFE in one of these areas would be ideal:

1. **Production performance analysis with OEE and continuous improvement** — directly extends P02 into a real context. Analyze real production data, calculate OEE, identify losses, propose and track improvements. This is the single most relevant PFE for your target roles.

2. **Demand forecasting and inventory optimization for an agro-food company** — extends P03/P06 themes into a real context. Build forecasting models, calculate safety stock, analyze stockout patterns, and recommend replenishment policy changes.

3. **Commercial analytics / customer value analysis for a food retailer or distributor** — extends P04/P05/P08 themes. Analyze real sales data, build customer segments, estimate CLV, evaluate promotion effectiveness, and inform commercial strategy.

The ideal PFE is one where you can point to a real business problem, real data, a defined analytical approach, and measurable impact (even if modest). A PFE that produces a deployed dashboard or report used by the host company is worth more than a PFE that produces a sophisticated model no one uses.

### What your ideal profile could look like by graduation

A graduate with:
- **5-7 portfolio projects** covering manufacturing operations (with OEE), supply chain (with forecasting), commercial analytics (with CLV/cohort), and one project with real data from an internship or PFE.
- **Demonstrated skills:** SQL (intermediate-advanced), Power BI (intermediate-advanced), DAX, Python (pandas, basic stats, basic forecasting), Excel (advanced), and at least one forecasting/optimization technique.
- **Domain credibility:** IAA engineering background plus analytics projects in manufacturing, supply chain, and food retail — a coherent, relevant profile for agro-food operations analytics.
- **Consulting-adjacent skills:** at least one project framed hypothesis-driven with decision criteria and quantified impact; consistent intellectual honesty about what the data does and doesn't show.
- **Real experience:** at least one internship where analytics was applied to real data, and a PFE that produced a deployed analytical artifact.

This profile would be competitive for: BI Analyst, Data Analyst (operations/supply chain/commercial), Supply Chain Analyst, Junior Analytics Consultant at a mid-tier firm, and — with the right internship/PFE — potentially a generalist analyst role at a top-tier consulting firm (though the McKinsey path would typically require a master's or exceptional PFE impact).

---

## Prioritized roadmap

### Do this now (before next internship)

1. **Add OEE to P02 Power BI dashboard** — the DAX measures are documented; add the visual to the dashboard. This is the single highest-impact improvement to the existing portfolio.
2. **Fix the P01 data gap** — the synthetic CSV is now in the repo (`data/production_data.csv`). Update the Power BI source to use it, or document that the .pbix uses a different (original) dataset.
3. **Add the executive summaries** — the ones written above are ready to commit. They make each project accessible to a non-technical reader.
4. **Commit all documentation fixes** — the empty READMEs are filled, the BOM is documented, the order count is corrected, the turnover interpretation is clarified, the ABC analysis is added, the on-time delivery DAX is improved, the promotion-by-category SQL is added.
5. **Add hypothesis-driven framing to one project** — take P04's promotion analysis and restructure the README/findings to explicitly state the hypothesis ("promotions reduce margin"), the test (compare promoted vs. non-promoted by category), the finding (consistent across all categories), and the decision implication (promotions cost 4-6pp margin; net impact unknown without volume data).

### Do this next (during skill-building phase)

6. **Build Project 06 (Demand Forecasting & Inventory Optimization)** — add forecasting to the supply chain theme. Start with simple methods (moving average, exponential smoothing) and a clear business framing (safety stock, stockout probability).
7. **Add statistical testing to existing projects** — calculate correlation coefficients with p-values for P01's quality parameters; add a significance assessment to P04's promotion margin comparison.
8. **Add cost framing to P01 and P02** — even with synthetic cost assumptions (e.g., "assume 2 MAD per defective unit"), the exercise of building a cost model is valuable. Document the assumption clearly.
9. **Add Pareto analysis to P01** — defects by product, by machine, by operator. Show the 80/20 distribution. This is a framework that signals structured problem-solving.

### Do this during your next internship

10. **Apply analytics to real data** — whatever the internship role, find a dataset you can analyze. Even a small analysis (a dashboard, a SQL query that answers a business question, a forecast that informs a decision) is worth more than another synthetic project.
11. **Document the internship analysis** — if confidentiality allows, write a brief case study: problem, approach, finding, impact. If confidentiality doesn't allow, write a sanitized version that demonstrates the approach without revealing sensitive data.
12. **Learn production deployment** — how does the company refresh data, manage dashboard access, handle data quality issues, version reports? This is the gap between portfolio projects and production analytics.

### Do this for your PFE

13. **Choose a PFE topic that produces a deployed artifact** — a dashboard that the host company uses, a forecast that informs replenishment, an analysis that identified a real improvement. The deployed artifact is the credibility signal.
14. **Frame the PFE as a business problem, not an analytics exercise** — "reduce stockouts by X%" or "improve OEE by Y percentage points" is more compelling than "build a forecasting model."
15. **Quantify impact** — even if the impact is modest or prospective, include an estimate. "The model could reduce safety stock by X% while maintaining Y% service level" is better than "the model achieves Z% forecast accuracy."

### Do this before graduation

16. **Complete Projects 07 and 08** — scenario analysis (manufacturing) and CLV/cohort analysis (commercial). These fill the remaining capability gaps.
17. **Add a "what I learned" reflection** to each project — 2-3 sentences on what surprised you, what you'd do differently, what the data didn't tell you. This signals maturity.
18. **Review the portfolio from a recruiter's perspective** — would you hire this person for a BI Analyst role? A Supply Chain Analyst role? Be honest about what's missing and address it.
19. **Prepare a 2-minute verbal summary** of each project — the business problem, your approach, the key finding, and the recommendation. This is what you'll actually use in interviews.
