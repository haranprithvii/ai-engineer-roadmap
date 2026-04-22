# Capstone Evaluation Plan

## Golden dataset
- Size:
- Source:
- Composition (types of questions):
- Sample (10 examples):

## Metrics
| Metric | Method | Target |
|--------|--------|--------|
| Faithfulness | RAGAS | > 0.85 |
| Answer Relevancy | RAGAS | > 0.85 |
| Context Precision | RAGAS | > 0.80 |
| Latency p95 | Timing | < 2s |
| Cost / query | Tracking | < $0.02 |
| Human vibes | Spot-check 20 | > 80% acceptable |

## Triangulation
- [ ] Deterministic metrics (ROUGE / BLEU / semantic similarity where applicable)
- [ ] LLM-as-Judge (with a different model than the one in the system)
- [ ] Human spot-check

## Tags
#project
