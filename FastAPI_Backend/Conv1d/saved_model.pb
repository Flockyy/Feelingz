??!
?)?)
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68?? 
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*%
shared_nameembedding/embeddings
?
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*!
_output_shapes
:???*
dtype0
|
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*
shared_nameconv1d/kernel
u
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*$
_output_shapes
:??*
dtype0
o
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv1d/bias
h
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes	
:?*
dtype0
?
conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv1d_1/kernel
y
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*$
_output_shapes
:??*
dtype0
s
conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv1d_1/bias
l
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes	
:?*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
?
predictions/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*#
shared_namepredictions/kernel
z
&predictions/kernel/Read/ReadVariableOpReadVariableOppredictions/kernel*
_output_shapes
:	?*
dtype0
x
predictions/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namepredictions/bias
q
$predictions/bias/Read/ReadVariableOpReadVariableOppredictions/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1108*
value_dtype0	
|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*!
_output_shapes
:???*
dtype0
?
Adam/conv1d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*%
shared_nameAdam/conv1d/kernel/m
?
(Adam/conv1d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/m*$
_output_shapes
:??*
dtype0
}
Adam/conv1d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/conv1d/bias/m
v
&Adam/conv1d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv1d_1/kernel/m
?
*Adam/conv1d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/m*$
_output_shapes
:??*
dtype0
?
Adam/conv1d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv1d_1/bias/m
z
(Adam/conv1d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
??*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/predictions/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_nameAdam/predictions/kernel/m
?
-Adam/predictions/kernel/m/Read/ReadVariableOpReadVariableOpAdam/predictions/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/predictions/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/predictions/bias/m

+Adam/predictions/bias/m/Read/ReadVariableOpReadVariableOpAdam/predictions/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*!
_output_shapes
:???*
dtype0
?
Adam/conv1d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*%
shared_nameAdam/conv1d/kernel/v
?
(Adam/conv1d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/v*$
_output_shapes
:??*
dtype0
}
Adam/conv1d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/conv1d/bias/v
v
&Adam/conv1d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv1d_1/kernel/v
?
*Adam/conv1d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/v*$
_output_shapes
:??*
dtype0
?
Adam/conv1d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv1d_1/bias/v
z
(Adam/conv1d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
??*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/predictions/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_nameAdam/predictions/kernel/v
?
-Adam/predictions/kernel/v/Read/ReadVariableOpReadVariableOpAdam/predictions/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/predictions/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/predictions/bias/v

+Adam/predictions/bias/v/Read/ReadVariableOpReadVariableOpAdam/predictions/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes	
:?~*
dtype0*??
value??B???~BiBfeelBandBtoBtheBaBofBthatBfeelingBmyBinBitBlikeBwasBsoBforBimBbutBmeBisBhaveBwithBthisBamBnotBaboutBbeBasBonByouBatBwhenBjustBorBallBmoreBbecauseBdoBcanBupBheBbyBtBreallyBveryBareBbeenBifBknowBherBhadBoutBwhatBtimeBfromBhowBmyselfBlittleBtheyBgetBnowBwillBbeingBpeopleBwouldBsomeBhisBsheBsBwhoBwantBoneBthemBhimBanBstillBevenBthinkBthereBweBiveBlifeBmuchBbitBmakeB	somethingBitsBnoBgoingBcouldBloveBdontBwayBthingsBmBtooBthanBdayBtheirBintoBbackBgoBhasBwhichBoverBgoodBprettyBalwaysBthenBdonBrightBneedBwereBonlyBsayBdidByourBalsoBtheseBseeBotherBfeelsBworkBshouldBfeelingsBtodayBafterBagainBmostBaroundBourBmadeBfeltBthoughBcantBdownBthroughBhereBgotBneverBanyBwellBquiteBlessBwhereBdidntBdoingBhavingBhappyBthoseBsomeoneBmanyBlookBhelpBmakesBoffBeveryBenoughBfindBsaidBhomeBawayBdaysBsureBwithoutBpersonBcomeBwhyBlotBanythingBeverBtakeBbeforeBgettingBsuchBkindBbetterBwhileB
everythingBtryingBleftBownBnewBlastBstartedBfirstBfriendsBworldBactuallyB	sometimesBhttpBfewBthoughtBthingBfamilyByearBletBratherBableBrememberBtryBsinceBweekBlongBkeepBusBhrefBbadBtimesBfaceBreadBillBexcitedBtwoBsadBoftenBendBmayBtellBplaceBaloneBwriteBmakingBalreadyBmightBsameBheartBmorningBgiveBgodByetBstressedBeveryoneBblogBstartBhopeByearsBpartBlookingBangryBwentBanotherBhardBdidnBputBthinkingBnothingBdoneBonceBwantedBothersBoldBmomentBweirdBsweetBguessBstrangeBhateBtalkBlovedBidBnightBeachBpointBoverwhelmedBnextBmustBfriendBanxiousBwholeBtoldBhurtBanyoneBstopB
especiallyBblessedBamazingBalmostBselfBlostBpostBschoolBhatedBpainBgreatBfoundBfactBagitatedBtowardsBfreeBacceptedBmaybeBdoesBcoldBslightlyBsenseB	importantBelseBbodyB	depressedBafraidBveBeyesB
completelyBuntilBpastBshareBrealBreBmanBleastBbecomeBwritingB
understandB
passionateBheadBbelieveBuseBtiredBinsideBhelplessBgirlBfarBwasntBnervousBmindBleaveBbookBbestBusedBstartingBsleepBlatelyBguiltyBcareBstupidBsortBcameBmeanBstrongBsorryBreasonBliveB
supportingBgladBcoolBcomingBthatsBprobablyBlonelyBmonthsBbigBwordsBtakingBparticularlyBlowBlookedBclassBworkingBthankfulBspecialBscaredBhouseBgenerousBduringBchildBbothBwishBshowBlovingBkidsB	confidentBcomfortableBampB	wonderfulBreadingBokBcallBwokeBthoughtsBsayingBproudBperfectB
experienceBcannotBbelovedBwrongBwomenBtotallyBfineBtrulyBmissBjobBfullBfinallyB	extremelyB	emotionalBchildrenBawkwardBadmitBwontBmotherB	miserableBknewB
frustratedBbedBtorturedBsafeBlivingBstuffBrunBmissedBdecidedBchangeBwomanBwalkBhotBusuallyBmoneyBmatterBhoursB	exhaustedB	terrifiedBspentBseemBlongerBknowingBenjoyBcontentBamazedBtogetherBsideBparentsBoffendedBmadBgivingBtookBterribleBsmallB	situationBdoesntBcontrolBaskedB	surprisedB	resentfulBluckyBinspiredBhandBenergyBembarrassedBcloseBbetweenBunhappyB
successfulBllBinsecureBeatBbotheredBaskByoungBweeksBstoryBseemsBsawBpositiveBmoveBlovelyBlikedBinsteadBhorribleBbraveBashamedBusefulBhusbandBhearBfutureBeitherBcuriousBrushedBrunningBroomBrestB	irritatedBdBcertainBbeganBanymoreBshittyBkindaB	irritableBhaventBfunnyBdisappointedBcreativeBcomesBbabyBwhetherBweekendBunsureBuncomfortableBsuperBsomewhatBideaBfunBemptyBdumbBdullBcaringBannoyedBshakenB	satisfiedBhoweverBhomesickBhappenBgroggyBfoodB
devastatedBawfulBagainstBwearBvainBsitBrichBpopularBntBdiscouragedB
determinedBconfusedBassuredBagoBsittingBselfishBpleasedBmusicBheartbrokenBgreedyBdeepBcuteBcourseBcalmBunderBsoonBsomehowBsincereBpunishedBpleasantBneededBinsultedBhesBhairBguyBgorgeousBcauseB
absolutelyBtalkingBpatheticBnumbBfriendlyBfaithfulB	differentBwatchBvaluableBuselessB	uncertainBturnBthreeBtheresBsickBseeingB	reluctantBrelaxedBopenBniceBjealousB
frightenedB	energeticByoureB
vulnerableBviolentBtrustBtalentedBsmartBsimplyBpettyBjoyfulBisolatedBhonestlyB	dangerousBcouldntB	convincedBburdenedBbitterBapprehensiveBwonderBthrilledBtakenBsongBshyBshesBrelationshipBreadyBpreciousBpissedBneedsBintimidatedB	impressedBgirlsBfestiveBcrankyB	yesterdayBwaysBwantingBupsetBunimportantBsympatheticBsuddenlyBsecondB	pressuredBmomBlistenB	lethargicBhourBhighBfuckedBfrontBfearBexactlyB
definitelyB	beautifulBachingB
worthwhileBwhateverBvaluedBtroubledBtonightBromanticBmineBhopelessBgloomyBdrainedBdamagedBcoupleBcarBbuyBbeatenBwwwB	worthlessBwatchingBvirtuousBtenderBsupportBsatBpeacefulBmenB
melancholyBlongingBinnocentBignoredBhalfBeagerBdissatisfiedBdealBboringBwaitingBvoiceB	unwelcomeB
threatenedBstayB
productiveBnaughtyBmoodBlousyBlivesBhopefulBgentleBecstaticBdivineBcontinueBbrokeBbehindBwrongedBwheneverBwakeBuglyBtriedBskinBshockedBrestlessB	respectedBrealizedBintelligentB
inadequateB	impatientBhonoredBguysBgivenBemotionsBbooksBwaitBrudeBrejectedB	regretfulBparanoidB
optimisticB	nostalgicBlaterB
humiliatedBgoneBgetsBfearfulB
distractedB	disgustedBdirtyBangerBalthoughBweightBtypeBtrueBsupposedBsmileBsetBrelievedBproblemsBhonouredBgrumpyBcryBcleverBboyBturnedBtrustingBperhapsBneedyBmellowBloyalBhappenedBwaterBsuperiorBrealizeBplanBonesBnormalBmetBmeetBlameBeatingBdisheartenedBcrappyBblankBbitchyBadventurousBwouldntBunfortunateB	sufferingBshakyBresolvedBoutsideBlistBleavingBjoyBinvigoratedB
incrediblyBhumanBhornyBhesitantBforwardBfabulousBdeprivedB	delightedBdefeatedB	christmasBcalledBartisticB
acceptableBabusedBwordBwithinB
supportiveBstateBspendBohBlistlessBisntBfourBfondB	disturbedBcountryB	contentedBwasnBvitalBtopBtellingBsupposeBstyleBstudentsB
rebelliousBminutesBlightBholdB
constantlyBcommentsBworriedBwifeBwelcomedBwalkedB
ungratefulBterrificBspeakBsaysBpersonalBorderBmonthBhandsB
excitementB	deliciousBbreakBbeginBartBamusedBalongBtowardBsummerB	skepticalBseemedBmomentsBlackBgratefulBdoomedBdamnB
charactersBcarefreeBunlovedBtearsBteamBstandBshitBplayBopportunityBlossBloseBlearnBgroupBgaveBgameBfranticBfatherB	fantasticBfakeBdespiteBchanceBcasualBappreciativeBwalkingBuponBtouchBsmugBredB	reassuredB
privilegedBpossibleBpartyBnameBmovingBlearningBlearnedBetcBdueBdoesnBdesireBdelicateBacrossBwantsBusingB
unpleasantBstomachBsingleBseveralBrottenBreturnBpublicBpossiblyBpleaseBpieceBlineBhimselfBheardBhealthyBgoesBfinishBenviousBchurchBbecameBarmsBworthBworkedBwonBtripB
suspiciousBstubbornBstepBphoneBnumberBlooksBhonestB	generallyBfoolishB
discontentBdeathBcrazyBamountByesB
triumphantBtomorrowB
submissiveBsentimentalBseenB	questionsBputtingBpicturesBmeansBlateBjadedBfuckingBeasilyBdisillusionedBdazedBdarkB	beginningBwearingBspendingBpressureBmanagedBhitB
connectionBchoiceBcaseBbreathBbB	attentionBairBactBworseB
themselvesBstunnedBstressBsonB	seriouslyBrecentlyBnewsBmovieBmostlyBkeenBimagineBhelpingBgottenB	glamorousBfocusBfairlyBdreamBdecisionBdecideBdadBwroteButterlyBtragicBsocialBraceBquicklyB
physicallyBpeaceBpayBmessyBfindingB
expressionBexplainBexpectedBexceptBeverydayBeasyBdoorBdaughterBcutB	communityBbringBanywayByourselfBworryB	wonderingBwhiteBtruthBthrowBsunBspiritBsoundBshortBreachBpickBmissingBmeetingB	listeningB	knowledgeBkeptBhealthBgeneralBeveningBendedBearlyB
distressedBbeyondBareaBaheadBageBaddBabilityBwhomBwhatsBwarmBtendBstuckBsisterB
remorsefulBofferBnegativeBmentionBlieBlevelBlargeBladyBkidBkeepingBideasBhellBhatefulB	happinessBguiltBgriefBfullyBexpressBdoubtfulBdeeplyBcollegeBclothesBcityBbrainBallowedBstronglyBslowlyBsleepingBsexBreasonsBprojectBplayfulBpictureBontoBlordBissuesBfinishedBfeetBenjoyedBemotionallyBdrinkBdailyBcryingB	certainlyBbusyBblueBblackBawareB
appreciateBanxietyBtrainingBstoriesBsrcBseasonBsadnessBresultsBrespectBreceivedBphysicalBofficeBnearlyBmouthBknownB
indecisiveBhugeBherselfBhappensBfurtherBfacebookBfBentertainedBenjoyingB	difficultBdescribeBconsiderBcompleteBcommentBboysB	boyfriendBbloggingBbirthdayBbetrayedBbecomingBanswerBusualBstrengthBspaceBsociableBshoesBpullBpregnantB
personallyBpassB
particularBnatureBmediaBlotsBlikelyBjollyBitselfB	inhibitedB	heartlessBgrouchyBgonnaBforgetBfiveBfansBextraBeffortBearlierBdoubtB
differenceBcreateBcomputerBchooseBcharmingBaskingBweatherBunableBturningBtheyreBterriblyBsongsB
situationsBsimpleBshouldntBremindBreadersBquestionBprocessBproblemBpassedBissueBisnBidioticBhorrorBhavenBgroundB	followingBfilledBfallBdressB
complacentBcausedBcallingBallowBwatchedBuBtitleBthankBseriesBpurposeBpostingBpostedBplayingBpaperBokayBnorBmemoriesBlivedBlettingBlazyBinterestingBiceBhostileBhideBharderB	happeningBfuriousBfitBeyeBexerciseBeventsBentirelyBentireB
distraughtBdisquietBdismayBdinnerBdiedBcouldnBconversationBwrittenBweddingBwallBviewBtalkedBsystemB
strugglingBstartledBsorrowBsixB	sarcasticBpushBpowerBpostsB	obnoxiousBminuteBmembersBlosingBlaughBhurtsBhearingBgiftBfaithBexpectBdanceBcrapBcompassionateBcompanyBbroughtBbouncyBanguishBwannaBthBstoppedBsoulBshouldnBsharingBshakeBsexualBpoorBnoticedBnoticeBnonBmrBmeantBlegsBhopingBholidayBexperiencedBdeserveBdeadBcurrentBcolorBcleanB	characterB	challengeB	breakfastBbitchBbecomesB	assaultedB	afternoonBwillingBtvBtakesBtadBsundayBstruggleBsmellBshamedBproductsBpresenceBprayBpathBonlineBolderBmessageBknowsBjourneyBimmediatelyBimgBheatBgrowingBgraciousBfigureBfavoriteBfatBelegantBchangesBcaughtBbusinessBblamedBavoidBanybodyBaboveBworksBwinterBwinBwhoseBweepyBuptightBtreatBtotalB
throughoutBtasteBtableBsuccessBstandingBsimilarBserviceBsceneBrealisedBquietBprogressBphotosBparentBnormallyBnearBnBmentallyBlocalBlivelyBletterBleavesBleadBkissBinternetBfuckBfreedomBfingersBfilmBfabBeventBeBdogBdieBdevotedBdelightBdateB	concernedBchangedBcareerBapartBannoyingB	annoyanceBamongBworkersBvisitBunlessB
universityBtownBthusBstudyingBstoodBstageBspotBsecretBsaveBroadBresultBremainBrealityBranBpracticeBpiecesBpBnoneBmumBmiddleBmentalBmarriedBmainBlipsBlayBinterestBinformationB	horrifiedBgrowBgoalBfollowBfolksBfearlessBenglishBemotionBeffectsBearthBdropBdreamsB
depressionBcoverB	continuedBcomfortBclearBchoicesBcatchBbrotherBbrokenBboughtBboredB
bewilderedBbeautyBbadlyBawesomeBauthorBattemptBateBappreciatedBanywhereB
afterwardsBacceptByoungerByeahBvictimBtreeBthanksBtextBtestBstraightB	somewhereBsocietyBsillyBshoppingBshopBseriousB	repressedBrelationshipsBregretBprideB	pregnancyB	perfectlyBpartnerBoverallB	obviouslyBnobodyBmovedBlovesBlessonsBkeepsBinvolvedB
interestedB	indignantBhighlyB	genuinelyBfridayBfightingBfightBfaultBfallingBfacesBexperiencesBenglandBdriveBdoctorBdetailsBcultureBcrossBcreatedBconsiderateB
confidenceBcommonBclubB	chocolateBcBblogsBbirthBaddedBacheBwriterBweakBtillBthirdBteacherBsufferBsubjectB	sorrowfulBsoreBsociallyBshutBsharedBsearchBresponseBrarelyBprovideBpriceBpresentBpassingBoutragedB
neglectfulBmondayBmilesBmeaningBmanageBlolBledBlanguageBholidaysBholdingBhistoryBhangBgutBgracefulB
governmentBformBfloorBexasperationB
eventuallyBdistanceB	directionBdealingBcountBconstantBchestBcheckBcatBcardBburdenBbearBbabiesBallowingBaliveBxBworkoutBwindowBweveBwBunderstandingBtruthfulBtreatedBtimidBthanksgivingBtargetBsympathyBstudyBstudentBsoftBslowBshowsBresignedBreportBrelBrealiseBreaderBrainBprogramBpoetryBplacesBphotoBperiodBpagesBpageB	otherwiseBoddBnorthBnaturalBmixB	mentionedBmarriageBlyingBlinkBlegBjoinBjesusBincreasinglyB	hopefullyBhopedBgtBgrewBgivesBgamesBfreshBforeverBfixBfellowBfanBfailureBfailBexamsBequallyBenvironmentBenragedBedgeB
discoveredB
despondentBdespairB	currentlyBcosBconsideringBclosedBclearlyB	childhoodBchairBcastBbreatheBbloodBblahBbewildermentBbesideB	basicallyBalarmedBactionsBaccidentBwhilstBwakingBvoteBuniverseBtypingBtopicBtermsBtellsBtearBteaBswearB	struggledBstrongerBstayingBstaredBspeakingBsomebodyBskillsBsingBshallBsentB	sensitiveBrideBresearchBreliefBrandomBraisedBpulledBproperlyBprojectsBprofessionalBpositionBpopBpickedBperformanceBpassionBpartsBoBnoteBneuroticBmarkBletsBlessonBkitchenBimageBidiotBhelpsBhelpedBhealingBheadedBhardlyBhandleBhB
girlfriendBgainBfootBfinalBfastBepisodeBemoBeffortsB	educationBeasierBeaseBdrivingBdearBcrowdBcriedBcozBcookBconvinceBcontactBconsiderableBchosenBbusBbunchBbringsBbringingBbotherBbikeBbiggerBbasedBbarelyBbagBawakeBaudienceBattitudeBastonishmentBarmBarentBanswersBagreeB
aggravatedB	adventureByouveBwritersBviewsBvideoButterBtwitterB	treatmentB	treasuredBtoughBthroatB	thereforeBteachBtalksBsweatBsuddenBsuckBstreetB	strangelyBstoreBsoundsBskyBsizeBshapeBseaBsandBrockB	recognizeBrBpowerfulBpoliceBplanningBpityBpairBoilBneitherBneckBmemoryBmealBlondonB	literallyBlighterB	lifestyleBhomeworkBheyBheartsBgymB	gratitudeBgoalsBgiftsBgainedBforgiveBforcedBfocusedBfingerBfearsBfamiliarBexperiencingBexasperatedBembraceBemailBeffectBdramaBdesignBdegreeB	decisionsBdatingBcupB
consideredB	consciousBcloserBcaresBcardsBbuyingBbuildBbottomBbornBbeatBbeachBartistBareasB	anguishedBamericaBalotBachievedBworthyBworstBwimpyBwideBwhineyBwaveBwastedBversionBurgeBunworthyBunwantedB
understoodBtravelBtouchedBtoolBtinyBthinBtenBteenagerBteachingBteachersBstickBstayedB	statementBstartsBstBspringBsmilingBsiteBsilenceBshowingBshowerBshedBshameBsettleBsaturdayBrunsBroutineBroundBroleBreviewBreplyBremindedBreleaseBreflectBrecordBradioBproductBprepareB	potentialB	politicalBpointsBplentyBplayedBplansBpicsBperspectiveBpersonalityBpaceBoverwhelmingBoverlyBopinionBobviousBnightsB	necessaryBmusclesBmournfulBmoroseBmistakesBmatchBmasterBlunchBlividBlettersBlaughedBintendedB	instantlyBhugBhospitalBhidingBhellipBheavyBheadacheBhangingBhadntBgayB	forgottenBfootballBflyingBfamiliesBfairBexamBescapeBdrawBdietBdespondencyBdesperatelyB	desperateBcreamBcoughBconfessBcomplainingBcoffeeBcausingBbuildingBbrownBbossBbillBbalanceBassBasideBarrivedBapproachBappalledB	amusementBadmittedBadmiredBactionBaccomplishedByogaB	wednesdayBwarmthBwallsBvisionB
victimizedBviciousBvariousBvalueBtoneB
thoroughlyBtermBsurpriseBsplendidBspeechBspecificBsortsBsolutionBsmokeBsilentBsignBsightBshiftBsendBsecureBriseBrepeatB
rememberedBreceiveBreactionBquitBpullingBpreferBpmBpinkBpatientBpaintingBpaintBoutfitB	ourselvesBopeningBmoviesBmountainBmistakeBmemberBmaleBmakeupBmaintainBlyricsBlistenedBlawBlaundryBladiesBkickBkeyBjumpBitemsBinternationalBintenseB
incredibleB	includingBimagesBignoreBhungryBhahaBgroupsBgreenBgreaterBglassBgiantBgardenBfollowedBfireBfillBfabricBextentBexBentryBdroveBdogsBdareBcycleBcouchBconversationsBcomplainBcolorsBcircumstancesB	christianBcharmedBcancerBcallsBbrushBbritishBbrightBbodiesBbenefitBbelongBbellyBbandB
backgroundB	availableBamericanBadultBadmireBactualBachieveBwornBwindBwhosBwaitedBvibeBvaluesBvacationBunnecessaryBuncleBunBtroubleBtoesBtensionB	supportedBstrangerBspreadB	spiritualBsooBsmiledBsidesB	shouldersBshotBsexyBsessionB	screamingBscheduleBscentBscaleBsakeBrollBringBreturnedBreminderBrelaxBrelateBregularBrecentBrecallBreachedBpursueB	providingBprotectBprinceBpretendBpoundsBplusBplotBpeoplesBpayingBpatientsBpartlyBpainedBoughtBopinionsBoccasionBnapB
motivationBmothersBmindsBmildBmarketBmajorBlevelsBleadingBkillingBirateBindustryBindividualsB
individualBimproveB
importanceBimpactBillnessBhumorousBhumansBhopesBhomesBhigherBheightBhealBhatBgrownBgradeBgoogleBgigglyBflowersB	finishingBfieldBfellBfeedBfasterBfashionBexploreBexpectationsBexcitingBendingBelationBelatedBearBdroppedBdrinkingBdismayedBdiscussionsBdevelopBdesolateBcuzBcreatingBcornerBcompareBclothingB	classroomBcheatedBcarryBcameraBburstB	breathingBbrandBbirdBbegunBbasisBbarBbankBarenBanimalsBangeredBadviceBactiveB	abilitiesByBwouldnBwishingBwiseBwineBwildBwetBwelcomeBwasteBvintageBunprotectedBuniqueBukBtrainBtrackBtongueBtonBtightBthinksBthickBsuspectBsunshineBsugarBsufferedBsucceedBsubjectsBstarsBspitefulBsomeonesBsluttyBsleptBsighBshowedBshoulderBshookBshockBshirtBsettingBseatBscoreBsafetyBroseBriskBrisingBresponsibleBresponsibilitiesBremoveB	religiousBreligionBrelatedB	regardingBrecipeBrealizationBquoteBquickBquestioningBqualityBprivateB	presidentB	presentedBpreBprayerBpossibilityB
pleasantlyBplayerBplannedBplaneBplainB	petrifiedBpeersBparkBpainsBoutcomeBoppositeBopenedBoccasionallyB
obligationBneedingBmovementB	motivatedBmixtureBmiserablBmessBmedicineBmannerBmanagerB	ludicrousBloudB
lonelinessBlikesBliftBkickedBjusticeBjokeBinspirationB
impressionBhurtingBhorseBholeBhittingBhillBhiBhandsomeBhandledBhadnBgrantedBgrandBgottaBgoodsBgodsBglimpseBfrustrationBfruitB
friendshipBflightB	financialBfemaleBfailedBfacB	expensiveBexcuseB	exasperatBexampleB
everywhereB	everybodyBequalBenteredBendsBenBeatenBdyingBdrunkBdrBdoorsB
discussingBdisconsolateBdisadvantagedBdespisedBdespaiB	describedBdejectedBcustomerBcrisisBcoreBcopeB
contributeBconsistentlyB
conferenceB
compassionBcomparedBcommunicateB
colleaguesBcoBcircleBchristBcheerB	celebrateBcausesBcaredBcapableBcakeBbuttonBbreezeBbreakingBbookmarkBbloggersBblockB	blessingsBbetBbeerBbeatingBawfullyBauntBasleepBarmyB
apparentlyB	apartmentB	admittingB
acceptanceByoursByellBwoundBwonderedBwebsiteBvaguelyBunsuccessfulBunmotivatedB
unexpectedBtugBtuesdayBtreesBtrafficBtipBtherapyBteethBtasksBsymptomsBswimB
surroundedBsuicideBsuggestBstudioBstormBstepsBstealBstatesB	standardsBspokeBsettledBseekingBsectionBscreamBscienceBsavageBruleBrightsBridiculouslyBridB
restaurantBresponsibilityBreleasedB
relativelyB	regularlyB
regardlessBrefuseB	refreshedBraisingBqueenBputsBpushingBpuppyB	protectedBproduceBpreventBpressBpraiseBpourBpoolBpleasureBplateBpenBpartiesBparticipateBpanicBpainfulBpaidBoutgoingBoptionsBoptionBopportunitiesBoceanBnovelBnoticingBnoseBnicelyBneverthelessB	naturallyBnastyBmusicalBmomsBmodernBmixedBmillionBmaterialBmarksBmachineBluckilyBlitBlilBliesBlibraryBlbsBlaughterBlaBkingBkillBjudgedBjudgeBjobsBjackBinnerBinitialB
infuriatedB
impossibleB	immenselyBholyBheldBheadingBhatingBhasntBhappilyBgrowthBgroundedBgearBforthBforgotBforceBfontB	followersBflowBfloatingBflawlessBfishBfinanciallyBfilmsBfiguredBfictionBfamousBfacingBfaB	expressedBexpenseBexistBenterBendlessBeightBdutyBdrivenBdressingBdowncastBdoubleBdevelopmentBdeskBdesiresBdepthsBdebateBdancingBdamageB	customersBcrossedB
creativityBconnectionsBconnectB
conclusionBconcernsBconcernBconcentrateB
comparisonB	companionBcoatBclosetBcleaningBclassicBchoseBchillBchemoBcheckingBcheapBcarryingBbuttBbrothersBblowB	behaviourBbashfulBbagsBaverageB	attendingBattackBaspectBartistsBarticleBappearsB	apologizeBalbumBaffectionateB	advantageBactingB	accordingBaccidentallyByouthByayBwoodBwokenBwoBwitnessBwishedBwardBvisitingBvisitedBvileBvexedBupdateBunlikeBunkindBunfortunatelyBtwiceBtwentyBtoiletBticketBthrowingBthrewBswitchBsurvivedBsurroundBsurprisinglyBsurelyB	strugglesBstreetsBstatusBstareBspiritsBspecificallyBsoundedBsmallerBskinnyBsitesB	singaporeBsimultaneouslyBsilentlyBsignificantBshellBsheerBseparateBsendingBsemesterBsellBsecondsBseasonsBscreenBscaryBsantaBsaddenedBrubbishBrouteBromanceBrespondB
resentmentBremindsBrememberingBrelyBregardB	recommendBrecipesBrangeBrainyBradiantBquestBpxBpurchaseBpreviousBpresentsBpreparedBprayedBplanetBpeterBperiodsBpatternBordinaryBorderedBoddlyBoctoberBobtainBnursingBnowhereBnewbornBndBnauseousBnakedBnailsBmotionBmoralBmissionBminorBmileBmethodBmeasureBmealsBmattersBmassiveBmassBmajorityBmagicalBluckBloverBlooseBlogBlightsBliedBlensesBlaughingBlargerBlandBkissingBkB	justifiedBjubilantBjournalBjimBishB	interestsB	intentionB	intensityB	infectionBindeedBincidentBhttpsBhorriblyBhintBheroesBhenceBhelpfulBheckBheavenlyBharryBhappierBhabitsBhaBgreyBgrandfatherBgoodbyeBglumBgBfunctionBfrozenBfriendshipsB
foundationBformerBforeignBfoodsBfoggyBflewBflatBflashBfeverBfeatureB	favouriteBfailingB
expressingB
explainingB	explainedBexactB	energizedBelsesBdreamingBdreadBdismBdishesBdisappointmentBdirectorBdirectlyB	dignifiedBdeservesBdepresseB
departmentBdenyB
definitionBdefendB	defectiveBdefeatBdeeperBdecentBdavidBdadsBcricketBcreditBcreatureBcourtBcostB	continuesBconsumedBconsequencesB	companiesBcombinationBcolourBcodeBclosestBclockBclimbedBclassesBchineseBcharityBcenteredBcatchingBcarriedBcanvasBcaloriesBbreastBboxBbottleB	botheringBbootsBbonesBbloggerBblameBbelievedBbeingsBbehaviorBballBawhileB	awarenessBavoidedB	attractedB
atmosphereBassumeBaprilBappointmentBappleBappearBapparentBanticipationBantiBangelB
altogetherBalternativeBalcoholBalarmBairportBagesBaffairBadvanceBaddressBaddingB
activitiesBactivelyBaccomplishmentBabuseB
youngstersByoudByorkByaBworriesBworkerBwonderfullyBwerentBweighingBwashingBwashBwarBviolenceBvillageB
ultimatelyBturnsBtruthsBtraumaB
transitionBtranquilBtrailBtourBtortureBtornBtoolsBtodaysB	tirednessBtipsBtigerBthrownBthemeBtenseBtemptedBtemperatureB	teenagersBtaylorBtaskBswimmingBsweptB	structureBstrikeBstretchB	strangersBstingBstaringBstaffBspirituallyBspeedBsouthBsoooBsoonerBsoldBsmilesBskillBsinkingBsiblingBsharpBsevenBsessionsBserveBsentenceB	sensationB	seeminglyBseekBsecurityBscrewedBschemeBsavingBsavedBrowBroughBroomsBroommateBroofB
ridiculousBrevealB	responsesBresentBrequireB
reputationB	remainingB	relationsB	referenceB	receivingB	realizingB	reactionsBreachingBrawBrateBrareBraiseBracesBquietlyBpubBprovidedBprovedBproveB
protectionBpromiseBprayingBpracticallyBpplBpotBplayersBplantBpitBpickingBphraseBphotographyBphaseBperformB	parentingBpaleB	paintingsBpackingBovercomeBoriginalBorganizationB
officiallyBofficerB	nostalgiaBnormBnofollowBnineBneighborhoodBnailBmurderBmultipleBmotorBmoronicBmoonBmommyBmodelBmisunderstoodBmirrorBmindsetBmidBmichaelBmessagesBmerelyBmereBmedsBmedicalBmeatBmastersBmagicBmagazineBlungsBlowerBloserBlistsBlimitedBlilyBlightlyBlettuceBlengthBleeBlearntBleadersBlayerBlashesBlargelyBlackingBkoreanBkindsBkilledBkicksBkickingBjunkBjuniorBjumpingBjohnBjealousyBjapaneseBitdB
investmentBinvestB	introduceB	interviewB	intenselyBinjuryB	initiallyBinfoBincreaseBincomeBincludedBimmatureBidentifyBidealBhundredBhumorBhumbledBhorsesBhorrBhitsBheelsB
heartbreakBhardestBgunBguessingBgrinBgreatestBgrandmotherBgrabBgoodnessBgleeBglassesBglanceBgasBgarbageB	fulfilledBfulfillBfrustratingBfreakingBfreakedBfranklyB	fortunateBfolkBflyBflowingBfeelinBfeedbackBfalseBextremeBexplanationB	expectingB	existenceBexcitemBexceptionallyB	excellentB	everytimeB	everyonesBeuropeanB
enthralledBengageBendureBemilyB	effectiveBedBearsBdustBdunnoBdrugsBdressesBdressedBdollarsBdollBdoctorsBdizzyBdiscoverBdigB
difficultyBdifferentlyBdepthB	demandingB	dejectionBdebtBdarlingB	curiosityBcuddleBcringeBcravingBcountyBcookingBcookiesBcontractionsB
continuingBcontainBconservativeB	conditionBcomplexB	completedB
collectionBclueBclosureBchrisBchickenB	cherishedBcheeksBcheckedBcheaperBchatBchargeBchangingBchancesB
challengesBcatholicBcampBburnBburgerBbudgetBbreadBboreBbondBboatBbiteBbirdsBbfB
benevolentBbeneathB	believingBbeliefsBbeliefBbegBbedroomBbattleBbathBbastardBbarsBawardBavoidingB
attractiveBattachedBastoniB	assistantBaspectsBarriveBargueB
appearanceB	apologiseBantsyBanneBannaBanimalBamongstB	americansB	amazinglyBalrightBahB	afterwardBafricanB	affectionBaffectedBadultsBactsBactivityBachesB	acceptingBzoneByoutubeByarnByallBxmasBwrappedBwowBworshipBworryingB	woebegoneBwingBwidthBwidowBwhoeverBwhisperBwestBwavesBwatchesBwastingBwashedBwarningB	wanderingBwalletBwaBvisitorBvirtualBvirginBvigorousBviewersBviewerBvideosBvergeBventBveinsBvBusesBupperBupcomingBunitBuncaringBultimateBtrickBtreatsB	treadmillB
travellingB	travelingBtrappedBtraitorBtraditionalBtouchingBtolerateBtightlyBtiedBthirtyBthighsBtheyveBtheydBtheoryBtempleB
televisionBteenBtaughtBtaBsurviveBsurfaceB
suppressedBsunnyBsumsBsuggestionsBsucksB	substanceB	stupefiedBstupefactionBstringB	stressfulBstrategyBstormedBstoppingBstickingBstatedBstashBstarBstableBsqueezeBsportBspiteBsoupBsorrowsBsoloBsofaBsnowBsmoothlyBsmellsBsmarterBslippedB	slightestBslideBsisBsignsBshownBshoutingBshootBshallowBshadesBsexuallyBsewingBseverelyBservicesBsensedBseldomB	searchingBscottBschoolsBsatisfactionBsarahBsandwichBsamBsaleBrushBruinBroyalBrobinBrisksBriceBreviewsB	returningBrescueBrequiredB	representBreplacedBreplaceB
repeatedlyBremorseBremarksBrelativeB	rejectionBrefusedBreduceB	realisticBreactedBrapidlyBrangBrandomlyBrageBquarterB
puzzlementBpushedB	publisherBpsychologicalBproperBpromisedBpromB
profoundlyBprizeBpriorB
previouslyBpresentationBpredictableBprayersBpoundBpotentiallyBpolicyBpileBpieBpicnicB
philosophyBperverseB
performingB
perceptionBperBpeeBpausedBpaulBpassesB	partiallyBparisBpantsBpangB	pagetitleBoverwhelminglyBoverseasBoutsiderBofficialBofferingBofferedBoffendB	observingB	nutritionBnurseBnumerousBnumbersBnovemberBnovelsBnotesBnotedB	nightmareBneutralBnetworkBnessBnervesB
neglectingBnecessarilyBnaggingBmuseBmrsBmovesBmorallyBmiseryBministryBministerBminiBmidstBmessedBmattBmatchesBmaskBmartinB
managementBmallBlucyBloreBlockedBloadsBljBlipBlinesBlimitBliBlendBleadsBleaderBlatestBlaidBkongBknittingBkneesBkissesBkeysBjumpedBjordanBjokesBjoiningBjoinedBjoeBjanuaryBjamesBjacketBitllBitalianBislandB
irrationalBinviteBinstructionsBinstanceB
inevitablyBindulgeBindiaBinconsolableB
impressiveBimmenseBignoringBidentityBhungBhostelBhostBhopelessnessBhongBholdsBhikeBhersBheroBheresBhelloBheavilyBheavenBheadsBhardcoreBhandedBhabitBguidanceBguestBgrossBgroceryBgrievingBgreetedBgreatlyBgraveBgraceBgrabbingBgrabbedBglaringBglancesB
glamourousBgiddyBgestureB
generationBgazedBgazeB
frequentlyBfreedomsBfreakB
forgettingBfocusingBflowerBflawsBfittingBfitsBfitnessBfirmlyBfindsBfileBfiguresBfieldsBfedBfarmBfandomBfairyBextraordinarilyBextendedBexposedBexistedBexchangeBevilBesteemBerBentriesB
engagementB	endeavorsBencouragementB
encouragedB	encourageBencounteredB	encounterBemailsBemBelevatorBelatBeducatedBeconomyBdvdBdumpBdrugBdrewBdrawingBdramaticBdraftB	downrightBdowncasBdisquiBdisplayBdisneyB
disgustingB
discomfortB
disappointB	disappearB	developedB	determineBdetailB	designersBderbyBdependsBdeclineBdealtBdeBdanBdamnedBdaddyBcuttingBcurlBcuddlingBcrushBcriticalBcrimeBcriesBcrestfallenBcrawlBcrashingBcraftBcoversBcousinBcourageBcornersBcontributingBcontributedBcontrastBcontractBconsiderationB	connectedB
conflictedBconflictBconcentratedBcomplimentsBcomplicatedBcompetitionB
commitmentB	comfortedBcomedyBcoloursBcloudsBclinicBclimbBcivilBcirclesBchinaBchildishBcheersBcheerfulBchasingBcharlieBcharlesBcentreBcenterBcelebratingBcashBcaptureBcaptainBcampaignBcaffeineBburntBburningBburiedB	brilliantBbowlBboardBblondeBblindBblessBblanketBbitsBbinBbillyBbiggestBbibleBbewildBbewiBbesidesBbelowB	belongingBbeginsBbathroomBbatBbasicBbaseBbandsBballsBballetBbahBbackedBaweBautomaticallyBauthorsBauthoritiesBattendedBattendB
attemptingBattacksBasksBappropriateBapplyBappearedB	apatheticBansweredB	announcedBanniversaryBanguisBamusemBamorousBallowsBalexBalbeitBalBagentBaffectBadoreBadjustBadBactedBacknowledgeBabsoluteBabsenceBabitB	abandonedBzeroBzealandByoullByoByellowByearningByardB	wrestlingBwouldveBworBwondersBwishesBwisdomBwipeBwinningBwindowsBwickedBwiBwhinyBwhiningBwhineBwhereverBwhereasBwheelB
whatsoeverBwebBwarsB	warehouseB	wallpaperBwakesBwahBvirginiaBviolatedBviewingBviaBventureBveganBuserBurlBurBupsideBupsBunusualB	unnaturalBunknownBunityB	unhealthyB	unfoldingBunfoldBuneasyBtypicalBtwistedBtummyBtsunamiBtruckBtrialsBtrashBtrainsBtouristBtouchesBtossingBtomatoesBtissueBtingleBtingeBtilBtiesBthursdayBthroneB	throbbingB	thrillingBthreateningBthousandBtherebyB	therapistBtendsB	temporaryBtemperaturesBteenageBtearyBteamsBteBtastesBtankBtallBtaleBtailBtacklingBtackleBtabletsBswiftB
surprisingB	surprisesBsurgeryBsurgeBsumBsuckingBsuccumbBsubmitB	subjectedBsubconsciousBsuBstrokesBstrokeBstriveBstrikesB
stretchingB	stressingBstreamBstrainBstonedBstirredBstiffBsteveB
stereotypeBsteppingBsteppedBsteadyB
statementsBstarterBstaresBstandsBstandardBstanceBstairsBstackBsquadB	spreadingBsprayBspontaneousBspokenBsplitBspinB	speciallyBspanishBspanBspacesBsourceBsometimeBsolidBsolelyBsoakBsnobbishBsnapBslipBsleepyBskiesBsistersBsipBsinkBsingingBsimplerBsicknessBshoutBshotsBshortsBshortlyBshopsBshootingBshiningBshakingBshadowBshBsetsBserenityB	septemberB	separatedB
sensationsBsemiBseesBseedBsecretsBsecretlyBscriptBscrewB
scientistsBsaraBsadlyB	sacrificeBsaBrunnersBrulesBrollsBrollerBringsBriBrevealedBreturnsB
restrictedBrestingBrestedB	resourcesBresortBrereadBrepsBrepliedBremotelyB
remarkablyBremainsBrelaxingBregionBregainBrefugeB
refreshingB
reflectionBreferBrecoveryB
recoveringB	recoveredB	receptionB
reasonablyBreadingsBreactingBrapedBrapeBragingB	radiationBrachelBquiltingBquickerBquarrelBpuzzBpunchBpulseB
publishingBpublishBprotestBproteinBprospectBproBpriorityBprimeBprimaryB	pressuresB
presentingBpreparationB	practicalBpowersB	powerlessBpotatoesBpossibilitiesB	positionsBportrayBportionBpornBpopsBpoppedBpoemBpocketBplatformBplantsBplaguedBplacedB	pinterestBpillowBpigB
photographBperfumeBpeevedBpatrickBpatienceBpastaBparticipantsBparanoiaBpackedBpackBownedBoverloadBoutfitsB	organizedB	orchestraBorangeB
oppositionBopposedB	operationBopenlyBolBoffersB	offensiveB	obsessionB	obligatedBobjectsBnotionBnotebookBnonethelessBnicerBnewestB	neighborsB	neglectedBnauseaBnativeBnamesBnailedBmyspaceBmushBmuscleBmundaneBmountingB
motherhoodBmoodsBmonsterBmomentarilyBmoisturizerB
modiglianiBmodeBmoaningB
missionaryB
ministriesBminceBmillionsBmilkBmildlyBmiffedBmiBmetalB	mentalityBmediumBmedicationsBmatteredB	marvelousBmariaBmarchBmamaBmainlyBmailBlushBlumpB
lugubriousBluggageBltBloyaltyBlogicBlockBloadBlizBlinuxBlinedBlikingBlifetimeBlifesBlicenseBliberalB
legitimateBleagueBlashBlapBlBkissedBkindnessBkimBkillerBkenBjustinBjuneBjoBjerseyBjeremyBjeansBjaneBjanBjacksonBivBitemBiphoneBinvitedB	investingBintimacyB
internallyBinteractionsBinteractingB
intentionsBintentBinsultsB	instinctsBinstinctB	insincereBinsensitiveBinsecuritiesBinputBinfertilityBinferiorB	indulgingBinducedBindianBindependentB
increasingBinconsolablBincludeBinclinedBimprovedBimposedBimpoliteB	impendingB
impatienceBimaginedBimaginationBhyperBhuntingBhumilityBhotelBhoppedB
hopelesslyBhonorBhiddenBhesitateBheapBhazeBhatredBhasnBharshBharmBhandfulBhallBgutsBguitarBguideBguestsBgrieveBgriefstrickenBgrieB	greatnessBgrassBgownBgovernorBglobalBglancedBgiveawayBgirlfriendsBgiggleBgiganticBgermanBgenreB	generatedBgatherBgaryBgamingBgalleryBfundsBfrownedBfridgeBfrenchBfreezingBfreelyBfoulBfosterBformulaBformedBforgivenessBforcingBfoolBfogBflungBflippingBfleshBflavorB	flashbackBfeministBfearedBfbBfavorBfateBfancyBfaintBfactsBfactoryBfacedBfabricsBeyB
experimentBexistingB	existanceBexhilaratedBexhibitB
exhaustionB
exhaustingBexcusesBexaminationBevidentBeverythingsBevaluateBestablishedB	essentialBescapedBeraBepisodesBepiduralBengineeringBencouragingBempathyB	empathizeBellieB	elizabethBelectricBelectionBelaineBeditorBeasterBearnBdunBdryBdrownedBdropsBdroppingBdreamyBdreadedBdragBdoseBdocumentBdistressBdistantBdisrespectedB
disrespectBdislikedBdislikeBdisdainB
discussionBdiscussBdisasterB
directionsBdipBdintBdeterminationB	destroyedBdessertB
despondencBdesignerBdesignedBdeservedBdependBdemonsBdeliveryB	defensiveBdecidingBdecentlyBdecemberBdealsBdataBdarnBdarknessBdaBcurtainsBcrystalBcrushingBcrossingBcrewBcreepB	creationsBcreationBcraveBcoveredBcouplesBcoupledBcountingBcounsellingBcouncilBcorpseBcoopedB
conventionBconvenienceBcontextB	confusionBconfrontationB	conflictsBconceptBconcealBcomparativelyB	committedBcommitBcomebackBcombinedBcockBcoasterBclosingBclimbingBcliffBclientsBclearerBcleanedBclayBcitiesB
cigarettesB
christiansBchilBchicagoBcheeseBcheeredBchatterBchargedBchaptersBchaosB
challengedBchairsBcenturyBcentralBcellBcelebrationsBcelebrationB
celebratedBcastingBcasesBcapacityBcapBcandyBcanadaB
californiaBcafeBcaBbutterfliesBbutterBbushBburnedBbummedBbullshitBbuiltBbtwBbrowsBbrimmingB
boyfriendsBbounceBboothBboostBboldBblindlyBblessingBbipolarBbingeBbillsBbiBbenjaminBbenedictBbelievesBbelieverB	behaviorsBbehaveBbehalfBbeggingBbaseballBbareBbakingBbackingBaversionB	audiencesB
attractionB	attitudesBattemptsB	athelstanBassociationB
assistanceBasianB
articulateBarrivingBarrangementsBargumentBapproachingBappreciationBapathyB	answeringBanimeBangelsBamountsB	alternateBaintBaidB	agreementBagreedBagedB	affrontedBaffordB
adrenalineBadoringBadditionB	achievingBaccountBaccomplishingB
accomplishBabandonmentB
abandoningBzumbaBzachByuukiByouthfulByoungestByellingByelledByeastByashBxdBxanaxBwronglyBwritesBwrapBwpBwoundedBworeBwomensBwivesBwitBwistfulBwilliamsBwilliamBwiggleBwigBwidelyBwhollyB	whisperedBwhippingBwhipB	whimsicalBwhimBwhackBwenBwellingBweekendsBweeBwedBweavingB	wearinessBwealthBwatersBwatchersB
washingtonBwarmlyBwardrobeBwanderedBwaitsBvomitBvoidBvoicesBvoicBvocalBvoBvisualBvisiblyBvisibleBvirusBviewedBvictoryB
vibrationsB	vibrationBvibrantBvexatBvertigoBverseBventingBveggiesBvastBvanButteredBusaBupstairsBuploadBupfrontBupdatingBupdatesB	unusuallyB	unsettledBunsafeBunrealisticBunionBuninterestingBunfairBunderstandsBundergroundBundercurrentBunclesBuncertaintyB
unbearablyBunattractiveBuggB	typicallyBtypesBtwitchyBtwelveBtweetBturkeyBtunedBtuneBtuitionBtubeBtrustedBtrousersBtriumphBtripsBtriesBtributeBtravisB	trappingsBtransferredBtransferBtransBtrailsBtrailerBtoysBtoyB
tournamentBtoothBtoddBtimingBtimB	tightenedBtideBtickBthyroidBthaiBtextureBtextsBtextedBterrorBtendencyBtemptingBtemperB
techniquesBteasingB	teammatesBteamedBtargetedBtapeBtapBtantrumBtangoBtagBtablesBsystemsBsyndromeB
sympathizeBswungBsweatyB
sweatshirtBswallowBsusceptibleBsurvivorBsurroundingsB	surrenderB	surfacingBsurfB	supremelyBsupremeB
supposedlyBsupplyBsupermarketBsunriseBsundaysBsuitsBsuitB
suggestionB
suggestingBsugarsB
suffocatedBsuckerBsuckedBsubtleBsubconsciouslyB	stupidityBstumpedBstumbledBstuffyBstudiedBstruckB	strollingBstreBstoresBstorageBstopsBstoneBstolenBstockBstinkingBstevensBsteepBsteamBstationB	startlingBstanzaBsqueezedBsquaresBspotsBspoiledBspiritualityBspineBspillBspiderBspiceBspendsBspellBspeciesBspeaksBsparkleBsparkBspareBspaBsourcesBsoundingBsoughtBsortedBsortaBsooooBsonsBsomewayBsomedayBsombreBsolvedB	solutionsBsolemnBsoccerBsnugBsnappingBsnappedBslutBslumberBslowingBslothBslightedBslightBslidBsleepsBslaveBskirtBsketchBsituatiBsirBsinusB	sincerelyB	similarlyBsignificantlyBsidewalkB	sidelinesBsiBshoweredBshootsBshiverBshirtsBshipBshimmerBsheilaBsheetBsewBservingBservedBsequelBsensibleBseniorBselectedBselectBscrutinyB	scepticalBscentedBscenesBscanBsauceBsalesBsaladBsafelyBryanBrussiaBrougeBrootBrockingBrobbedBridingBrhythmBrhetoricBrexB
retrospectB
respectfulBresolveB	resistingBreservedBrequiresBrequestsBrepublicBrepresentativeBreplacementBrepercussionsBremedyB
remarkableBremainedBrelishBrelieveBrelevantBreleasesB
relaxationBrejuvenatedBreillyBregardsBrefusingB	referringB
referencesBredditBrecoverB
recognizedBreactBrattledBratBraphaelBrainedBrainbowsBrailwayBragBraBquestionnaireB
questionedBqBpuzzledBpushyBpushoverBpursuitsBpurelyBpureBpupilsBpumpBpullsB	psychoticB	provokingBpropBproneB	promptingB	promotionB
progressesBprogramsBprogrammingBprofitBprofileBproductivityB
productionBproducedBprintBprincessBprimerBpricesBpretentiousB
pretendingBpressedB
prescribedB	preparingBprepB
preferablyBpowderBpouringB
positivelyB	portrayedBpoppingBpoliticiansBpoliteBpointingBpoetBpoemsBplightBpleasingBplasticBplanesBpillsBpiesBpianoBphrasesBphonedBphilippinesBpeteB
pertainingBpersonsBpersonaBpermanentlyB	permalinkBperformancesBperceiveBpenisBpavementBpaulaBpatchBpassionatelyB	passersbyBpartnersBpartingB	paralysedBparBpapersBpanickedBpangsBpanelBpakistanBpaintsBpaddingBpackageBoxygenBoweB	overjoyedB	organisedBorganisationBorganicBoregonB
oncologistBomgBolympicBoilyBoilsBoddsBoccupyB
occasionalB	obstaclesBobserverBobligationsBobjectBobamaBnycBnumbnessBnuggetBnudeBnowadaysBnotionsBnothingsBnooneBnoonBnonsenseBnoisyBnoiseBnoddedBnigelBnickB	newspaperBnewbornsBnerveBneglectB
needlesslyBneedlessBnecklaceB	necessityBnearbyBnaughtBnationsBnationalBnamedBnaiveBnaBmutualBmunchBmumsBmuffinBmudBmuckBmsB	motheringBmorningsBmoreoverBmorbidBmoralsBmoodyBmontanaBmonitorB	monasteryBminimumBmilitaryB	milestoneBmikeBmightilyBmichelleBmexicanBmethodsBmetaphorBmercyBmeltBmelodyB
meditationB
mechanicalBmeasuresBmeaninglessBmayhemBmatthewBmathBmatesB	massivelyBmassesBmassageBmaryB	marketingBmarieBmarginalizedBmarathonBmanualBmandarinBmaggieBmachinesBmacBmaB	lunchtimeBloversBlosBloosingBlonerBloadedB
literatureBliteraryBlistensBlistedBlipstickBlinksBlinkedBlimitsBlikeableBlightingBlemonBlegitimatelyBlegalBleaptB
leadershipBleBldsBlbBlazinessBlayingBlauraBlatterBlastedBlaptopBlapseBlaneBlandedBlakeBlacedBlabourBlaborBlabelBknotBknockBknightBknifeBkneeBkitBkindlyBkeyboardBkayBjustifyBjumpsBjumperBjulyBjulietBjuliaBjuicesBjuiceB	judgementBjoysBjoshuaBjonesBjokingBjiBjewelryBjennyBjasonBjamieBjakeBjBitalyB	isolationBirrationallyBironicBironBirishBipodBipadBinvitesB
invitationBintroductionBintimidatingB
interviewsBinterventionBinternalBintendBintelligenceBintellectualB	intellectB	instagramBinspiresBinsignificantBinsidesBinsaneBinjuredBinherentB
influencesB
inevitableBindignBindependenceBinconveniencedBincludesB	incapableBimportantlyBimpliesBimmersedB	immediateB	imaginingB	ignoranceBidolBidkBicyBhurryBhuntBhundredsBhumbleBhumBhugsBhubbyB	householdBhorrorsBhorrifiBhopBhookBhoneyBhonestyBhonBhomemadeBhollowBhockeyB
historicalBhireBhipBheroineBheightsBheheB	heavinessBheavierB	heartedlyB	heartbeatB	heartacheB
headphonesBharmfulB	hardshipsBhangoverBhandlingBhandingBhalfwayBguidingBguardianBguardBgritsBgratificationBgraspBgrandparentsBgrammarB
graduatingB	graduallyBgospelBgoshBgoldenBgoldBgoddessBgoddamnBgloomBglimpsesBglancingBgladlyBgingerBgiftedBgettinBgetawayBgermansBgentlyBgeniusBgenerationsBgenderBgazingB	gatheringBgatesB	gardeningBgarageBgapingBgamerBfuckinBfrustrationsBfrowningB	frequencyBfrankBfranceB	fragranceBfrBforumBfortuneBforgivenBforestBforeheadBforcesBfootingBfollowerB
flutteringB	flusteredBflushedBfloralBflickingBfleetingBflavorsBflashingBflBfishingBfinalsBfianceBfeedsBfeedingBfeebleBfeeBfederalBfebruaryBfeaturesBfaveBfauxBfascinationB
fascinatedBfallsBfallenBfakingBfailsBfactorsBfactorBfacialBeyelidsBextendBexprBexposingBexploredBexplodedBexplodeBexplainsBexperimentsBexpectationBexhibitionsB
exercisingBexasperaBeveBeuphoriaBetsyBethicsBessentiallyBessenceBericB
equivalentBepicBenvyBenvelopeBentranceBenthusiasticB
enthusiasmBentertainmentB
enormouslyBenjoysB	enjoymentB	enjoyableBengagedB	energisedBenemyB	empoweredB	employersB	emoticonsBemergingBemergeBembarrassmentB	electionsBelderBeggsBeffectivelyB	educatingBeducateBectBecstaBeconomicBecoB
earthquakeBearnedBdwellingBdwellBdubaiBdriverBdrippingBdrinksBdreamedBdreadfulBdrawnBdramaticallyBdramasBdragonBdraggedB
downstairsBdownheartedBdoomBdiyBdivorceBdiverseBdiveBdivBdistractB
distinctlyB	disordersBdisorderBdisinterestedBdishBdiseaseBdiscoveringBdisconsolatBdisconnectedBdisappearedBdisagreeB	directingBdirectB
diplomaticBdiggingBdifficultiesBdifferencesBdickBdiabetesBdhBdevicesBdevastatingBdestructiveB	despondenBdesperationB
despairingBdesiringBdesertBdescriptionB	describesB
depressiveB	dependingB	dependentBdeniedB	democratsBdemandsB	deliveredBdeliverBdejectioB
dehydratedBdegreesB
definatelyB	defendingBdeepestBdeemBdecorationsBdecorateBdeckBdeadlineBddBdaycareBdaredBdanielBdangerBdancersBdancerBdamBcyclingBcutsBcustomBcurseBcurledBcureBcupcakeBcubicleBcruzBcrunchBcruelB	criticismBcrashBcranstonBcrampingBcrB	coworkersBcourtesyB
courageousB	countriesB	countlessBcouncillorsBcostumeBcorrectB	corporateBcopyBcoolerBcookieB
convolutedBconveyBcontrollingB
controlledBcontributionBcontraryBcontinuouslyBcontinuallyBcontentsBcontemplatingB	containedB	consumingBconsumerBconstructiveB
consistentBconservativesBconsecutiveBconsciouslyB
conscienceBcongressB
confrontedB	conduciveB
conditionsBconceptsB
comprehendBcomplimentedB
complaintsB	competingB	comparingBcommunitiesBcommunicationBcommunalBcomfyBcomboBcomBcolumnBcollarBcokeBcoatsBcoachingBcloudBclientBclickedBclickBclaudiaB
classmatesBclarityBclappingBclaimBcitizensBcitizenBcircusBcircumstanceB	cigaretteBchunkBchristopherB	christineBchoreBchoosingBchokeBchipBchiefBchicksBchewingBcherishBcheeringBchattingBchaseBchapterBchaoticBchambersBcentsBceilingBcdBcaveBcautiousBcatsBcastleBcashierBcarsBcarrotsB	carefullyBcarefulBcapturedBcapitalBcandlesBcancelBcampusBcalmingBcageBcabBbunnyBbumBbullBbuddyBbubbleBbscBbrighterBbriefBbridgeBbreathsBbreastfeedingBbreaksBbraceletBbowB
boundariesBbottomsBborneBbordersBbooBbonusBbobBblurBblownBbloggedBblinkedBbleedingBblancheBblamingBblakeBblaB
bitternessBbitterlyBbitchesBbiofuelsBbetrayalBbentBbenefitsBbelongedBbehavingB
beginningsBbeefBbeeBbearingBbayBbatchBbaldB	balancingBbabysBautumnBautoB	authorityB	authenticBaustraliansB	australiaBaugusteB	attemptedBattackedBassureBassumedB
associatedB	associateBassistBassignmentsBartworkBartsBarrivesBarrangedB	argumentsBarenaBappropriatelyBapplyingBappliedBapplicationBapplauseBappealBapologyBanticipatingBanticipatedBannualB
annoyinglyBannoyaBannoyBangelesBanatomyB	amsterdamB	ambulanceBambitionBalternatingB	alongsideBallowfullscreenBallenBalienBalainBakaBainBagonyB
aggressiveBagaiBaffirmationBaffectsBadvocateBadviseBadvancesBadorableB
admirationBadministrationB
adjustmentBaddsBactorsBachievementBachedB
accustomedBaccomplishmentsB	accompanyBaccompaniedBaccessoriesBaccessBacademicBabroadBabdomenBabcBabandonB10BzoomBzombiesBzestBzenBzByuByomisByearnByeByardsByantoByahooBxxxBxxBxviBwushuBwtfBwrylyBwristB	wrenchingBwrappingBwrBwormsB	workplaceBworkoutsB	workmatesBwoodyBwoodsBwoodenB
wonderlandB	womanhoodBwittyB
witnessingBwishfulBwirelessBwireBwipedBwipBwinstonBwingtipBwingsBwindyBwinceBwillyBwillsB	wilkinsonBwildlyBwilderBwifesBwhoreBwhoopBwholeheartedlyB	whirlwindBwhippedBwhimsBwhiffBwheatBwhBwesternBwerenBweptBweighBweeklyBweddingsBwebkitBwearyBweariedB
weaknessesBweaknessBweakerBwaxBwatBwarsawBwarningsBwarnBwarmsBwarmerBwalterBwalmartBwalksBwalBwagonB	vunerableBvsBvowsBvotersBvolunteeredB	volunteerBvolumeBvitaminsBvistaB	virtuallyBviennaB
victoriousBvexationBvetBversesBverdictBvenueBvendorsBveiledBvehicleB	vegetableBvbacBvarietyBvariesB	vancouverBvampireBvalleyBvalidityB
validationBvalidateBvalidB
valentinesButmostBurgingBurgencyB	upsettingBupbeatBunzaBunwindBunwillinglyBunwellBuntrustworthyB	untouchedBunsavoryBunsatisfiedB
unresolvedBunreasonableB	unpopularBunnaturallyB
unloveableB	unlovableBunlikelyB
unlikeableBunitedBunintelligentBuniBunhappinessB	unfurlingBunfulfilledB	unfeelingB
unfairnessBunexplainedBunexpectedlyBunemploymentB
unemployedBuneaseBundulyBunderwhelmedBundertakingB	underpaidB
underneathBundergoBunderappreciatedBunderageBunconditionalBunbelievableB
unbearableBunappreciatedBumBuhBuggsBuberBtwistBtwatB	tutorialsBturkishBtunnelBtumblrBtuggingBtuckedBtuckBtubBtuBtshirtBtsaBtrustsBtruelyBtroublesBtropicalBtrophyB	trimesterB
triggeringBtricksBtriangleBtrialBtrendsBtrendB
tremendousBtreasureBtreadingBtraumatisedB	traumaticBtrapB	transportBtransformedBtransformationB
transcendsBtramB
traditionsBtracyBtrackingBtrBtoxinsBtowerBtouringBtotesBtossedBtossBtoryBtorsoBtorontoB	tornadoesBtormentBtopsBtopicsBtopazBtoonBtonsBtonesBtommyBtomBtollB
toleratingB	toleratedBtoeBtoddlerBtobyBtisBtireBtinglingB	timetableBtimelyBtimelineB	tightnessBthunderBthumbBthruBthriftedBthriftBthreatenB	thousandsBthompsonBthirstyBthinnerBthiBtheyllBtherapeuticBtheoriesBthemesBthemedBtheirsBtheatreBtheaterB
thankfullyBthankedBthaBtestingBtestedBtessB	terroristB	territoryBterrainBteroBtenureBtenderlyBtendedBtempuraB
temptationBtemporarilyBtemperedBtempB	telephoneBteenyBteensBteddyB
technoratiB
technologyB	techniqueB	technicalBtechBteachesBtaxBtauntedBtattooBtappedBtangibleBtangB	talkativeBtalesBtalentBtaiwanBtagsBtabBsworeBswingsBswellB	sweetnessBsweatersBswanBswampBswaddledB	sustainedB	suspicionBsuspenseB	suspectedBsusanB	survivingBsurveyBsurroundingBsurgeonBsuppressB
supportersBsuppliesB
supervisorBsupervisionBsupermanBsunkBsummaryBsulkBsuitedBsuitablyBsuicidalBsugaryBsufficientlyB
sufficientBsueBsuccessfullyB	succeededB
substancesBsubsidedB
subsequentB
submissionB
subjectiveBsubaruBstylesBstutterBstuporBstumbleuponBstumbleBstuffingBstudiesBstubsB
stubbornlyB	struttingB
structuresB	strongestBstrollBstrippedBstripBstressesBstrengtheningBstrainedBstraightforwardBstormsBstoredBstoleBstoicBstitchedBstitchBstinkyBstinksBstingingBstimulatingB
stimulatedB	stiffenedBstickyBsticksBstewingBstepchildrenBstellarBstellaBstealingBsteakBstaysB
stationaryBstatingBstarveBstarringBstandbyBstampedBstagesBstadiumBstabBspritzBspringerBspouseBspottedBspotlessBsportsBspoonBspontaneouslyBsponsorBsplashBspittingBspinningBspilledB
speechlessBspeechesBspeculationB	spectatorBspeakerBspainBspBsovietBsourBsoulsBsoulmateBsorroBsorbetBsolitaryB
solidarityBsoleBsoldierBsolaceBsoilBsodaBsocksBsocketBsocietysBsocializingBsoapBsnoringBsnobBsnifflesBsnapsBsnacksBsnackBsmoothieBsmoothBsmittenBsmirkBsmilBsmellingBsmallestBsmBslumpedBsluggishBslowsBslowerBsloppyBslippingBslidingBsliceBslewBsleddingBslateBslapBslackedBslackBskypeBskippedBskipBskillzBskiBsizesBsiwonsBsitsBsitcomBsippingBsinusesBsinsBsinksBsinisterBsingularBsinBsignedBsignalsBsighedBshynessBshuttingBshushingBshruggedBshowersBshowcaseBshoveBshortcomingsBshoeBshockingB	shiraishiBshinyBshinesBshineBshiftsBshiftingBshiftedBshieldBsheriffBshelterBshellsBshelleyBsheetsBsheepBsharplyBsharpeBshariaBsharesBshannonBshamingB	shamelessBshamefulBshakesBshadowsB	sexualityBsettlingBsetbacksBsesameBservesBserifB
separationB
separatelyBsepBsensoryBsensesBsendsBselflessB	selectionBsegmentsBseedsB	secondaryBseattleBsearchedBseamsBseagullsBscreamsBscratchBscotlandBscoredB
scientificBsciencesBschsB
schoolgirlB	schoolboyB	schedulesB	scheduledBsceneryBscenarioB	scatteredBscarsBscarfBscaresBscareBscannedBsavoryBsaviorBsarcasmBsansBsanityB
sandwichesB	sandpiperBsandalsB	salvationBsaltyBsaltBsalonBsaintsBsaiBsageBsaferBsadderB
sacrificedBsacredB
sabotagingB
sabbaticalBruthBrutBrushingBruptureBrunnerBruiningBrugbyBrubberBrubbedBrteBrpgsBrowsBrouseBroundsBroundedBroughlyBrotBrosemaryB	roommatesBromeoBromanBrollingBrolledBrodeBrockyBrobinsonBrobertBrmbBriverBrivalryBrivalBriteBrisenBrippedBrinseBringingBriledBrightlyB
rightfullyBridersBrichardBrhythmsBrhymeBrewroteB	rewardingBrevvingBrevivalBreveredBrevengeBrevelationsB
revelationBrevelB	revealingBretiringB
retirementBretiredBretaliationBretailB	resultingBresultedBrestoredBrespondsBresonateBresolutionsB
resolutionBresistedBresistBresidualBresidentialBresentedBrequestBrepublicansBrepresentingBreportsB	reportingB	reportersBrepliesB	replacingB
repetitionBrepayBrenewedBremoteB	remindingB	remindersBremarkBrelyingBreluctantlyBreliableBrelentlesslyB	releasingBrelaxesB	relativesBrelationBrelatingBrejectB	reinforceBreignsB
regrettingBregisterBregainedB
reflectingB	reflectedB	redundantBredesignBredeemBrecordsB	recordingBreconciliationBrecoiledBrecognizingBrecognitionB
recognisedB	recogniseBrecluseB	recessionB	reassuresB	reasoningB
reasonableBrearBreallBrealizesBreadsBreadjustBreadilyBreaBrayBratingsBrashBraptureBraptBranksBranchBrainingBrainiBrainbowBraiderBraggedBracistBracismBrabbitBrabbBquotesBquiltsBquiltBquickenBqueasyBquartersB
quantitiesBqualifyB	qualifiedBpuzzleBpussyBpursuingBpursuedBpurposesB	purposelyBpurpleBpunjabiBpumpedBpubsBpubliclyB	publicityBptB
psychologyBpsychologistBpsychoBpsychBprovocationBprovingBprovenBprotestsB
protestingB
protectiveB
protectingB
prosperousBproposedB	proposalsBproposalBpropertyB
pronouncedBpromptlyB	prominentBprogressivelyBprogressingB	programmeBprofoundBprofitsB
professorsB	professorB
professionBproductionsB	producersB
processingB	processesBprocesB	privilegeB	privatelyBprivacyB	prisonersBprisonerBprintsBprintingBprinterB
principlesB	primitiveBpriestB	pricelessBpricedBpreyB
presumablyBprestigiousBpressingBpreservationBpresentationsB	preschoolBpreparesB	prematureB
prejudicedBpreformB	preferredB
preferenceB	predictedBpredictablyB	predatoryB	precipiceBprankBpractiseB
practicingBpoundingBpotterBpostoBpostgraduateBpossessionsB
possessionBpossessBportBporesB
populationBpoppyBpoopedBpoolsBpooBponyBpompousBpoloBpollB
politicianBpolishBpolarBpokingBpokeBpoisonedB	pointlessBpointedBpodcastBpoBpmsBplusoneBplungeBpleadingBpleaB
playgroundBplateauBplannerBplBpizzaBpitifulBpipBpinningBpingingBpinchingBpinchBpimpBpilotBpillarBpillBpilingBpiercedBpicturedBpickupBpicklesBpianosBphotographerBphotographedBphonesBphiladelphiaBphilB
phenomenalBpetronasBpetBpessimisticBpeskyBpersuadeB	personnelB
perseveredBperryBperpetuallyB
percentageB
peppermintBpendingBpendantBpencilBpeasBpearlyBpeakBpaydayBpavilionBpattiesBpathsBpatBpasteBpassportB
passengersB	passengerBpassengBpassageBpartyingBpartnershipBparticularyBparticipatingBpartedB	partakingBparliamentaryB
parliamentBparkedB
parenthoodBparenBparcelBparadiseBparadeBpantiesBpamperedBpalmsBpalmBpaletteBpalBpainlessBpacksBpacketB	packagingBpacedBpacBowningBownerBowlsBowBovershadowedBoverflowBovereatBoutrightBoutrageouslyBoutrageBoutletBoutingsBoutdoorsBoutcomesBoursB
originallyBorientedBordealBoptedBopponentB	operatingBopensBopenerBopBonsetBonsB	onlookersBonionsBongoingBonetwothreeBoneselfBoluBoleBoldestB
oftentimesBofflineBoffingBofficersBoffendsB	offendingBoffenceBoccurredBoccuringBoccupiedB	occasionsBobligedBoatmealBnyquilBnuttyBnutshellB	nurturingBnursesBnurseryBnunBnudgeBnuclearB	nourishedBnosyBnordernB
nonplussedB	nominatedBnodBnoahBnippingBnightmarishBnightlyBniBngBnewtownB
newspapersBnewlyB	newcomersBnewbieB
neuropathyBnetherlandsBnetflixBnerdBneilB	neighbourB
negativityBneedleBneatlyBnearestBneBnayBnationalityBnationBnatashaBnasalBnarrowedBnarratorB	narrativeB
narcissismBnaoBnanoB	mystifiedBmysteryB	mutteringBmuslimBmusingsB	musiciansBmusicianBmuralBmunchingBmummyBmultiBmuBmphB	movementsBmouseBmournfuBmournersBmossBmorganBmopingB	moonlightBmooBmonthlyBmonaBmojoBmoistBmoduleB
moderatelyBmodelsBmockBmobileBmoanBmoBmlBmissyB	misplacedBmisleadBmiscarriageBminorityB	ministersBministerialBmineralBmindfulBmillsBmillerBmillBmidwifeB	microsoftBmiaB	metaphorsBmetallicBmeshBmeritBmercifulBmentorB
mentioningB	menstrualB	memorizedBmemorialBmemoirBmeltingBmelodiesBmegaBmeetingsB
meditatingB	meditatedBmediocreB
medicationB	medicallyBmedalB	measuringBmeasurementsB	meanwhileBmeantimeBmeannessBmbaBmauBmatureBmathematicsBmaternalB	materialsBmashedB
marvellousBmarvelBmartinezBmarkingBmariusBmarginB
manuscriptBmanifestingB
manchesterBmammothBmammalsBmamasBmalaysiaBmakerBmajorlyBmaintainingBmailmanBmaidBmadnessB	macsharryBlyricBluxuryBlullBltrBlowestBloungeBlouiseBlouisBloudlyBlossesBlordsBloopBloonBlongestBlonelBloneBlogoBlogicalBloggingBloganBlockingBloansB	listenersBlistenerBlinekerBlinBlimitationsBlimbsBlimboBlimbB
likelihoodBlikB	lightnessBlightenBlightedBliftsBliftedB
lifestylesBlifBlickBlibertyB	liberatedBlhBleviBlethalBlessenBlengthyBlegionsBlegendsBlegendBlegacyBleedsBledangBlectureBleatherBlearnsBleapBleanneBleanBleakedBlayersBlaxmanBlawsonBlaurenBlaunchBlapsBlappingB	landscapeBladenB
lacklustreBlabBkuyaBkoreaBknockingBkmBkingdomBkinBkilterBkillsB	kidnappedBkgBkevinBkentuckyBkennyBkeenlyBkeeganBkatyBkateBkarenBkaraokeB
justifyingBjungleBjulieBjuicyBjugBjudgingBjudgesBjoyousBjournalistsB
journalistBjosephBjoseBjonahBjoeyBjewsB	jewelleryBjellyBjeanpaulBjayBjawsBjacobsBistanbulBisraelBislamB
irritationB
irrelevantBirmaBirisBiraqBipB	involvingBinvolvesB	invisibleB
invincibleBinvestigatiBinvestigateBinvasionB
invariablyBinvadedB	intuitionB
introducedB	intriguedBinterruptedBinteractBintentionallyBintentionalB	integrityB
integratedBintakeB	insuranceB	insultingB
instructorBinstinctivelyB	inspiringBinspireBinsomniaBinsistedBinsistBinsightB	insidiousBinsiderBinsertBinsanityBinsB	injusticeBinjuriesBinjectedBingredientsBingrateBingB
infrequentBinformedBinfluencingB
influencedB	influenceBinduceBindigoB	indicatedBindicateB	indenbaumB	increasesB	increasedBinconvenienceBincomingB	incidentsBinchesBincensedBincenseB	inanimateB
inadequacyBinadequaciesB
inactivityBimprovementsBimprovementBimpressionsBimpressBimpotentBimpostorBimplicationsBimmuneBimminentB	immigrantBillusionBilBignorantBiframeBieBidiotsBidealsB
idealisticBiconsBiconBickyBicedBibsBianB	hypocriteBhypeBhusseinBhurtfulBhurriedBhungerBhummusBhumanityBhuggingBhuckleberryBhsBhowsB	housewifeBhostsB	hospitalsBhorridBhormoneBhopsBhoopsBhooksB
homosexualB
homophobicBhometownB
homeownersBhomelessnessBhomB	hollywoodBhollyBholesBhobbyBhobbiesBhoaxBhmmmB	historiesBhipsBhintsBhillsB
highlightsB	highlightBhighestB
hesitationBhenryBhelplessnessBhellaBheavensBheavBheartedB
healthcareBhazyBhawkBhauntBhauledBhaulBharrassmentBharnessBharmsB
harmoniousBharmedBharleyBhardshipB	hardeningBharborBhappBhangsBhandmadeBhandedlyBhandbagB	hamburgerBhaircuteBhaircutBhailBhaikuBgwenBguttedBgushBgunongB	guitaristBguiltedBguildB
guidelinesBguessedB	guaranteeBgruntBgrumbledBgrowsBgroundsBgroanBgrillBgregBgreetBgreekBgreedBgravityBgratuitouslyB
gratificatBgrandpaBgrandmaBgranddaughterBgradesBgovernmeBgossipBgoingsBgoatBgnaBgmBglycerinBglutenBglowBgloriesBglennBgleefulBgleamBglasgowBglareBgiverBginaBgigglingBghostsBghostBgeorgiaBgeorgeBgenuineB	gentlemanBgenresBgeneticBgenericBgeekBgearedBgatheredBgateBgarmentsBgapBgalBgagBgaffeBfuturBfuryB	furnitureBfuneralBfundBfumbleBfulfillmentB
fulfillingBfuelBfruitsBfrugalBfrostingBfrightenBfrigginBfridaysBfredB
freakishlyBfrauBfranticallyBfrankieBfrancisBframeborderBframeBfounderBfoughtBfortyBforsakenBformsBformingB	forgivingBforeseeBfoolsBfondlyBfondlingBfoldedBfoBfluidsBflowyBfloridaBfloodingBflooBflirtyBflirtBflippedBflipBflickBflawedB	flatteredBflashedBflareBflapsBflailingBflagBflabbergastedBfistBfirmBfiredBfirBfinnBfinlandBfinancesBfillingBfilesBfiguringBfigurativelyBfigsBfiftyBfifteenBfierceBfiberBfiBfetchedBfetchB	festivalsB	ferociousBfengBfeastBfavourBfathersB	fashionedBfashionableBfartherBfarmersBfareBfantasyBfameBfalselyBfadedBeyelinerBexternalBexteriorBexpressionsBexposeB
explosionsBexpertB	expectantBexoticBexitBexhilarationB
exhibitionB	exercisedB	executingBexclusivelyBexcludedB	excitmentB	excitedlyBexciB	exchangedB	excessiveBexcessBexceptionalB	exceptionBexcelBexceedinglyBexamplesBexaggeratingB	evolutionBevokingBevokedB	evidencedBeventualBethiopiaBeternityBetapeBestrogenBeruptedBermBerikBequationBepBenvironmentallyBenvironmentalB	envelopedBentitledBenthusiastsB
entertainsB	entertainBenteringBensureBenormousBenhanceB
englishmanBengagingB
energizingBenemiesB	enduranceBendingsB	encompassBencasedB	enamouredB	emptinessB
empoweringB	employeesBemployedB	emphasizeB
empatheticBemotionlessBemmaBemergesB	embracingB	embarrassBembarkB	emanatingBelsewherBeliteBelevatedBelementsBelectricityB
electricalBeleanorBeldersBelderlyBelaBeightyBegyptianBeggBegalitarianBeffortlesslyBeffingBeffinBedwardBeducationalBedochieBedgyBecstasyBechoesBecBebayBeastBeasiestBearnestBearliestBeaglesBdutiesBdutchBdurationBdumpedBdummiesBdukesBdukeBductsBduckBdualityBdsBdryersBdrowsyBdrowningBdrownBdriversBdriftBdriedBdrearyBdrawingsBdrawerBdrasticallyBdrasticBdrankBdrainBdragonsBdraggingBdoubtsBdotBdorkyBdoorstepBdoodleBdonutBdonorBdonnaB	dominicanBdominantBdollsBdocBdmBdivisionB	diversityB
disturbingBdisturbBdistrustfulBdistrictBdistributorsBdistractionsBdistractionBdistractingBdistinctionB	distancedB
dissolvingB	dissolvedBdissolveB
disserviceBdisregardingBdisregardedB	disregardB
disquietedB	displayedBdisorientedBdismissBdisguiseB	discussedB	discoveryBdiscountB
disclaimerB
disciplineB	disciplesBdisbelievingB	disastersBdisappearanceBdisagreementBdirtB	directorsBdippedBdiningBdiminishBdignityBdigitalBdiffersBdietingBdiapersBdiamondBdialogB	diagnosisBdevoteesBdevoteeBdevoteBdevoidBdevilsBdevilB
developingBdetestedBdetailedB
destroyingBdestinysBdestinedB
desolationBdesiredB	desirableBdescriptionsB
describingB
depressingB	departureB	deodorantBdenyingBdentB	denouncedBdennisBdenisBdenialBdenBdemandB
delightfulBdeletedBdelaysBdelBdejecteB
definitiveBdefiniteBdefineBdefendedBdefaultBdeerB	deepeningBdeemedBdeeB	dedicatedB
decorativeB	decoratedBdeclareBdecisBdecadeBdeathsBdeanBdeafBdeadlyBdawningBdawnBdaveBdauntingBdauntedBdatesBdatedBdashBdartBdarkestBdarkerBdaringBdaraBdallasBdaisyBcynicalBcyclesBcyberB	customaryBcursingB
curriculumB	curiouslyBcurbBcumBculturalBculpritBcubeBcssBcrushedBcrunchedB	crumblingBcruiseBcrowsBcroweBcrowdedBcrotchB
croissantsBcrochetB
criticizedB
criticallyBcribBcreepyBcreepingBcreedB
creativelyB
creaminessBcreBcrcB	crazinessBcrazilyBcrayBcrampsBcrampBcrackBcozyBcowBcoveringBcoventryBcourtneyB
courthouseBcounterBcountedB
counselingBcouldveBcostlyBcorpsB	corneliusB	cornbreadBcornBcopingBcopedBcopBcooperB
convincingB	convictedB
conversionBconverseBconvenientlyB
convenientBcontributionsB
continuousBcontestsBcontentmentBcontemplateBcontaminatedBcontainsB	containerB
contagiousB	consumersBconsumerismBconsultationBconstrainedB	constanceB	constableB
conspiracyBconsolationBconsequenceBconsciousnessBcongratulationsB	congestedB	confusingBconfuseBconfirmBconfinedB
confessionB	conductorB	conductedBconditioningBcondescendingBconcludeBconcertBconcentratingB	concealedB	computersBcompromisedB
compromiseBcomprehensiveBcompostBcomplicationsB
completingB	complaintBcompetitiveBcompeteB	commutersBcommunicatedBcommonsB	committeeB
commercialB	commentedBcommandBcomicB
comfortingBcomfortablyBcombineBcomaBcoloredBcolonsB
collectiveB
collectingB	collectedBcolleagBcollaborationBcoldnessBcoinsB	cognitiveBcoercedBcoconutBcockyBcoachB	clutteredBclutchBclumsyBclubsBclownBclothBcloselyBcliveBcliqueBclipBclintonBclingyBclimateBclerkBclearedB	clearbothBclassyBclashBclarifyBclaretBclaimsBclaimedBcinemaB	churchillBchuffedBchronicallyBchristmassyBchristianityBchoosesBchoirBchillingBchildsBchickBchiBcherryB	chemistryB	chemicalsBcheerfulnessBcheekBcheBchatsBchasedB	charlotteBchargingBcharacteristicBchannelBchanelB	champagneBchamberBchainsBchainedBchaiB	certaintyBcerealB	celebrityBcelebratoryBcdnBcasuallyB	cassandraBcartoonBcartBcaroleBcarolBcarnageBcaressesBcardioBcardinalB	cardboardBcaraB
captivatedBcantorBcandleBcanalBcanadianBcampingBcambodiaBcalmnessBcalmerBcalmedBcallousBcalendarBcalebBcabinetsBcabinBbyronBbyeBbuysB
businessesBbusinBbushesBbusesBburyBburstingBburnsBbunniesBbunkBbundleBbumpsBbumpBbullyBbullsBbulliedBbuildsBbuggingBbugBbuddhismBbucksBbubblingB	brutalityBbruiseBbruceBbrownsBbrowBbroadlyBbrinkBbridesmaidsBbrianBbrewingBbrewBbrethrenBbreedsBbreathedBbreakupB	brazilianBbrazilBbratBbranchBbradBbraBbrBboutsBboutBboundaryBboundBbouncerBbothersBbosomBborrowBborderBbootBbookedBboobsBboneBbondingBbondedBbombingsBbombingBbombB
boisterousBbohemianBboggedBbodBbobbyBblushBbluesBbluBblowsBblowingBblogosphereBblocksBblockedBblissBblindingBblindedBbleakBblasBblanketsBbladderB	blackburnBbizarreB	birthdaysBbioBbindingBbethBbesiegedBbenignBbengalsB
beneficialBbenBbelongsBbellmontBbellB	believersBbeirutBbeijingBbeefyBbecuzBbeautifullyBbeatsBbearsBbeamingBbcBbattlesBbatteryB	batteringB	bathroomsBbathingBbasksBbasketsBbasicsBbashingBbashBbarryBbarrierBbarrageBbarnBbarmanBbarbieBbarbaraBbaptizedBbanterBbankingBbaniBbangBbanBbamBballoonBbalancedBbakerBbaggyBbagelBbaffledBbackwardB	backstageBbabysitBbabaBawokenBawkwardnessBawardsBawakenBawaitingBawaBaustinBaussieBauctionBauB
attributedB	attributeBattireBatmBatleastBathleticBathleteBatheismB	astoundedB	assuredlyB
assurancesBassumptionsBassumingBassholeBassetBassertBasiansBashameBartistryBartisansBarticulatedBarticlesBarrivalBarnoldBarguingBarguedBarabsBaptBapronBappsBapprovalB
approachedBappointmentsBapplicationsBapplesB	appearingB	appealingB
apothecaryBapologizingB	apologiesBanywaysB	anythingsB	anxiouslyBanticsBanothersBannouncementBannounceBannBankleBangstyBangstBangieBandoverB	analyzingBanalyzedBanalyseBamyB	amvassagoBampleBamishBamericasB	amazementBalternativesBalmondB	allocatedBallergyB	allergiesBallahB	alignmentBalignBalightBaliceBalgebraB	alexandraBalertBalbumsBalbinoBakuBaimsBaimingBaimedBaimBailmentsBahemBagreeingBagitatBageingB	aftermathBaforementionedBaffordsB
aestheticsBadvertisingB
adventuresB	adulthoodBadsBadoptionBadoptingBadoptedBadoptB
admittedlyBadmiringB	addressedB
additionalB	addictionBaddictedBadaptBacutelyBactorBactivistBacquiredBacquireB
acquaintedBacquaintancesBacneBacknowledgedBaccommodateB
accessibleBaccentBabsurdBabstractBabideBaaronB30B1991B1978B15B11BzzBzucchiniBzqBzoomsB
zonisamideBzombieBzombiBzollBzolaBzofranBzjsBziplineBzineB	zimmermanBzicoBzicamBzhuoBzenosBzendikarBzendenBzayneBzayBzaraBzapperBzapBzalB
zackmdavisBzackByussufByuruseiByupByunhosByuckBytearB
yourselvesByoshidasByoriByokedByogurtByoghurtByknowByippeeByinByikesByhhhayByesubaisB
yesterdaysByesterByerByelpingByelpByearsesByearnsByearnedByearlyByearbookByeaByawwwnByatsuraByarnsByardageByankByangBxviithBxsBxoxBxmlBxlBxiaoBxiaBxersBxelliealicexBxelaBxangoBwycombeBwycliffeBwyattBwwiiBwwB	wutheringBwussBwuBwthBwsBwrungBwrongsB
wrongfullyBwroB
wristwatchBwristsBwrinkleBwriggledBwretchedB	wrestlersBwreckingBwreckeBwreckBwowedBwoundsBwoundingBwotcsBwotBworthlessnessBworthingtonBworsenBworrysBworrieBworriBworldsBworldlyBworkshopBworkloadBworkingsB
workaholicBwordlessBwoopBwooooBwooltonBwoolBwooingBwoodstonB	woodstockB	woodlandsBwonkaBwondeBwomeBwombBwolfiewolfgangBwoesBwoefullyBwoefulBwoebegonBwodBwobblyBwnatB	wizardingBwittedBwitsB	witnessedBwitnesedB	withstandBwitherB
withdrawalBwithdrawBwitchesBwitchBwispyBwisingBwiserBwiselyB	wisconsinBwiredBwintryBwintersBwinsBwinnersBwinnerBwinneBwinkedBwinkBwineyBwinesB	winehouseBwindsorBwindmillBwincingBwimpB	wimbledonBwiltshBwiltBwilsonBwillisBwillingnessB	willinglyBwillieBwilliB	willfullyBwilfridBwildstarBwildlifeB
wildernessBwilcfryB	wiheomhaeBwightBwiggyBwierdBwieldingBwieldedBwieghtB
widespreadBwiderBwickingBwickdlyBwhoredBwhooshBwhoopingBwhoopedB	wholesaleB	wholenessBwhodBwhizzesBwhizBwhitneyBwhitleysBwhitlamBwhitesB	whitehallBwhitefriarsB	whistlingBwhistlesBwhistleBwhisperingsB
whisperingBwhiskeyBwhiskersBwhirlingBwhirledBwhirBwhingingB	whingeingBwhinesBwhinedBwhimperBwherewithalB	whereuponBwhereinBwherebyB	whereabouBwheelsBwheeeeeeBwhatnotB	whateversBwhammoBwhalesBwhaleBwetsBwestwoodBwestminsterB	westminstBwesternstyleB	westernerBwernerBwerBwennerBwendyB	welshpoolBwellequippedB	wellbeingBwelfareB	welcomingBwelcBweismansBweirdoBweirdlyB	weinsteinBweinBweightsB
weightlossBweightlesslyB
weightlessB	weightingBweighinsBweepsBweepingBweepBweededBwebsitesBwebpageBweavesBweaverBweavedBweaselBwearilyBwearersBweaponsBwealthyBweakestBwdBwcBwayneBwaxingBwavedBwatsonBwaterskiiingB
watermelonBwatcherBwashroomB	washedoutBwaryBwartsBwarrickBwarpBwarnsBwarnerBwarnedBwarmtBwarmingBwarmestBwarmedBwarhoundBwarfareB	wardrobesBwapBwantigBwantdBwaningB
wangxuehaiBwandersB
wanderlustBwanderB	wanatribeBwaltBwalshBwalrusBwallyB	wallowingBwallowBwalletsBwalkmanBwalkerBwaliaBwaleedsBwaldmansBwakeningBwaitroseBwaiterB	waistlineBwaistB
wainwrightBwailingBwaggonerBwageBwaftsBwaftBwafflesBwaddleBwackyBwaaaantB
waaaaayyyyB	vulturousBvulnerabilityBvulnerabilitiesBvulgarBvuittonBvtBvowedBvowBvotingBvotedBvortexBvomityBvomitingBvomitedBvolvoB
volunteersBvolunteeringB	voluntaryBvolumesB	voldemortBvoicingBvoicedBvogueBvocrefBvocalizeB	vocalistsBvmBvjBvivreBvivienneBvividlyBvividBvitorBvistingBvisitsBvisitorsBvisionsBvirusesBviralBvipB	violinistBviolinB	violentlyB
violationsBviolBvinylBvinnieBviniagretteBvinemanBvinegaryBvinegarBvineBvincentBvillaB
vigorouslyBvigilantB	viewpointBviewingsB
vietnameseBvietnamB	videotapeB	victoriesBvictoriaBvictimsBvicesBvicepresidentBvicenteBviceB	vicariousBvibratorBviBveyBvetsB
veterinaryBvestBvesselBveryyBversusBversaBverrrrrrrryyyyBverizonBvergingBverdictsBverballyB	verbalizeBverbalB	venturingBventuredB	ventruredBventedBvenomBvenisonBvenerateBvendorBvelocityBveldeBveinBveilBvegitarianismB
vegetablesBveeryBvaultBvaughanBvastlyBvasterBvaseBvarvelB	varsitiesBvarnishB	variationBvariantsBvarBvaporBvantageB
vanquishedBvanityBvanishedBvanillaBvanguardBvampiresB	valorizedB	valentinoBvalenteBvaleBvalbuenaBvagueBvaginalBvaginaBvaccineB	vacationsBvacancyBuwilnevrknowBuwBuuuughButopianButilizeButilityButfButeButBusmleasyBusherBusersBusdBusariousBusageBurukBursulaBurineBurgingsBurghBurgentlyBurgentBurbanBupswingBupstreamBupsetsBuprightBuppityBuploadsB	uploadingB	upliftingBuplifterBupliftedBupliftBupholsteredBupheavalBupgradeB
upbringingBunworthinessBunwittinglyB	unwillingBunwarrantedBunusedBuntriedsBuntilthenpleasantBuntidyB
untidinessB
untalentedBunsurprisingBunsupervisedBunsungBunsuccessfullyBunsteadyBunstableBunspokenwordsBunspecifiedBunspeakableB	unsimilarB
unsettlingBunseenBunseatBunrulyBunrewardingBunrestBunresponsiveB
unreliableB	unrelatedBunreceptiveB	unrealityBunravelsBunprofessionalB	unpressedBunpredictabilityBunpleasantnessBunpleasantlyBunpavedBunpaidBunmentionedBunlovingBunlikedB	unleashedBunknownsBunjustBuniversallyBuniversalizedBuniversalityB	universalBuniteBunisonB
uniquenessBunionsBunintentionallyB
unintendedBuninstallingB
uninspiredBuninhabitedB
uninformedBunilaterallyBuniformBunibrowB	unhappineBungraciouslyBungodlyBunfurledB	unfoundedBunforgivingBunforgettableBunfoldsB	unfocusedBunfitBunfathomablyB
unfaithfulBunfairlyB
uneventfulBunendurableBunencumberednessB
uneffectedBuneditedB
uneasinessBuneasB	unearthlyB	undutifulBundueB
undressingBundoubtedlyBundoBundiscoveredB	undesiredBundeservinglyBundeservingBundeservedlyBunderwayB
underwaterB	undertoneB
undertakenB	understooBunderstoBunderstandablyBunderstandableB	understadBunderstB
underratedB
underpantsB
underlyingB
underlinesB
underlinedBundergraduateBunderfBunderestimatedB
underbellyB
undeniablyBundecoratingBunconvincedBuncontrollableBuncontainableBunconsciousnessBunconsciouslyBunconsciousBunconditionallyB	unconcernB
uncomposedBuncommonBuncommittedB	uncoilingB	unchartedBuncaredBuncannyBunboundBunbornBunbelievablyBunawareBunavoidablyBunavoidableBunappreciativeB
unansweredBunafraidBunaccustomednessBunacceptablyBunacceptableB	umpteenthBumlunguBulyssesBultrasoundsBultaBuljiBulbujitneunBuhuruBuhmBuglinessBugliestBuglierBughBugandaBubuntuBuboatsBuaeBtzannB	tyremarksBtyrBtyphoonBtypedBtylerBtylenolBtygermanBtychelleBtyBtwoyearBtwothirtiesBtwosongsBtwirledBtwinsBtwingesBtwinBtwiggyBtwentysomethingBtweetyBtweenBtweedyBtwdBtwasBtutorialBtutorBtuteeBturtleB	turnoversBturnipsBturbulentlyB
turbillionBtunjiBtungBtunesBtumblingBtumbledBtulipsBtulipBtugsBtudeBtucsonBtubsBtubingBtubesB	tubelightBttcBttawinB	ttaekkajiBttBtsBtryinBtryedB
truthfullyBtrustyB
trunchbullBtrunchBtrumpetBtrumpBtrumanBtruffleBtrudgingBtrudgersBtroutBtroublBtrouBtrottingBtrottedBtropeBtroopsBtrompingBtrivialBtriumphsBtrippersBtrippedBtripleBtrioBtrinketsB	trimmingsBtrimmedBtrillionBtrigonometryB	triggeredBtriggerBtrickyBtribulationBtribeBtribalBtriaBtriBtrepidatiousBtrendyBtremorsBtremblyBtremayneB
treatmentsBtreatmenBtreatingBtreasuryB	treasuresB
treassuredB	treacheryBtreacherousBtravestyBtravBtransportationB
transplantBtransparentBtransparenceBtranslucentB
translatedB	translateB
transitoryBtransientlyB	transientBtransformersBtransformationsB	transformBtranscendentBtranscendantB	transcendBtranquilliserBtranquilityB
trancelikeBtramplesBtrampingB
trajectoryBtraitBtraipseBtrainerBtrainedB	trainableBtrailingBtrailedBtragedyBtraffickingBtraditionalistsB	traditionBtradersBtradedBtradeBtradBtraceBtptBtowersBtowelBtowedBtowBtoutedBtouristyBtourismBtouretteBtoureBtoughtBtoughestBtougherBtouchyB	touchlineBtouBtoteringBtoteBtotalityBtotaledB
toshibalolBtorwardB	torturingBtoriesBtoreBtorchBtorBtopicalBtootsiesBtootBtonksBtoniteBtonighBtonerB	tomorrowsB	tommorrowB
tomfooleryBtomesBtomatoBtolonenB	tolerableBtokuruBtogehterBtofurkeyBtoenailsBtoenailBtodyBtoddlersBtoddlerhoodBtodayyyBtodaBtodBtoastBtltgBtlBtizzyBtitledBtithBtitanicBtitanBtiringBtiradesBtiphanyBtinselBtiniestBtingsBtinglyBtinglesBtingedBtinBtimorBtimmyBtimesaBtimerBtimelessBtiltBtighterBtiggersBtiffanysBtiersBtidyingBtidyBtidbitBticsBticklingBticklesBtickledBtickingBticketsBtibrisBtianjinB	tiananmenBtiaBthunkBthundershowersBthumpsBthumpingBthumbsB	thumbnailBthugsBthugBthsBthrustBthrowsBthrongsBthroBthrivingBthriveB	thrillersBthrillBthreesBthreatsBthreatBthreadBthrashedBthoughtlessBthoughtfullyB
thoughtfulBthouBthosBthoroughBthomasBthoBthkBthislifeissparklingBthirtyeightB	thirtiethBthirteenBthirdsBthinlyB	thinkingsBthinkerBthighBthiefBthickerBthiaBtheybfBthesisBthereofBtherellBthereinB
therapistsBtherapiBthequeenbuzzBthepageBtheologicallyB	theofilouBtheodoreBtheoBtheifBthebalmB
theatricalBthearchitecturalityBthawingBthawBthatllBthatdB	thankyouuBthankkBthankingBthankfulnessBthangBthamesB	thailandsBthailandB	thackereyBtgirlBtgetBtextingBtextbookBtexasBtetheredBtetherBtetchyBtestsBtestosteroneB	testimonyBtesBterryB	terrriblyBterrorstrickenBterrorstrickB
terroristsBterrifyinglyBterrainsBterpeneBterminologyB	terminateB
terminandoBterminalB	terlambatB	tentativeBtentBtensionsBtensedBtengeBtemptationsBtempoBtemplesB	templatesBtempestuousB
temperaturBtemperamentalBtelstraBtelevisB
teleporterB	telegramsBtehBteetotallerB	teeteringBteeterB	teensiestBteenagedBteeBtediousBteddiesBtedBtechnoBtechnicallyBtechfeelBtecBteasesBteasedBteaseB
tearstaineB	tearfullyBtearfulBteacupsB	teachableBteacBtdyBtchBtbtBtbhBtaxesBtautBtattersBtatsumaBtatBtastyBtastingBtasticBtastefulBtaskedBtarynsBtarynBtarunBtartsBtartandheatheredBtartanBtargetsB	targetingBtarBtapsBtapestryB
tapestriesBtaperingBtantrumsBtantricBtansyBtannedB	tankoubanBtanglesBtangleBtangiblyBtangentBtanB	tamperingBtamarBtallyBtallinnBtallestBtalimBtalentsB
talentlessBtalBtakingsBtakeingBtaintBtahebBtaggedBtaewuhbeoryeoBtacosBtacoBtackyBtacklesBtaciturnityBtabooBtabloidsBtabithaBtabbyBsystemicBsystematicallyB	synthwaveB	syntheticBsynonymBsynodBsynchronicityBsyncedBsymptomB
symphoniesBsympathizingB
sympathiseB
sympathiesB	sympathicBsymbolicBsymbolBsydneyBsycfBsxeBswoonsBswollenBswirlingBswirlBswellingBsweetyBsweetsBsweetieB
sweetheartB
sweetenersBsweeneyBswedishBswedenB
sweatpantsBsweatingBsweaterBswearingBsweBswathBswarmingBswappingBswapBswansBswampsBswallowsB
swallowingB	swallowedB	swaggeredBswagBswBsvenBsuuuperBsustainabilitysBsustainabilityBsuspiciouslyB
suspicionsB
suspensionBsuspectsBsusannaBsurvivesBsurrealBsurprisBsurprBsurmountableBsurmiseBsurkovBsurgingB	surgeriesBsurgeonsBsurgedBsurfacesBsurBsuppousBsupplimentsB	suppliersB
supplicateBsupplementalB
supplementBsupervisingBsuperstitionsBsuperstitionBsupersensitiveBsuperpowersBsuperintendingB	superheroBsuperfluousBsuperduperreallyB	superdrugB	superbikeBsuominenBsunsetBsunniestBsunlightBsundryBsundaesBsumthgBsummeryBsummedB	summarilyBsumanBsulfateB	suitcasesBsuitcaseBsuicidalnessB	suffocateBsuffersB	sufferersBsuffeBsuedeBsudahBsudaBsuckyBsuckledBsuckeredBsucessfullyB	succumbedB	successesBsubwayBsuburbanBsubtlyB
substituteBsubstantiallyBsubspaceB	subsidingBsubsideBsubsequentlyBsubscribersBsubparB
submittingB	submittedBsubmissB	submergedB	submarineBsublimedBsubkectBsubjeBsubduedBsubdueBsubcontinentBsubbingBsubBstymiedBstylishB
stylesheetBstychBsturdyBstupefBstuntB
stunninglyB	stumblingBstuffsB	stuffingsBstuffedBstudsBstudeBstuddedBstudBstuckinBstucBstubbledBstsmB
structuralBstroveBstropB	strollersBstrollerBstrokestiffenedBstrodeB	strippingBstripesBstripedBstringsBstringerBstrikingBstridingBstrictlyBstrictBstrickBstriBstrewnB	stretchesB	stretcherB	stressorsBstressorBstrengthenedB
strengthenBstreakyBstreakedBstrayedBstrayB
strawberryB
strategiesB
strasbourgBstrappyB	strappingBstrappedBstrandsBstrandedBstraitsBstrainsB	strainingBstraightforwardnessBstraightenerB
straightenB
straddlingBstpmBstoveBstourBstoupBstorytellingB	storylineBstormyBstormingBstoopBstonesBstonersBstonerBstokillB	stoicallyBstockingB	stitchingB	stirringsBstirringBstirBstinkinBstingyBstimulationBstimpyBstillsB	stillnessB	stilettosB
stickinessBstickerBsticBstewBstevieBsterneBsterileBstereotypicalBstephenB	stephanieBstenchBstemsBstemmedBstemB	steinbeckBsteinBsteamyBsteamingBsteadilyBstayviolationBstatureB
statisticsBstationsBstatiB	statesmenBstatelyBstasiaBstarvedB
starvationBstartersBstarredB	starbucksBstanleyBstampingBstampBstaminaBstalledBstalkBstaleBstakedB	stairwellBstainingBstainedBstagnateB
staggeringB	staggeredBstaffsBstaffedBstadiumsBstaceyBstabbedBstaBsssasBssrBssbaBsriBsrcurlB	squishingBsquirtsB	squirrelsBsquirmedBsquintedB
squelchingB	squeezingBsquealsB	squawkingBsquaredBspyingBspyBspurtsBspurnedBspurgingBspurBspruceBsprogBsprintBspringyB	springpadBspringhouseBspoutingBspoutB	spotlightB
spotlesslyB
sportslineB
sportsbookB	sporkgasmBsporesBspoonfulBspookBsponsorsBspongeBspoilsBspoilersBspoilerBspoilBspockBsplutteringBsplurgeBspitakBspiroB	spiralingBspiralBspinnerBspinachBspiltBspillingBspikedB	spielbergBspielBspidersBspicesBspewingBspewBspencerBspeltBspelledBspeedyBspeedieBspeeBspeculatingBspectrumB
spectatorsB	spectacleB	specimensB	specificsBspecialtiesBspecialnessBspecializedBspecialistsBspeakershipBspazzingBspayedBspatsBspasmsBsparshBsparseBsparrowBsparklyBspansBspaniardBspacyBspaciousBspaceyBsounessB
soundtrackBsoundscapesBsoundlyBsoulessB	soulationBsothebyBsortingBsorrowfuBsorB	soporificB	sophomoreBsophistBsophieBsophatBsoothesBsoothedBsootheBsooooooooperBsooooooooooooBsoooooooooooB	sooooooooBsoooooBsoonyiBsonogramBsonnetBsoniaBsongyBsonamBsomthingB
somethingsBsomethinBsomeoenBsomeobdyB	somebodysBsolvesBsolventBsolveBsolopgangforBsolondzBsolomonBsolicitoBsolicitBsoleyBsoldieBsolbiBsolbergBsolBsojournBsohoBsoftwareBsoftlyBsofterBsoftballBsoddingB	societiesBsocietalBsocieB	socializeB
socialistsB	socialistBsocialisingB
socialisedB	socialiseBsocalledBsobsBsobrietyBsoberedBsoberBsobbingBsobbedBsoarBsoapyBsoapboxBsoakingBsoakedBsnuggledBsnuggleB	snufflingBsnuckBsnpBsnowpeaBsnowmanB	snowglobeBsnowboardingBsnotfaceB
snorkelingBsnoozingBsnoozelBsnoozeBsnootyBsnoopingBsnoopedBsnoBsnippyBsnipingB
sniiiiifffBsnifferBsniffBsnideyBsnickerBsneezeBsneakilyBsneakedBsnatchedBsnarlBsnarkyBsnarkBsnareBsnappyBsnakeBsnailBsnackingBsmsB	smotheredB	smoothingBsmootherBsmokesBsmokerBsmokedBsmithsBsmileyBsmeltBsmellyBsmearsBsmashedBsmartyBsmartestB	smackdownBsmackBslungBslumsBslumpsBslumpBslumBsluggingBslugBslsBslrBslowedBslowcoBsloughedBsloughBslouchyBsloshyBslopesBslopeBsloggingBslobbyBslitBslipsBslippersBslipperBslinkBslicingBslicedBsleevesB	sleeplessBsleekBsleazyBslaveryB	slatebookBslashedBslappingBslappedBslantedBslanderBslammedBslamBslalomBslackerBslBskullBskudriveBskirtsportsBskippingBskipperBskinsBskinnygBskinniesBskinnedBskinlessBskinfulBskincareB	skimmableBskilledBskidBskewsBsketcBskeltonBskellingtonBskeletalBskddBskatersBskateBsizzlerBsizedBsixtyBsixtiesBsituatedBsitterBsitingBsithB
sisterinlaBsistahsBsissyBsiriBsirensBsirenB
sinosovietBsingledBsingersBsingerBsingedBsinfullyBsinfulBsinestroBsinclairB	sincerityBsincBsinaisBsinaiB
simulationB
simplicityBsimplethoughtsonthingsBsimplestBsimplBsimonBsimkinBsimilaritiesBsilverygreenBsilverBsilkyBsilkBsilencesBsiiBsigningB	signifiesBsigilBsightsBsighsBsighingBsiganiBsiftingBsiestaBsienceBsiegeBsidsB	sidewalksBsidedBsidebarB	sickeningBsicBshutsBshunnedB	shufflingBshuffleB	shudderedBshubhiBshrunkBshrugBshroudedB	shroomeryBshredBshrapnelB
showcasingBshovedBshoutedBshouldveB	shouldingBshouldeBshoudlntBshotgunBshortsightedB	shortnessBshortlistedBshortishBshorterB
shorteningBshortedB
shorewardsBshoreBshorBshoppersBshopperBshopliftingBshooterBshoneBshonasBshoelaceB
shockinglyBshocBshoBshizzBshiversBshitsBshishidoBshireBshionaBshimmyBshiesB	shieldingBshhhhhhhBsherwoodBsherminBshenanigansBshelvesB	shelteredBshelledBshelfBsheepishBshaylaBshawlBshavingBshavedBshaunB	shatteredBshattereBshatterBsharpestBsharperBsharksBsharkBshardsBshapingBshapeshifterBshapesBshandurBshamelesslyB
shamefullyBshaltB	shakinessBshaiBshahzadBshackelBshackBshaBsexistB	sexaholicBsewageBseveredBsevereBseventyBseventhBsetupsBsettingsBsettBsesangBservicBservantBsermonBseriousnessB	serioulsyBserinaBsergeantBserendipityBserenceBsephoraB	separatesBsepangBsentinelB
sentimentsB	sentimentB	sentencesBsensualBsensingBsensiblyBsensibilitiesBsensationalistBsensationalBsenpaiBsenatorBsenBsemuanyaBsemiproBseminarBsemifinaB	semblanceBsellingBsellerBselfsBselfinfBselfcontrolBselfconceptBselenaB	selectorsBselectivelyB	selectiveBselamatBsekBseizureBseizingBseizedB
segregatedB	segregateBseerBseepedBseemingBseemadBseekerBseedyBseducingBseduceB
securitiesBsecuredBsectorBsectionsB	secretiveB	secretaryBsecrecyBsecondlyBsecB	sebastianBsebBseatsBseatedBseasonalBseasBsealsBsealBseafoodBseBscummyBscumBsculptorBsculptB	scruncherB	scrubbingBscrubbedBscrollB
scripturesB	scriptureBscribbleBscreenwritersBscreenwriterB
screenshotBscreensB	screeningB
screechingBscreamedBscrapsBscrapersBscrapedB	scrapbookBscrapBscrambleBscrBscoutsB	scoundrelBscotchedBscorpioBscorningBscornBscoresBscorerBsconesBscoldingBscoldedBscoffingBscissorBscientologyB	scientistBsciBschultzBschoolgirlsBscholeyBschmidtBschizofrenicB
schindlersBschemesBschellenbergB
schedulingB	schedulerBschaubBschadenfreudeBscentsB	scenariosBsceB
scatteringBscarredBscarletsBscarletBscariestBscarceBscarBscanningB	scandalouB
scamperingBscalesBscafellBscadBscabsBsawbonesB	savouringBsavourBsavorB savingyourmarriagebeforeitstartsBsausageB	saunteredBsaunaBsaudiBsaucesB
saturatingB
satisfyingBsatisfyBsationBsatansBsatanBsasukeBsassyBsaskatchewanBsashaBsardinesBsarcomaBsankBsanitiationBsangBsandraBsanctityBsanBsamuelBsamplesBsampledBsampleBsamphireB	salvagingBsalutingBsalutaryBsaltsBsaloonBsallyB	salisburyBsalesmenBsailsB
sailormoonBsailedBsagBsadnesBsadlovequotesforhimBsadisticBsadhanaBsaddledBsaddleBsaddestB	sacramentBsackBsachetsB	sachayingBsabrinaBsabaBryotaBryodanBrylinBryeowookBryeBryderBruthlessBrustlingBrustleBrustieBrusskoyeBrussianspeakingBrussianBrussellBruslanBrushhouBruralBrunnyBrunninBruneBrumbleBrumBruinedBrugmiBrufusBrufflingBruefullyBruefulBrueBrudolphBrudleyBrudimentaryBruddyBrucksackBrubbleBrubBruBrtBrrreeaallyyBroyallyBroyBrowingBrowanBroverBroutinesBroutesBroundlyBrounderBroundaboutsBrotationBrotatesBrotatedBrosterBrossBroslinBrosieB	roshanaraBroseberyBrosaBrosBropesBrootsBrootedBroostersBroosterBroomatesBrooB	ronaldsayBronBromanticisingBrolleredBrollercoasterBrolexBrolesBrohmerBrogersBrogerBrodBrockstarBrocketedBrocketBrockersBrockedBrobynBroboticBroblesBrobinsBrobertsBrobertoBrobbieBroastingBroastedBroastBroarBroamBroadsBroBrlshBrldBriversBrivaBritzBritualsBritualBritalinBritaBriskyBrisesBripplingBripeBripBriotousramblingBriotBrinsingBringsideBrileyBrikuBrikkisBrigsB
rigorouslyBrigorousB	rightwingB	rightnessBrightfulBrighteousnessB	righteousBrifkindB	ridiculedBridgerunnerBridesBriddenBrichnessBrichieBrichesBricharBricaldBribsBribcageBribbonBribBrhythmicBrhymesBrewriteBrewardsBrewardedBrewardB	revulsionBrevovlesB
revisitingB	revisitedBrevisionBrevisingBreviseBrevisBreviewerBrevertBreversesBreversedBreverendB	reverenceBreverberateBreverBrevelryBrevelingBrevedBrevealthestaryoutrulyareBreutersBreuseBreusableBreunitedBretrofittingB	retreatedBretreatBretardedBretainsBretainB	resurrectB
resuppliedBresumesBresumedBresumeBrestsBrestroomB
restraintsB
restrainedBrestrainBrestoresBrestoreBrestlessnessB
restlesslyBrestfulBrestaurantsBrestartB
respondingB	respondedBrespirometryB
respectingBresourceBresortedB	resonatesB	resonanceB	resolvingB
resolutelyB	resistantB	resilientB
resilienceBresignBresidingB	residentsBresidentBreshapedBresetBresentmentsB	resembledBresembleBresemblanceBrequirementsBrequirementB	reputableB	repulsionBrepulsedB
republicanBreprovedBreprogrammingB	reproduceB	reprimandBreprieveB
repressiveBrepressB
representsBrepresentativesBrepresentationsBreporterB
reportedlyBreportedBreporBreplicaB	replenishBrephraseB
repetetiveB
repertoireBrepercussionB	repentantB	repentancBrepellBrepelB	repeatingBrepeatedBrepealB
repairmentB	repairmanBrepairBrepBrentBrenownedBrenovationsBrenegingBrenderBrendallBrenaultBrenaissanceBrenBremovingBremovedBremoursefulB	remodeledBreminiscencesB
reminiscedBremembranceBrememberiingBremarryBremarkedB	remainderBremaiBremaB
reluctanceB
relocationB
relocatingBrelivingBrelivedB	relishingB	relievingBreliantBrelentlessnessB
relentlessB
relegationB	relegatedBrelatesBrekindleB
rejuvenateBrejoycedBrejoiceB
rejectionsBrejecteBreinsB
reinforcesBreinforcementB
reinforcedBreincarnationBreidBregurgitateBregulationsB
regulationB	regulatedBregroundBregretsBregoBregistrationBregisteringB
registeredB	regimentsBregimeBreggaeBregentsBregattaB	regainingBrefugeesBrefrigeratorBrefreshBrefrenceB	reframingBrefrainBrefocusBreflexB
reflectiveBreflectionsBrefinedBrefineBrefersBreferredBrefereesBrefereeB	reexplainBreevaluatingBreestablishBreeseB	reelectedBreelBreedBreducingBreducBredshankBredsB
rediculousBredheadBredcoatB	recyclingB	recurringB
recruitersBrecreationalB
recreatingBrecreateBrecourseBrecountBrecouB
recordingsBrecordedB
reconciledB	reconcileBrecommendingBrecommendationBrecollectionsBrecollectionBrecoilBreclaimBreckonedBreckonBrecklessBrecitingBreciprocatedBreciprocateB	rechargedBrecessioBrecessB	receiversBrecedeBrebuildBrebuilB	rebellionBrebecqueBrebeccaBreauraBreassuringlyBreassessB
rearrangedBrearedBreapplyBrealmB	realitiesBrealisationBrealiB
reaffirmedBreadmitB
readershipBreadeBreactorBreachesBrdBrazzleBrazorBraymondBrawrBravioliBraveBravagedBraucousBrattyBrattlBrationsBrationalBratedBrashesBrapsBrapportBrapistBrapingBrapidlBrapidBrapacityBrantsBrantedBrantBransomBrangingBrandBranbirBranautBrampantBrampageB	rammsteinBramblingBramadanBrallyBralliedBralfBrainwetB	rainbootsBraidingB
rafinamentB	raffaellaBrafaelBradiologistsBradicalBradiatorBradianceBradBrackingBracketBrackedBracingBracinBrachBrabiolaBrabbitsBquotedBquotaBquorumBquoBquixoteBquittingBquittinBquitterBquirkyBquinnBquiltconBquieterB	quickenedBquestionableBqueriesBquenchedBqueezyBqueerBquantumBquantityBqualmsB	qualitiesBquakingBquakerBqqBqaedaBqaB	pyongyangBpuzzlingBpuzzlesBputterBputridBputeriBpushesBpursuitBpurseBpurrrrBpurposelessBpurposBpurplesBpurgedBpurelandB
purchasingB	purchasesB	purchasedBpuppetBpuppBpunkB	punishingBpunditsBpunctuationBpunctualBpunchingBpunBpumpkinsBpumpkinBpumpinBpulpBpukeyBpuffyBpuffBpuddingB	publishesB	publishedBpublisheBpublicationsBpublicationBpublicanBpubiclyBptsdBptptBptlBptkBptiB	ptbertramB
psychopathBpsychologistsBpsychologicallyB
psychiatryBpsychiatricBpsycheBpssshBpsalmBpsBpryBpruposeBprudentB	proximityBprowlBprovokedBprovokeBprovocativeBprovisioBprovinceBprovidesBproviderB
providenceBproudlyBproudestB
protrudingBprotocolBprotoB
protestorsBprotectsBprotagonistsBprostitutionB
prosperityB	prospectsB
prosecutorBprosecutionsB	prosecuteBproseB	proscuitoBprosBproposaB	proportedB
proponentsBproplemsBprophetsB
propagandaBproofBpromptsB
promptingsBpromptedBpromptBpromoterB	promisingBprominentlyB	prolongedBprolificB	projectorB
projectingB	projectedB
prohibitedBprogressiveBprogressionB
programmedBprogrBprofordBprofitaBprofessionallyBprofessionalismB	professedBprofessB	producingBprocrastinatorBprocrastinatingB	proclaimsBproclaimingBproclaimB
processionBproceedsBproceedingsBproceedB	procedureBproblemnBprobingBprobBprizesBprizedBprivyBprivacysBpriusBpristineBprisoBprioritisesBprimoB	primetimeBprimatesBpridefulBpridedBpricksBpricklyBprickedBprickBpriB
preventionB	preventedB	prevalentBprevailsB
prettymuchB	prettiestBprettierBpretendsB	pretendedBpretBpresuppositionBprestonBprestigeBpressurizedB
pressuringBpressiesBpresentationalBpreschoolerB	prescenceBpresBprequelBpreppingBpreposterousBpreparationsBprenticeBpremonitionBpremierBprematurelyB	prejudiceB
prejudgingBpregnanciesBpregantBprefersB
preferringBpreferencesB
prefectureBprefeBprefaceBpreemieBpredominantlyBpredictionsB
predicatedBpredicamentBpredecessorBpredawnBpredatorB	preciselyBpreciseBprecipitantsB	preceptorB	preaknessBpreachedBprawnsBprawnBpranksBpranceBpramB	pragmaticB
practiciesB	practicedBppBpowerlessnessBpowellBpowdeBpovertyBpouredBpoundedBpouhereBpottyBpotsBpotionBpotholeBpotatoeB
postponingB	postponedBpostingsBpostersBpost1997B
possessiveB	possessesB	possesiveB
positivityB
positionedBpositiBposiesBposhBposeurBposesBposerBposedBposeBposBportuguBportugalB
portsmouthB
portrayingB
portrayalsB	portrayalBportraitureBportraitBportlandBportiaBportableBporgieBporeB	porcupineBporchB	porcelainBpopulatiBpoplinBpopeBpopcornBpoorlyBpooperBpoopBpooleyBponderedBponderBpompomsBpomegranateBpolytechnicBpollingBpollenBpoliticsBpolitelyBpolishedBpolicingB	policemenBpolentaBpoleBpolBpokesBpokemonB	poisonousBpoisonBpointyBpointlesslyBpoguesBpoggyBpoeticBpocketsBpocketbooksBpochayivBpoachersB	pneumoniaBplyBplutoBpluralsBplungingBplumpBplummetBplummerBplumbBplumBpluginBpluggedBployBplowingBploddedBpleinBpleeeeeeaseBpledgeB	pleasuresBpleaserBpleasentBpleasantnessBpleasBpleadedBpleadB
playwrightBplaysBplayroomBplayoffsBplaylistBplayhousecommBplayeBplaydateBplayboyBplatterB
platitudesBplateausB	plastikanB	plantingsBplantingBplantedBplantarBplaiBplagueBplacingB	placementBplacceBplacBplaBpixiesBpixarB
pittsburghBpitsBpitocinBpitmanBpitifuBpitiedBpitchersBpitcherBpitchBpistolsBpistolBpistilBpissyBpissingBpissesBpissB	pipsqueakBpipkinBpipeBpiousBpioneersBpinpointBpinotBpinnedBpinkyBpingBpinewoodB	pineappleBpinchedBpimplesBpimpleBpilotsBpillowsBpilingsB
pilgrimageBpilferedBpilesBpileonBpiledBpilatesBpigeonsBpiddledBpiddiBpicturesqueBpicoultBpicnicsBpickyBpicksBpickleB	picketingBpicBpiBphysicsB	physicianBphysicalityBphyicaBphrBphotoshootsB
photoshootBphotojournalisticallyBphotographingBphotographersBphoenixBphoebeBphobiaBphiltersBphilosophiesBphilosophicalBphilosopherBphilipsBphilippaBphewB
phenomenonB	phenomenaBphasesBphantomwiseBpgceBpgB	pettigrewBpetaB
pestilenceB
pesticidesBpestersBpesterB	pessimismBpesachBpervertB	pervasiveBperuseBperusalBpertainBpersuasivelyB
persuasionBperspirationBperspiBperspectivesB	personalsBpersonalizedBpersonalitiesBpersomB
persistentBpersistenceB	persevereBperserverenceB
persecutedBpersBperrB	perplexedB
permittingB
permissionB	permeatesB	permanentB
permanenceBperksBperishablesBperilBperfumesBperfumedB	performerB	performedB
perfectionB
peregrinosB
percolatedB	percievesBpercieveB
perceptiveBperceptionsB	perceivesB	perceivedBpepperBpenyeriBpentupBpentBpensiveBpenryBpennyB
penningtonBpenniesBpenknifeB	peninsulaBpenguinBpenelopeB	pendletonBpenceBpenanceBpelvisBpelvicBpeltsBpekingBpeggyBpeggedBpeetaBpeeringBpeepsBpeepBpeelingBpeekingBpeeingBpedrettiBpedlarBpedicureBpediatricianBpedestriansB
pedestrianB
peculiarlyBpeculiarBpeckishBpearlsBpearlBpearBpeanutsBpeanutBpeachyBpeachesBpeachBpeacefulnessBpcmBpbssBpbB
payperpostBpaypalBpayoffBpayersBpawsBpawdicurBpavemBpausesBpauseBpausBpaulieBpattyBpatternsBpattedBpatronsB	patronizeBpatronBpatrolB
patriotismB	patrioticB	patrimonyBpatrBpatioBpatieBpathologicallyBpathologicalBpaternalBpatentBpatelB	patagoniaBpastorBpasterBpastasBpassiveBpassionsBpasserbyBpasserBpassengeredBpassagesBpasBpartysBpartneBpartialBparsonBparodyBparmesanBparlorBparkingBparkinB	parkhurstBparkerBparishesBpariahBparchedBparatroopersB
paraphraseB	paranoiudBparamilitaryB	paralyzedB	paralysisB	parallelsBparallelB	paragraphBparadoxicallyBparableB	paperworkBpapermakeupstampsBpapasB	paparazziBpapamokaBpantingBpanormaBpaniBpanderBpalsBpalpablyBpalinBpalestiniansBpalcebowhoresBpalateBpalaceBpalacB	pakistaniBpajamasBpajamaBpairsBpairingBpairedBpaintedBpainstakinglyB
painriddenBpainingBpailBpaigeBpaiBpagetypeBpagersBpactBpacquiaoBpacmanBpackagesBpackagedBpacificBpacemenBpaakerBpaBozBoxtailBoxfordBoxbowBowenBowedB
overworkedB
overwhelmsB
overweightBoverturningBovertookBovertlyBovertimeB	overthinkB	overtakenBovertakeBoversteppingB	oversleptB	oversizedBoverrrrrrrrrrrrBoverreactedB	overratedB
overpowersBoverpoweredB	overpowerB	overnightBoverlappingB
overheatedBoverhearingBoverheadBoverheaBoverhaulB
overflowedBoverfedBoverexcitedBoveremotionalBovereducatedBoverdueBoverdramaticBoverdoseBoverdoneB	overdoingBoverdoBovercompensateB
overcomingB	overcometB	overcomesB	overboardBoveranalyzedBovenBovationsBovationBovariesB	outweighsBoutwardBouttaBoutstandingBoutsprintedBoutsidesB	outsidersBoutsidBoutsetBoutsB	outragingBoutrBoutpouringsBoutlookB	outlawingBoutingBoutgrownB
outfittersBouterBoutdoorBoutdidB	outcastedBoutcastB	outburstsBoutburstBoutbreakBounceBouBotherworldlinessBosthrythB	osteopathBospBoscarsBoscarB	orthoticsBorthodoxBorphanBornithologicalBorissaBorihimeBoriginsBoriginalityBorgasmicBorgasmBorgansB
organizersBorganizationalB
organisingBorganBorgB
ordinancesBordersBorderlyBorderingBordainedBorcisBorciBorangesBoralBoraBoptimistBoptimismBoprahB
oppressiveB	oppressedB	oppositesB	opponentsBoppiesBopiumBopinonsBopinBoperateBoperaBopenplanBopennessBopaBoozingBootBoopsBooohBoomphBoogleBontologyBonelBoneillBoneilBoncologyBoncologistsBomissionB	ominouslyBominousBomegleBomegaBomeBomdBomangyBolympicsBologyBollieBoliviasBoliviaBoliverBoldsBolajideolafunmbiBoiutBoilinessBohioB	offspringBoffsideBoffsetB	officialsBoffhandB	offeringsB
oesophagusBodorBodonnellBodkhBodeonBodeBoclockBocdBoccursB	occurringBoccuredBoccurB	occupyingB
occupationB	occupantsBoccupaBoccultBoccassionalBobviB	obtainingBobstacleB	observersBobservedBobservationsBobrianBobnoxiouslyB	obliviousBoblivioBobligeB
obligatoryBobjectivelyB	objectiveBobeysBobesityBobeseBobedientB	obedienceBobbieBoakwoodBoaklandBoakBnytimesBnwBnvmBnutsB
nutritiousBnutritionallyBnurturedBnursedBnuptialsB	numbinglyBnuhBnuffBnudistsBnudgingBnuancesBnuanceBntowardBnthingBnowherBnovoyeBnoviceBnovBnouveauBnottingBnotoriouslyB	notorietyB	notifyingBnotifyB
noticeablyB
noticeableB	noticableBnothnigBnothingnessB
noteworthyBnotciedBnotchBnostrilB	nosebandsBnorwichBnorthwesternBnorthernB	normativeB	normalityBnormalcyBnorfolkB
nordstromsBnorahBnopeBnoorBnoooBnooksBnookBnoodlesBnoodleBnoobBnonstopBnonpBnonexistentBnondescriptBnonconformistsB
nonchalantBnonabolitionistsBnomineesBnomanBnolongerBnokiaBnoisiestBnoeBnodsBnobleBnizanBnitchBnissanBnipplesBnippedBnipigonBninthBninewestBnillyBnijifagilieB
nightmaresBnightmarB	nightlifeBnightiesBnightersBnighBnigglingBnigglesBnigeriaBnigaBnigBnicuBnicotineBnicosBnicoleBnicolaBnickyB	nicknamesBnickeyB
nicholsonsBnicheBnicestBnicBnibblingBnflBnewrhinegargoyleBnewnessBnewlandsBnewgateBnewerB	newcastleBnevilleBnevilB	nevermindBneverendingBnevaBneuroticworkaholicBneurosurgeonsBneunBnetworksBnetBnestledBnesBnervousnessB	nervouslyBnervoBnerdyBnephewBnepaliBneottaemuneBneoreulBneoneunBneonBneolBneoBnemesisB
neighboursBneighborhoodsBneighborBnegotiationsB	negativesBnegatedBnegateBneedlesB	needinessBneedinBnedsBnecessitiesBnecessarBnearnessBnealBnaziBnavyB
navigatingB	nauseatedBnauseasBnaturesBnatuBnativesBnationalismBnathansBnathanBnastilyB	nashvilleBnarrowBnarratedBnapsBnapkinBnapeBnaomiBnannyingBnancyBnanashiBnamjaBnamelyBnamelessBnamanBnalBnakaharaBnaivetyBnailartBnahariyaBnaggedBnaegenBnaegaBnachosB	mythologyBmythicalBmystiqueBmystifBmysticalB
mysteriousBmysalvagedtreasuresBmyriadBmychemBmxmBmuzeBmutteredBmustyBmustardBmuslimsBmusingB	musicjuzzBmusicianshipBmushyBmushroomBmuseumBmusesBmuseliBmuruaB	murreletsBmurmuredBmurmurBmurdererBmurakamiBmunroeB	munnabhaiBmunBmumblingBmumbledBmumbaiBmultitudinousB	multitudeBmultitaskingB
multipliedBmultiplayerB	multibandBmulledBmullBmulattoBmukerjiBmujheBmugBmufflingBmuffinsBmuffBmuddyBmuddlingBmudderB	mudbloodsBmucusBmuazBmuayBmuasBmtBmsoBmsgBmrtB
mrdanbairdBmpsB
mozzarellaBmozBmoxieBmowbrayBmoversBmouthsB	mouthfulsBmouthedBmousseB	mousekinsBmousaviBmournB	mountainsBmountBmoundBmouldingBmouldBmoududBmotorsBmotorcyclistB
motorcycleB	motorbikeBmotivesB	motivatorBmotivationsBmotivationalB
motivatingBmotivateBmotionsBmotherloverBmotelBmotBmosquitoBmoshavBmortuaryBmortonBmortgageB	mortalityBmorselsBmorrowB	morrisseyBmorrisonBmorrisBmorphedBmormonsB	mormonismBmormonBmoribundB	morgantonBmordBmorbidlyBmoralityBmoraliBmopeyBmooshiluBmooseBmoonlightingBmoonlighBmoochingBmontheBmontaukB	montaguesBmonstersBmonotonyBmonopolyB
monogamousBmonmouthBmonkeysB
monitoringBmonicaBmongooseB	mongeringBmondaysBmonasticBmonarchsBmonarchBmonacoBmonBmomoBmommysB	momentaryBmollyBmolluskBmolineuxBmolinaB	molestingBmolestedBmoldBmoisturizingBmoisturizedBmoistureBmohammedBmogulBmoeBmodifiedBmodificationBmodestBmodesBmodelingBmockeryBmockedBmobileclassBmobbedBmobBmoandayBmmBmkBmizukiBmiyaviBmixturesBmixingBmixerBmiteBmitchumBmitchBmisunderstandingBmistyBmistrustfulB
mistressesBmistressBmistreatmentB
mistreatedBmisterBmisstreatedBmisspeltBmississippiBmissionsB	missionarBmissileBmissgivingsBmissesBmisrepresentedBmisquoteBmisogynyBmisogynistsBmisoBmisledBmisinterpretedBmisinformedBmishapBmishandlingB
misgivingsBmisfortunesBmiseriesB
miscreantsBmischievousBmischiefBmisbehaviorBmisBmireB
mircowavedBmiraculouslyB
miraculousBmiraclesBmiracleBmiraBmirBminutB	minusculeBmintBminsBminisshaBminimizeBminimiseBminicabBminibusB	miniatureBmingledBmingleBminesBminervaBmineralsBminBmimmB	mimickingB	mimedogerBmilongaBmillyB	milkshakeB
milestonesBmilerBmilanBmilBmikalaBmightyBmifBmienB	midwiferyBmidwestBmidtermBmidoriBmidnightBmidlifeBmidfieldB
midcenturyBmichaelsBmiceBmicahBmicaBmicBmexigothBmettafulBmetropolitanBmetresBmetierBmeticulouslyBmethuenBmethodicallyB	metforminBmetaphoricallyB
metaphoricBmetalsB
metabolismB	messianicBmessesB	messagingB	mesmerismBmerylBmerryBmerrillBmeritsBmeridaBmerekaBmercilesslyB	mercilessBmerchantBmerasaBmenuBmentionsBmensesBmensaBmensB	menopauseBmeningiomasBmenatarBmenasheBmemsetB	memorableBmemoirsBmemesBmembresB
membershipBmembeBmeltyBmeltdownBmelonomaBmelodramaticallyB	melodiousBmelodBmellorBmellonBmelissaB	melbourneBmelbourBmelanieBmeingBmehowBmehBmeeklyBmediterraneanBmeditateB	mediationBmediateBmedB	mechanismBmeathBmeasurementB
measurableB
meaningfulBmeanderingsBmeadowBmdBmcslackersonBmcshaneBmcravenB	mcphersonBmcleishBmcillvanneyBmcgonnagallB
mcgarrigleB	mcdonaldsBmccreadyBmccolganBmccarthyBmccannsBmccannBmcasBmcarthurBmbourgonBmazeBmayorBmayoBmaybeeBmaxsBmaximizeBmaxBmauriceBmaureenBmaudieBmaudBmaturityBmaturestudenthanginginthereBmattyBmatteroffactBmatteBmattaBmatildaBmathematicalBmaterialiseBmatchingBmatadorBmatB
masturbateBmasteryBmasterpieceBmasteredB	massagingBmassacreBmasonBmasochisticallyB	masochistBmashmellowsBmasculinityB	masculineBmascarasBmascaraBmasalaBmasBmarzzzBmarylandBmarybethBmarvinB	marvelingBmartinaB
martialledBmarthaBmarsilidBmarshmallowsBmarshalBmarryingBmarryBmarrowsB	marriagesBmarredBmarloweBmarlonBmarketsBmarketplaceBmarketerBmarilynBmarillacBmarillaBmarianaB
marginallyBmareBmarchingBmarchersBmarblesBmarbledBmaraBmapsBmapBmanuscriptsBmanureB	manuchehrBmantraBmansoorBmansionBmansellB	manlinessBmankindBmanitzBmaniradoBmanipulatedB
manipulateBmanilaB	manifestsB
manifestedBmanifestationsBmanifestationBmanicureBmaniacalB
manhandledBmangoesBmangaBmaneuverableBmaneBmandyBmandatedBmanchurB	managmentBmanagingBmanagesB
manageableB	mammogramBmamanB	malthouseBmalteseB
malmesburyBmalmBmallratBmalkinB	malignantB
malevolentBmalesBmalaiBmalaccaBmalBmaksBmakinBmakersBmakeoverBmajestyBmajesticBmaitB
maintainedBmailsB	mailorderBmailingBmailboxBmaiBmagzineBmagnumBmagnificentBmagnetsBmagneticBmagnateBmagnanimityB
magistrateB	magicallyBmaggovertskiB	magazinesBmagazinBmaeveB	maelstromBmaeBmadreBmadlyB	maddeningBmackBmachoB	machineryBmachiavellianBmachiavelliBmachiBmaceysBmacendarferBmacabreBlynchedBlymeBlymanBlveBlvB	luxuriousBluxeBlusciousBlurkingBlurkBlungeB	luncheonsBlunarBlunapadsBluminaryBlumiaBlumberedBluluBlullsBlulledBlukaB	lugubriouB	lucrativeBlucilleBlucienBluceBlucasBluarBlsdBlrtBlrdgBlpB	loyalistsB
lowspiriteBlowlyB	lowlightsBlowestsBloweredBlowdownBloveyB	lovesongsBloveittBloveinBlovediBloveboxBlousBloungingBlouiBloudonsBloucheB
louboutinsBlotteryBlotteBlotionBlothaireBlorriesBlorenaBlordeBlopezBlooterBlootBloosesBlooserBloosenBloopyBlooooongBloomingBlooBlonleyBlonglastingBlongingsB	longinglyB	longevityBlongedB
longbottomBlonBlolllB	lollipopsBlolaBlokpalB	loiteringB	logisticsB	logicallyBloggedBlogarythmicBloftBlodgedB
locomotiveBlockerBlochBlocationBlocatedBlocateBlocaleBlobiaBlobeliaBlobbyingBlobbyBlobbiesBloathingBloathedBloatheBloadaBloBlloydBlllBllerBlizzyBlizardsBlizaB	livingstoB	livevideoBliverBlivejournalsBliveagainsttheflowBlivBlitteredBlitteBlitsenB
liteheadedBliteBlistingBliseBlisasBlisaBlirianoBliqueurB	lipsticksBlippmannBlipbalmsBlionBlinusBlinsayBlinoleumB	linklaterBlinguisticsBlingoBlingersB	lingeringBlingerBlinesmanBlindoBlindaBlimplyBlimpBlimitingBlimesB	limelightBlimbedBlilongweBliliBlikewiseBlikeguyB
likeaudreyBlightweightB
lightwaterB	lightsyncB
lightmeterBlightheartedBlightheadedB
lighteningB	lightenedBliftingB	lifetimesBlifespanB
lifesavingBlifelongBlifelineBlieutenantsBliekBliebsterBliebkindBlidsBlidBlicenceBlibidoB	libertineB
liberationBlibelBlibBliarBliaotungBliamBlexiconBlevelledBletdownBlestatBlestariBlestBleslielandbergBleslieBlesbianBleopardBleonoraBleonardBleoBlentenBlentB
lensflaresBlensBlenoirBleninBlenghthBlendsBlendingBlendersBlemurBlemmeBlejerB	leisurelyBleibnitzBlegtimatelyBlegosBlegoB
legitimizeBlegitematelyBlegislatorsBlegallyBlegalityBleftyBleerBleechesBlecturesBlecBleasB	learningsBlearingBleaporBleapedBleansBleaningBleanedBleakBleafBleadingstringsBleadenBleadeBlcdBlazeBlayoutBlayeredBlaxBlawyersBlawyerBlawsBlawrencewashingtonBlawnBlawlessBlavenderBlavatoryBlavaBlaurieBlaurentBlaurelsBlauperB
launderingBlaugingBlaughsBlaughinBlatleyBlatinBlathiBlatherBlatchBlaserBlarryBlappedBlapelsBlankyBlankasB	languagesBlanguagedirectionBlanguBlandscapingB
landscapesBlandsB	landrianiBlandmassBlandlorBlandladyB	lancasterB
lancashireBlaminateBlamentedB	lambruscoBlambBlajoieBlaiyaBlaggingBlaggedBlaetshiBladyshipBladybitsBladdiesBladderBladBlacyBlacksBlackedBlaceysB	labyrinthBlabsBlaborsBlabiaBlabelsBlabelledBlabelingBlabanBkyuhyunBkyteBkuwaitBkurtBkuribayashiBkurfrstendammBkumarBkulihatBkrupkeBkristieBkristiBkristaBkremBkrakauerBkoyamaBkotaBkorupBkoreansBkookBkompanyBkomeBkoloBknwingBknowlegeBknowledgeableB	knowinglyBknottingBknottedBknotsBknittinBknitBkneltBkneelsBkneelBkleinkindersBkleinBkitweBkittBkitsBkitobenBkithBkitesBkisserBkislingBkirkwoodBkinshipBkinnockBkinisonB	kingswoodBkindestBkindergartenersBkinddaBkinaBkilosBkilljoyBkillersBkilburnBkierkegaardB	kidnapperBkidnapBkiddyBkiddingBkickoffsBkhthonsBkhmerBkhiBkhartoumBkeynotesBkeychainBkertedBkerryBkerouacB
keptinsideBkenyaBkellyBkeithBkeitaBkeikoBkatzBkatrinasBkatrinaBkatnisssBkatnissBkatjaBkatieB	kathumpedB	katherineBkatanyaB	kastriotiBkassimB	karmardavBkarmaBkarinBkarimBkarenaBkareenaB
kardashionBkarateBkarapiroBkaraBkaoBkansasBkangnaBkandalBkameBkaliBkalaBkairiBkaikoheBkaddishBkacangBkaBjzBjustwhenBjustlyBjustificationB
justanswerBjurysBjuryBjurerBjungeunsBjunBjumpyB
jumbleuponBjumbleBjuliemadbloggerB	juliannasBjulianB
juggernautB	judgmentsB
judgmentalBjudgmentBjudgementalBjudeoBjubilationsB
jubilationBjtwooBjtBjsBjrpgsBjrockBjoyfullyBjourneysBjournalsB
journalismB
journalingBjotBjoshBjontiBjonnyBjongwoonBjongBjonesingBjonalynBjoltedBjoltBjoleonBjolBjokedBjointsBjointlyBjointBjoieBjohnsonBjohnsB
johnnykajeBjohnnyBjohannBjogsBjoglessBjoggingBjoggerBjogBjoeysBjoannaBjoanBjivesBjitteryBjinnyBjinglyBjinBjimmysBjimmyBjiltedBjillBjigsawBjiaBjhbdjhdfbjdfhbfdBjewelsBjewellerBjewBjetsBjetBjestBjessicadickinsongoodmanBjessicaBjesseBjessamyBjessBjerryBjerkedBjerkBjeraldBjeoldaeBjensBjenniferBjennaBjennBjeneBjehovahBjeffreyBjeffBjeeredBjediBjeanBjealB	jdeliveryBjchoBjazzBjaysonBjawlineBjawB
javascriptBjasonsBjarsBjarethsBjaredBjarBjapanBjanneBjanineBjanetBjammedBjamilaBjamiesBjamiatBjambaBjamBjalopyBjalapenoBjakunBjailBjahmeneBjaguarBjaggerBjagBjaeryongBjadiBjacqueBjacobBjacksonvilleBjackieBjacketsBjackedBjabgeoBiyaBivoryBitunesBitsyB	itinerantBitgeB
iterationsBitemisedB	itdamyeonBitchyBitchBissB
israelitesBisraelisBisraeliBisprivateblogB	isprivateB	isolatingBisolateB	isobelmegBismsBismobileBismailyBismBisleBislandsBisightBisabellaBisabelBirwinsBirritateBirritabilityBirresponcibleBirresistibleBirresistableBirreplaceableBirreparablyBirregardlessB
ironicallyBirlBirishmanBirinaBireunBircBiraqiBirBiosBiolaniBinvolveBinvitingBinvitationsBinvitatiBinvestigatorsBinvertedB	inventoryBinventedBinvadeBintubateB	intrusiveB	intrusionBintruderBintrovertedB	intricateBintrBintoxicationBintoleranceBintolerablyBintimidationB
intimidateB
intimatelyBintimateBinterviewerB	interveneBintervalB
interruptsBinterpretationsBinterpretationBinterpersonalB	internistB	internetsBinternalizeBintermittentBinterminableBintermediariesBintermarryingB
interlocksBinterferenceB
interestinBintercourseBinterchangeBintercessorBinterceptionsBinterceptedBinterceBinteractiveBinteractionB
interactedBinterBintentsBintentionalityB	intensiveBintensifyingB	integrateBintegralBintacBintB	insyallahBinsultBinsularBinsulBinsufficientBinsufficiencyBinstrumentsBinstrumentalBinstrumeBinstructablesB	instilledBinstillB
instigatedBinsteBinstallmentBinspiteBinspirationsBinspirBinspiB	inspectorB	inspectedBinspectBinsidB
insecurityB	insecuredBinsectBinsdieBinscrieB
inscribingB	inscribedB
insatiablyBinsanelyBinquisitionBinquiredBinquireBinnuendoB
innovativeBinnovationsBinnateB
innanimateBinlineB
injusticesBinjuringB
initiationBinitallyBiniB
inhumanityBinhumanB
inherentlyBinhalersBinhalerB	ingrainedBingorantB	ingeniousBinfusionBinfuriaBinfrastructureBinfpBinformationalBinformalityBinformalBinfluxBinfluentialB	inflictedB	inflatingBinflatedBinflammatoryBinflammationBinfieldB
infidelityBinferiorityBinfectBinfatuationBinfantryBinfamousBinexplicablyBinexperienceBinexcusableBinescapableB
inequalityBineptBineffectualBineffectiveB	indulgentB
indulgenceBinducingBinducesB	indonesiaBindividuallyBindividualityBindisputablyBindiscriminatelyB
indirectlyBindigestionB
indigenousBindifferentB
indifferenBindieB
indicationBindependentlyB
indenturedBindB
incursionsBincurredBincredulouslyB
incredulouB	incorrectBincorporateBinconsistentBinconsiderateBinconsequentialBincomprehensibleB
incompleteBincompetentBincommunicadoBincomesBincoherenceB	inclusiveBinclinationsBinclinationBincisionB	incidenceBincheswhyinchesBinchB
incestuousBincestBincessantlyB	incessantBincenBincaseBincapacitatedBincalculableBinboxB	inbalanceBinaugurationBinarticulateBinadequacieB
inadaquateBinactionB
inaccurateB	inabilityB	impulsiveBimpulseBimpugnedBimpudentBimprovisingB	improvingBimprovB	impromptuB	imprintedBimpressionableB
impressingBimpracticalBimposeBimporantBimplyBimplementingB	implementBimplantsBimpingB	impetuousBimperturbableB
impersonalBimperfectionB	imperfectBimpenetrableB	impactingBimpactedBimmoralBimmigrationB
immigrantsBimmaBimitatesBimingB	imbicilicBimbibedBimanBimagingBimaBillustratorsBillustrationsBillustrationBillustratingBillustratedB	illusionsBillogicallyBillicitsBillicitBillegalBiiiB
ignorantlyBignitesBignitedBigleBiggyBigBifyouwanttoknowBidreamcultureBidrcBidlingBidleBidiocyBideologyBidentifyingB
identifiedBideallyB	idealizedBidahoBibroxBiamBhyunjinBhyundaiB
hystericalBhypocriticalB	hypocrisyBhyphenBhyperventilatingBhyperthyroidismBhyperemesisBhyperchondriaBhyenasBhyenaBhydeBhyBhwBhuvinBhuskyBhurtledB	hurriedlyB
hurricanesB	hurricaneBhurricaBhurlingBhuntleyBhuntersBhunkersBhungersB
hungariansBhunchBhunB	humungousBhumpingBhumpBhumourB
humorouslyBhumoredB	hummpffffBhummingBhumiliationBhumiliatingB	humbugishBhumbugBhumblyBhumblingBhumanlyBhumanizeB	humanitysBhumaneBhumanbeingsBhuhweBhuggedBhudsonBhuddlingBhuddledBhubbardBhuBhrsBhrBhpBhowlingBhowlBhoveringBhovelBhoustonBhousesB
housematesB	housekeepB
householdsB
houseboundB	hourglassBhottestBhotlineBhotelsBhoteBhostingBhostedBhospitalizedBhospitalityBhorseyBhorroB
horrifyingBhorrificB
horribilisBhorrendouslyBhornedBhormonesBhormonalBhorizonBhoppersBhopkinsBhopefullBhootonBhootedBhookerBhookedBhoodBhooBhonourBhonoluluBhonkerblonkedBhondurasBhomosexualityB
homophobiaBhomesickishBhomeschoolingBhomeschooledB	homemakerBhomelessBhomelandBhomageB	hollyoaksBholliBhollerBhollandBholisticBholinessBholierBholiBholderBholdenBhogmanayBhockneyBhobnobB	hobnailedBhobicaBhobbsBhobbleBhoarseBhoardsBhoardingBhoardersBhoardBhoBhmmmmmBhmmBhjersonBhizakiBhiveBhitlerB
historiansBhiredBhipsterBhinterlandsBhinduB	hindranceBhindiBhinderedB
hinderanceBhillsideBhillaryBhilariouslyB	hilariousBhikedBhijackedBhijackBhiitB
highschoolBhighsBhighrevvingB	hierarchyBhierarchiesB	hideouslyBhideousBhidBhickoryBhibernatingBhiatusBhgtvBheureulsurokBhesitationsBherzogBherthaBherselBherseBherpesBheronBhermioneBherculesBherbsBheraldsBheraldBhepzibahBhepburnBhenypireBhensB	henriettaBhenriB	hendricksBhenckeBhenBhemorrhoidsBhelterskelterBhelplineB
helplesslyBhelmBhelenaBhelenB	heinouslyBheinousBheinekenBheightenB
heheheheheBhehBheftyBheeledBheelBheedBheeBhedgesBhecticBheathenBheaterBheartyB	heartsickBheartsearchinBheartrendingB	heartburnBheartbreaksBheartbreakingB	heartbreaB	healthierBhealsBhealeyBhealersBheadwayBheadlampBheaderBheadcoldBheadbandB	headachesBheaaaBheaBhazzardBhayB	hawksheadBhawaiiBhavetB	haverfordBhavBhausaBhauntsBhathBhatesBhatenaBhatchetBhatchBhastyBhassleBhasanBharveyBharvestB	harshnessBharshlyB	harrowingBharrassBharperBharmonyB
harmonizesBharmlessB	harmfullyBhardworkingBhardnessB	hardbroomB
harassmentBharakiriBhappywarmworldB
happiunessBhappiestB
happeningsBhapinessBhansBhannahsBhannahBhankBhanginBhangedBhanfordBhandssBhandoveBhandkerchiefBhandheldB	handbrakeBhanbeonBhamperedBhamperBhamnettBhammeredBhammerBhaltedBhaltBhallwaysBhallucinationsBhallucinateBhallmarkB	halfpriceB	halfeatenBhalBhakaB	hairstyleBhairstyeBhairsB	hairdryerBhaiBhahahahahhaBhahahBhahBhaggleBhageBhaeBhacklesBhackingBhabitualBhabaneroBhaagenBgypBgwiyomiBgwBgustoBgurusBguntherB
gunslingerBgunsBgunnaBgunkBgumpBgummyBgulpedBgullibleBguitarsBguilyBguilBguidedB	guidebookBguffawBgudBguchaBgucciBguarBguBgruntsBgrudgeBgrowersBgroveB
groundlessB	grotesqueBgrosslyBgroomsBgrocersB	groceriesBgrobanBgroanedBgroBgrittilyBgritBgrisBgripsBgrippingBgrippedBgripBgrinsBgrinningBgrinnedBgringaBgrindingBgrinchB	grimacingBgrimacedBgrimaceBgrimBgriffB
grievancesBgriefsBgreysBgreivingB	greetingsBgreensBgreenockBgreeneryB	greenacreBgreatbritainBgreasyBgrazedBgrayingBgrayB	gravesideBgravesBgravelyBgratingBgratefulnessB
grassrootsBgraspingBgraspedBgraphicsBgraphicBgrapesBgrantingBgrantBgrannyB	grandsonsBgrandmothersBgrandeurBgrainsBgrainBgrahamBgraemeBgraduateBgradersBgracesB
gracefullyBgracedBgrabbyBgrBgpBgownsB	governmenBgourmetBgouldBgoughBgotongBgothicBgothBgosmanB
gorgeouslyBgorgeBgorengsBgoreBgordonBgopBgooseyBgooseBgoonsBgooglerBgoofB	goodnightBgoodieBgoodhumouredlBgoochBgooBgongBgonaBgonBgoldschlagerB
goldilocksBgoinBgoerBgodwinBgodlyB	goddamnedB	goalpostsBgoaheadBgoadedBgnawingBgmcBglycemicBglumnessBgluedBgluBglowingBglowedBgloveBgloucestershireBglossyBglossaryBglossBgloryBglorneyBgloriaB
gloominessBglobeBgloatingBgloatedBglitterBglitchesB
glisteningBglintBglimpsedBgliblyBglenysB	gleefullyBglcBglaresBglandsBglamourBglamBgladysB	gladiatorBglaBgivingsBgirlieBgiraffesB	ginormousBgimmicksBgimmickBgimmeBgillsBgilbertBgilBgigBgiardinaBgiBghostingBghorbaniBghettosBghdBgfsBgfathersBgetyourprettyonBgesturesBgesturedB	gestatingBgertrudeBgerrymanderedBgermanyBgeremiafamilyBgeorgieBgeorgBgeologyB	geographyBgeographicallyBgeographicalBgentsB
gentrifiedBgenocideBgeniaBgenevaB
generosityB	generatorBgenerationalBgenerateBgeneralizingBgeneralisedBgeneliaBgenealogicalBgeneBgenBgeminiBgeezBgeeseBgeesBgedBgbBgaulleBgaugeBgaucheBgatsseoBgathersB
gatheringsBgatewayBgatdaBgastroBgaspedBgaspBgaseumiB	gascoigneB	garnishesBgarminBgardensB	gardenersBgardeBgarBgapeBgangingBgangesB
gandhigiriBganderBganBgamersBgamblersBgallivantingBgalileoBgalaxyBgalaxiesBgainingBgaigeBgaiaB	gabriellaBgabrielernesB
gabapentinBfuturesBfutrueBfutonBfutileBfussBfurthermoreBfurBfunkyBfunkB
fundraiserBfundedBfundamentalistsBfundamentalBfunctioningBfumesBfullnessBfullestBfulfilBfukumuraBfuhrerBfugBfudgyBfudgeBfuckerBftwB	frustratiB
frustratesBfrusteratedBfrozeBfrownBfrostyBfrontsBfronBfromtheBfrombutBfrogBfrockBfroBfrizzBfrillyBfrighteningB	frighteneBfrighteBfriggetyB
friendfeedBfriarBfriB	freshnessBfreshmanBfreshlyBfrescaB
frequentedBfrequentBfrequenciesBfrensBfrencBfreindBfreezerB	freestoneB	freemantlB	freelanceBfreeerBfreddyBfreakyBfreakinBfrazzleBfraudBfraserB
frappucinoBfrappesBfranzBfrancsB	francescaBfranB	frameworkBframesBframedBfrailtyB	frailtiesBfrailBfragileB	fracturedBfpsBfoylesBfoxBfourthBfourteenBfountainBfoundryBfoundationsBfossilBforumsBfortunesBfortunatelyB	fortnightB	fortitudeB	formationBformatBforgetsBforgaveBforelornB	foreignerBforegoB	forefrontB
forebodingBforearmBfordBforciblyBforaysBforagingBfooledBfoodieBfondnessBfomentBfollowsB	folliclesBfolksyBfolkloreB
folkeskoleBfolderBfoldBfoistBfoilsBfoilBfoiblesBfocusesBfocalorsBfobBfmaBfluxBflushBflunkedBfluidlyBfluidBfluffyBfluffingBfluffBflubsBflowersellersBflourBflounderingBflossingBflossBfloristBflorenceBfloralsBfloraBflopBfloorsBfloodBfloggerBfloggedBfloatsBfloatedBfloBflistsB
flirtinessB	flirtiingBflingBflightyBflightsBflickrBflickerBflickedBfliasBflexyBflexibleBflexBfleshedBfleetBfleeingBfleeceBfleeBfledBflawBflavourBflauntBflattensB	flattenedBflatsBflashyB
flashlightBflaringBflaredBflappedBflannelBflamesBflameBflakyBflakingB	flakinessBflakeBflagellatingBflaccidBflabBfixingBfixedBfixableBfivBfittedBfitchBfishesBfirstlyB	firstbornBfirmnessBfirmingBfireyB	fireplaceBfireflyB	firefliesBfinsBfinnertyBfinishesB
fingertipsBfingernailsBfingeBfinestBfinesBfindingsBfinchersBfinalityB	finalistsBfinBfilthyBfilmfareBfilmedBfillsBfiledBfilB
figurativeBfiguBfigtBfightsBfighterBfifthBfiestyBfierclyB
fiercenessBfiercelyBfieldworkerB	fieldtripBfieldingBfieldiBfideBfiddlyBfiddleBffxiBffviiiBffsBfewsB
feverishlyBfeverishBfetishBfetaBfestiBfesterBfervorBferventB	fertilityBfertileBferriesBfergusBfendBfeminismB
femininelyBfemininBfellsBfellowstudeB
fellowshipBfellingBfeistyBfeelyBfeeliBfeelbutB	feedlinksBfeederBfedsB	fedotenkoBfedexB
federationBfebB	feauturesBfeautureB	featuringBfeatBfeastedBfearlessnessBfearingBfeBfavsBfavoursB
favouritesB	favoritesBfaultsBfattieBfatterBfatsBfatigueBfathomBfatherlyBfatehBfatallyB	fasttrackBfastforwardingBfascitisBfascinatingBfarthestBfarrowBfarmerBfarewellBfarehaBfantabulousBfangirlsBfanfareBfandomsBfanciedBfanaticsBfanaticBfamilysBfamiliarityBfamilBfamersBfamBfalunBfalterB
falangistsB
faithsedgeB	faithlessBfaithfulnessBfairiesBfairedBfailuresBfadsBfadeB	facultiesBfactioBfacsimilogosB	faceplateBeyreBeyewitnessesBeyesightBeyelidB	eyelashesBeyelashBeyedBeyebrowsBeyebrowBeyebrBexwifeB
exuberanceB	extrovertBextremlyB	extremleyBextremB	extratimeBextrasBextraordinaryBextractBextinguishedB
externallyB
extensivelB	extensiveB
extensionsB	extensionBextendsBexspressB
expresswayB	expressioB	exposuresBexposureBexportBexponentiallyBexplosivelyB	explosiveB	exploringBexplorerBexplorationB
explorableBexploitsB	exploitedBexplanationsBexpertsB	expertiseBexperimentingB
expereinceBexpendB
expeditionBexpectsBexpatriatesB
expatriateBexpansiveperspectiveB	expansiveBexpandsB	expandingBexpandBexpBexorciseBexitingBexistsBexistentBexictingBexhiliratedBexhilaratingB	exhilaratBexhibitionismBexhalingBexexbfBexesBexertBexemplifiedB	executiveB	executionBexecutedBexecuteBexcruciatingBexcommunicatedB	exclaimedBexclaimBexciteB
exchangingBexcessivelyBexcessesBexcercisingB
excellenceBexceededBexboyfriendBexaminedBexamineBexaggerationBewBevolvingBevolvedBevolveBevokeB	evidentlyBevictionBevgeniB	everywherBeveryfuckingthingBeverybitterthingissweetBeverittBeverchangingB
everblightBeventuallytheB
eventualitBeveningsB
evenhandedBevelynBevarB	evaporateBevangelicalB
evaluatingBevBeurosBeuropeBeuropBeurodancemixB	euphermalBeulaliasB	ethnicityBethnicBethicalBethicBethelBethanB	eternallyBeternalBetchedBetB	estoniansBestimateBestefanBesteBestateBestablishmentB
establishmB	establishBessexBessayBesqueBespressoBespouseBespBesilyB	escortingBescortBeschewBescapingBeruptBerrorsBerraticBerrBerikaBericaBerasBeradicationB	equipmentBequipmenBequalsBequalityBeqafeBepithetsBepiphanyB	epilepticBepersBenvyingB
envisionedBenvisionB	enviouslyBenvelopsBentrustBentrenchedlyB
entrenchedB	entrancedB	entitiledB	entirellyB
enthusiastBentertainmentsBentertainingBentertainersB	entangledBentailsBentailBensuringBensuesBensueBensignsB	enrichingBenrichedBenquiryB	enquiriesBenquiredBenoughtBenormityBenmayiB	enlivenedBenlighteningBenjorlasB
enjambmentBenidBengulfBengrainsB
engineeredBengineBengiBengendBenforcementsBenforceBenfoldBenergiesB
energeticsBenedBendzoneBenduredBendorsedBendorseB	endorphinB	endlesslyBendillBendgameBendeavouringBendeavoringBendeavorB
encouragesB
encountersBencompassingBencodingBenclosedBencloseBenclaveB
enchantingB	enchantedBencapsulateBenactingBenactBenablingBenablesBenableBemptiesBemptiedBempowermentBempowerB
employmentBemployerBemployB	emphasiseBemphasisB	empathticB	empathiseBempB
emotionalyBemoteBemmBeminentB
emilyhurshBemillionstarsBemergenciesB	emergenceBemergedBembracedB
embitteredBemberBembarrassingB
embarrasedBembarrasB
embaressedB
embarassedB	embalmingBelviveBelusiveBeludedB	elsewhereBelsewheB	eloquenceBelolaBellisBellenBelitistBeliseBelineB
eliminatedB	eliminateBelihuBelicitsBelicitBeliBelfBelevenB	elevationBelevateBelephantBelementB	elegantlyBelectrocutedBelectingBelectedBelectBelbowsBelasticBelashisBelBeklandBeightiesBeighteenBehhBehbBehBegyptBegoBeganBegB
effortlessBefficientlyB	efficientB
efficiencyB	effectualBeffectivenessB	effectingBeffacingBeffBefeelingBeerilyBeecBedwinB
educationgBedmundBedmontoniansBeditsBeditionBedithsBeditB	ediebloomBedibleBedgwareBedgingBeddieBedcBeconomicallyBecologyBeclipseBeckerBechoingBechoedBechoBecgfrithBeccentricitiesBebookBebonyBebloggyBebbBebayedBeatsBeatersBeateriesBeasternBeasingBeasiBeaselBearthaBearshotB
earreadingBearplugsBearningBearnestnessBearlieBearleyBearleBearlBeamesB	eagleeyedBeagleandhammerBeagerlyBeaaaatB	dysphoriaBdynamicBdylanBdykeyBdyeBdyaBdwindleBdwelledBduvetBduvaBdustyBdustedBdustbinBdursleyBdurhamBduplexBdupedBduoBdunhamBdungBdumpsBdumpingBdumpeeBdumbfoundedBdumberBdullnessBdullesBduhBduffBduetBduesBduelsBdudleyBdudesBducksBduckieBdubyaBdubstepBdublinBdubiedBdubbedBdualBduBdtBdslBdryingBdryeyedB	drunkenlyBdrunkenBdrumBdruggedBdrsBdrovesB	droppingsBdroopingBdroopB	drizzlingBdrivesBdripsBdrinkyBdrilyBdrillBdriftingthroughlifeBdriftedBdrierB	dribblingBdriBdresserBdreckyB
dreamworldB	dreamlandBdreadingBdrawsB
drawbridgeBdraughtBdrapeBdrambuieBdrakeBdrainageBdragsBdraftsBdraftingBdraftblogerBdptBdpnsBdozensBdozenB	downvotedBdowntownBdowntimeBdownsBdownloadBdowningB
downhearteBdownesBdowagerduchessBdoveyBdovetailB
dovercourtBdousedBdoughBdouevenliftBdoucherBdoucheBdoubtingBdoubtedBdoublyBdottingBdosageBdorothyBdormBdorksBdoramaBdopeyBdoorwayBdoorknobB
doomnationBdoodlyBdoodlesandscrapsofmeBdoodlesBdonutsBdontknowBdonsBdonningBdongB	donationsBdonationBdonatedBdonateBdonaldBdominateBdomesticallyBdomesticBdomBdolphinsBdollyBdollarBdoisneauB	doingaoneBdogownerB	doedollilBdodgingB	documentiB
documentedBdocumentariesB	doctorateBdocsBdocksBdobreBdobiesBdntBdlkBdiwaliBdivulgeBdivorceeBdivorcedBdivoBdivinityBdivingBdiversifiedBdivasBdittmarB	ditlevsenBditheredBditchedB	districtsBdistributionBdistributingB
distortionBdistinguishedBdistinctBdistillBdistasteB	distancesBdistB	dissipateBdissipatB
dissectingBdissectBdissatisfactionsBdissatisfactionBdissapearedBdissB
disruptiveB	disruptedBdisruptB
disregardsBdisqualifiedBdisqualificationsBdisputeBdispositionsB
disposableBdisposBdispleasingBdisplaysBdisplacementB
dispiritedB	dispensesBdispelB
dispairingBdispB
disorientsBdisorientatingBdisorientatedBdisorganisedB
dismissingB	dismissesB	dismissedBdismaysB
disjointedBdisinfectedB
dishwasherBdishonoringB	dishonestB
disharmonyBdisgustingnessBdisgustinglyBdisgustBdisgruntledB
disgestiveB
disengagedBdiseasesBdiseasB
disdainfulB
discretionB
discreetlyB	discoversBdiscoveriesBdiscouragingBdiscouragesB	discountsBdiscountingBdiscontinuedBdiscontentedBdisconnectsB
disconnectBdiscomfBdiscombobulatedBdiscoB
disclosureBdiscernmentB
discardingB	discardedB
disastrousB
disasteredBdisapprovementsBdisallusionedBdisagreeableBdisadvantagesBdisadvantagBdisabledB
disabilityBdisabilitiesBdirespectedBdirectionlessBdirectedBdireBdirBdipshitBdinosaurBdinnersBdinneBdinnBdinksB
diningroomBdinglerBdineshBdinBdiminishingBdimensionalBdimBdiluteB
diligentlyBdildoBdiktatsBdigustBdigressB	digestingBdifferBdiesBdiegoBdidintB	dictatingBdictatedBdickishB	dickinsonBdickensB	dichotomyBdiazepamBdiaryB	diarrhoeaBdiarrheaBdianneBdianamBdianaBdianBdialsBdialogueBdialedBdialectBdiagramB	diagnosedBdiagnoseBdiabyBdhawanBdharmaBdharaviBdezinesamazeBdewiBdewBdevoutBdevouredBdevourBdevonBdeviceB
devestatedBdevelopmentsB	developerBdevastationBdevaluedBdetoxBdetouredBdeterminedlyBdeteriorationBdeterioratioBdeterioratedBdeteriorateB	detergentB	detentionBdetectorBdetectinB	detailingB
detachedlyBdetachedBdestructionB	destroyerBdestroyBdestinyB	destiniesBdestinationBdessenBdespondeBdespiseBdespairsBdespB	designingB	designatiBdesertedB
desendantsBdescriptiveBdescribBdescendBdescaraB
dersinghamBderpBderivingBderidedBderfwadmanorBderekB
derbyshireBderangedBdeprivationBdepressivesB	depressesBdepressantsBdeprecationBdepoisB
deploymentBdepletedB
dependencyB
dependenceBdepartmentsB	departingBdepartBdeparBdeoBdentisBdentalBdenselyBdenimBdenaliBdemureBdemotivatedB
demotivateBdemostratorsBdemosBdemoralizedBdemonstrationsBdemonstrateBdemonBdemographicB
democraticBdemiseBdemeanorBdelvedBdelveB	delusionsBdelusionBdelorsB
deliveringB
deliveriesB
delilahlwlBdelightsBdeligBdelicousB
delicatelyB
delicaciesBdeliberationsBdeliberationB
deliberateBdeliBdelhiB	delegatesBdelayedBdelayBdelaBdegrassiB	defreitasBdeformedBdeformBdeflatedBdefinitenessBdefiningBdefinedB
definationBdefiledBdefiantBdefianceBdeffinatelyB	deferringBdeferentialBdefensesB
defensemanBdefenseBdefenceBdefectBdefeaBdefBdeepikaBdeepenedBdeenBdeedsBdeedeeBdeedBdeduceBdecribeB
decreasingBdecreB
decoratingBdeconstructionistBdecodeBdeclutteringBdeclinedB	declaringBdecksBdeciteBdecisiveBdecidesB	decidedlyBdeceptivelyB	deceptionBdeceivedBdeceasedBdecayBdecalBdecafBdecadesBdebutBdebtsBdebraBdeborahBdebbieBdebatesBdebatedBdeathlyBdeatB	dearwendyBdearlyBdearestBdealerB	deadlinesBdeaderB	deadeningBdeactivateingBdcBdazzlingBdazzleBdazsBdayummmBdaylightBdaydreamingB
daydreamedBdaydreamBdavisBdaviesB	davidsonsBdavidsBdavenBdaughtersinlawB	daughtersBdatsBdateyB	databasesBdatBdasiBdashesBdashedBdarrenB
darlingtonBdarklyB	darkeningBdarbyBdaoBdannyBdannikaBdanielleBdangleBdangersBdangerouslyBdancinB
dancefloorBdanaBdamsBdamperBdampB	damnationBdammitBdamagingBdamagesBdallilBdaleyBdaleBdaisiesBdaisBdairenBdailiesBdahBdaggersBdaddysBdabbleBdabbedBczechBcystBcyprusBcypressBcynicismBcyniBcycledB
cyberspaceBcutieBcutesyBcutbacksBcustomsB
customizedBcussBcushyBcushionsBcusB
curveballsBcurtainBcurryBcurrentsBcurlyBcurlsBcurlerBcuratedBcuntBcummingB
cumbersomeB
cumberlandBculturesB
culturallyBcultBculminationBcullamBcuffsBcuesBcueBcudntBcuddlesBcuddledBcucumberBcubiclesBcryinBcrutchB
crushinglyBcrushesBcrunkBcrunchyBcrumpledBcrumblesBcrumbleBcruisingBcrueltyBcrudityBcrudelyBcrudB	crucifiedBcrucialBcrowedBcrowdsB
crosswordsB
crossroadsBcrosshatchingBcrossfitBcrosserBcropBcrookedBcroneBcrolBcrocsBcrockB	croatiansBcroBcriticsB
criticismsBcrispsBcrisesBcrippledBcriminalBcrimB	cricnepalBcreviceBcretinsB
crestfalleB	crescentsBcreepsBcreepilyBcreepedBcreekBcreditsBcredentialsB
credentialBcredBcreatorsBcreativeliarBcreativecommonsBcreatesBcreasedBcreamyBcrawlingBcrawledBcravingsBcravesBcravedBcrashesBcrashedBcrannyBcraningB	cranberryBcrampyBcrammedBcrakeBcraisinsBcraftsB	craftisanBcraftingBcraftedBcracksBcrackersBcrackerBcrabsBcrabBcpineBcoxBcowsBcoworkerBcowedBcowboyBcowardBcowansB
covingtonsBcovetousnesBcoverageBcousinsB	courtyardBcourtsBcourtingBcourthousesBcoursingBcoursesBcourBcountsBcountrBcountertopsB
counteringB
counteractBcountenanceB	counselorB
counsellorBcounselB
councilmanBcoulterBcoughingBcottonBcottageBcostsBcosplayBcosmosB
cosmicallyB	cosmeticsBcorysBcorsetB
corruptingBcorrespondinglyB
correspondBcorrectnessB	correctlyBcorporationsB
coronationBcoroBcornwallBcornishBcorneBcorinthiansBcordialBcordeliaBcorbettBcorabethB	copyrightBcopyingBcopycatBcopsBcoppersBcoplandBcopiousBcopiesBcopiedBcopayBcoordinatesBcooperationBcoolumBcoolsBcoolnessBcooledBcookeBcooBconvosBconvoB
conversingBconversationalBconventionalBconventBconvenerBconvBcontrolsBcontradictsBcontradictingBcontractualB	contractsBcontractionB
contractedB
contraceptBcontrBcontortBcontinuiBcontinuBcontinentalB	continentB	contestedBcontestB
contentionBcontentedlyB
contendersBcontendBcontemptuouslyBcontemptBcontemporarBcontemplationBcontaminationBcontaminatiBcontactsBcontBconsumesBconsumeB	consultedBconstructionsBconstructedBconstitutionalBconstitutionB
constituteBconstituencyBconstipatedBconsternationBconsolidationBconsolidateBconsoledBconsistsB
consistingB	considersBconsiderablyBconservatoryBconservatishBconsequentlyBconsentBconsecratedBconscriptedBconscientiousB
conqueringB	conquererBconquerBconorBconnorBconnivedBconnedB
connectingBconnecticutBcongregationB
congestionBconfrontationalBconfrontB
confoundedB
conformityB
confirmingB	confirmedBconfirmationBconfinesBconfinementBconfidentlyBconfideBconfessionsB
confessingB	confessedBconeyB	conectionB
conductingBconductB	condoningBcondoneBcondolencesBconditionerBconditionedB	condimentB
condescendB
condemningB	condemnedBconcurrentlyBconcreteB
concoctionBconclusionsB	concludedBconcieveB
concidenceBconcertsB
concerningBconcequencesBconceptualizedB
concentricBconcentrationBconcealsB
compulsoryB
compulsionBcomprimisedBcompressB	compoundsB
compoundedBcomposedB
componentsB	componentBcomplimentaryB
complimentBcomplexitiesB	completlyB
completionBcompletenessBcomplBcompiledBcompileB	competitoB	competentBcompensatedB
compensateBcompellinglyB	compelledB
compatibleBcompassBcompasionateBcompartmentalisedBcompartmentBcomparisonsB
companionsBcompBcommuterBcommutedB	communionB	communingBcommunicatorBcommunicationsB
communicatB	commodoreBcommoditiesBcommittmentB
committingB
commissionBcommiesBcommercialismBcommentatorBcommemorateBcommeBcommandmentsBcommandmentBcomingsBcomicsBcomicalBcomforB	comfidentBcometBcomersBcomediesBcomedicBcomedianBcombosBcombingBcombinationsBcombatBcomatoseBcolumbusBcolumbiaB	colourfulBcolouredBcoloringBcoloradoBcolomnB
colombiansBcolognesB	collusionBcollinBcollieBcollideB	collectorBcollectionsBcollectB	colleagueB
collapsingB	collapsesB	collapsedBcollaborativeBcolicB	coldstoneB	coldsoresB	coldplaysBcolbyBcolbertBcolBcoinfectionsBcoincidenceBcoinBcoherentBcohensBcohenBcoheedBcognizeBcogentlyBcoffinBcoeurBcoerciveBcodronBcocoaBcocktailBcockingBcocaineBcoaxedBcoastedBclydeBclutterBclutchedBclusterBclungB
clumsinessBcluesBcluelessBclubbingBclubbedB	clozapineBcloverBcloudyBclotsBclosesBclosBcloggedBclogBcloestBclodiaBclockingBcliqueyBcliquesBclipsBclintBcliniqueB
clinicallyBclinicalBclingingBclickingBclichedBclicheBclichBcleverlyBcleveredBcleoBclenchesBclenchBclearyBclearingB	cleansingB	cleansersBcleanseBcleanerBclawedBclawBclaustrophobicBclausB	classworkB	classmateB	classicalBclarkeBclareBclaraBclappedBclanBclamsBclamoursB
clamouringB	clamoringBclaireeBclaireBcivillyBcivilizationBcitedBcircuitsBcinnamonB	cineworldB	cinematicB
cinderallaB
cincinnatiBcigBciaranBciaBchurnsBchurchoffuckBchurchesBchuggedBchuckledBchucBchubbyB
chryseliusB
chroniclesBchromosomesBchristmastimeB	christinaBchristchurchBchrissBchopsBchoppingBchoppedBcholesterolBchokedBchocolatingB
chocolatesBchocBchoBchivalryBchivalrouslyBchiuvBchipsBchippingBchipmunkBchinsBchinksB
chinesepodBchinasBchillsBchilliBchilledB	childrensBchildreBchildrB	childlikeB
childfrienB
childbirthBchickieBchickensB	chiangmaiBchexBchewieBchewB
cherishingBchendolBchemotherapyBchemistB
chelmsfordB
cheesecakeB
cheerfullyB	cheerfullBcheeleBcheckupB
checklistsBcheatingBcheatBchattedBchateauB	chastisedBchasteBchasmBchartsBchartBcharredBcharmBcharltonB
charitableBchargesBcharetteBcharadeBcharacteristicsBcharacteristicallyBcharacterisationB	chaperoneB	chapbooksBchantingBchantB	channeledBchangerB	championsB
championedBchallengingBchalkBchaliceBchakotayBchajeulBchairmanBchainsmokingB	chainringBchainB	chadstoneBchBcgiBceteraBcesspoolBcertificateBcertBceramicsB	centuriesBcentB
censorshipBcensoredBcenaBcempakaBceltsBcelticsB	celluliteBcellularBcelibateBcelexaBceleenBcelebritiesBcedeBceciliaBceasesBceaseBccsBcbsBcawingB	cavershamBcavemanBcavatinaBcavalierB
cautiouslyBcautionBcausticB	caulfieldBcatsaBcathyB	catholicsBcathingBcatheterB	catherineB	catharticBcathBcategoryB
categoriesB	categorieB
catapultedBcatalogsBcataclysmicB
castlitterBcastielBcasteBcassieB	casseroleBcasingBcashmereB
casablancaB	cartwheelB
cartoonishBcarterBcarteBcarsonBcarseatBcarryoutBcarrryBcarrotBcarriesBcarrieB	carriagesBcarriageBcarpingBcarpetB	carpenterB
carnivoresB	carmeliteBcarlBcarinBcaricaturesB	caribbeanB
caretakersBcaressedBcaressBcarersBcarelessnessB
caregiversB	caregiverBcareessB	careeeeeeBcardiovascularBcardiffBcarcenogenicBcarcassBcarbyBcarbsBcarbohydratesBcarbBcarapaceBcapturesBcaptionsBcaptionBcapsBcappBcapeB
capacitiesB
capabilityBcapabilitiesBcanvasesBcantinaBcanterBcanteenBcansBcanonBcanoeBcanningBcannesB	candlelitB
candidatesB	candidateBcanceledBcanagliaBcamwhoreBcampusesBcamperBcampbellblackBcammieBcamilleBcamillaB	cambridgeBcambriaB	cambodianBcamBcalvinBcalvesB
calvaryccvBcalorieBcalmlyBcalliBcallersBcalleBcaliforniansBcalfB	caledoniaB
calculatedBcalBcajoledBcairnsBcageyBcagedB	caffeinedB	cafeteriaBcafBcadoreBcacheBcacaphonBcablesBcabealBcabbageBcabbBcabaBcaanBbyteBbuzzBbuyersBbuuuuuutBbuttttBbuttonsB	butterflyBbutcheryB
butcheringBbutcherBbustingBbuskingBbusierBburyingBburstsB	burrowingBburpBburnoutBburnerB
burmeisterBburkieBburgosBburgledB
burgeoningBburfordBbureaucratsB
bureaucratBburdensB	burdeningBburdeBburbankBbuoyedBbunsBbunkingBbunglingBbundlesBbunchesBbunBbumperBbumminBbullyingBbulliesBbulletinBbulletBbulldogBbulkBbulBbuildupB	buildingsBbugsBbuggerBbuffsBbuffB	budgetaryBbuddysBbuddingBbuckingBbucketsBbucketBbuckeBbuckBbubblyBbubbledBbuBbsBbryanBbrushesBbrunoBbruisesBbruisedBbruisBbrowsingBbrowsersBbrowseBbrotherhoodBbrotB
broomfieldBbroomBbrooksBbrooklynB
broodinessBbroochBbronzeBbrokeupB
broadeningBbroadenBbroadcastingBbroadBbroB	brittneysBbrittBbritonBbritneyBbritainBbrisbanehubBbrimB
brillianceBbrightonB
brightnessBbrightlyB	brightensBbrigBbriefsBbridezillasBbridalBbrickBbriarBbriantBbrewerBbreedersBbreedB
breathlessBbreatherBbreastsB
breakdownsB	breakdownBbreachedBbreachBbrazenBbravedBbrassedBbrassBbrandyBbrandsBbrandoBbranchesBbrakeBbraidedBbraggingBbraggBbragBbraedenBbrackenburyBbrachB	braceletsBbrabhamBbqffBboyneB	boyfirendBboxingBboxesBboxersBbowlerBbowieBbowerBbowelsBbowelBbowedBboutiqueBbourbonBbouquetB	boundlessBbouncingBbouncesBbouncedBboulderBboughsBbottlingB
bothersomeBbotanyB	botanicalBbostonBboschBborrowedBboredwithquinnBboredomBboppingBboostedBboomBbookshopBboobBbonusesBbontocBbonkaBbonkBbonhamBbondmusingsBbonamyBbonaBbommieBbombsiteBbomberBbombedBbombardmentB	bombardedBboldlyBboilingBboilBboehnerB	bodyworksBbodypumpB	bodyguardBbodsBbodminBbodilyBbodegaBbobsBbobbingBbobbinBboastingBboastB	boardwalkBboardsBboardersBboardedBboBbmwBbmBblytonBblushesBblurtingBblurtBblurryBblurringBblurredBbluntB
blunderingB	bluetoothBbluestarlightB	blueberryBbludgeonBblowoutsBblowoutBblowjobBblouseB
blossomingBbloomersBbloomBbloodyB	bloodshedBbloodsBblondBblogstalkersBblogpostBbloglandBblogingBblockingBblocBbloatedBbloB
blissfullyBblissfulBblinkBblindsBbleurghBblenderBblendedBblendBbleedsBbleedBbleatingBbleacherreportBbleachedBblazerB	blatantlyBblatantBblasterBblaresBblanksBblandBblairBblahnessBbladesBbladeB
blackwellsB	blackpoolBblackhairedB	blackeyesB	blackenedB
blackberryBbittenBbittBbitsyBbitchedBbishopBbishanBbiscuitsB	birthmomsBbirthedBbirdlikeBbirdingBbiowareBbiopsiesBbiologyB
biologicalBbiochemBbinsBbinoculBbindsBbindBbillionBbilberrypickerBbikiniBbikingBbigotryBbiggedBbiffBbidsBbidiBbiddyBbicepsBbibliographyBbiasaBbiasBbiannualBbhubaneswarBbgrBbgBbfsBbffBbfdBbezosBbeyoncB	bewertungBbewareBbevyBbeverageBbettyBbetrayB	bestowingBbestialB
bestfriendBbertukarBbertramBbertBberryBberriesBberniceBberndBbernardsBberkBbereftBberateBbeoryeoBbenzemaBbensonBbennyBbennoBbenedictineBbenciBbenchesBbenadrylB
bemusementBbemusedB	bemoaningBbelugaBbeltsB
belongingsBbelmontBbellybuttonBbellsBbellmenBbelleBbelittleBbelgraB
beleaguredBbelatedBbelBbeinBbehiBbehaviouBbehavedBbeggedB	befuddledBbefriendingBbefoeBbefcBbefallBbefBbeetBbeesBbeersBbeeeeeeeeeeeingBbedworthBbedsideBbedsBbedroomsBbecuaseBbecsuseBbecozBbeckonBbeatlesBbeastsBbeastBbearedBbeardBbearableBbeansBbeanbagBbeamBbeakBbeagleBbeadsBbeacuseBbeachyBbeachesBbcozBbbwBbbcBbayouBbauerBbattledBbattingBbatteredBbatonB	bathshebaBbathsBbathedBbassethoundBbassesBbassanioBbassBbaskBbasherBbarracloughBbaroqueB
barometricBbarnsBbarnogBbarneyBbarnesBbarkingBbarkerBbarkBbaringBbargainBbarfedBbaremineralsBbaredBbarbequeBbaptismBbanneBbanksBbankersBbanjoBbanishesBbanishedBbangsBbangedB	bandwagonBbandhuBbandaidBbananaBbanalB	baltimoreBbalticBbalsamicBbalmBballoonsB	ballisticBballaterBbalksBbalconyBbalBbakedBbakeBbaileyBbaiBbahtBbagshotBbaganBbadplaydateB	badmintonBbadmanBbadgerBbadassBbacuseBbackyardB	backwardsBbackstabberBbacksBbackpackingBbacklogsBbackgroundsB	backfiresBbackdropBbacheloretteBbacBbabysatBbabydollB
babychaserBbabsbrisbaneBbabeBbabbleBazulBazizBazealeaBayumiBayanBaxillaBaxelBaxedBawwBawryBawokeB	awkwardlyBawesomenessBawedBawashBawaitBavtaarBavonB	avoidanceB	avoidableBavidlyBaveryBaversaryBavenueBavastBavantB	avalancheBavailabilityBavaiBautonomyB
automationBautocorrectBautisticBauthoritativeBauthenticityB
australianBaustereBausterBaussyBauntyBauntsBaugustBauguBauggieBaudreyBaudreB
auditoriumB
audiobooksBaudioBaudienBaudieBaudacityBaubreyBattractBatticsB
attentionsB	attainingB
attainableBattainB
attachmentBattachB	atrophiesB
atrocitiesB	atrociousBatomicBatomBatmosphericBatleticoB
atlephobiaBatlanticBatlantaBativanBathleticismBathleticallyBathfBatheistsBatheistBatheBathBatentionBatelierBataBasylumBastrayB	astonisheBastonB	assuranceB
assumptionBassuageB
assortmentBassistatB
assistantsBassimilatedB
assignmentBassholesBassessorBassessmentsB
assessmentBassessBassesB	assertionB	assertingBassertedB
assembliesB	assembledB
assaultingBassaultBassassinatedBaspireBaspiBaslefBashtrayBashrafBashlotteBashleyBashiBashesBashersBashBasdBasciaticB	ascensionBasbestosBasasoulawakensBasamiBasaBaryikuBaryansBarughBartisanB	artilleryBartificiallyB
artificialBartificallyBarticulatingB
articulacyB	artefactsBarsenalBarseBarsBarrowB	arroganceBarrivalsBarrivaBarrestedB
arrangmentBarrangementBarousingBarousedBarouseBarouBaroseBaromaBarmpitsBarmouryBarmorBarmenianBarmedBarmaniBaristophanesBariseBarielBariBarguablyBardmoreBarchitecturalB
architectsBarcheologicalBarchedB
archbishopBarcBarabiaBarabBapraxiaBapptsBapproxB
approachesBappriciationBapprehensionBappreciatesBappreciaB
applaincesBappetiteBappeasedBappearancesBappealsBappBapothecariesB
apostropheB
apoplecticB
apologizesBapoBaplinB	apgujeongB	apendagesBapcBapayaBapawaB
apartmentsBapaBapBaoshiBaolBaoiBaoaBanyonesBanyhowBanxioB	anxietiesBantsBantoniosB
antoinetteB	antivirusB
antisocialBantiquitiesB	antipastiBantidoteBantidepressantsBanthonyB	anthologyBanthemBansiBanotehrB	anonymousBanonBanoBannusB	annulmentBannualsB
announcingBannouncementsB
annotationBannieBannabelBankletsB	animosityB	animatorsBanimatedBanimBanhaBanglesBangleBangeeBangaloBanesthetizedBandthenwearBandriBandrewBandreaBandintrupteBandersonBandangryBancientsBancientB	anchorageB	ancestralBanansiBanalyzeBanalysisB	analysingBanalysesBanalogyBanaestheticB
anaesthetiBanaBamusingBamudB	amplifiesB	amplifiedBampedBampatuanBamparoBamosB	amorphousBammanBammaBamkrisBamitsBamishaBamidB	americanaB	amenitiesB	amendmentB
ambulatoryB	amblesideB	ambitiousBambientBambienceBamberB
ambassadorBamazonBamazingnessBamalgamationBamaBalvaB
alumniniumBaltonB	altitudesB
alternatedBalteringBalteredBalterationsBaltBalreBalottaBaloofBalongerBalonBaloftBallyBallthingsbucksBallsB
allowancesBalllBalliesBallianceBalliBalleysBalleyB	alleviateBallergicBallegingB
allegationBallanBalittleBaligncenterBaliensBalicBaliBalhamdulillahBalgorithmicBalfredBalfedBalexisBalexeiB	alexanderBalexaB	alertnessBaleneBalecB
alcoholismBalbuquerqueBalbertBalaskaBalarmingBalanBalabamaBalaBakwardBakshayBakinBajBaiwBaislesBairtimeBairsplittingB
airritatedBairportsBairplaneBairlineBairlinBaircraftBairbusBairbrushingB	aimlesslyBaimlessBaidsBaiBahmedBahkmanBahhhB	ahahahahaBahahaBagoraphobicBagonizedBagonisedB	agnosticsBagnesBagnBagilityB	agiatatedBagiBaggressivenB
aggressionBaggrandisementBaggieBagendaBagB
afternoonsBaftereffectsBafricansBafradeBafradBafpBafieldB
aficionadoBaffronB
affordableBaffirmedBaffirmativeBaffirmationsBaffirmB	affiliateB
affectionsBaffectionatelyBaffectiB	affeccionBaffairsBafarBafB	aestheticB
advocatingB	advocatesBadvocacyBadvisersBadvilBadvertisementsBadvertisementB
advertisedB	adversaryBadvancementBadvancedBadulthBadsenseBadriftBadrianBadressB
adrasteiusBadornsBadoresBadoredB	adorationBadolescenceBadnB
admittanceBadmitsB
admissionsBadmiresBadministratorsBadministratorBadminBadjustmentsB	adjustingB
adjectivalB	adherenceBadhereBadfB
adequatelyBadequateBadeB
addressingBaddledBadditionallyBaddisonsBaddisonB	addictiveBaddictBadaptionBadaptedBacumenBactressBactivationsBactaulyBacronymBacquitBacquaintB
aconfidentBacknowledgmentBacknowledgementBackerBacimBachyB
acheivmentBaccusingBaccusesBaccusedB
accusationB
accuratelyBaccurateBaccumulationBaccumulatedBaccrueBaccountsB	accountedBaccountantsB
accordanceBaccordBaccompanimentBaccoB
acclimatedB	accidentsBacceptsBacceptancesBaccentuatingBacauseBacademyB	academicsBacademiaBacBabusesBabusB
abundantlyB	abundanceBabuBabtBabsurdlyB
abstinenceB
absorptionBabsorbedBabruptlyBabrahamBaboundBabouBabortionB
abominableB
abnormallyBabloBabigailB	abhorrentBabelardBabductedBabdBabbigailBabbaBabatedBabBaahhhBaacBaaaaandB	aaaaaaandBaaB9thB
82ndminuteB75thB500B5B48B46B40thB4B37574B34B33B23rB
23montholdB21B20thB2B19thB199394B1992B1989B1987B1980sB1980B1975B1974B1926B191523B19B18yearsB1878B1295
??
Const_5Const*
_output_shapes	
:?~*
dtype0	*??
value??B??	?~"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '       '      !'      "'      #'      $'      %'      &'      ''      ('      )'      *'      +'      ,'      -'      .'      /'      0'      1'      2'      3'      4'      5'      6'      7'      8'      9'      :'      ;'      <'      ='      >'      ?'      @'      A'      B'      C'      D'      E'      F'      G'      H'      I'      J'      K'      L'      M'      N'      O'      P'      Q'      R'      S'      T'      U'      V'      W'      X'      Y'      Z'      ['      \'      ]'      ^'      _'      `'      a'      b'      c'      d'      e'      f'      g'      h'      i'      j'      k'      l'      m'      n'      o'      p'      q'      r'      s'      t'      u'      v'      w'      x'      y'      z'      {'      |'      }'      ~'      '      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'       (      (      (      (      (      (      (      (      (      	(      
(      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (       (      !(      "(      #(      $(      %(      &(      '(      ((      )(      *(      +(      ,(      -(      .(      /(      0(      1(      2(      3(      4(      5(      6(      7(      8(      9(      :(      ;(      <(      =(      >(      ?(      @(      A(      B(      C(      D(      E(      F(      G(      H(      I(      J(      K(      L(      M(      N(      O(      P(      Q(      R(      S(      T(      U(      V(      W(      X(      Y(      Z(      [(      \(      ](      ^(      _(      `(      a(      b(      c(      d(      e(      f(      g(      h(      i(      j(      k(      l(      m(      n(      o(      p(      q(      r(      s(      t(      u(      v(      w(      x(      y(      z(      {(      |(      }(      ~(      (      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(       )      )      )      )      )      )      )      )      )      	)      
)      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )       )      !)      ")      #)      $)      %)      &)      ')      ()      ))      *)      +)      ,)      -)      .)      /)      0)      1)      2)      3)      4)      5)      6)      7)      8)      9)      :)      ;)      <)      =)      >)      ?)      @)      A)      B)      C)      D)      E)      F)      G)      H)      I)      J)      K)      L)      M)      N)      O)      P)      Q)      R)      S)      T)      U)      V)      W)      X)      Y)      Z)      [)      \)      ])      ^)      _)      `)      a)      b)      c)      d)      e)      f)      g)      h)      i)      j)      k)      l)      m)      n)      o)      p)      q)      r)      s)      t)      u)      v)      w)      x)      y)      z)      {)      |)      })      ~)      )      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)       *      *      *      *      *      *      *      *      *      	*      
*      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *       *      !*      "*      #*      $*      %*      &*      '*      (*      )*      **      +*      ,*      -*      .*      /*      0*      1*      2*      3*      4*      5*      6*      7*      8*      9*      :*      ;*      <*      =*      >*      ?*      @*      A*      B*      C*      D*      E*      F*      G*      H*      I*      J*      K*      L*      M*      N*      O*      P*      Q*      R*      S*      T*      U*      V*      W*      X*      Y*      Z*      [*      \*      ]*      ^*      _*      `*      a*      b*      c*      d*      e*      f*      g*      h*      i*      j*      k*      l*      m*      n*      o*      p*      q*      r*      s*      t*      u*      v*      w*      x*      y*      z*      {*      |*      }*      ~*      *      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*       +      +      +      +      +      +      +      +      +      	+      
+      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +       +      !+      "+      #+      $+      %+      &+      '+      (+      )+      *+      ++      ,+      -+      .+      /+      0+      1+      2+      3+      4+      5+      6+      7+      8+      9+      :+      ;+      <+      =+      >+      ?+      @+      A+      B+      C+      D+      E+      F+      G+      H+      I+      J+      K+      L+      M+      N+      O+      P+      Q+      R+      S+      T+      U+      V+      W+      X+      Y+      Z+      [+      \+      ]+      ^+      _+      `+      a+      b+      c+      d+      e+      f+      g+      h+      i+      j+      k+      l+      m+      n+      o+      p+      q+      r+      s+      t+      u+      v+      w+      x+      y+      z+      {+      |+      }+      ~+      +      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+       ,      ,      ,      ,      ,      ,      ,      ,      ,      	,      
,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,       ,      !,      ",      #,      $,      %,      &,      ',      (,      ),      *,      +,      ,,      -,      .,      /,      0,      1,      2,      3,      4,      5,      6,      7,      8,      9,      :,      ;,      <,      =,      >,      ?,      @,      A,      B,      C,      D,      E,      F,      G,      H,      I,      J,      K,      L,      M,      N,      O,      P,      Q,      R,      S,      T,      U,      V,      W,      X,      Y,      Z,      [,      \,      ],      ^,      _,      `,      a,      b,      c,      d,      e,      f,      g,      h,      i,      j,      k,      l,      m,      n,      o,      p,      q,      r,      s,      t,      u,      v,      w,      x,      y,      z,      {,      |,      },      ~,      ,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,       -      -      -      -      -      -      -      -      -      	-      
-      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -       -      !-      "-      #-      $-      %-      &-      '-      (-      )-      *-      +-      ,-      --      .-      /-      0-      1-      2-      3-      4-      5-      6-      7-      8-      9-      :-      ;-      <-      =-      >-      ?-      @-      A-      B-      C-      D-      E-      F-      G-      H-      I-      J-      K-      L-      M-      N-      O-      P-      Q-      R-      S-      T-      U-      V-      W-      X-      Y-      Z-      [-      \-      ]-      ^-      _-      `-      a-      b-      c-      d-      e-      f-      g-      h-      i-      j-      k-      l-      m-      n-      o-      p-      q-      r-      s-      t-      u-      v-      w-      x-      y-      z-      {-      |-      }-      ~-      -      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-       .      .      .      .      .      .      .      .      .      	.      
.      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .       .      !.      ".      #.      $.      %.      &.      '.      (.      ).      *.      +.      ,.      -.      ..      /.      0.      1.      2.      3.      4.      5.      6.      7.      8.      9.      :.      ;.      <.      =.      >.      ?.      @.      A.      B.      C.      D.      E.      F.      G.      H.      I.      J.      K.      L.      M.      N.      O.      P.      Q.      R.      S.      T.      U.      V.      W.      X.      Y.      Z.      [.      \.      ].      ^.      _.      `.      a.      b.      c.      d.      e.      f.      g.      h.      i.      j.      k.      l.      m.      n.      o.      p.      q.      r.      s.      t.      u.      v.      w.      x.      y.      z.      {.      |.      }.      ~.      .      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.       /      /      /      /      /      /      /      /      /      	/      
/      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /       /      !/      "/      #/      $/      %/      &/      '/      (/      )/      */      +/      ,/      -/      ./      //      0/      1/      2/      3/      4/      5/      6/      7/      8/      9/      :/      ;/      </      =/      >/      ?/      @/      A/      B/      C/      D/      E/      F/      G/      H/      I/      J/      K/      L/      M/      N/      O/      P/      Q/      R/      S/      T/      U/      V/      W/      X/      Y/      Z/      [/      \/      ]/      ^/      _/      `/      a/      b/      c/      d/      e/      f/      g/      h/      i/      j/      k/      l/      m/      n/      o/      p/      q/      r/      s/      t/      u/      v/      w/      x/      y/      z/      {/      |/      }/      ~/      /      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/       0      0      0      0      0      0      0      0      0      	0      
0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0       0      !0      "0      #0      $0      %0      &0      '0      (0      )0      *0      +0      ,0      -0      .0      /0      00      10      20      30      40      50      60      70      80      90      :0      ;0      <0      =0      >0      ?0      @0      A0      B0      C0      D0      E0      F0      G0      H0      I0      J0      K0      L0      M0      N0      O0      P0      Q0      R0      S0      T0      U0      V0      W0      X0      Y0      Z0      [0      \0      ]0      ^0      _0      `0      a0      b0      c0      d0      e0      f0      g0      h0      i0      j0      k0      l0      m0      n0      o0      p0      q0      r0      s0      t0      u0      v0      w0      x0      y0      z0      {0      |0      }0      ~0      0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0       1      1      1      1      1      1      1      1      1      	1      
1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1       1      !1      "1      #1      $1      %1      &1      '1      (1      )1      *1      +1      ,1      -1      .1      /1      01      11      21      31      41      51      61      71      81      91      :1      ;1      <1      =1      >1      ?1      @1      A1      B1      C1      D1      E1      F1      G1      H1      I1      J1      K1      L1      M1      N1      O1      P1      Q1      R1      S1      T1      U1      V1      W1      X1      Y1      Z1      [1      \1      ]1      ^1      _1      `1      a1      b1      c1      d1      e1      f1      g1      h1      i1      j1      k1      l1      m1      n1      o1      p1      q1      r1      s1      t1      u1      v1      w1      x1      y1      z1      {1      |1      }1      ~1      1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1       2      2      2      2      2      2      2      2      2      	2      
2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2       2      !2      "2      #2      $2      %2      &2      '2      (2      )2      *2      +2      ,2      -2      .2      /2      02      12      22      32      42      52      62      72      82      92      :2      ;2      <2      =2      >2      ?2      @2      A2      B2      C2      D2      E2      F2      G2      H2      I2      J2      K2      L2      M2      N2      O2      P2      Q2      R2      S2      T2      U2      V2      W2      X2      Y2      Z2      [2      \2      ]2      ^2      _2      `2      a2      b2      c2      d2      e2      f2      g2      h2      i2      j2      k2      l2      m2      n2      o2      p2      q2      r2      s2      t2      u2      v2      w2      x2      y2      z2      {2      |2      }2      ~2      2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2       3      3      3      3      3      3      3      3      3      	3      
3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3       3      !3      "3      #3      $3      %3      &3      '3      (3      )3      *3      +3      ,3      -3      .3      /3      03      13      23      33      43      53      63      73      83      93      :3      ;3      <3      =3      >3      ?3      @3      A3      B3      C3      D3      E3      F3      G3      H3      I3      J3      K3      L3      M3      N3      O3      P3      Q3      R3      S3      T3      U3      V3      W3      X3      Y3      Z3      [3      \3      ]3      ^3      _3      `3      a3      b3      c3      d3      e3      f3      g3      h3      i3      j3      k3      l3      m3      n3      o3      p3      q3      r3      s3      t3      u3      v3      w3      x3      y3      z3      {3      |3      }3      ~3      3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3       4      4      4      4      4      4      4      4      4      	4      
4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4       4      !4      "4      #4      $4      %4      &4      '4      (4      )4      *4      +4      ,4      -4      .4      /4      04      14      24      34      44      54      64      74      84      94      :4      ;4      <4      =4      >4      ?4      @4      A4      B4      C4      D4      E4      F4      G4      H4      I4      J4      K4      L4      M4      N4      O4      P4      Q4      R4      S4      T4      U4      V4      W4      X4      Y4      Z4      [4      \4      ]4      ^4      _4      `4      a4      b4      c4      d4      e4      f4      g4      h4      i4      j4      k4      l4      m4      n4      o4      p4      q4      r4      s4      t4      u4      v4      w4      x4      y4      z4      {4      |4      }4      ~4      4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4       5      5      5      5      5      5      5      5      5      	5      
5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5       5      !5      "5      #5      $5      %5      &5      '5      (5      )5      *5      +5      ,5      -5      .5      /5      05      15      25      35      45      55      65      75      85      95      :5      ;5      <5      =5      >5      ?5      @5      A5      B5      C5      D5      E5      F5      G5      H5      I5      J5      K5      L5      M5      N5      O5      P5      Q5      R5      S5      T5      U5      V5      W5      X5      Y5      Z5      [5      \5      ]5      ^5      _5      `5      a5      b5      c5      d5      e5      f5      g5      h5      i5      j5      k5      l5      m5      n5      o5      p5      q5      r5      s5      t5      u5      v5      w5      x5      y5      z5      {5      |5      }5      ~5      5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5       6      6      6      6      6      6      6      6      6      	6      
6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6       6      !6      "6      #6      $6      %6      &6      '6      (6      )6      *6      +6      ,6      -6      .6      /6      06      16      26      36      46      56      66      76      86      96      :6      ;6      <6      =6      >6      ?6      @6      A6      B6      C6      D6      E6      F6      G6      H6      I6      J6      K6      L6      M6      N6      O6      P6      Q6      R6      S6      T6      U6      V6      W6      X6      Y6      Z6      [6      \6      ]6      ^6      _6      `6      a6      b6      c6      d6      e6      f6      g6      h6      i6      j6      k6      l6      m6      n6      o6      p6      q6      r6      s6      t6      u6      v6      w6      x6      y6      z6      {6      |6      }6      ~6      6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6       7      7      7      7      7      7      7      7      7      	7      
7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7       7      !7      "7      #7      $7      %7      &7      '7      (7      )7      *7      +7      ,7      -7      .7      /7      07      17      27      37      47      57      67      77      87      97      :7      ;7      <7      =7      >7      ?7      @7      A7      B7      C7      D7      E7      F7      G7      H7      I7      J7      K7      L7      M7      N7      O7      P7      Q7      R7      S7      T7      U7      V7      W7      X7      Y7      Z7      [7      \7      ]7      ^7      _7      `7      a7      b7      c7      d7      e7      f7      g7      h7      i7      j7      k7      l7      m7      n7      o7      p7      q7      r7      s7      t7      u7      v7      w7      x7      y7      z7      {7      |7      }7      ~7      7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7       8      8      8      8      8      8      8      8      8      	8      
8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8       8      !8      "8      #8      $8      %8      &8      '8      (8      )8      *8      +8      ,8      -8      .8      /8      08      18      28      38      48      58      68      78      88      98      :8      ;8      <8      =8      >8      ?8      @8      A8      B8      C8      D8      E8      F8      G8      H8      I8      J8      K8      L8      M8      N8      O8      P8      Q8      R8      S8      T8      U8      V8      W8      X8      Y8      Z8      [8      \8      ]8      ^8      _8      `8      a8      b8      c8      d8      e8      f8      g8      h8      i8      j8      k8      l8      m8      n8      o8      p8      q8      r8      s8      t8      u8      v8      w8      x8      y8      z8      {8      |8      }8      ~8      8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8       9      9      9      9      9      9      9      9      9      	9      
9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9       9      !9      "9      #9      $9      %9      &9      '9      (9      )9      *9      +9      ,9      -9      .9      /9      09      19      29      39      49      59      69      79      89      99      :9      ;9      <9      =9      >9      ?9      @9      A9      B9      C9      D9      E9      F9      G9      H9      I9      J9      K9      L9      M9      N9      O9      P9      Q9      R9      S9      T9      U9      V9      W9      X9      Y9      Z9      [9      \9      ]9      ^9      _9      `9      a9      b9      c9      d9      e9      f9      g9      h9      i9      j9      k9      l9      m9      n9      o9      p9      q9      r9      s9      t9      u9      v9      w9      x9      y9      z9      {9      |9      }9      ~9      9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9       :      :      :      :      :      :      :      :      :      	:      
:      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :       :      !:      ":      #:      $:      %:      &:      ':      (:      ):      *:      +:      ,:      -:      .:      /:      0:      1:      2:      3:      4:      5:      6:      7:      8:      9:      ::      ;:      <:      =:      >:      ?:      @:      A:      B:      C:      D:      E:      F:      G:      H:      I:      J:      K:      L:      M:      N:      O:      P:      Q:      R:      S:      T:      U:      V:      W:      X:      Y:      Z:      [:      \:      ]:      ^:      _:      `:      a:      b:      c:      d:      e:      f:      g:      h:      i:      j:      k:      l:      m:      n:      o:      p:      q:      r:      s:      t:      u:      v:      w:      x:      y:      z:      {:      |:      }:      ~:      :      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:       ;      ;      ;      ;      ;      ;      ;      ;      ;      	;      
;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;       ;      !;      ";      #;      $;      %;      &;      ';      (;      );      *;      +;      ,;      -;      .;      /;      0;      1;      2;      3;      4;      5;      6;      7;      8;      9;      :;      ;;      <;      =;      >;      ?;      @;      A;      B;      C;      D;      E;      F;      G;      H;      I;      J;      K;      L;      M;      N;      O;      P;      Q;      R;      S;      T;      U;      V;      W;      X;      Y;      Z;      [;      \;      ];      ^;      _;      `;      a;      b;      c;      d;      e;      f;      g;      h;      i;      j;      k;      l;      m;      n;      o;      p;      q;      r;      s;      t;      u;      v;      w;      x;      y;      z;      {;      |;      };      ~;      ;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;       <      <      <      <      <      <      <      <      <      	<      
<      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <       <      !<      "<      #<      $<      %<      &<      '<      (<      )<      *<      +<      ,<      -<      .<      /<      0<      1<      2<      3<      4<      5<      6<      7<      8<      9<      :<      ;<      <<      =<      ><      ?<      @<      A<      B<      C<      D<      E<      F<      G<      H<      I<      J<      K<      L<      M<      N<      O<      P<      Q<      R<      S<      T<      U<      V<      W<      X<      Y<      Z<      [<      \<      ]<      ^<      _<      `<      a<      b<      c<      d<      e<      f<      g<      h<      i<      j<      k<      l<      m<      n<      o<      p<      q<      r<      s<      t<      u<      v<      w<      x<      y<      z<      {<      |<      }<      ~<      <      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<       =      =      =      =      =      =      =      =      =      	=      
=      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =       =      !=      "=      #=      $=      %=      &=      '=      (=      )=      *=      +=      ,=      -=      .=      /=      0=      1=      2=      3=      4=      5=      6=      7=      8=      9=      :=      ;=      <=      ==      >=      ?=      @=      A=      B=      C=      D=      E=      F=      G=      H=      I=      J=      K=      L=      M=      N=      O=      P=      Q=      R=      S=      T=      U=      V=      W=      X=      Y=      Z=      [=      \=      ]=      ^=      _=      `=      a=      b=      c=      d=      e=      f=      g=      h=      i=      j=      k=      l=      m=      n=      o=      p=      q=      r=      s=      t=      u=      v=      w=      x=      y=      z=      {=      |=      }=      ~=      =      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=       >      >      >      >      >      >      >      >      >      	>      
>      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >       >      !>      ">      #>      $>      %>      &>      '>      (>      )>      *>      +>      ,>      ->      .>      />      0>      1>      2>      3>      4>      5>      6>      7>      8>      9>      :>      ;>      <>      =>      >>      ?>      @>      A>      B>      C>      D>      E>      F>      G>      H>      I>      J>      K>      L>      M>      N>      O>      P>      Q>      R>      S>      T>      U>      V>      W>      X>      Y>      Z>      [>      \>      ]>      ^>      _>      `>      a>      b>      c>      d>      e>      f>      g>      h>      i>      j>      k>      l>      m>      n>      o>      p>      q>      r>      s>      t>      u>      v>      w>      x>      y>      z>      {>      |>      }>      ~>      >      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>       ?      ?      ?      ?      ?      ?      ?      ?      ?      	?      
?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       ?      !?      "?      #?      $?      %?      &?      '?      (?      )?      *?      +?      ,?      -?      .?      /?      0?      1?      2?      3?      4?      5?      6?      7?      8?      9?      :?      ;?      <?      =?      >?      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_27977
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_27982
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?V
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?V
value?VB?V B?V
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
;
_lookup_layer
	keras_api
_adapt_function*
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$_random_generator
%__call__
*&&call_and_return_all_conditional_losses* 
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
?
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3_random_generator
4__call__
*5&call_and_return_all_conditional_losses* 
?

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses*
?
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses* 
?
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
?

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses*
?
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W_random_generator
X__call__
*Y&call_and_return_all_conditional_losses* 
?

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses*
?
biter

cbeta_1

dbeta_2
	edecay
flearning_ratem?'m?(m?6m?7m?Km?Lm?Zm?[m?v?'v?(v?6v?7v?Kv?Lv?Zv?[v?*
C
1
'2
(3
64
75
K6
L7
Z8
[9*
C
0
'1
(2
63
74
K5
L6
Z7
[8*
* 
?
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

lserving_default* 
7
mlookup_table
ntoken_counts
o	keras_api*
* 
* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
 	variables
!trainable_variables
"regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 
* 
* 
* 
]W
VARIABLE_VALUEconv1d/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv1d/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEconv1d_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

60
71*

60
71*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

K0
L1*

K0
L1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 
* 
* 
* 
b\
VARIABLE_VALUEpredictions/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEpredictions/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

Z0
[1*

Z0
[1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
Z
0
1
2
3
4
5
6
7
	8

9
10
11*

?0
?1*
* 
* 
* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
?
?_create_resource
?_initialize
?_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv1d/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv1d/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv1d_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?
VARIABLE_VALUEAdam/predictions/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/predictions/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv1d/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv1d/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv1d_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
VARIABLE_VALUEAdam/predictions/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/predictions/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_1
hash_tableConstConst_1Const_2embedding/embeddingsconv1d/kernelconv1d/biasconv1d_1/kernelconv1d_1/biasdense/kernel
dense/biaspredictions/kernelpredictions/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_27684
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp!conv1d/kernel/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp#conv1d_1/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp&predictions/kernel/Read/ReadVariableOp$predictions/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp(Adam/conv1d/kernel/m/Read/ReadVariableOp&Adam/conv1d/bias/m/Read/ReadVariableOp*Adam/conv1d_1/kernel/m/Read/ReadVariableOp(Adam/conv1d_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp-Adam/predictions/kernel/m/Read/ReadVariableOp+Adam/predictions/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp(Adam/conv1d/kernel/v/Read/ReadVariableOp&Adam/conv1d/bias/v/Read/ReadVariableOp*Adam/conv1d_1/kernel/v/Read/ReadVariableOp(Adam/conv1d_1/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp-Adam/predictions/kernel/v/Read/ReadVariableOp+Adam/predictions/bias/v/Read/ReadVariableOpConst_6*3
Tin,
*2(		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_28127
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsconv1d/kernelconv1d/biasconv1d_1/kernelconv1d_1/biasdense/kernel
dense/biaspredictions/kernelpredictions/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateMutableHashTabletotalcounttotal_1count_1Adam/embedding/embeddings/mAdam/conv1d/kernel/mAdam/conv1d/bias/mAdam/conv1d_1/kernel/mAdam/conv1d_1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/predictions/kernel/mAdam/predictions/bias/mAdam/embedding/embeddings/vAdam/conv1d/kernel/vAdam/conv1d/bias/vAdam/conv1d_1/kernel/vAdam/conv1d_1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/predictions/kernel/vAdam/predictions/bias/v*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_28248??
?
?
__inference_<lambda>_279777
3key_value_init1107_lookuptableimportv2_table_handle/
+key_value_init1107_lookuptableimportv2_keys1
-key_value_init1107_lookuptableimportv2_values	
identity??&key_value_init1107/LookupTableImportV2?
&key_value_init1107/LookupTableImportV2LookupTableImportV23key_value_init1107_lookuptableimportv2_table_handle+key_value_init1107_lookuptableimportv2_keys-key_value_init1107_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init1107/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?~:?~2P
&key_value_init1107/LookupTableImportV2&key_value_init1107/LookupTableImportV2:!

_output_shapes	
:?~:!

_output_shapes	
:?~
?P
?
__inference__traced_save_28127
file_prefix3
/savev2_embedding_embeddings_read_readvariableop,
(savev2_conv1d_kernel_read_readvariableop*
&savev2_conv1d_bias_read_readvariableop.
*savev2_conv1d_1_kernel_read_readvariableop,
(savev2_conv1d_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop1
-savev2_predictions_kernel_read_readvariableop/
+savev2_predictions_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop3
/savev2_adam_conv1d_kernel_m_read_readvariableop1
-savev2_adam_conv1d_bias_m_read_readvariableop5
1savev2_adam_conv1d_1_kernel_m_read_readvariableop3
/savev2_adam_conv1d_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop8
4savev2_adam_predictions_kernel_m_read_readvariableop6
2savev2_adam_predictions_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop3
/savev2_adam_conv1d_kernel_v_read_readvariableop1
-savev2_adam_conv1d_bias_v_read_readvariableop5
1savev2_adam_conv1d_1_kernel_v_read_readvariableop3
/savev2_adam_conv1d_1_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop8
4savev2_adam_predictions_kernel_v_read_readvariableop6
2savev2_adam_predictions_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop(savev2_conv1d_kernel_read_readvariableop&savev2_conv1d_bias_read_readvariableop*savev2_conv1d_1_kernel_read_readvariableop(savev2_conv1d_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop-savev2_predictions_kernel_read_readvariableop+savev2_predictions_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop/savev2_adam_conv1d_kernel_m_read_readvariableop-savev2_adam_conv1d_bias_m_read_readvariableop1savev2_adam_conv1d_1_kernel_m_read_readvariableop/savev2_adam_conv1d_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop4savev2_adam_predictions_kernel_m_read_readvariableop2savev2_adam_predictions_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop/savev2_adam_conv1d_kernel_v_read_readvariableop-savev2_adam_conv1d_bias_v_read_readvariableop1savev2_adam_conv1d_1_kernel_v_read_readvariableop/savev2_adam_conv1d_1_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop4savev2_adam_predictions_kernel_v_read_readvariableop2savev2_adam_predictions_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *5
dtypes+
)2'		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :???:??:?:??:?:
??:?:	?:: : : : : ::: : : : :???:??:?:??:?:
??:?:	?::???:??:?:??:?:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:???:*&
$
_output_shapes
:??:!

_output_shapes	
:?:*&
$
_output_shapes
:??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_output_shapes
:???:*&
$
_output_shapes
:??:!

_output_shapes	
:?:*&
$
_output_shapes
:??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::'#
!
_output_shapes
:???:*&
$
_output_shapes
:??:! 

_output_shapes	
:?:*!&
$
_output_shapes
:??:!"

_output_shapes	
:?:&#"
 
_output_shapes
:
??:!$

_output_shapes	
:?:%%!

_output_shapes
:	?: &

_output_shapes
::'

_output_shapes
: 
?
`
'__inference_dropout_layer_call_fn_27710

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_27009t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????d?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????d?22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?

a
B__inference_dropout_layer_call_and_return_conditional_losses_27009

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:?????????d?C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:?????????d?*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????d?t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????d?n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:?????????d?^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????d?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????d?:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_27767

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:?????????"?`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:?????????"?"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????"?:T P
,
_output_shapes
:?????????"?
 
_user_specified_nameinputs
?
.
__inference__initializer_27937
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
(__inference_conv1d_1_layer_call_fn_27788

inputs
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_26795t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????"?: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????"?
 
_user_specified_nameinputs
?
?
D__inference_embedding_layer_call_and_return_conditional_losses_26739

inputs	+
embedding_lookup_26733:???
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_26733inputs*
Tindices0	*)
_class
loc:@embedding_lookup/26733*,
_output_shapes
:?????????d?*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/26733*,
_output_shapes
:?????????d??
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????d?x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:?????????d?Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
@__inference_model_layer_call_and_return_conditional_losses_27353
input_1U
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	$
embedding_27324:???$
conv1d_27328:??
conv1d_27330:	?&
conv1d_1_27334:??
conv1d_1_27336:	?
dense_27341:
??
dense_27343:	?$
predictions_27347:	?
predictions_27349:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2_
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????d       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_27324*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_26739?
dropout/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_27009?
conv1d/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv1d_27328conv1d_27330*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????"?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_26766?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????"?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_26976?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv1d_1_27334conv1d_1_27336*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_26795?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_26943?
$global_max_pooling1d/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_26672?
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_27341dense_27343*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_26820?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_26910?
#predictions/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0predictions_27347predictions_27349*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_26844{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_predictions_layer_call_fn_27898

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_26844o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_27390

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_26851o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_27804

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????"??
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????"?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????"?
 
_user_specified_nameinputs
?
?
A__inference_conv1d_layer_call_and_return_conditional_losses_26766

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????d??
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????"?*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????"?*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????"?U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????"?f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:?????????"??
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????d?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_26943

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
__inference__creator_27932
identity: ??MutableHashTable|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
?
#__inference_signature_wrapper_27684
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_26662o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
,
__inference__destroyer_27927
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
,
__inference__destroyer_27942
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference__initializer_279227
3key_value_init1107_lookuptableimportv2_table_handle/
+key_value_init1107_lookuptableimportv2_keys1
-key_value_init1107_lookuptableimportv2_values	
identity??&key_value_init1107/LookupTableImportV2?
&key_value_init1107/LookupTableImportV2LookupTableImportV23key_value_init1107_lookuptableimportv2_table_handle+key_value_init1107_lookuptableimportv2_keys-key_value_init1107_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init1107/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?~:?~2P
&key_value_init1107/LookupTableImportV2&key_value_init1107/LookupTableImportV2:!

_output_shapes	
:?~:!

_output_shapes	
:?~
?D
?
__inference_adapt_step_14033
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2a
StringLowerStringLowerIteratorGetNext:components:0*'
_output_shapes
:??????????
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite }
SqueezeSqueezeStaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2Squeeze:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
??
?
!__inference__traced_restore_28248
file_prefix:
%assignvariableop_embedding_embeddings:???8
 assignvariableop_1_conv1d_kernel:??-
assignvariableop_2_conv1d_bias:	?:
"assignvariableop_3_conv1d_1_kernel:??/
 assignvariableop_4_conv1d_1_bias:	?3
assignvariableop_5_dense_kernel:
??,
assignvariableop_6_dense_bias:	?8
%assignvariableop_7_predictions_kernel:	?1
#assignvariableop_8_predictions_bias:&
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: #
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: D
/assignvariableop_18_adam_embedding_embeddings_m:???@
(assignvariableop_19_adam_conv1d_kernel_m:??5
&assignvariableop_20_adam_conv1d_bias_m:	?B
*assignvariableop_21_adam_conv1d_1_kernel_m:??7
(assignvariableop_22_adam_conv1d_1_bias_m:	?;
'assignvariableop_23_adam_dense_kernel_m:
??4
%assignvariableop_24_adam_dense_bias_m:	?@
-assignvariableop_25_adam_predictions_kernel_m:	?9
+assignvariableop_26_adam_predictions_bias_m:D
/assignvariableop_27_adam_embedding_embeddings_v:???@
(assignvariableop_28_adam_conv1d_kernel_v:??5
&assignvariableop_29_adam_conv1d_bias_v:	?B
*assignvariableop_30_adam_conv1d_1_kernel_v:??7
(assignvariableop_31_adam_conv1d_1_bias_v:	?;
'assignvariableop_32_adam_dense_kernel_v:
??4
%assignvariableop_33_adam_dense_bias_v:	?@
-assignvariableop_34_adam_predictions_kernel_v:	?9
+assignvariableop_35_adam_predictions_bias_v:
identity_37??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv1d_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv1d_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv1d_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_predictions_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_predictions_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:14RestoreV2:tensors:15*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 _
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp/assignvariableop_18_adam_embedding_embeddings_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_conv1d_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_conv1d_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv1d_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv1d_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_adam_dense_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adam_predictions_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_predictions_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp/assignvariableop_27_adam_embedding_embeddings_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv1d_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp&assignvariableop_29_adam_conv1d_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv1d_1_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_conv1d_1_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp%assignvariableop_33_adam_dense_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp-assignvariableop_34_adam_predictions_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_predictions_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
?

?
F__inference_predictions_layer_call_and_return_conditional_losses_27909

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
P
4__inference_global_max_pooling1d_layer_call_fn_27836

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_26672i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_27421

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_27133o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
:
__inference__creator_27914
identity??
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1108*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_26748

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:?????????d?`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:?????????d?"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????d?:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_26831

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
@__inference_dense_layer_call_and_return_conditional_losses_27862

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
@__inference_model_layer_call_and_return_conditional_losses_27133

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	$
embedding_27104:???$
conv1d_27108:??
conv1d_27110:	?&
conv1d_1_27114:??
conv1d_1_27116:	?
dense_27121:
??
dense_27123:	?$
predictions_27127:	?
predictions_27129:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????d       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_27104*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_26739?
dropout/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_27009?
conv1d/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv1d_27108conv1d_27110*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????"?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_26766?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????"?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_26976?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv1d_1_27114conv1d_1_27116*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_26795?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_26943?
$global_max_pooling1d/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_26672?
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_27121dense_27123*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_26820?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_26910?
#predictions/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0predictions_27127predictions_27129*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_26844{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

c
D__inference_dropout_3_layer_call_and_return_conditional_losses_27889

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
E
)__inference_dropout_3_layer_call_fn_27867

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_26831a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?

@__inference_model_layer_call_and_return_conditional_losses_27522

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	5
 embedding_embedding_lookup_27472:???J
2conv1d_conv1d_expanddims_1_readvariableop_resource:??5
&conv1d_biasadd_readvariableop_resource:	?L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:??7
(conv1d_1_biasadd_readvariableop_resource:	?8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?=
*predictions_matmul_readvariableop_resource:	?9
+predictions_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?"predictions/BiasAdd/ReadVariableOp?!predictions/MatMul/ReadVariableOp?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????d       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_27472?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/27472*,
_output_shapes
:?????????d?*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/27472*,
_output_shapes
:?????????d??
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????d??
dropout/IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:?????????d?g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDimsdropout/Identity:output:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????d??
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????"?*
paddingSAME*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:?????????"?*
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????"?c
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:?????????"?p
dropout_1/IdentityIdentityconv1d/Relu:activations:0*
T0*,
_output_shapes
:?????????"?i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_1/Conv1D/ExpandDims
ExpandDimsdropout_1/Identity:output:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????"??
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????g
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:??????????r
dropout_2/IdentityIdentityconv1d_1/Relu:activations:0*
T0*,
_output_shapes
:??????????l
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d/MaxMaxdropout_2/Identity:output:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense/MatMulMatMul!global_max_pooling1d/Max:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????k
dropout_3/IdentityIdentitydense/Relu:activations:0*
T0*(
_output_shapes
:???????????
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
predictions/MatMulMatMuldropout_3/Identity:output:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
predictions/SoftmaxSoftmaxpredictions/BiasAdd:output:0*
T0*'
_output_shapes
:?????????l
IdentityIdentitypredictions/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOpE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_save_fn_27961
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
??
?

@__inference_model_layer_call_and_return_conditional_losses_27651

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	5
 embedding_embedding_lookup_27573:???J
2conv1d_conv1d_expanddims_1_readvariableop_resource:??5
&conv1d_biasadd_readvariableop_resource:	?L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:??7
(conv1d_1_biasadd_readvariableop_resource:	?8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?=
*predictions_matmul_readvariableop_resource:	?9
+predictions_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?"predictions/BiasAdd/ReadVariableOp?!predictions/MatMul/ReadVariableOp?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????d       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_27573?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/27573*,
_output_shapes
:?????????d?*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/27573*,
_output_shapes
:?????????d??
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????d?Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout/dropout/MulMul.embedding/embedding_lookup/Identity_1:output:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:?????????d?s
dropout/dropout/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????d?*
dtype0*

seed*c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????d??
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????d??
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????d?g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDimsdropout/dropout/Mul_1:z:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????d??
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????"?*
paddingSAME*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:?????????"?*
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????"?c
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:?????????"?\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU???
dropout_1/dropout/MulMulconv1d/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:?????????"?`
dropout_1/dropout/ShapeShapeconv1d/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????"?*
dtype0*

seed**
seed2e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????"??
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????"??
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????"?i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_1/Conv1D/ExpandDims
ExpandDimsdropout_1/dropout/Mul_1:z:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????"??
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????g
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:??????????\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_2/dropout/MulMulconv1d_1/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:??????????b
dropout_2/dropout/ShapeShapeconv1d_1/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0*

seed**
seed2e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:???????????
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:???????????
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????l
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d/MaxMaxdropout_2/dropout/Mul_1:z:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense/MatMulMatMul!global_max_pooling1d/Max:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_3/dropout/MulMuldense/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:??????????_
dropout_3/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed**
seed2e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
predictions/MatMulMatMuldropout_3/dropout/Mul_1:z:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
predictions/SoftmaxSoftmaxpredictions/BiasAdd:output:0*
T0*'
_output_shapes
:?????????l
IdentityIdentitypredictions/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOpE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
%__inference_model_layer_call_fn_26880
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_26851o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

c
D__inference_dropout_3_layer_call_and_return_conditional_losses_26910

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
k
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_27842

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?}
?
@__inference_model_layer_call_and_return_conditional_losses_27273
input_1U
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	$
embedding_27244:???$
conv1d_27248:??
conv1d_27250:	?&
conv1d_1_27254:??
conv1d_1_27256:	?
dense_27261:
??
dense_27263:	?$
predictions_27267:	?
predictions_27269:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2_
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????d       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_27244*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_26739?
dropout/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_26748?
conv1d/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv1d_27248conv1d_27250*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????"?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_26766?
dropout_1/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????"?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_26777?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv1d_1_27254conv1d_1_27256*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_26795?
dropout_2/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_26806?
$global_max_pooling1d/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_26672?
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_27261dense_27263*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_26820?
dropout_3/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_26831?
#predictions/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0predictions_27267predictions_27269*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_26844{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_26777

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:?????????"?`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:?????????"?"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????"?:T P
,
_output_shapes
:?????????"?
 
_user_specified_nameinputs
?

?
@__inference_dense_layer_call_and_return_conditional_losses_26820

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_conv1d_layer_call_fn_27736

inputs
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????"?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_26766t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????"?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????d?: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_27193
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_27133o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_26976

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:?????????"?C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:?????????"?*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????"?t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????"?n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:?????????"?^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????"?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????"?:T P
,
_output_shapes
:?????????"?
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_27715

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:?????????d?`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:?????????d?"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????d?:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?
?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_26795

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????"??
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????"?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????"?
 
_user_specified_nameinputs
?
k
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_26672

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
A__inference_conv1d_layer_call_and_return_conditional_losses_27752

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????d??
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????"?*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????"?*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????"?U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????"?f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:?????????"??
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????d?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?
b
)__inference_dropout_2_layer_call_fn_27814

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_26943t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_27831

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

a
B__inference_dropout_layer_call_and_return_conditional_losses_27727

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:?????????d?C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:?????????d?*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????d?t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????d?n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:?????????d?^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????d?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????d?:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?
E
)__inference_dropout_2_layer_call_fn_27809

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_26806e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_27851

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_26820p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
*
__inference_<lambda>_27982
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_restore_fn_27969
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_27779

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:?????????"?C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:?????????"?*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????"?t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????"?n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:?????????"?^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????"?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????"?:T P
,
_output_shapes
:?????????"?
 
_user_specified_nameinputs
?
E
)__inference_dropout_1_layer_call_fn_27757

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????"?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_26777e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:?????????"?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????"?:T P
,
_output_shapes
:?????????"?
 
_user_specified_nameinputs
?
b
)__inference_dropout_3_layer_call_fn_27872

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_26910p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_27877

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_26806

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_embedding_layer_call_fn_27691

inputs	
unknown:???
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_26739t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????d?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_27819

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?}
?
@__inference_model_layer_call_and_return_conditional_losses_26851

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	$
embedding_26740:???$
conv1d_26767:??
conv1d_26769:	?&
conv1d_1_26796:??
conv1d_1_26798:	?
dense_26821:
??
dense_26823:	?$
predictions_26845:	?
predictions_26847:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????d       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_26740*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_26739?
dropout/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_26748?
conv1d/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv1d_26767conv1d_26769*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????"?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_26766?
dropout_1/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????"?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_26777?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv1d_1_26796conv1d_1_26798*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_26795?
dropout_2/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_26806?
$global_max_pooling1d/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_26672?
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_26821dense_26823*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_26820?
dropout_3/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_26831?
#predictions/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0predictions_26845predictions_26847*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_predictions_layer_call_and_return_conditional_losses_26844{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_embedding_layer_call_and_return_conditional_losses_27700

inputs	+
embedding_lookup_27694:???
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_27694inputs*
Tindices0	*)
_class
loc:@embedding_lookup/27694*,
_output_shapes
:?????????d?*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/27694*,
_output_shapes
:?????????d??
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????d?x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:?????????d?Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
C
'__inference_dropout_layer_call_fn_27705

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_26748e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:?????????d?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????d?:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?
b
)__inference_dropout_1_layer_call_fn_27762

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????"?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_26976t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????"?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????"?22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????"?
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_26662
input_1[
Wmodel_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle\
Xmodel_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	2
.model_text_vectorization_string_lookup_equal_y5
1model_text_vectorization_string_lookup_selectv2_t	;
&model_embedding_embedding_lookup_26612:???P
8model_conv1d_conv1d_expanddims_1_readvariableop_resource:??;
,model_conv1d_biasadd_readvariableop_resource:	?R
:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource:??=
.model_conv1d_1_biasadd_readvariableop_resource:	?>
*model_dense_matmul_readvariableop_resource:
??:
+model_dense_biasadd_readvariableop_resource:	?C
0model_predictions_matmul_readvariableop_resource:	??
1model_predictions_biasadd_readvariableop_resource:
identity??#model/conv1d/BiasAdd/ReadVariableOp?/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp?%model/conv1d_1/BiasAdd/ReadVariableOp?1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?"model/dense/BiasAdd/ReadVariableOp?!model/dense/MatMul/ReadVariableOp? model/embedding/embedding_lookup?(model/predictions/BiasAdd/ReadVariableOp?'model/predictions/MatMul/ReadVariableOp?Jmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2e
$model/text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
+model/text_vectorization/StaticRegexReplaceStaticRegexReplace-model/text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
 model/text_vectorization/SqueezeSqueeze4model/text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????k
*model/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
2model/text_vectorization/StringSplit/StringSplitV2StringSplitV2)model/text_vectorization/Squeeze:output:03model/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
8model/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
:model/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
:model/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
2model/text_vectorization/StringSplit/strided_sliceStridedSlice<model/text_vectorization/StringSplit/StringSplitV2:indices:0Amodel/text_vectorization/StringSplit/strided_slice/stack:output:0Cmodel/text_vectorization/StringSplit/strided_slice/stack_1:output:0Cmodel/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
:model/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<model/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<model/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4model/text_vectorization/StringSplit/strided_slice_1StridedSlice:model/text_vectorization/StringSplit/StringSplitV2:shape:0Cmodel/text_vectorization/StringSplit/strided_slice_1/stack:output:0Emodel/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Emodel/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
[model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast;model/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast=model/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdnmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0nmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
imodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatermmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0rmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
dmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastkmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0pmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2lmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0nmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulhmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumamodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumamodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
hmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0pmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
bmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumomodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
fmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
bmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2omodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Jmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Wmodel_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle;model/text_vectorization/StringSplit/StringSplitV2:values:0Xmodel_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
,model/text_vectorization/string_lookup/EqualEqual;model/text_vectorization/StringSplit/StringSplitV2:values:0.model_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
/model/text_vectorization/string_lookup/SelectV2SelectV20model/text_vectorization/string_lookup/Equal:z:01model_text_vectorization_string_lookup_selectv2_tSmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
/model/text_vectorization/string_lookup/IdentityIdentity8model/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????w
5model/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
-model/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????d       ?
<model/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor6model/text_vectorization/RaggedToTensor/Const:output:08model/text_vectorization/string_lookup/Identity:output:0>model/text_vectorization/RaggedToTensor/default_value:output:0=model/text_vectorization/StringSplit/strided_slice_1:output:0;model/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
 model/embedding/embedding_lookupResourceGather&model_embedding_embedding_lookup_26612Emodel/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*9
_class/
-+loc:@model/embedding/embedding_lookup/26612*,
_output_shapes
:?????????d?*
dtype0?
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@model/embedding/embedding_lookup/26612*,
_output_shapes
:?????????d??
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????d??
model/dropout/IdentityIdentity4model/embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:?????????d?m
"model/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
model/conv1d/Conv1D/ExpandDims
ExpandDimsmodel/dropout/Identity:output:0+model/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????d??
/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp8model_conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0f
$model/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
 model/conv1d/Conv1D/ExpandDims_1
ExpandDims7model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0-model/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
model/conv1d/Conv1DConv2D'model/conv1d/Conv1D/ExpandDims:output:0)model/conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????"?*
paddingSAME*
strides
?
model/conv1d/Conv1D/SqueezeSqueezemodel/conv1d/Conv1D:output:0*
T0*,
_output_shapes
:?????????"?*
squeeze_dims

??????????
#model/conv1d/BiasAdd/ReadVariableOpReadVariableOp,model_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/conv1d/BiasAddBiasAdd$model/conv1d/Conv1D/Squeeze:output:0+model/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????"?o
model/conv1d/ReluRelumodel/conv1d/BiasAdd:output:0*
T0*,
_output_shapes
:?????????"?|
model/dropout_1/IdentityIdentitymodel/conv1d/Relu:activations:0*
T0*,
_output_shapes
:?????????"?o
$model/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 model/conv1d_1/Conv1D/ExpandDims
ExpandDims!model/dropout_1/Identity:output:0-model/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????"??
1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0h
&model/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
"model/conv1d_1/Conv1D/ExpandDims_1
ExpandDims9model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0/model/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
model/conv1d_1/Conv1DConv2D)model/conv1d_1/Conv1D/ExpandDims:output:0+model/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
model/conv1d_1/Conv1D/SqueezeSqueezemodel/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
%model/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/conv1d_1/BiasAddBiasAdd&model/conv1d_1/Conv1D/Squeeze:output:0-model/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????s
model/conv1d_1/ReluRelumodel/conv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:??????????~
model/dropout_2/IdentityIdentity!model/conv1d_1/Relu:activations:0*
T0*,
_output_shapes
:??????????r
0model/global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
model/global_max_pooling1d/MaxMax!model/dropout_2/Identity:output:09model/global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
model/dense/MatMulMatMul'model/global_max_pooling1d/Max:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????w
model/dropout_3/IdentityIdentitymodel/dense/Relu:activations:0*
T0*(
_output_shapes
:???????????
'model/predictions/MatMul/ReadVariableOpReadVariableOp0model_predictions_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
model/predictions/MatMulMatMul!model/dropout_3/Identity:output:0/model/predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(model/predictions/BiasAdd/ReadVariableOpReadVariableOp1model_predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model/predictions/BiasAddBiasAdd"model/predictions/MatMul:product:00model/predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
model/predictions/SoftmaxSoftmax"model/predictions/BiasAdd:output:0*
T0*'
_output_shapes
:?????????r
IdentityIdentity#model/predictions/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^model/conv1d/BiasAdd/ReadVariableOp0^model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp&^model/conv1d_1/BiasAdd/ReadVariableOp2^model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp!^model/embedding/embedding_lookup)^model/predictions/BiasAdd/ReadVariableOp(^model/predictions/MatMul/ReadVariableOpK^model/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2J
#model/conv1d/BiasAdd/ReadVariableOp#model/conv1d/BiasAdd/ReadVariableOp2b
/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2N
%model/conv1d_1/BiasAdd/ReadVariableOp%model/conv1d_1/BiasAdd/ReadVariableOp2f
1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2T
(model/predictions/BiasAdd/ReadVariableOp(model/predictions/BiasAdd/ReadVariableOp2R
'model/predictions/MatMul/ReadVariableOp'model/predictions/MatMul/ReadVariableOp2?
Jmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Jmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
F__inference_predictions_layer_call_and_return_conditional_losses_26844

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????A
predictions2
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
P
_lookup_layer
	keras_api
_adapt_function"
_tf_keras_layer
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$_random_generator
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
?
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3_random_generator
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
?

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
?
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
?
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
?
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W_random_generator
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
?
biter

cbeta_1

dbeta_2
	edecay
flearning_ratem?'m?(m?6m?7m?Km?Lm?Zm?[m?v?'v?(v?6v?7v?Kv?Lv?Zv?[v?"
	optimizer
_
1
'2
(3
64
75
K6
L7
Z8
[9"
trackable_list_wrapper
_
0
'1
(2
63
74
K5
L6
Z7
[8"
trackable_list_wrapper
 "
trackable_list_wrapper
?
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
%__inference_model_layer_call_fn_26880
%__inference_model_layer_call_fn_27390
%__inference_model_layer_call_fn_27421
%__inference_model_layer_call_fn_27193?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_model_layer_call_and_return_conditional_losses_27522
@__inference_model_layer_call_and_return_conditional_losses_27651
@__inference_model_layer_call_and_return_conditional_losses_27273
@__inference_model_layer_call_and_return_conditional_losses_27353?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_26662input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
lserving_default"
signature_map
L
mlookup_table
ntoken_counts
o	keras_api"
_tf_keras_layer
"
_generic_user_object
?2?
__inference_adapt_step_14033?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
):'???2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_embedding_layer_call_fn_27691?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_embedding_layer_call_and_return_conditional_losses_27700?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
 	variables
!trainable_variables
"regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
'__inference_dropout_layer_call_fn_27705
'__inference_dropout_layer_call_fn_27710?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dropout_layer_call_and_return_conditional_losses_27715
B__inference_dropout_layer_call_and_return_conditional_losses_27727?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
%:#??2conv1d/kernel
:?2conv1d/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
?2?
&__inference_conv1d_layer_call_fn_27736?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_conv1d_layer_call_and_return_conditional_losses_27752?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
)__inference_dropout_1_layer_call_fn_27757
)__inference_dropout_1_layer_call_fn_27762?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_1_layer_call_and_return_conditional_losses_27767
D__inference_dropout_1_layer_call_and_return_conditional_losses_27779?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
':%??2conv1d_1/kernel
:?2conv1d_1/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_conv1d_1_layer_call_fn_27788?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_27804?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
)__inference_dropout_2_layer_call_fn_27809
)__inference_dropout_2_layer_call_fn_27814?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_2_layer_call_and_return_conditional_losses_27819
D__inference_dropout_2_layer_call_and_return_conditional_losses_27831?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
?2?
4__inference_global_max_pooling1d_layer_call_fn_27836?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_27842?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 :
??2dense/kernel
:?2
dense/bias
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
?2?
%__inference_dense_layer_call_fn_27851?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_27862?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
)__inference_dropout_3_layer_call_fn_27867
)__inference_dropout_3_layer_call_fn_27872?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_3_layer_call_and_return_conditional_losses_27877
D__inference_dropout_3_layer_call_and_return_conditional_losses_27889?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
%:#	?2predictions/kernel
:2predictions/bias
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_predictions_layer_call_fn_27898?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_predictions_layer_call_and_return_conditional_losses_27909?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
#__inference_signature_wrapper_27684input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
"
_generic_user_object
?2?
__inference__creator_27914?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_27922?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_27927?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_27932?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_27937?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_27942?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
.:,???2Adam/embedding/embeddings/m
*:(??2Adam/conv1d/kernel/m
:?2Adam/conv1d/bias/m
,:*??2Adam/conv1d_1/kernel/m
!:?2Adam/conv1d_1/bias/m
%:#
??2Adam/dense/kernel/m
:?2Adam/dense/bias/m
*:(	?2Adam/predictions/kernel/m
#:!2Adam/predictions/bias/m
.:,???2Adam/embedding/embeddings/v
*:(??2Adam/conv1d/kernel/v
:?2Adam/conv1d/bias/v
,:*??2Adam/conv1d_1/kernel/v
!:?2Adam/conv1d_1/bias/v
%:#
??2Adam/dense/kernel/v
:?2Adam/dense/bias/v
*:(	?2Adam/predictions/kernel/v
#:!2Adam/predictions/bias/v
?B?
__inference_save_fn_27961checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_27969restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_56
__inference__creator_27914?

? 
? "? 6
__inference__creator_27932?

? 
? "? 8
__inference__destroyer_27927?

? 
? "? 8
__inference__destroyer_27942?

? 
? "? A
__inference__initializer_27922m???

? 
? "? :
__inference__initializer_27937?

? 
? "? ?
 __inference__wrapped_model_26662m???'(67KLZ[0?-
&?#
!?
input_1?????????
? "9?6
4
predictions%?"
predictions?????????n
__inference_adapt_step_14033Nn?C?@
9?6
4?1?
??????????IteratorSpec 
? "
 ?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_27804f674?1
*?'
%?"
inputs?????????"?
? "*?'
 ?
0??????????
? ?
(__inference_conv1d_1_layer_call_fn_27788Y674?1
*?'
%?"
inputs?????????"?
? "????????????
A__inference_conv1d_layer_call_and_return_conditional_losses_27752f'(4?1
*?'
%?"
inputs?????????d?
? "*?'
 ?
0?????????"?
? ?
&__inference_conv1d_layer_call_fn_27736Y'(4?1
*?'
%?"
inputs?????????d?
? "??????????"??
@__inference_dense_layer_call_and_return_conditional_losses_27862^KL0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? z
%__inference_dense_layer_call_fn_27851QKL0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dropout_1_layer_call_and_return_conditional_losses_27767f8?5
.?+
%?"
inputs?????????"?
p 
? "*?'
 ?
0?????????"?
? ?
D__inference_dropout_1_layer_call_and_return_conditional_losses_27779f8?5
.?+
%?"
inputs?????????"?
p
? "*?'
 ?
0?????????"?
? ?
)__inference_dropout_1_layer_call_fn_27757Y8?5
.?+
%?"
inputs?????????"?
p 
? "??????????"??
)__inference_dropout_1_layer_call_fn_27762Y8?5
.?+
%?"
inputs?????????"?
p
? "??????????"??
D__inference_dropout_2_layer_call_and_return_conditional_losses_27819f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
D__inference_dropout_2_layer_call_and_return_conditional_losses_27831f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
)__inference_dropout_2_layer_call_fn_27809Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
)__inference_dropout_2_layer_call_fn_27814Y8?5
.?+
%?"
inputs??????????
p
? "????????????
D__inference_dropout_3_layer_call_and_return_conditional_losses_27877^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
D__inference_dropout_3_layer_call_and_return_conditional_losses_27889^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ~
)__inference_dropout_3_layer_call_fn_27867Q4?1
*?'
!?
inputs??????????
p 
? "???????????~
)__inference_dropout_3_layer_call_fn_27872Q4?1
*?'
!?
inputs??????????
p
? "????????????
B__inference_dropout_layer_call_and_return_conditional_losses_27715f8?5
.?+
%?"
inputs?????????d?
p 
? "*?'
 ?
0?????????d?
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_27727f8?5
.?+
%?"
inputs?????????d?
p
? "*?'
 ?
0?????????d?
? ?
'__inference_dropout_layer_call_fn_27705Y8?5
.?+
%?"
inputs?????????d?
p 
? "??????????d??
'__inference_dropout_layer_call_fn_27710Y8?5
.?+
%?"
inputs?????????d?
p
? "??????????d??
D__inference_embedding_layer_call_and_return_conditional_losses_27700`/?,
%?"
 ?
inputs?????????d	
? "*?'
 ?
0?????????d?
? ?
)__inference_embedding_layer_call_fn_27691S/?,
%?"
 ?
inputs?????????d	
? "??????????d??
O__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_27842wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+
$?!
0??????????????????
? ?
4__inference_global_max_pooling1d_layer_call_fn_27836jE?B
;?8
6?3
inputs'???????????????????????????
? "!????????????????????
@__inference_model_layer_call_and_return_conditional_losses_27273sm???'(67KLZ[8?5
.?+
!?
input_1?????????
p 

 
? "%?"
?
0?????????
? ?
@__inference_model_layer_call_and_return_conditional_losses_27353sm???'(67KLZ[8?5
.?+
!?
input_1?????????
p

 
? "%?"
?
0?????????
? ?
@__inference_model_layer_call_and_return_conditional_losses_27522rm???'(67KLZ[7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
@__inference_model_layer_call_and_return_conditional_losses_27651rm???'(67KLZ[7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
%__inference_model_layer_call_fn_26880fm???'(67KLZ[8?5
.?+
!?
input_1?????????
p 

 
? "???????????
%__inference_model_layer_call_fn_27193fm???'(67KLZ[8?5
.?+
!?
input_1?????????
p

 
? "???????????
%__inference_model_layer_call_fn_27390em???'(67KLZ[7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
%__inference_model_layer_call_fn_27421em???'(67KLZ[7?4
-?*
 ?
inputs?????????
p

 
? "???????????
F__inference_predictions_layer_call_and_return_conditional_losses_27909]Z[0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? 
+__inference_predictions_layer_call_fn_27898PZ[0?-
&?#
!?
inputs??????????
? "??????????y
__inference_restore_fn_27969YnK?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_27961?n&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
#__inference_signature_wrapper_27684?m???'(67KLZ[;?8
? 
1?.
,
input_1!?
input_1?????????"9?6
4
predictions%?"
predictions?????????