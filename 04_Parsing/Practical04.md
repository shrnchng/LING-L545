# L545 Pratical 04 Parsing

Inspect 10 trees, what kind of errors were made?

  - Proper nouns are often separated as individual single characters e.g. 《圓月彎刀》 in sentence 10 was separated into four different tokens, and in sentence 4 tokens #16-18 should be 1 token instead of three, same with tokens #20-21, which are both proper nouns of roads in Taiwan.
  - 'ROOT's were marked on the wrong verbs e,g, sentence 2, ROOT should be token #15.
  - ROOTs were marked completely wrong in sentence 4. I think it's because snetence 4 is a run-on sentence where the first four tokens should be separated as another different sentence. The ROOT of thi sentence should be token #18.
  - In sentence 6 ROOT should be token #8 instead of token #9. In many sentences where the ROOT should be the AUX tag of the sentence were wrongly marked to one of the nouns in that sentence. E.G. sentence 3 token #2, sentence 4 token #6, sentence 6 token #8.
  - ROOTs are often marked in the subordinate clause such as sentence 7 token #22 and sentence 9 token #11. The ROOT in  sentence 7 should be token #6 and the ROOT in sentence 9 should be token #6.

# sent_id = test-s1
| |text = 然而，這樣的處理也衍生了一些問題。|||||||||
|-|-|-|-|-|-|-|-|-|-|
1|然而|然而|ADV|RB|_|7|mark|_|SpaceAfter=No
2|，|，|PUNCT|,|_|7|punct|_|SpaceAfter=No
3|這樣|這樣|PRON|PRD|_|5|det|_|SpaceAfter=No
4|的|的|PART|DEC|Case=Gen|3|case:dec|_|SpaceAfter=No
5|處理|處理|NOUN|NN|_|7|nsubj|_|SpaceAfter=No
6|也|也|ADV|RB|_|7|mark|_|SpaceAfter=No
7|衍生|衍生|VERB|VV|_|0|root|_|SpaceAfter=No
8|了|了|PART|AS|Aspect=Perf|7|case:aspect|_|SpaceAfter=No
9|一些|一些|ADJ|JJ|_|10|amod|_|SpaceAfter=No
10|問題|問題|NOUN|NN|_|7|obj|_|SpaceAfter=No
11|。|。|PUNCT|.|_|7|punct|_|SpaceAfter=No

