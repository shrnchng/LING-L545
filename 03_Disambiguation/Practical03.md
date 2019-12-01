# L545 Pratical 03 Disambiguation

Comparison between UDPipe tagger and a perceptron tagger:
  - UDPipe score is much higher than the perceptron tagger in UPOS score
  - Besides the UPOS score, all other metrics of scores in the perceptron tagger are higher than UDPipe
  - Perpectron tagger iterates faster than UDPipe tagger

## UDPipe
| Metrics  | Precision  | Recall  | F1 Score  | AligndAcc  |
|---|---|---|---|---|
| Tokens  | 100.00  |100.00   |100.00   |   |
| Sentences  | 100.00  | 100.00  | 100.00  |   |
| Words  |100.00   | 100.00  | 100.00  |   |
| UPOS  | 94.74  | 94.74  | 94.74  | 94.74  |
| XPOS  | 95.89  | 95.89  | 95.89  | 95.89  |
| Feats  |  91.00  | 91.00   |  91.00  |   91.00 |
| AllTags  | 89.98  | 89.98  | 89.98  | 89.98  |
| Lemmas  | 84.97  | 84.97  |  84.97 |  84.97 |
| UAS  | 100.00   | 100.00   | 100.00   |  100.00  |
| LAS  | 100.00   |  100.00  | 100.00   | 100.00   |

## Perceptron Tagger
|Metrics    | Precision |    Recall |  F1 Score | AligndAcc|
|-----------|-----------|-----------|-----------|-----------|
Tokens     |    100.00 |    100.00 |    100.00 |
Sentences  |    100.00 |    100.00 |    100.00 |
Words      |    100.00 |    100.00 |    100.00 |
UPOS       |     90.42 |     90.42 |     90.42 |     90.42
XPOS       |    100.00 |    100.00 |    100.00 |    100.00
Feats      |    100.00 |    100.00 |    100.00 |    100.00
AllTags    |     90.42 |     90.42 |     90.42 |     90.42
Lemmas     |    100.00 |    100.00 |    100.00 |    100.00
UAS        |    100.00 |    100.00 |    100.00 |    100.00
LAS        |    100.00 |    100.00 |    100.00 |    100.00

