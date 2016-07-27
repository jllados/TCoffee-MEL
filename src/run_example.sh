echo -e ""
echo -e "\t+----------"
echo -e "\t| Jordi Lladós Segura"
echo -e "\t| Memory-Efficient Consistency Library for Multiple Sequence Alignment Tools"
echo -e "\t+----------"
echo -e ""
echo -e "this script launch t_coffee with additional parameters."

#INPUT
SEQ=../example/BB11001.tfa
TREE=../example/BB11001.dnd
REF=../example/BB11001.msf

#OUTPUT
FORMAT=msf_aln
ALN=test001.msf

#PARAMETERS
ENTRIES=1000
EX=very_fast_triplet
DP=myers_miller_pair_wise

./t_coffee $SEQ -usetree=$TREE -extend_mode=$EX -dp_mode=$DP -outfile=$ALN -output=$FORMAT -maxlib=$ENTRIES