# sent_id = test-s2
|| text = 自從2004年提出了興建人文大樓的構想，企業界陸續有人提供捐款。|||||||||
|-|-|-|-|-|-|-|-|-|-|
1|自從|自從|ADP|IN|_|3|case|_|SpaceAfter=No
2|2004|2004|NUM|CD|NumType=Card|3|nummod|_|SpaceAfter=No
3|年|年|NOUN|NNB|_|4|obl|_|SpaceAfter=No
4|提出|提出|VERB|VV|_|0|root|_|SpaceAfter=No
5|了|了|PART|AS|Aspect=Perf|4|case:aspect|_|SpaceAfter=No
6|興建|興建|VERB|VV|_|10|acl:relcl|_|SpaceAfter=No
7|人文|人文|PROPN|NNP|_|8|nmod|_|SpaceAfter=No
8|大樓|大樓|NOUN|NN|_|6|obj|_|SpaceAfter=No
9|的|的|PART|DEC|_|6|mark:relcl|_|SpaceAfter=No
10|構想|構想|NOUN|NN|_|4|obj|_|SpaceAfter=No
11|，|，|PUNCT|,|_|4|punct|_|SpaceAfter=No
12|企業|企業|NOUN|NN|_|13|compound|_|SpaceAfter=No
13|界|界|PART|SFN|_|15|nsubj|_|SpaceAfter=No
14|陸續|陸續|ADV|RB|_|15|advmod|_|SpaceAfter=No
15|有|有|VERB|VV|_|4|parataxis|_|SpaceAfter=No
16|人|人|NOUN|NN|_|17|nsubj|_|SpaceAfter=No
17|提供|提供|VERB|VV|_|15|ccomp|_|SpaceAfter=No
18|捐款|捐款|NOUN|NN|_|17|obj|_|SpaceAfter=No
19|。|。|PUNCT|.|_|4|punct|_|SpaceAfter=No
# sent_id = test-s3
|| text = 杜鵑花為溫帶植物，台北雖然在亞熱帶，但冬季的東北季風卻使得杜鵑花在臺大宜然自得。|||||||||
|-|-|-|-|-|-|-|-|-|-|
1|杜鵑花|杜鵑花|NOUN|NN|_|4|nsubj|_|SpaceAfter=No
2|為|為|AUX|VC|_|4|cop|_|SpaceAfter=No
3|溫帶|溫帶|NOUN|NN|_|4|nmod|_|SpaceAfter=No
4|植物|植物|NOUN|NN|_|0|root|_|SpaceAfter=No
5|，|，|PUNCT|,|_|4|punct|_|SpaceAfter=No
6|台北|台北|PROPN|NNP|_|18|nsubj|_|SpaceAfter=No
7|雖然|雖然|ADP|IN|_|8|case|_|SpaceAfter=No
8|在|在|VERB|VV|_|18|xcomp|_|SpaceAfter=No
9|亞|亞|PART|PFA|_|10|case:pref|_|SpaceAfter=No
10|熱帶|熱帶|NOUN|NN|_|8|obj|_|SpaceAfter=No
11|，|，|PUNCT|,|_|18|punct|_|SpaceAfter=No
12|但|但|ADV|RB|_|18|mark|_|SpaceAfter=No
13|冬季|冬季|NOUN|NN|_|16|nmod|_|SpaceAfter=No
14|的|的|PART|DEC|Case=Gen|13|case:dec|_|SpaceAfter=No
15|東北|東北|NOUN|NN|_|16|nmod|_|SpaceAfter=No
16|季風|季風|NOUN|NN|_|18|nsubj|_|SpaceAfter=No
17|卻|卻|ADV|RB|_|18|mark|_|SpaceAfter=No
18|使得|使得|VERB|VV|Voice=Cau|4|parataxis|_|SpaceAfter=No
19|杜鵑花|杜鵑花|NOUN|NN|_|22|nsubj|_|SpaceAfter=No
20|在|在|VERB|VV|_|22|advcl|_|SpaceAfter=No
21|臺大|臺大|PROPN|NNP|_|20|obj|_|SpaceAfter=No
22|宜然自得|宜然自得|VERB|VV|_|18|ccomp|_|SpaceAfter=No
23|。|。|PUNCT|.|_|4|punct|_|SpaceAfter=No
# sent_id = test-s4
|| text = 臺大醫學人文博物館是一棟兩層樓的建築，沿中山南路與仁愛路成L型。|||||||||
|-|-|-|-|-|-|-|-|-|-|
1|臺大|臺大|PROPN|NNP|_|5|nmod|_|SpaceAfter=No
2|醫學|醫學|NOUN|NN|_|5|nmod|_|SpaceAfter=No
3|人文|人文|NOUN|NN|_|5|nmod|_|SpaceAfter=No
4|博物|博物|NOUN|NN|_|5|compound|_|SpaceAfter=No
5|館|館|PART|SFN|_|22|nsubj|_|SpaceAfter=No
6|是|是|AUX|VC|_|13|cop|_|SpaceAfter=No
7|一|一|NUM|CD|NumType=Card|8|nummod|_|SpaceAfter=No
8|棟|棟|NOUN|NNB|_|11|nmod|_|SpaceAfter=No
9|兩|兩|NUM|CD|NumType=Card|10|nummod|_|SpaceAfter=No
10|層|層|NOUN|NNB|_|11|nmod|_|SpaceAfter=No
11|樓|樓|NOUN|NN|_|13|nmod|_|SpaceAfter=No
12|的|的|PART|DEC|Case=Gen|11|case:dec|_|SpaceAfter=No
13|建築|建築|NOUN|NN|_|22|advcl|_|SpaceAfter=No
14|，|，|PUNCT|,|_|22|punct|_|SpaceAfter=No
15|沿|沿|ADP|IN|_|18|case|_|SpaceAfter=No
16|中山|中山|PROPN|NNP|_|18|nmod|_|SpaceAfter=No
17|南|南|NOUN|NN|_|18|compound|_|SpaceAfter=No
18|路|路|PART|SFN|_|22|obl|_|SpaceAfter=No
19|與|與|CCONJ|CC|_|21|cc|_|SpaceAfter=No
20|仁愛|仁愛|PROPN|NNP|_|21|compound|_|SpaceAfter=No
21|路|路|PART|SFN|_|18|conj|_|SpaceAfter=No
22|成|成|VERB|VV|_|0|root|_|SpaceAfter=No
23|L|L|X|FW|_|24|compound|_|SpaceAfter=No
24|型|型|PART|SFN|_|22|obj|_|SpaceAfter=No
25|。|。|PUNCT|.|_|22|punct|_|SpaceAfter=No
# sent_id = test-s5
|| text = 樓頂有天文台，現為天文社使用。|||||||||
|-|-|-|-|-|-|-|-|-|-|
1|樓頂|樓頂|NOUN|NN|_|2|nsubj|_|SpaceAfter=No
2|有|有|VERB|VV|_|0|root|_|SpaceAfter=No
3|天文|天文|NOUN|NN|_|4|compound|_|SpaceAfter=No
4|台|台|PART|SFN|_|2|obj|_|SpaceAfter=No
5|，|，|PUNCT|,|_|2|punct|_|SpaceAfter=No
6|現|現|NOUN|NN|_|10|nmod:tmod|_|SpaceAfter=No
7|為|為|VERB|BB|Voice=Pass|10|aux:pass|_|SpaceAfter=No
8|天文|天文|NOUN|NN|_|9|compound|_|SpaceAfter=No
9|社|社|PART|SFN|_|10|nsubj|_|SpaceAfter=No
10|使用|使用|VERB|VV|_|2|parataxis|_|SpaceAfter=No
11|。|。|PUNCT|.|_|2|punct|_|SpaceAfter=No
# sent_id = test-s6
|| text = 國際北極研究中心的主要夥伴是日本和美國，參與會務的還有來自加拿大、中國、丹麥、德國、日本、挪威、俄羅斯、英國和美國的代表。|||||||||
|-|-|-|-|-|-|-|-|-|-|
1|國際|國際|NOUN|NN|_|4|nmod|_|SpaceAfter=No
2|北極|北極|NOUN|NN|_|4|nmod|_|SpaceAfter=No
3|研究|研究|NOUN|NN|_|4|nmod|_|SpaceAfter=No
4|中心|中心|NOUN|NN|_|7|nmod|_|SpaceAfter=No
5|的|的|PART|DEC|Case=Gen|4|case:dec|_|SpaceAfter=No
6|主要|主要|ADJ|JJ|_|7|amod|_|SpaceAfter=No
7|夥伴|夥伴|NOUN|NN|_|9|nsubj|_|SpaceAfter=No
8|是|是|AUX|VC|_|9|cop|_|SpaceAfter=No
9|日本|日本|PROPN|NNP|_|0|root|_|SpaceAfter=No
10|和|和|CCONJ|CC|_|11|cc|_|SpaceAfter=No
11|美國|美國|PROPN|NNP|_|9|conj|_|SpaceAfter=No
12|，|，|PUNCT|,|_|9|punct|_|SpaceAfter=No
13|參與|參與|VERB|VV|_|17|csubj|_|SpaceAfter=No
14|會務|會務|NOUN|NN|_|13|obj|_|SpaceAfter=No
15|的|的|PART|DEC|_|13|mark:relcl|_|SpaceAfter=No
16|還|還|ADV|RB|_|17|mark|_|SpaceAfter=No
17|有|有|VERB|VV|_|9|parataxis|_|SpaceAfter=No
18|來|來|VERB|VV|_|38|acl:relcl|_|SpaceAfter=No
19|自|自|ADP|IN|_|20|case|_|SpaceAfter=No
20|加拿大|加拿大|PROPN|NNP|_|18|obl|_|SpaceAfter=No
21|、|、|PUNCT|EC|_|22|punct|_|SpaceAfter=No
22|中國|中國|PROPN|NNP|_|20|conj|_|SpaceAfter=No
23|、|、|PUNCT|EC|_|24|punct|_|SpaceAfter=No
24|丹麥|丹麥|PROPN|NNP|_|20|conj|_|SpaceAfter=No
25|、|、|PUNCT|EC|_|26|punct|_|SpaceAfter=No
26|德國|德國|PROPN|NNP|_|20|conj|_|SpaceAfter=No
27|、|、|PUNCT|EC|_|28|punct|_|SpaceAfter=No
28|日本|日本|PROPN|NNP|_|20|conj|_|SpaceAfter=No
29|、|、|PUNCT|EC|_|30|punct|_|SpaceAfter=No
30|挪威|挪威|PROPN|NNP|_|20|conj|_|SpaceAfter=No
31|、|、|PUNCT|EC|_|32|punct|_|SpaceAfter=No
32|俄羅斯|俄羅斯|PROPN|NNP|_|20|conj|_|SpaceAfter=No
33|、|、|PUNCT|EC|_|34|punct|_|SpaceAfter=No
34|英國|英國|PROPN|NNP|_|20|conj|_|SpaceAfter=No
35|和|和|CCONJ|CC|_|36|cc|_|SpaceAfter=No
36|美國|美國|PROPN|NNP|_|20|conj|_|SpaceAfter=No
37|的|的|PART|DEC|_|18|mark:relcl|_|SpaceAfter=No
38|代表|代表|NOUN|NN|_|17|obj|_|SpaceAfter=No
39|。|。|PUNCT|.|_|9|punct|_|SpaceAfter=No
# sent_id = test-s7
|| text = 其中參賽者年齡不可超過18歲（以當年7月1日為準），且必須就讀於中學校（Secondary School）。|||||||||
|-|-|-|-|-|-|-|-|-|-|
1|其中|其中|NOUN|NN|_|3|nmod|_|SpaceAfter=No
2|參賽|參賽|VERB|VV|_|3|compound|_|SpaceAfter=No
3|者|者|PART|SFN|_|4|nmod|_|SpaceAfter=No
4|年齡|年齡|NOUN|NN|_|6|nsubj|_|SpaceAfter=No
5|不可|不可|AUX|MD|_|6|aux|_|SpaceAfter=No
6|超過|超過|VERB|VV|_|22|advcl|_|SpaceAfter=No
7|18|18|NUM|CD|NumType=Card|8|nummod|_|SpaceAfter=No
8|歲|歲|NOUN|NNB|_|6|obj|_|SpaceAfter=No
9|（|（|PUNCT|(|_|10|punct|_|SpaceAfter=No
10|以|以|VERB|VV|Voice=Cau|6|parataxis|_|SpaceAfter=No
11|當年|當年|NOUN|NN|_|15|nmod|_|SpaceAfter=No
12|7|7|NUM|CD|NumType=Card|13|nummod|_|SpaceAfter=No
13|月|月|NOUN|NNB|_|15|clf|_|SpaceAfter=No
14|1|1|NUM|CD|NumType=Card|15|nummod|_|SpaceAfter=No
15|日|日|NOUN|NNB|_|17|nsubj|_|SpaceAfter=No
16|為|為|AUX|VC|_|17|cop|_|SpaceAfter=No
17|準|準|ADJ|JJ|_|10|ccomp|_|SpaceAfter=No
18|）|）|PUNCT|)|_|10|punct|_|SpaceAfter=No
19|，|，|PUNCT|,|_|22|punct|_|SpaceAfter=No
20|且|且|ADV|RB|_|22|mark|_|SpaceAfter=No
21|必須|必須|AUX|MD|_|22|aux|_|SpaceAfter=No
22|就讀|就讀|VERB|VV|_|0|root|_|SpaceAfter=No
23|於|於|ADP|IN|_|25|case|_|SpaceAfter=No
24|中|中|PART|PFA|_|25|nmod|_|SpaceAfter=No
25|學校|學校|NOUN|NN|_|22|obl|_|SpaceAfter=No
26|（|（|PUNCT|(|_|27|punct|_|SpaceAfter=No
27|Secondary|Secondary|X|FW|_|25|appos|_|_
28|School|School|X|FW|_|27|flat:foreign|_|SpaceAfter=No
29|）|）|PUNCT|)|_|27|punct|_|SpaceAfter=No
30|。|。|PUNCT|.|_|22|punct|_|SpaceAfter=No
# sent_id = test-s8
|| text = 同年9月7日，亞奧理事會主席薩巴赫親王為國際射擊中心主持銅像揭幕儀式。|||||||||
|-|-|-|-|-|-|-|-|-|-|
1|同年|同年|NOUN|NN|_|5|nmod|_|SpaceAfter=No
2|9|9|NUM|CD|NumType=Card|3|nummod|_|SpaceAfter=No
3|月|月|NOUN|NNB|_|5|clf|_|SpaceAfter=No
4|7|7|NUM|CD|NumType=Card|5|nummod|_|SpaceAfter=No
5|日|日|NOUN|NNB|_|17|nmod:tmod|_|SpaceAfter=No
6|，|，|PUNCT|,|_|17|punct|_|SpaceAfter=No
7|亞奧|亞奧|PROPN|NNP|_|12|nmod|_|SpaceAfter=No
8|理事|理事|NOUN|NN|_|9|compound|_|SpaceAfter=No
9|會|會|PART|SFN|_|12|nmod|_|SpaceAfter=No
10|主席|主席|NOUN|NN|_|12|nmod|_|SpaceAfter=No
11|薩巴赫|薩巴赫|PROPN|NNP|_|12|nmod|_|SpaceAfter=No
12|親王|親王|NOUN|NN|_|17|nsubj|_|SpaceAfter=No
13|為|為|ADP|IN|_|16|case|_|SpaceAfter=No
14|國際|國際|NOUN|NN|_|16|nmod|_|SpaceAfter=No
15|射擊|射擊|NOUN|NN|_|16|nmod|_|SpaceAfter=No
16|中心|中心|NOUN|NN|_|17|obl|_|SpaceAfter=No
17|主持|主持|VERB|VV|_|0|root|_|SpaceAfter=No
18|銅像|銅像|NOUN|NN|_|20|nmod|_|SpaceAfter=No
19|揭幕|揭幕|NOUN|NN|_|20|nmod|_|SpaceAfter=No
20|儀式|儀式|NOUN|NN|_|17|obj|_|SpaceAfter=No
21|。|。|PUNCT|.|_|17|punct|_|SpaceAfter=No
# sent_id = test-s9
|| text = 這些電話經交換機處理，使用的媒介包括海底電纜、人造衛星、無線電、光纖及IP電話（VOIP）。|||||||||
|-|-|-|-|-|-|-|-|-|-|
1|這些|這些|DET|DT|_|2|det|_|SpaceAfter=No
2|電話|電話|NOUN|NN|_|6|nsubj|_|SpaceAfter=No
3|經|經|ADP|IN|_|5|case|_|SpaceAfter=No
4|交換|交換|VERB|VV|_|5|compound|_|SpaceAfter=No
5|機|機|PART|SFN|_|6|obl|_|SpaceAfter=No
6|處理|處理|VERB|VV|_|11|advcl|_|SpaceAfter=No
7|，|，|PUNCT|,|_|11|punct|_|SpaceAfter=No
8|使用|使用|VERB|VV|_|10|acl:relcl|_|SpaceAfter=No
9|的|的|PART|DEC|_|8|mark:relcl|_|SpaceAfter=No
10|媒介|媒介|NOUN|NN|_|11|nsubj|_|SpaceAfter=No
11|包括|包括|VERB|VV|_|0|root|_|SpaceAfter=No
12|海底|海底|NOUN|NN|_|13|nmod|_|SpaceAfter=No
13|電纜|電纜|NOUN|NN|_|11|obj|_|SpaceAfter=No
14|、|、|PUNCT|EC|_|17|punct|_|SpaceAfter=No
15|人|人|NOUN|NN|_|16|nsubj|_|SpaceAfter=No
16|造|造|VERB|VV|_|17|amod|_|SpaceAfter=No
17|衛星|衛星|NOUN|NN|_|13|conj|_|SpaceAfter=No
18|、|、|PUNCT|EC|_|20|punct|_|SpaceAfter=No
19|無線|無線|VERB|VV|_|20|compound|_|SpaceAfter=No
20|電|電|PART|SFN|_|13|conj|_|SpaceAfter=No
21|、|、|PUNCT|EC|_|22|punct|_|SpaceAfter=No
22|光纖|光纖|NOUN|NN|_|13|conj|_|SpaceAfter=No
23|及|及|CCONJ|CC|_|25|cc|_|SpaceAfter=No
24|IP|IP|X|FW|_|25|nmod|_|SpaceAfter=No
25|電話|電話|NOUN|NN|_|13|conj|_|SpaceAfter=No
26|（|（|PUNCT|(|_|27|punct|_|SpaceAfter=No
27|VOIP|VOIP|X|FW|_|25|appos|_|SpaceAfter=No
28|）|）|PUNCT|)|_|27|punct|_|SpaceAfter=No
29|。|。|PUNCT|.|_|11|punct|_|SpaceAfter=No
# sent_id = test-s10
|| text = 《圓月彎刀》為古龍晚期作品，1976年6月至1978年5月，香港〈武俠春秋〉282至348期斷續連載，原名《刀神》，1978年漢麟出版改名《圓月彎刀》。|||||||||
|-|-|-|-|-|-|-|-|-|-|
1|《|《|PUNCT|(|_|5|punct|_|SpaceAfter=No
2|圓|圓|PART|PFA|_|4|case:pref|_|SpaceAfter=No
3|月|月|NOUN|NN|_|4|compound|_|SpaceAfter=No
4|彎|彎|PART|PFA|_|5|nmod|_|SpaceAfter=No
5|刀|刀|NOUN|NN|_|32|nsubj|_|SpaceAfter=No
6|》|》|PUNCT|)|_|5|punct|_|SpaceAfter=No
7|為|為|AUX|VC|_|10|cop|_|SpaceAfter=No
8|古龍|古龍|PROPN|NNP|_|10|nmod|_|SpaceAfter=No
9|晚期|晚期|NOUN|NN|_|10|nmod|_|SpaceAfter=No
10|作品|作品|NOUN|NN|_|32|advcl|_|SpaceAfter=No
11|，|，|PUNCT|,|_|20|punct|_|SpaceAfter=No
12|1976|1976|NUM|CD|NumType=Card|13|nummod|_|SpaceAfter=No
13|年|年|NOUN|NNB|_|15|clf|_|SpaceAfter=No
14|6|6|NUM|CD|NumType=Card|15|nummod|_|SpaceAfter=No
15|月|月|NOUN|NNB|_|20|nmod|_|SpaceAfter=No
16|至|至|CCONJ|CC|_|18|cc|_|SpaceAfter=No
17|1978|1978|NUM|CD|NumType=Card|18|nummod|_|SpaceAfter=No
18|年|年|NOUN|NNB|_|15|conj|_|SpaceAfter=No
19|5|5|NUM|CD|NumType=Card|20|nummod|_|SpaceAfter=No
20|月|月|NOUN|NNB|_|32|nmod:tmod|_|SpaceAfter=No
21|，|，|PUNCT|,|_|32|punct|_|SpaceAfter=No
22|香港|香港|PROPN|NNP|_|25|nmod|_|SpaceAfter=No
23|〈|〈|PUNCT|(|_|25|punct|_|SpaceAfter=No
24|武俠|武俠|NOUN|NN|_|25|nmod|_|SpaceAfter=No
25|春秋|春秋|NOUN|NN|_|32|nsubj|_|SpaceAfter=No
26|〉|〉|PUNCT|)|_|30|punct|_|SpaceAfter=No
27|282|282|NUM|CD|NumType=Card|30|nummod|_|SpaceAfter=No
28|至|至|CCONJ|CC|_|29|cc|_|SpaceAfter=No
29|348|348|NUM|CD|NumType=Card|27|conj|_|SpaceAfter=No
30|期|期|NOUN|NNB|_|25|conj|_|SpaceAfter=No
31|斷續|斷續|ADV|RB|_|32|advmod|_|SpaceAfter=No
32|連載|連載|VERB|VV|_|0|root|_|SpaceAfter=No
33|，|，|PUNCT|,|_|32|punct|_|SpaceAfter=No
34|原名|原名|NOUN|NN|_|36|nmod|_|SpaceAfter=No
35|《|《|PUNCT|(|_|36|punct|_|SpaceAfter=No
36|刀神|刀神|NOUN|NN|_|32|obj|_|SpaceAfter=No
37|》|》|PUNCT|)|_|36|punct|_|SpaceAfter=No
38|，|，|PUNCT|,|_|32|punct|_|SpaceAfter=No
39|1978|1978|NUM|CD|NumType=Card|40|nummod|_|SpaceAfter=No
40|年|年|NOUN|NNB|_|42|nmod:tmod|_|SpaceAfter=No
41|漢麟|漢麟|PROPN|NNP|_|42|nsubj|_|SpaceAfter=No
42|出版|出版|VERB|VV|_|32|parataxis|_|SpaceAfter=No
43|改名|改名|VERB|VV|_|42|mark|_|SpaceAfter=No
44|《|《|PUNCT|(|_|48|punct|_|SpaceAfter=No
45|圓|圓|PART|PFA|_|47|case:pref|_|SpaceAfter=No
46|月|月|NOUN|NN|_|47|compound|_|SpaceAfter=No
47|彎|彎|PART|PFA|_|48|nmod|_|SpaceAfter=No
48|刀|刀|NOUN|NN|_|42|obj|_|SpaceAfter=No
49|》|》|PUNCT|)|_|48|punct|_|SpaceAfter=No
50|。|。|PUNCT|.|_|32|punct|_|Space




