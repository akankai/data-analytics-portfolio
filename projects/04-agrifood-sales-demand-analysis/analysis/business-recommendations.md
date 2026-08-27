# Business recommendations — AgriFood Sales & Demand Analysis

These recommendations follow the structure: **Data → Finding → Interpretation → Recommended Action → Illustrative Impact → Validation**.

### Recommendation 1: Protect availability and commercial focus on high-revenue products while monitoring margins

**Data:** Olive Oil 1L is the top revenue product at 843,481 MAD. Oils is the largest category by revenue (1,384,780 MAD) but has the lowest main-category margin at 27.54%.

**Finding:** The revenue leader is also the margin laggard at the category level. This creates a tension: Olive Oil 1L and the Oils category are commercially important but contribute less margin per MAD of revenue than other categories.

**Interpretation:** If Oils volume is driven by a high-volume, low-margin product strategy (e.g., Olive Oil as a loss leader or traffic driver), the low margin is by design and not a problem. If the low margin is unintentional (e.g., pricing too low, cost too high, mix of low-margin products within the category), it represents an opportunity. The dataset does not distinguish between these explanations.

**Recommended action:** Review the Oils category strategy: is the low margin intentional (high-volume strategy) or unintentional (pricing/cost issue)? If intentional, ensure the volume strategy is delivering its intended effect (traffic, cross-sales, market share). If unintentional, investigate pricing, cost structure, and product mix within the category. Protect availability of Olive Oil 1L — as the top revenue product, stockouts or availability issues would have a disproportionate revenue impact.

**Illustrative impact:** The dataset does not contain volume elasticity or cross-sale data, so the financial impact of margin improvement vs. volume protection cannot be quantified. If Oils margin were improved by 5 pp (from 27.54% to 32.54%) while holding revenue constant, the additional profit would be approximately 69,239 MAD (5% × 1,384,780 MAD) — but this assumes revenue is unchanged, which may not hold if pricing changes affect volume.

**Validation:** Monitor Oils revenue and margin over time. If pricing or cost changes are made, track whether margin improves without excessive revenue loss. Track Olive Oil 1L availability and stockout rate to ensure the revenue leader remains available.

### Recommendation 2: Investigate the drivers behind Canned Goods' strong margin

**Data:** Canned Goods has the highest category margin at 41.61%, despite being the smallest category by revenue (206,317 MAD).

**Finding:** Canned Goods achieves a margin 14.07 pp higher than Oils (41.61% vs. 27.54%). This is the largest margin gap between categories.

**Interpretation:** The high margin could be due to higher pricing, lower cost, favorable product mix, or all three. Understanding the drivers could identify practices that are transferable to other categories. However, Canned Goods is also the smallest category by revenue, so margin improvement here has less absolute impact than in Oils.

**Recommended action:** Investigate what drives Canned Goods' high margin: pricing vs. cost vs. mix. If the drivers are transferable (e.g., a pricing discipline, a cost advantage, a product mix strategy), assess whether they can be applied to other categories. If the high margin is due to a specific product or customer segment, understand why.

**Illustrative impact:** If the practices behind Canned Goods' margin were applied to Oils and increased Oils margin by even 3 pp (from 27.54% to 30.54%), the additional profit would be approximately 41,543 MAD (3% × 1,384,780 MAD). This is illustrative — the actual transfer value depends on whether the drivers are transferable and whether they affect revenue.

**Validation:** After identifying transferable practices, test them in another category and measure the margin impact. Track whether the margin improvement is sustained.

### Recommendation 3: Analyze May vs. September in detail to identify repeatable seasonal patterns

**Data:** May is the strongest month (328,425 MAD revenue, 102,600 MAD profit). September is the weakest (166,427 MAD revenue, 52,296 MAD profit). The May-September revenue gap is approximately 162,000 MAD — May generates nearly twice September's revenue.

**Finding:** There is a large seasonal swing between the strongest and weakest months. The gap is substantial enough to warrant investigation — it represents a significant revenue and profit opportunity if the swing is driven by factors that can be influenced.

**Interpretation:** The seasonal swing could be driven by demand seasonality (summer vs. back-to-school vs. harvest seasons for agri-food products), product mix differences (different products sold in different months), regional or channel differences, or external factors (competitor activity, weather, holidays). The dataset does not contain the context to identify the driver.

**Recommended action:** Decompose the May vs. September gap by product, category, region, and channel. Identify which dimensions contribute most to the difference. If May is stronger because of a specific product, region, or channel, investigate whether that driver can be amplified in other months. If September is weaker because of a specific constraint (stockouts, competition, reduced demand), investigate and address it.

**Illustrative impact:** If the factors behind May's stronger performance can be identified and partially replicated in September, closing even 25% of the 162,000 MAD revenue gap would add approximately 40,500 MAD in monthly revenue. The profit impact depends on the margin of the additional revenue. This is illustrative — the actual impact depends on what drives the seasonal difference and whether it can be influenced.

**Validation:** After identifying and acting on seasonal drivers, monitor monthly revenue and profit trends. Track whether September (and other historically weak months) improve relative to the baseline.

### Recommendation 4: Evaluate promotional mechanics before increasing promotion intensity

**Data:** Promoted transactions have a statistically significant lower margin than non-promoted (31.44% vs. 36.20%, p < 0.001, Cohen's d ≈ 0.85, a 4.76 pp difference). The gap is consistent across all five categories. However, the dataset does not contain discount depth, incremental volume, or customer acquisition data.

**Finding:** The margin cost of promotions is real and substantial (4-6 pp margin reduction across categories). The statistical significance and large effect size mean this is not a noise result. However, the net business impact (margin loss vs. volume gain) is unknown.

**Interpretation:** Promotions reduce margin per transaction. Whether this is acceptable depends on whether the lost margin is recovered through higher volume or customer acquisition. Without that data, increasing promotion intensity is a bet — you know the margin cost, but you don't know the offsetting benefit.

**Recommended action:** Before increasing promotion intensity, gather the missing data: discount depth (how much is each promotion actually discounting?), incremental volume (do promoted transactions sell more units than non-promoted, controlling for product and channel?), and customer acquisition (do promotions attract new customers who make repeat purchases?). Calculate the net margin impact: margin lost on promoted transactions vs. margin gained from incremental volume and new customers.

If the data shows promotions are net positive (volume gain exceeds margin loss), increase promotion intensity selectively — by product, channel, and timing to maximize the net benefit. If the data shows promotions are net negative or neutral, reduce promotion intensity or redesign the promotion mechanics (e.g., lower discount depth, targeted promotions rather than blanket promotions, bundle promotions that protect margin).

**Illustrative impact:** The current data shows a 4.76 pp margin reduction on promoted transactions. If 25.5% of transactions are promoted (255 of 1,000), and the average promoted transaction revenue is 2,664 MAD (679,481 MAD / 255), the total margin lost to promotions (at the 4.76 pp difference) is approximately 32,536 MAD per the dataset period. This is the gross margin cost — the net impact depends on the offsetting volume and customer acquisition benefits, which are unknown.

**Validation:** After gathering volume and acquisition data, calculate the net margin impact of promotions. Track whether changes to promotion mechanics (depth, targeting, frequency) improve the net impact. Monitor promotion ROI over time.

### Recommendation 5: Use regional and channel performance to prioritize commercial attention

**Data:** Casablanca leads in revenue (908,992 MAD) and profit (288,538 MAD). Fes has the strongest regional margin (32.62%). Supermarket is the strongest channel (951,074 MAD revenue, 304,255 MAD profit).

**Finding:** Performance varies meaningfully across regions and channels. Casablanca is the revenue and profit leader; Fes has the best margin; Supermarket is the strongest channel.

**Interpretation:** The regional and channel variation suggests opportunities for targeted commercial attention. Casablanca's leadership could be reinforced (if sustainable) or the gap to other regions could be investigated (if other regions have untapped potential). Fes's strong margin could indicate a pricing advantage, a favorable product mix, or a customer segment advantage worth understanding. Supermarket's strength may reflect the channel's role in the business (high-volume, consistent demand) or a competitive advantage in that channel.

**Recommended action:** For each region and channel, understand what drives the performance: product mix, pricing, customer segments, competitive context, distribution efficiency. Use this understanding to prioritize commercial investment (e.g., reinforce Casablanca's strength, investigate Fes's margin advantage, optimize the Supermarket channel for margin as well as volume).

**Illustrative impact:** The dataset does not contain customer segments, competitive context, or distribution cost data, so the specific commercial actions and their impact cannot be quantified. In a real deployment, regional and channel analysis would inform resource allocation (sales effort, marketing spend, inventory allocation) based on the relative performance and potential of each region and channel.

**Validation:** Monitor regional and channel performance over time. Track whether commercial attention to high-potential regions/channels improves their performance, and whether the overall portfolio becomes more balanced or more concentrated as a result.