# New Features!

  - Import a HTML file and watch it magically convert to Markdown
  - Drag and drop images (requires your Dropbox account be linked)


You can also:
  - Import and save files from GitHub, Dropbox, Google Drive and One Drive
  - Drag and drop markdown and HTML files into Dillinger
  - Export documents as Markdown, HTML and PDF

Markdown is a lightweight markup language based on the formatting conventions that people naturally use in email.  As [John Gruber] writes on the [Markdown site][df1]

> The overriding design goal for Markdown's
> formatting syntax is to make it as readable
> as possible. The idea is that a
> Markdown-formatted document should be
> publishable as-is, as plain text, without
> looking like it's been marked up with tags
> or formatting instructions.

This text you see here is *actually* written in Markdown! To get a feel for Markdown's syntax, type some text into the left window and watch the results in the right.

### Tech

Dillinger uses a number of open source projects to work properly:

* [AngularJS] - HTML enhanced for web apps!
* [Ace Editor] - awesome web-based text editor
* [markdown-it] - Markdown parser done right. Fast and easy to extend.
* [Twitter Bootstrap] - great UI boilerplate for modern web apps
* [node.js] - evented I/O for the backend
* [Express] - fast node.js network app framework [@tjholowaychuk]
* [Gulp] - the streaming build system
* [Breakdance](https://breakdance.github.io/breakdance/) - HTML to Markdown converter
* [jQuery] - duh

And of course Dillinger itself is open source with a [public repository][dill]
 on GitHub.

### Installation

Dillinger requires [Node.js](https://nodejs.org/) v4+ to run.

Install the dependencies and devDependencies and start the server.

```sh
$ cd dillinger
$ npm install -d
$ node app
```

For production environments...

```sh
$ npm install --production
$ NODE_ENV=production node app
```

### Plugins

Dillinger is currently extended with the following plugins. Instructions on how to use them in your own application are linked below.

| Plugin | README |
| ------ | ------ |
| Dropbox | [plugins/dropbox/README.md][PlDb] |
| GitHub | [plugins/github/README.md][PlGh] |
| Google Drive | [plugins/googledrive/README.md][PlGd] |
| OneDrive | [plugins/onedrive/README.md][PlOd] |
| Medium | [plugins/medium/README.md][PlMe] |
| Google Analytics | [plugins/googleanalytics/README.md][PlGa] |


### Development

Want to contribute? Great!

Dillinger uses Gulp + Webpack for fast developing.
Make a change in your file and instantaneously see your updates!

Open your favorite Terminal and run these commands.

First Tab:
```sh
$ node app
```

Second Tab:
```sh
$ gulp watch
```

(optional) Third:
```sh
$ karma test
```
#### Building for source
For production release:
```sh
$ gulp build --prod
```
Generating pre-built zip archives for distribution:
```sh
$ gulp build dist --prod
```
### Docker
Dillinger is very easy to install and deploy in a Docker container.

By default, the Docker will expose port 8080, so change this within the Dockerfile if necessary. When ready, simply use the Dockerfile to build the image.

```sh
cd dillinger
docker build -t joemccann/dillinger:${package.json.version} .
```
This will create the dillinger image and pull in the necessary dependencies. Be sure to swap out `${package.json.version}` with the actual version of Dillinger.

Once done, run the Docker image and map the port to whatever you wish on your host. In this example, we simply map port 8000 of the host to port 8080 of the Docker (or whatever port was exposed in the Dockerfile):

```sh
docker run -d -p 8000:8080 --restart="always" <youruser>/dillinger:${package.json.version}
```

Verify the deployment by navigating to your server address in your preferred browser.

```sh
127.0.0.1:8000
```

#### Kubernetes + Google Cloud

See [KUBERNETES.md](https://github.com/joemccann/dillinger/blob/master/KUBERNETES.md)


### Todos

 - Write MORE Tests
 - Add Night Mode

License
----

MIT


**Free Software, Hell Yeah!**

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>
