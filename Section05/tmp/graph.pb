
D
inputXPlaceholder*
dtype0* 
shape:���������<<
A
outputYPlaceholder*
dtype0*
shape:���������
>
sum1Placeholder*
dtype0*
shape:���������<
>
sum2Placeholder*
dtype0*
shape:���������<
5
concat/axisConst*
dtype0*
value	B :
I
concatConcatV2sum1sum2concat/axis*
T0*
N*

Tidx0
�
/dense_branch/W/Initializer/random_uniform/shapeConst*
valueB"x   �   *!
_class
loc:@dense_branch/W*
dtype0
}
-dense_branch/W/Initializer/random_uniform/minConst*
valueB
 *.�d�*!
_class
loc:@dense_branch/W*
dtype0
}
-dense_branch/W/Initializer/random_uniform/maxConst*
valueB
 *.�d>*!
_class
loc:@dense_branch/W*
dtype0
�
7dense_branch/W/Initializer/random_uniform/RandomUniformRandomUniform/dense_branch/W/Initializer/random_uniform/shape*

seed *
T0*!
_class
loc:@dense_branch/W*
dtype0*
seed2 
�
-dense_branch/W/Initializer/random_uniform/subSub-dense_branch/W/Initializer/random_uniform/max-dense_branch/W/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_branch/W
�
-dense_branch/W/Initializer/random_uniform/mulMul7dense_branch/W/Initializer/random_uniform/RandomUniform-dense_branch/W/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_branch/W
�
)dense_branch/W/Initializer/random_uniformAdd-dense_branch/W/Initializer/random_uniform/mul-dense_branch/W/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_branch/W
�
dense_branch/W
VariableV2*!
_class
loc:@dense_branch/W*
dtype0*
	container *
shape:	x�*
shared_name 
�
dense_branch/W/AssignAssigndense_branch/W)dense_branch/W/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_branch/W*
validate_shape(
[
dense_branch/W/readIdentitydense_branch/W*
T0*!
_class
loc:@dense_branch/W
D
dense_branch/zerosConst*
valueB�*    *
dtype0
_
dense_branch/b
VariableV2*
shape:�*
shared_name *
dtype0*
	container 
�
dense_branch/b/AssignAssigndense_branch/bdense_branch/zeros*
use_locking(*
T0*!
_class
loc:@dense_branch/b*
validate_shape(
[
dense_branch/b/readIdentitydense_branch/b*
T0*!
_class
loc:@dense_branch/b
i
dense_branch/MatMulMatMulconcatdense_branch/W/read*
T0*
transpose_a( *
transpose_b( 
J
dense_branch/AddAdddense_branch/MatMuldense_branch/b/read*
T0
:
dense_branch/SigmoidSigmoiddense_branch/Add*
T0
J
Reshape/shapeConst*%
valueB"����<   <      *
dtype0
@
ReshapeReshapeinputXReshape/shape*
T0*
Tshape0
5
plot/tagConst*
valueB
 Bplot*
dtype0
c
plotImageSummaryplot/tagReshape*
T0*
	bad_colorB:�  �*

max_images
�
(conv1/W/Initializer/random_uniform/shapeConst*%
valueB"            *
_class
loc:@conv1/W*
dtype0
o
&conv1/W/Initializer/random_uniform/minConst*
valueB
 *�Q�*
_class
loc:@conv1/W*
dtype0
o
&conv1/W/Initializer/random_uniform/maxConst*
valueB
 *�Q?*
_class
loc:@conv1/W*
dtype0
�
0conv1/W/Initializer/random_uniform/RandomUniformRandomUniform(conv1/W/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@conv1/W*
dtype0*
seed2 
�
&conv1/W/Initializer/random_uniform/subSub&conv1/W/Initializer/random_uniform/max&conv1/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv1/W
�
&conv1/W/Initializer/random_uniform/mulMul0conv1/W/Initializer/random_uniform/RandomUniform&conv1/W/Initializer/random_uniform/sub*
T0*
_class
loc:@conv1/W
�
"conv1/W/Initializer/random_uniformAdd&conv1/W/Initializer/random_uniform/mul&conv1/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv1/W

conv1/W
VariableV2*
_class
loc:@conv1/W*
dtype0*
	container *
shape:*
shared_name 
�
conv1/W/AssignAssignconv1/W"conv1/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
F
conv1/W/readIdentityconv1/W*
T0*
_class
loc:@conv1/W
<
conv1/zerosConst*
dtype0*
valueB*    
W
conv1/b
VariableV2*
shared_name *
dtype0*
	container *
shape:
|
conv1/b/AssignAssignconv1/bconv1/zeros*
use_locking(*
T0*
_class
loc:@conv1/b*
validate_shape(
F
conv1/b/readIdentityconv1/b*
T0*
_class
loc:@conv1/b
�
conv1/Conv2DConv2DReshapeconv1/W/read*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
T
conv1/BiasAddBiasAddconv1/Conv2Dconv1/b/read*
data_formatNHWC*
T0
*

conv1/ReluReluconv1/BiasAdd*
T0
L
Reshape_1/shapeConst*%
valueB"����:   :      *
dtype0
K
	Reshape_1Reshapeconv1/BiasAddReshape_1/shape*
T0*
Tshape0
L
Reshape_2/shapeConst*%
valueB"����:   :      *
dtype0
H
	Reshape_2Reshape
conv1/ReluReshape_2/shape*
T0*
Tshape0
E
feed_forward/tagConst*
valueB Bfeed_forward*
dtype0
u
feed_forwardImageSummaryfeed_forward/tag	Reshape_1*
T0*
	bad_colorB:�  �*

max_images
A
activation/tagConst*
valueB B
activation*
dtype0
q

activationImageSummaryactivation/tag	Reshape_2*

max_images*
T0*
	bad_colorB:�  �
�
0branch1/conv2/W/Initializer/random_uniform/shapeConst*%
valueB"             *"
_class
loc:@branch1/conv2/W*
dtype0

.branch1/conv2/W/Initializer/random_uniform/minConst*
dtype0*
valueB
 *�Q�*"
_class
loc:@branch1/conv2/W

.branch1/conv2/W/Initializer/random_uniform/maxConst*
valueB
 *�Q>*"
_class
loc:@branch1/conv2/W*
dtype0
�
8branch1/conv2/W/Initializer/random_uniform/RandomUniformRandomUniform0branch1/conv2/W/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@branch1/conv2/W
�
.branch1/conv2/W/Initializer/random_uniform/subSub.branch1/conv2/W/Initializer/random_uniform/max.branch1/conv2/W/Initializer/random_uniform/min*
T0*"
_class
loc:@branch1/conv2/W
�
.branch1/conv2/W/Initializer/random_uniform/mulMul8branch1/conv2/W/Initializer/random_uniform/RandomUniform.branch1/conv2/W/Initializer/random_uniform/sub*
T0*"
_class
loc:@branch1/conv2/W
�
*branch1/conv2/W/Initializer/random_uniformAdd.branch1/conv2/W/Initializer/random_uniform/mul.branch1/conv2/W/Initializer/random_uniform/min*
T0*"
_class
loc:@branch1/conv2/W
�
branch1/conv2/W
VariableV2*
shared_name *"
_class
loc:@branch1/conv2/W*
dtype0*
	container *
shape: 
�
branch1/conv2/W/AssignAssignbranch1/conv2/W*branch1/conv2/W/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(
^
branch1/conv2/W/readIdentitybranch1/conv2/W*
T0*"
_class
loc:@branch1/conv2/W
D
branch1/conv2/zerosConst*
dtype0*
valueB *    
_
branch1/conv2/b
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
branch1/conv2/b/AssignAssignbranch1/conv2/bbranch1/conv2/zeros*
use_locking(*
T0*"
_class
loc:@branch1/conv2/b*
validate_shape(
^
branch1/conv2/b/readIdentitybranch1/conv2/b*
T0*"
_class
loc:@branch1/conv2/b
�
branch1/conv2/Conv2DConv2D
conv1/Relubranch1/conv2/W/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
T0
l
branch1/conv2/BiasAddBiasAddbranch1/conv2/Conv2Dbranch1/conv2/b/read*
T0*
data_formatNHWC
:
branch1/conv2/ReluRelubranch1/conv2/BiasAdd*
T0
�
branch1/MaxPoolMaxPoolbranch1/conv2/Relu*
ksize
*
paddingVALID*
T0*
strides
*
data_formatNHWC
�
0branch2/conv2/W/Initializer/random_uniform/shapeConst*%
valueB"             *"
_class
loc:@branch2/conv2/W*
dtype0

.branch2/conv2/W/Initializer/random_uniform/minConst*
valueB
 *�Q�*"
_class
loc:@branch2/conv2/W*
dtype0

.branch2/conv2/W/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *�Q>*"
_class
loc:@branch2/conv2/W
�
8branch2/conv2/W/Initializer/random_uniform/RandomUniformRandomUniform0branch2/conv2/W/Initializer/random_uniform/shape*
T0*"
_class
loc:@branch2/conv2/W*
dtype0*
seed2 *

seed 
�
.branch2/conv2/W/Initializer/random_uniform/subSub.branch2/conv2/W/Initializer/random_uniform/max.branch2/conv2/W/Initializer/random_uniform/min*
T0*"
_class
loc:@branch2/conv2/W
�
.branch2/conv2/W/Initializer/random_uniform/mulMul8branch2/conv2/W/Initializer/random_uniform/RandomUniform.branch2/conv2/W/Initializer/random_uniform/sub*
T0*"
_class
loc:@branch2/conv2/W
�
*branch2/conv2/W/Initializer/random_uniformAdd.branch2/conv2/W/Initializer/random_uniform/mul.branch2/conv2/W/Initializer/random_uniform/min*
T0*"
_class
loc:@branch2/conv2/W
�
branch2/conv2/W
VariableV2*
dtype0*
	container *
shape: *
shared_name *"
_class
loc:@branch2/conv2/W
�
branch2/conv2/W/AssignAssignbranch2/conv2/W*branch2/conv2/W/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*"
_class
loc:@branch2/conv2/W
^
branch2/conv2/W/readIdentitybranch2/conv2/W*
T0*"
_class
loc:@branch2/conv2/W
D
branch2/conv2/zerosConst*
valueB *    *
dtype0
_
branch2/conv2/b
VariableV2*
shared_name *
dtype0*
	container *
shape: 
�
branch2/conv2/b/AssignAssignbranch2/conv2/bbranch2/conv2/zeros*
T0*"
_class
loc:@branch2/conv2/b*
validate_shape(*
use_locking(
^
branch2/conv2/b/readIdentitybranch2/conv2/b*
T0*"
_class
loc:@branch2/conv2/b
�
branch2/conv2/Conv2DConv2D
conv1/Relubranch2/conv2/W/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
T0
l
branch2/conv2/BiasAddBiasAddbranch2/conv2/Conv2Dbranch2/conv2/b/read*
T0*
data_formatNHWC
:
branch2/conv2/ReluRelubranch2/conv2/BiasAdd*
T0
�
branch2/MaxPoolMaxPoolbranch2/conv2/Relu*
ksize
*
paddingVALID*
T0*
strides
*
data_formatNHWC
7
concat_1/axisConst*
value	B :*
dtype0
c
concat_1ConcatV2branch1/MaxPoolbranch2/MaxPoolconcat_1/axis*

Tidx0*
T0*
N
D
Reshape_3/shapeConst*
valueB"���� �  *
dtype0
F
	Reshape_3Reshapeconcat_1Reshape_3/shape*
T0*
Tshape0
7
concat_2/axisConst*
value	B :*
dtype0
b
concat_2ConcatV2	Reshape_3dense_branch/Sigmoidconcat_2/axis*

Tidx0*
T0*
N
{
)dense1/W/Initializer/random_uniform/shapeConst*
valueB"��     *
_class
loc:@dense1/W*
dtype0
q
'dense1/W/Initializer/random_uniform/minConst*
valueB
 *��2�*
_class
loc:@dense1/W*
dtype0
q
'dense1/W/Initializer/random_uniform/maxConst*
valueB
 *��2<*
_class
loc:@dense1/W*
dtype0
�
1dense1/W/Initializer/random_uniform/RandomUniformRandomUniform)dense1/W/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense1/W
�
'dense1/W/Initializer/random_uniform/subSub'dense1/W/Initializer/random_uniform/max'dense1/W/Initializer/random_uniform/min*
T0*
_class
loc:@dense1/W
�
'dense1/W/Initializer/random_uniform/mulMul1dense1/W/Initializer/random_uniform/RandomUniform'dense1/W/Initializer/random_uniform/sub*
T0*
_class
loc:@dense1/W
�
#dense1/W/Initializer/random_uniformAdd'dense1/W/Initializer/random_uniform/mul'dense1/W/Initializer/random_uniform/min*
T0*
_class
loc:@dense1/W
{
dense1/W
VariableV2*
dtype0*
	container *
shape:
ȉ*
shared_name *
_class
loc:@dense1/W
�
dense1/W/AssignAssigndense1/W#dense1/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@dense1/W*
validate_shape(
I
dense1/W/readIdentitydense1/W*
T0*
_class
loc:@dense1/W
=
dense1/zerosConst*
dtype0*
valueB*    
X
dense1/b
VariableV2*
dtype0*
	container *
shape:*
shared_name 
�
dense1/b/AssignAssigndense1/bdense1/zeros*
use_locking(*
T0*
_class
loc:@dense1/b*
validate_shape(
I
dense1/b/readIdentitydense1/b*
T0*
_class
loc:@dense1/b
_
dense1/MatMulMatMulconcat_2dense1/W/read*
transpose_b( *
T0*
transpose_a( 
8

dense1/addAdddense1/MatMuldense1/b/read*
T0
*

predictionSoftmax
dense1/add*
T0
3
	cost/RankConst*
value	B :*
dtype0
8

cost/ShapeShape
dense1/add*
T0*
out_type0
5
cost/Rank_1Const*
value	B :*
dtype0
:
cost/Shape_1Shape
dense1/add*
T0*
out_type0
4

cost/Sub/yConst*
dtype0*
value	B :
1
cost/SubSubcost/Rank_1
cost/Sub/y*
T0
@
cost/Slice/beginPackcost/Sub*
T0*

axis *
N
=
cost/Slice/sizeConst*
valueB:*
dtype0
Z

cost/SliceSlicecost/Shape_1cost/Slice/begincost/Slice/size*
Index0*
T0
K
cost/concat/values_0Const*
valueB:
���������*
dtype0
:
cost/concat/axisConst*
value	B : *
dtype0
i
cost/concatConcatV2cost/concat/values_0
cost/Slicecost/concat/axis*
T0*
N*

Tidx0
G
cost/ReshapeReshape
dense1/addcost/concat*
T0*
Tshape0
5
cost/Rank_2Const*
value	B :*
dtype0
7
cost/Shape_2ShapeoutputY*
T0*
out_type0
6
cost/Sub_1/yConst*
dtype0*
value	B :
5

cost/Sub_1Subcost/Rank_2cost/Sub_1/y*
T0
D
cost/Slice_1/beginPack
cost/Sub_1*
T0*

axis *
N
?
cost/Slice_1/sizeConst*
valueB:*
dtype0
`
cost/Slice_1Slicecost/Shape_2cost/Slice_1/begincost/Slice_1/size*
Index0*
T0
M
cost/concat_1/values_0Const*
dtype0*
valueB:
���������
<
cost/concat_1/axisConst*
value	B : *
dtype0
q
cost/concat_1ConcatV2cost/concat_1/values_0cost/Slice_1cost/concat_1/axis*
T0*
N*

Tidx0
H
cost/Reshape_1ReshapeoutputYcost/concat_1*
T0*
Tshape0
j
"cost/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitscost/Reshapecost/Reshape_1*
T0
6
cost/Sub_2/yConst*
value	B :*
dtype0
3

cost/Sub_2Sub	cost/Rankcost/Sub_2/y*
T0
@
cost/Slice_2/beginConst*
valueB: *
dtype0
C
cost/Slice_2/sizePack
cost/Sub_2*
T0*

axis *
N
^
cost/Slice_2Slice
cost/Shapecost/Slice_2/begincost/Slice_2/size*
Index0*
T0
b
cost/Reshape_2Reshape"cost/SoftmaxCrossEntropyWithLogitscost/Slice_2*
T0*
Tshape0
8

cost/ConstConst*
valueB: *
dtype0
S
	cost/MeanMeancost/Reshape_2
cost/Const*
T0*
	keep_dims( *

Tidx0
>
train/gradients/ShapeConst*
valueB *
dtype0
B
train/gradients/ConstConst*
dtype0*
valueB
 *  �?
S
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/Const*
T0
Z
,train/gradients/cost/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0
�
&train/gradients/cost/Mean_grad/ReshapeReshapetrain/gradients/Fill,train/gradients/cost/Mean_grad/Reshape/shape*
T0*
Tshape0
V
$train/gradients/cost/Mean_grad/ShapeShapecost/Reshape_2*
T0*
out_type0
�
#train/gradients/cost/Mean_grad/TileTile&train/gradients/cost/Mean_grad/Reshape$train/gradients/cost/Mean_grad/Shape*
T0*

Tmultiples0
X
&train/gradients/cost/Mean_grad/Shape_1Shapecost/Reshape_2*
T0*
out_type0
O
&train/gradients/cost/Mean_grad/Shape_2Const*
valueB *
dtype0
�
$train/gradients/cost/Mean_grad/ConstConst*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
valueB: *
dtype0
�
#train/gradients/cost/Mean_grad/ProdProd&train/gradients/cost/Mean_grad/Shape_1$train/gradients/cost/Mean_grad/Const*
T0*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
	keep_dims( *

Tidx0
�
&train/gradients/cost/Mean_grad/Const_1Const*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
valueB: *
dtype0
�
%train/gradients/cost/Mean_grad/Prod_1Prod&train/gradients/cost/Mean_grad/Shape_2&train/gradients/cost/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1
�
(train/gradients/cost/Mean_grad/Maximum/yConst*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
value	B :*
dtype0
�
&train/gradients/cost/Mean_grad/MaximumMaximum%train/gradients/cost/Mean_grad/Prod_1(train/gradients/cost/Mean_grad/Maximum/y*
T0*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1
�
'train/gradients/cost/Mean_grad/floordivFloorDiv#train/gradients/cost/Mean_grad/Prod&train/gradients/cost/Mean_grad/Maximum*
T0*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1
l
#train/gradients/cost/Mean_grad/CastCast'train/gradients/cost/Mean_grad/floordiv*

SrcT0*

DstT0
�
&train/gradients/cost/Mean_grad/truedivRealDiv#train/gradients/cost/Mean_grad/Tile#train/gradients/cost/Mean_grad/Cast*
T0
o
)train/gradients/cost/Reshape_2_grad/ShapeShape"cost/SoftmaxCrossEntropyWithLogits*
T0*
out_type0
�
+train/gradients/cost/Reshape_2_grad/ReshapeReshape&train/gradients/cost/Mean_grad/truediv)train/gradients/cost/Reshape_2_grad/Shape*
T0*
Tshape0
V
train/gradients/zeros_like	ZerosLike$cost/SoftmaxCrossEntropyWithLogits:1*
T0
y
Ftrain/gradients/cost/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0
�
Btrain/gradients/cost/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims+train/gradients/cost/Reshape_2_grad/ReshapeFtrain/gradients/cost/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0
�
;train/gradients/cost/SoftmaxCrossEntropyWithLogits_grad/mulMulBtrain/gradients/cost/SoftmaxCrossEntropyWithLogits_grad/ExpandDims$cost/SoftmaxCrossEntropyWithLogits:1*
T0
U
'train/gradients/cost/Reshape_grad/ShapeShape
dense1/add*
T0*
out_type0
�
)train/gradients/cost/Reshape_grad/ReshapeReshape;train/gradients/cost/SoftmaxCrossEntropyWithLogits_grad/mul'train/gradients/cost/Reshape_grad/Shape*
T0*
Tshape0
V
%train/gradients/dense1/add_grad/ShapeShapedense1/MatMul*
T0*
out_type0
U
'train/gradients/dense1/add_grad/Shape_1Const*
valueB:*
dtype0
�
5train/gradients/dense1/add_grad/BroadcastGradientArgsBroadcastGradientArgs%train/gradients/dense1/add_grad/Shape'train/gradients/dense1/add_grad/Shape_1*
T0
�
#train/gradients/dense1/add_grad/SumSum)train/gradients/cost/Reshape_grad/Reshape5train/gradients/dense1/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
'train/gradients/dense1/add_grad/ReshapeReshape#train/gradients/dense1/add_grad/Sum%train/gradients/dense1/add_grad/Shape*
T0*
Tshape0
�
%train/gradients/dense1/add_grad/Sum_1Sum)train/gradients/cost/Reshape_grad/Reshape7train/gradients/dense1/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
)train/gradients/dense1/add_grad/Reshape_1Reshape%train/gradients/dense1/add_grad/Sum_1'train/gradients/dense1/add_grad/Shape_1*
T0*
Tshape0
�
0train/gradients/dense1/add_grad/tuple/group_depsNoOp(^train/gradients/dense1/add_grad/Reshape*^train/gradients/dense1/add_grad/Reshape_1
�
8train/gradients/dense1/add_grad/tuple/control_dependencyIdentity'train/gradients/dense1/add_grad/Reshape1^train/gradients/dense1/add_grad/tuple/group_deps*
T0*:
_class0
.,loc:@train/gradients/dense1/add_grad/Reshape
�
:train/gradients/dense1/add_grad/tuple/control_dependency_1Identity)train/gradients/dense1/add_grad/Reshape_11^train/gradients/dense1/add_grad/tuple/group_deps*
T0*<
_class2
0.loc:@train/gradients/dense1/add_grad/Reshape_1
�
)train/gradients/dense1/MatMul_grad/MatMulMatMul8train/gradients/dense1/add_grad/tuple/control_dependencydense1/W/read*
transpose_a( *
transpose_b(*
T0
�
+train/gradients/dense1/MatMul_grad/MatMul_1MatMulconcat_28train/gradients/dense1/add_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
�
3train/gradients/dense1/MatMul_grad/tuple/group_depsNoOp*^train/gradients/dense1/MatMul_grad/MatMul,^train/gradients/dense1/MatMul_grad/MatMul_1
�
;train/gradients/dense1/MatMul_grad/tuple/control_dependencyIdentity)train/gradients/dense1/MatMul_grad/MatMul4^train/gradients/dense1/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@train/gradients/dense1/MatMul_grad/MatMul
�
=train/gradients/dense1/MatMul_grad/tuple/control_dependency_1Identity+train/gradients/dense1/MatMul_grad/MatMul_14^train/gradients/dense1/MatMul_grad/tuple/group_deps*
T0*>
_class4
20loc:@train/gradients/dense1/MatMul_grad/MatMul_1
L
"train/gradients/concat_2_grad/RankConst*
dtype0*
value	B :
i
!train/gradients/concat_2_grad/modFloorModconcat_2/axis"train/gradients/concat_2_grad/Rank*
T0
P
#train/gradients/concat_2_grad/ShapeShape	Reshape_3*
T0*
out_type0
q
$train/gradients/concat_2_grad/ShapeNShapeN	Reshape_3dense_branch/Sigmoid*
T0*
out_type0*
N
�
*train/gradients/concat_2_grad/ConcatOffsetConcatOffset!train/gradients/concat_2_grad/mod$train/gradients/concat_2_grad/ShapeN&train/gradients/concat_2_grad/ShapeN:1*
N
�
#train/gradients/concat_2_grad/SliceSlice;train/gradients/dense1/MatMul_grad/tuple/control_dependency*train/gradients/concat_2_grad/ConcatOffset$train/gradients/concat_2_grad/ShapeN*
Index0*
T0
�
%train/gradients/concat_2_grad/Slice_1Slice;train/gradients/dense1/MatMul_grad/tuple/control_dependency,train/gradients/concat_2_grad/ConcatOffset:1&train/gradients/concat_2_grad/ShapeN:1*
Index0*
T0
�
.train/gradients/concat_2_grad/tuple/group_depsNoOp$^train/gradients/concat_2_grad/Slice&^train/gradients/concat_2_grad/Slice_1
�
6train/gradients/concat_2_grad/tuple/control_dependencyIdentity#train/gradients/concat_2_grad/Slice/^train/gradients/concat_2_grad/tuple/group_deps*
T0*6
_class,
*(loc:@train/gradients/concat_2_grad/Slice
�
8train/gradients/concat_2_grad/tuple/control_dependency_1Identity%train/gradients/concat_2_grad/Slice_1/^train/gradients/concat_2_grad/tuple/group_deps*
T0*8
_class.
,*loc:@train/gradients/concat_2_grad/Slice_1
P
$train/gradients/Reshape_3_grad/ShapeShapeconcat_1*
T0*
out_type0
�
&train/gradients/Reshape_3_grad/ReshapeReshape6train/gradients/concat_2_grad/tuple/control_dependency$train/gradients/Reshape_3_grad/Shape*
T0*
Tshape0
�
5train/gradients/dense_branch/Sigmoid_grad/SigmoidGradSigmoidGraddense_branch/Sigmoid8train/gradients/concat_2_grad/tuple/control_dependency_1*
T0
L
"train/gradients/concat_1_grad/RankConst*
value	B :*
dtype0
i
!train/gradients/concat_1_grad/modFloorModconcat_1/axis"train/gradients/concat_1_grad/Rank*
T0
V
#train/gradients/concat_1_grad/ShapeShapebranch1/MaxPool*
T0*
out_type0
r
$train/gradients/concat_1_grad/ShapeNShapeNbranch1/MaxPoolbranch2/MaxPool*
T0*
out_type0*
N
�
*train/gradients/concat_1_grad/ConcatOffsetConcatOffset!train/gradients/concat_1_grad/mod$train/gradients/concat_1_grad/ShapeN&train/gradients/concat_1_grad/ShapeN:1*
N
�
#train/gradients/concat_1_grad/SliceSlice&train/gradients/Reshape_3_grad/Reshape*train/gradients/concat_1_grad/ConcatOffset$train/gradients/concat_1_grad/ShapeN*
Index0*
T0
�
%train/gradients/concat_1_grad/Slice_1Slice&train/gradients/Reshape_3_grad/Reshape,train/gradients/concat_1_grad/ConcatOffset:1&train/gradients/concat_1_grad/ShapeN:1*
Index0*
T0
�
.train/gradients/concat_1_grad/tuple/group_depsNoOp$^train/gradients/concat_1_grad/Slice&^train/gradients/concat_1_grad/Slice_1
�
6train/gradients/concat_1_grad/tuple/control_dependencyIdentity#train/gradients/concat_1_grad/Slice/^train/gradients/concat_1_grad/tuple/group_deps*
T0*6
_class,
*(loc:@train/gradients/concat_1_grad/Slice
�
8train/gradients/concat_1_grad/tuple/control_dependency_1Identity%train/gradients/concat_1_grad/Slice_1/^train/gradients/concat_1_grad/tuple/group_deps*
T0*8
_class.
,*loc:@train/gradients/concat_1_grad/Slice_1
b
+train/gradients/dense_branch/Add_grad/ShapeShapedense_branch/MatMul*
T0*
out_type0
\
-train/gradients/dense_branch/Add_grad/Shape_1Const*
valueB:�*
dtype0
�
;train/gradients/dense_branch/Add_grad/BroadcastGradientArgsBroadcastGradientArgs+train/gradients/dense_branch/Add_grad/Shape-train/gradients/dense_branch/Add_grad/Shape_1*
T0
�
)train/gradients/dense_branch/Add_grad/SumSum5train/gradients/dense_branch/Sigmoid_grad/SigmoidGrad;train/gradients/dense_branch/Add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
-train/gradients/dense_branch/Add_grad/ReshapeReshape)train/gradients/dense_branch/Add_grad/Sum+train/gradients/dense_branch/Add_grad/Shape*
T0*
Tshape0
�
+train/gradients/dense_branch/Add_grad/Sum_1Sum5train/gradients/dense_branch/Sigmoid_grad/SigmoidGrad=train/gradients/dense_branch/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
/train/gradients/dense_branch/Add_grad/Reshape_1Reshape+train/gradients/dense_branch/Add_grad/Sum_1-train/gradients/dense_branch/Add_grad/Shape_1*
T0*
Tshape0
�
6train/gradients/dense_branch/Add_grad/tuple/group_depsNoOp.^train/gradients/dense_branch/Add_grad/Reshape0^train/gradients/dense_branch/Add_grad/Reshape_1
�
>train/gradients/dense_branch/Add_grad/tuple/control_dependencyIdentity-train/gradients/dense_branch/Add_grad/Reshape7^train/gradients/dense_branch/Add_grad/tuple/group_deps*
T0*@
_class6
42loc:@train/gradients/dense_branch/Add_grad/Reshape
�
@train/gradients/dense_branch/Add_grad/tuple/control_dependency_1Identity/train/gradients/dense_branch/Add_grad/Reshape_17^train/gradients/dense_branch/Add_grad/tuple/group_deps*
T0*B
_class8
64loc:@train/gradients/dense_branch/Add_grad/Reshape_1
�
0train/gradients/branch1/MaxPool_grad/MaxPoolGradMaxPoolGradbranch1/conv2/Relubranch1/MaxPool6train/gradients/concat_1_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*
T0
�
0train/gradients/branch2/MaxPool_grad/MaxPoolGradMaxPoolGradbranch2/conv2/Relubranch2/MaxPool8train/gradients/concat_1_grad/tuple/control_dependency_1*
ksize
*
paddingVALID*
T0*
strides
*
data_formatNHWC
�
/train/gradients/dense_branch/MatMul_grad/MatMulMatMul>train/gradients/dense_branch/Add_grad/tuple/control_dependencydense_branch/W/read*
transpose_a( *
transpose_b(*
T0
�
1train/gradients/dense_branch/MatMul_grad/MatMul_1MatMulconcat>train/gradients/dense_branch/Add_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
9train/gradients/dense_branch/MatMul_grad/tuple/group_depsNoOp0^train/gradients/dense_branch/MatMul_grad/MatMul2^train/gradients/dense_branch/MatMul_grad/MatMul_1
�
Atrain/gradients/dense_branch/MatMul_grad/tuple/control_dependencyIdentity/train/gradients/dense_branch/MatMul_grad/MatMul:^train/gradients/dense_branch/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@train/gradients/dense_branch/MatMul_grad/MatMul
�
Ctrain/gradients/dense_branch/MatMul_grad/tuple/control_dependency_1Identity1train/gradients/dense_branch/MatMul_grad/MatMul_1:^train/gradients/dense_branch/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@train/gradients/dense_branch/MatMul_grad/MatMul_1
�
0train/gradients/branch1/conv2/Relu_grad/ReluGradReluGrad0train/gradients/branch1/MaxPool_grad/MaxPoolGradbranch1/conv2/Relu*
T0
�
0train/gradients/branch2/conv2/Relu_grad/ReluGradReluGrad0train/gradients/branch2/MaxPool_grad/MaxPoolGradbranch2/conv2/Relu*
T0
�
6train/gradients/branch1/conv2/BiasAdd_grad/BiasAddGradBiasAddGrad0train/gradients/branch1/conv2/Relu_grad/ReluGrad*
T0*
data_formatNHWC
�
;train/gradients/branch1/conv2/BiasAdd_grad/tuple/group_depsNoOp1^train/gradients/branch1/conv2/Relu_grad/ReluGrad7^train/gradients/branch1/conv2/BiasAdd_grad/BiasAddGrad
�
Ctrain/gradients/branch1/conv2/BiasAdd_grad/tuple/control_dependencyIdentity0train/gradients/branch1/conv2/Relu_grad/ReluGrad<^train/gradients/branch1/conv2/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@train/gradients/branch1/conv2/Relu_grad/ReluGrad
�
Etrain/gradients/branch1/conv2/BiasAdd_grad/tuple/control_dependency_1Identity6train/gradients/branch1/conv2/BiasAdd_grad/BiasAddGrad<^train/gradients/branch1/conv2/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train/gradients/branch1/conv2/BiasAdd_grad/BiasAddGrad
�
6train/gradients/branch2/conv2/BiasAdd_grad/BiasAddGradBiasAddGrad0train/gradients/branch2/conv2/Relu_grad/ReluGrad*
T0*
data_formatNHWC
�
;train/gradients/branch2/conv2/BiasAdd_grad/tuple/group_depsNoOp1^train/gradients/branch2/conv2/Relu_grad/ReluGrad7^train/gradients/branch2/conv2/BiasAdd_grad/BiasAddGrad
�
Ctrain/gradients/branch2/conv2/BiasAdd_grad/tuple/control_dependencyIdentity0train/gradients/branch2/conv2/Relu_grad/ReluGrad<^train/gradients/branch2/conv2/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@train/gradients/branch2/conv2/Relu_grad/ReluGrad
�
Etrain/gradients/branch2/conv2/BiasAdd_grad/tuple/control_dependency_1Identity6train/gradients/branch2/conv2/BiasAdd_grad/BiasAddGrad<^train/gradients/branch2/conv2/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train/gradients/branch2/conv2/BiasAdd_grad/BiasAddGrad
~
0train/gradients/branch1/conv2/Conv2D_grad/ShapeNShapeN
conv1/Relubranch1/conv2/W/read*
T0*
out_type0*
N
�
=train/gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput0train/gradients/branch1/conv2/Conv2D_grad/ShapeNbranch1/conv2/W/readCtrain/gradients/branch1/conv2/BiasAdd_grad/tuple/control_dependency*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
>train/gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter
conv1/Relu2train/gradients/branch1/conv2/Conv2D_grad/ShapeN:1Ctrain/gradients/branch1/conv2/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
�
:train/gradients/branch1/conv2/Conv2D_grad/tuple/group_depsNoOp>^train/gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropInput?^train/gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropFilter
�
Btrain/gradients/branch1/conv2/Conv2D_grad/tuple/control_dependencyIdentity=train/gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropInput;^train/gradients/branch1/conv2/Conv2D_grad/tuple/group_deps*
T0*P
_classF
DBloc:@train/gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropInput
�
Dtrain/gradients/branch1/conv2/Conv2D_grad/tuple/control_dependency_1Identity>train/gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropFilter;^train/gradients/branch1/conv2/Conv2D_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@train/gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropFilter
~
0train/gradients/branch2/conv2/Conv2D_grad/ShapeNShapeN
conv1/Relubranch2/conv2/W/read*
T0*
out_type0*
N
�
=train/gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput0train/gradients/branch2/conv2/Conv2D_grad/ShapeNbranch2/conv2/W/readCtrain/gradients/branch2/conv2/BiasAdd_grad/tuple/control_dependency*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
>train/gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter
conv1/Relu2train/gradients/branch2/conv2/Conv2D_grad/ShapeN:1Ctrain/gradients/branch2/conv2/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
T0
�
:train/gradients/branch2/conv2/Conv2D_grad/tuple/group_depsNoOp>^train/gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropInput?^train/gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropFilter
�
Btrain/gradients/branch2/conv2/Conv2D_grad/tuple/control_dependencyIdentity=train/gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropInput;^train/gradients/branch2/conv2/Conv2D_grad/tuple/group_deps*
T0*P
_classF
DBloc:@train/gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropInput
�
Dtrain/gradients/branch2/conv2/Conv2D_grad/tuple/control_dependency_1Identity>train/gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropFilter;^train/gradients/branch2/conv2/Conv2D_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@train/gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropFilter
�
train/gradients/AddNAddNBtrain/gradients/branch1/conv2/Conv2D_grad/tuple/control_dependencyBtrain/gradients/branch2/conv2/Conv2D_grad/tuple/control_dependency*
T0*P
_classF
DBloc:@train/gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropInput*
N
_
(train/gradients/conv1/Relu_grad/ReluGradReluGradtrain/gradients/AddN
conv1/Relu*
T0
�
.train/gradients/conv1/BiasAdd_grad/BiasAddGradBiasAddGrad(train/gradients/conv1/Relu_grad/ReluGrad*
T0*
data_formatNHWC
�
3train/gradients/conv1/BiasAdd_grad/tuple/group_depsNoOp)^train/gradients/conv1/Relu_grad/ReluGrad/^train/gradients/conv1/BiasAdd_grad/BiasAddGrad
�
;train/gradients/conv1/BiasAdd_grad/tuple/control_dependencyIdentity(train/gradients/conv1/Relu_grad/ReluGrad4^train/gradients/conv1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/conv1/Relu_grad/ReluGrad
�
=train/gradients/conv1/BiasAdd_grad/tuple/control_dependency_1Identity.train/gradients/conv1/BiasAdd_grad/BiasAddGrad4^train/gradients/conv1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@train/gradients/conv1/BiasAdd_grad/BiasAddGrad
k
(train/gradients/conv1/Conv2D_grad/ShapeNShapeNReshapeconv1/W/read*
T0*
out_type0*
N
�
5train/gradients/conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(train/gradients/conv1/Conv2D_grad/ShapeNconv1/W/read;train/gradients/conv1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
6train/gradients/conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshape*train/gradients/conv1/Conv2D_grad/ShapeN:1;train/gradients/conv1/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
�
2train/gradients/conv1/Conv2D_grad/tuple/group_depsNoOp6^train/gradients/conv1/Conv2D_grad/Conv2DBackpropInput7^train/gradients/conv1/Conv2D_grad/Conv2DBackpropFilter
�
:train/gradients/conv1/Conv2D_grad/tuple/control_dependencyIdentity5train/gradients/conv1/Conv2D_grad/Conv2DBackpropInput3^train/gradients/conv1/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train/gradients/conv1/Conv2D_grad/Conv2DBackpropInput
�
<train/gradients/conv1/Conv2D_grad/tuple/control_dependency_1Identity6train/gradients/conv1/Conv2D_grad/Conv2DBackpropFilter3^train/gradients/conv1/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train/gradients/conv1/Conv2D_grad/Conv2DBackpropFilter
p
train/beta1_power/initial_valueConst*"
_class
loc:@branch1/conv2/W*
valueB
 *fff?*
dtype0
�
train/beta1_power
VariableV2*"
_class
loc:@branch1/conv2/W*
dtype0*
	container *
shape: *
shared_name 
�
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(*
use_locking(
b
train/beta1_power/readIdentitytrain/beta1_power*
T0*"
_class
loc:@branch1/conv2/W
p
train/beta2_power/initial_valueConst*"
_class
loc:@branch1/conv2/W*
valueB
 *w�?*
dtype0
�
train/beta2_power
VariableV2*
shape: *
shared_name *"
_class
loc:@branch1/conv2/W*
dtype0*
	container 
�
train/beta2_power/AssignAssigntrain/beta2_powertrain/beta2_power/initial_value*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(
b
train/beta2_power/readIdentitytrain/beta2_power*
T0*"
_class
loc:@branch1/conv2/W
�
+train/dense_branch/W/Adam/Initializer/zerosConst*
dtype0*
valueB	x�*    *!
_class
loc:@dense_branch/W
�
train/dense_branch/W/Adam
VariableV2*!
_class
loc:@dense_branch/W*
dtype0*
	container *
shape:	x�*
shared_name 
�
 train/dense_branch/W/Adam/AssignAssigntrain/dense_branch/W/Adam+train/dense_branch/W/Adam/Initializer/zeros*
T0*!
_class
loc:@dense_branch/W*
validate_shape(*
use_locking(
q
train/dense_branch/W/Adam/readIdentitytrain/dense_branch/W/Adam*
T0*!
_class
loc:@dense_branch/W
�
-train/dense_branch/W/Adam_1/Initializer/zerosConst*
valueB	x�*    *!
_class
loc:@dense_branch/W*
dtype0
�
train/dense_branch/W/Adam_1
VariableV2*
shape:	x�*
shared_name *!
_class
loc:@dense_branch/W*
dtype0*
	container 
�
"train/dense_branch/W/Adam_1/AssignAssigntrain/dense_branch/W/Adam_1-train/dense_branch/W/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_branch/W*
validate_shape(
u
 train/dense_branch/W/Adam_1/readIdentitytrain/dense_branch/W/Adam_1*
T0*!
_class
loc:@dense_branch/W
�
+train/dense_branch/b/Adam/Initializer/zerosConst*
valueB�*    *!
_class
loc:@dense_branch/b*
dtype0
�
train/dense_branch/b/Adam
VariableV2*
shape:�*
shared_name *!
_class
loc:@dense_branch/b*
dtype0*
	container 
�
 train/dense_branch/b/Adam/AssignAssigntrain/dense_branch/b/Adam+train/dense_branch/b/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_branch/b*
validate_shape(
q
train/dense_branch/b/Adam/readIdentitytrain/dense_branch/b/Adam*
T0*!
_class
loc:@dense_branch/b
�
-train/dense_branch/b/Adam_1/Initializer/zerosConst*
valueB�*    *!
_class
loc:@dense_branch/b*
dtype0
�
train/dense_branch/b/Adam_1
VariableV2*
dtype0*
	container *
shape:�*
shared_name *!
_class
loc:@dense_branch/b
�
"train/dense_branch/b/Adam_1/AssignAssigntrain/dense_branch/b/Adam_1-train/dense_branch/b/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_branch/b*
validate_shape(
u
 train/dense_branch/b/Adam_1/readIdentitytrain/dense_branch/b/Adam_1*
T0*!
_class
loc:@dense_branch/b
}
$train/conv1/W/Adam/Initializer/zerosConst*
dtype0*%
valueB*    *
_class
loc:@conv1/W
�
train/conv1/W/Adam
VariableV2*
_class
loc:@conv1/W*
dtype0*
	container *
shape:*
shared_name 
�
train/conv1/W/Adam/AssignAssigntrain/conv1/W/Adam$train/conv1/W/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
\
train/conv1/W/Adam/readIdentitytrain/conv1/W/Adam*
T0*
_class
loc:@conv1/W

&train/conv1/W/Adam_1/Initializer/zerosConst*%
valueB*    *
_class
loc:@conv1/W*
dtype0
�
train/conv1/W/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@conv1/W*
dtype0*
	container 
�
train/conv1/W/Adam_1/AssignAssigntrain/conv1/W/Adam_1&train/conv1/W/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
`
train/conv1/W/Adam_1/readIdentitytrain/conv1/W/Adam_1*
T0*
_class
loc:@conv1/W
q
$train/conv1/b/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@conv1/b*
dtype0
~
train/conv1/b/Adam
VariableV2*
shape:*
shared_name *
_class
loc:@conv1/b*
dtype0*
	container 
�
train/conv1/b/Adam/AssignAssigntrain/conv1/b/Adam$train/conv1/b/Adam/Initializer/zeros*
T0*
_class
loc:@conv1/b*
validate_shape(*
use_locking(
\
train/conv1/b/Adam/readIdentitytrain/conv1/b/Adam*
T0*
_class
loc:@conv1/b
s
&train/conv1/b/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@conv1/b*
dtype0
�
train/conv1/b/Adam_1
VariableV2*
shared_name *
_class
loc:@conv1/b*
dtype0*
	container *
shape:
�
train/conv1/b/Adam_1/AssignAssigntrain/conv1/b/Adam_1&train/conv1/b/Adam_1/Initializer/zeros*
T0*
_class
loc:@conv1/b*
validate_shape(*
use_locking(
`
train/conv1/b/Adam_1/readIdentitytrain/conv1/b/Adam_1*
T0*
_class
loc:@conv1/b
�
,train/branch1/conv2/W/Adam/Initializer/zerosConst*
dtype0*%
valueB *    *"
_class
loc:@branch1/conv2/W
�
train/branch1/conv2/W/Adam
VariableV2*"
_class
loc:@branch1/conv2/W*
dtype0*
	container *
shape: *
shared_name 
�
!train/branch1/conv2/W/Adam/AssignAssigntrain/branch1/conv2/W/Adam,train/branch1/conv2/W/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(
t
train/branch1/conv2/W/Adam/readIdentitytrain/branch1/conv2/W/Adam*
T0*"
_class
loc:@branch1/conv2/W
�
.train/branch1/conv2/W/Adam_1/Initializer/zerosConst*%
valueB *    *"
_class
loc:@branch1/conv2/W*
dtype0
�
train/branch1/conv2/W/Adam_1
VariableV2*
dtype0*
	container *
shape: *
shared_name *"
_class
loc:@branch1/conv2/W
�
#train/branch1/conv2/W/Adam_1/AssignAssigntrain/branch1/conv2/W/Adam_1.train/branch1/conv2/W/Adam_1/Initializer/zeros*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(*
use_locking(
x
!train/branch1/conv2/W/Adam_1/readIdentitytrain/branch1/conv2/W/Adam_1*
T0*"
_class
loc:@branch1/conv2/W
�
,train/branch1/conv2/b/Adam/Initializer/zerosConst*
dtype0*
valueB *    *"
_class
loc:@branch1/conv2/b
�
train/branch1/conv2/b/Adam
VariableV2*
dtype0*
	container *
shape: *
shared_name *"
_class
loc:@branch1/conv2/b
�
!train/branch1/conv2/b/Adam/AssignAssigntrain/branch1/conv2/b/Adam,train/branch1/conv2/b/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@branch1/conv2/b*
validate_shape(
t
train/branch1/conv2/b/Adam/readIdentitytrain/branch1/conv2/b/Adam*
T0*"
_class
loc:@branch1/conv2/b
�
.train/branch1/conv2/b/Adam_1/Initializer/zerosConst*
valueB *    *"
_class
loc:@branch1/conv2/b*
dtype0
�
train/branch1/conv2/b/Adam_1
VariableV2*
shared_name *"
_class
loc:@branch1/conv2/b*
dtype0*
	container *
shape: 
�
#train/branch1/conv2/b/Adam_1/AssignAssigntrain/branch1/conv2/b/Adam_1.train/branch1/conv2/b/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@branch1/conv2/b*
validate_shape(
x
!train/branch1/conv2/b/Adam_1/readIdentitytrain/branch1/conv2/b/Adam_1*
T0*"
_class
loc:@branch1/conv2/b
�
,train/branch2/conv2/W/Adam/Initializer/zerosConst*%
valueB *    *"
_class
loc:@branch2/conv2/W*
dtype0
�
train/branch2/conv2/W/Adam
VariableV2*"
_class
loc:@branch2/conv2/W*
dtype0*
	container *
shape: *
shared_name 
�
!train/branch2/conv2/W/Adam/AssignAssigntrain/branch2/conv2/W/Adam,train/branch2/conv2/W/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@branch2/conv2/W*
validate_shape(
t
train/branch2/conv2/W/Adam/readIdentitytrain/branch2/conv2/W/Adam*
T0*"
_class
loc:@branch2/conv2/W
�
.train/branch2/conv2/W/Adam_1/Initializer/zerosConst*%
valueB *    *"
_class
loc:@branch2/conv2/W*
dtype0
�
train/branch2/conv2/W/Adam_1
VariableV2*
dtype0*
	container *
shape: *
shared_name *"
_class
loc:@branch2/conv2/W
�
#train/branch2/conv2/W/Adam_1/AssignAssigntrain/branch2/conv2/W/Adam_1.train/branch2/conv2/W/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@branch2/conv2/W*
validate_shape(
x
!train/branch2/conv2/W/Adam_1/readIdentitytrain/branch2/conv2/W/Adam_1*
T0*"
_class
loc:@branch2/conv2/W
�
,train/branch2/conv2/b/Adam/Initializer/zerosConst*
valueB *    *"
_class
loc:@branch2/conv2/b*
dtype0
�
train/branch2/conv2/b/Adam
VariableV2*
shared_name *"
_class
loc:@branch2/conv2/b*
dtype0*
	container *
shape: 
�
!train/branch2/conv2/b/Adam/AssignAssigntrain/branch2/conv2/b/Adam,train/branch2/conv2/b/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@branch2/conv2/b*
validate_shape(
t
train/branch2/conv2/b/Adam/readIdentitytrain/branch2/conv2/b/Adam*
T0*"
_class
loc:@branch2/conv2/b
�
.train/branch2/conv2/b/Adam_1/Initializer/zerosConst*
valueB *    *"
_class
loc:@branch2/conv2/b*
dtype0
�
train/branch2/conv2/b/Adam_1
VariableV2*"
_class
loc:@branch2/conv2/b*
dtype0*
	container *
shape: *
shared_name 
�
#train/branch2/conv2/b/Adam_1/AssignAssigntrain/branch2/conv2/b/Adam_1.train/branch2/conv2/b/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@branch2/conv2/b*
validate_shape(
x
!train/branch2/conv2/b/Adam_1/readIdentitytrain/branch2/conv2/b/Adam_1*
T0*"
_class
loc:@branch2/conv2/b
y
%train/dense1/W/Adam/Initializer/zerosConst*
valueB
ȉ*    *
_class
loc:@dense1/W*
dtype0
�
train/dense1/W/Adam
VariableV2*
_class
loc:@dense1/W*
dtype0*
	container *
shape:
ȉ*
shared_name 
�
train/dense1/W/Adam/AssignAssigntrain/dense1/W/Adam%train/dense1/W/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense1/W
_
train/dense1/W/Adam/readIdentitytrain/dense1/W/Adam*
T0*
_class
loc:@dense1/W
{
'train/dense1/W/Adam_1/Initializer/zerosConst*
dtype0*
valueB
ȉ*    *
_class
loc:@dense1/W
�
train/dense1/W/Adam_1
VariableV2*
_class
loc:@dense1/W*
dtype0*
	container *
shape:
ȉ*
shared_name 
�
train/dense1/W/Adam_1/AssignAssigntrain/dense1/W/Adam_1'train/dense1/W/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense1/W
c
train/dense1/W/Adam_1/readIdentitytrain/dense1/W/Adam_1*
T0*
_class
loc:@dense1/W
s
%train/dense1/b/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@dense1/b*
dtype0
�
train/dense1/b/Adam
VariableV2*
_class
loc:@dense1/b*
dtype0*
	container *
shape:*
shared_name 
�
train/dense1/b/Adam/AssignAssigntrain/dense1/b/Adam%train/dense1/b/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense1/b*
validate_shape(
_
train/dense1/b/Adam/readIdentitytrain/dense1/b/Adam*
T0*
_class
loc:@dense1/b
u
'train/dense1/b/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense1/b*
dtype0
�
train/dense1/b/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@dense1/b*
dtype0*
	container 
�
train/dense1/b/Adam_1/AssignAssigntrain/dense1/b/Adam_1'train/dense1/b/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense1/b*
validate_shape(*
use_locking(
c
train/dense1/b/Adam_1/readIdentitytrain/dense1/b/Adam_1*
T0*
_class
loc:@dense1/b
E
train/Adam/learning_rateConst*
valueB
 *���8*
dtype0
=
train/Adam/beta1Const*
dtype0*
valueB
 *fff?
=
train/Adam/beta2Const*
valueB
 *w�?*
dtype0
?
train/Adam/epsilonConst*
valueB
 *w�+2*
dtype0
�
*train/Adam/update_dense_branch/W/ApplyAdam	ApplyAdamdense_branch/Wtrain/dense_branch/W/Adamtrain/dense_branch/W/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonCtrain/gradients/dense_branch/MatMul_grad/tuple/control_dependency_1*
T0*!
_class
loc:@dense_branch/W*
use_nesterov( *
use_locking( 
�
*train/Adam/update_dense_branch/b/ApplyAdam	ApplyAdamdense_branch/btrain/dense_branch/b/Adamtrain/dense_branch/b/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon@train/gradients/dense_branch/Add_grad/tuple/control_dependency_1*
T0*!
_class
loc:@dense_branch/b*
use_nesterov( *
use_locking( 
�
#train/Adam/update_conv1/W/ApplyAdam	ApplyAdamconv1/Wtrain/conv1/W/Adamtrain/conv1/W/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon<train/gradients/conv1/Conv2D_grad/tuple/control_dependency_1*
T0*
_class
loc:@conv1/W*
use_nesterov( *
use_locking( 
�
#train/Adam/update_conv1/b/ApplyAdam	ApplyAdamconv1/btrain/conv1/b/Adamtrain/conv1/b/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon=train/gradients/conv1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@conv1/b*
use_nesterov( 
�
+train/Adam/update_branch1/conv2/W/ApplyAdam	ApplyAdambranch1/conv2/Wtrain/branch1/conv2/W/Adamtrain/branch1/conv2/W/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonDtrain/gradients/branch1/conv2/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@branch1/conv2/W*
use_nesterov( *
use_locking( 
�
+train/Adam/update_branch1/conv2/b/ApplyAdam	ApplyAdambranch1/conv2/btrain/branch1/conv2/b/Adamtrain/branch1/conv2/b/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonEtrain/gradients/branch1/conv2/BiasAdd_grad/tuple/control_dependency_1*
T0*"
_class
loc:@branch1/conv2/b*
use_nesterov( *
use_locking( 
�
+train/Adam/update_branch2/conv2/W/ApplyAdam	ApplyAdambranch2/conv2/Wtrain/branch2/conv2/W/Adamtrain/branch2/conv2/W/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonDtrain/gradients/branch2/conv2/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*"
_class
loc:@branch2/conv2/W
�
+train/Adam/update_branch2/conv2/b/ApplyAdam	ApplyAdambranch2/conv2/btrain/branch2/conv2/b/Adamtrain/branch2/conv2/b/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonEtrain/gradients/branch2/conv2/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*"
_class
loc:@branch2/conv2/b
�
$train/Adam/update_dense1/W/ApplyAdam	ApplyAdamdense1/Wtrain/dense1/W/Adamtrain/dense1/W/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon=train/gradients/dense1/MatMul_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense1/W*
use_nesterov( *
use_locking( 
�
$train/Adam/update_dense1/b/ApplyAdam	ApplyAdamdense1/btrain/dense1/b/Adamtrain/dense1/b/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon:train/gradients/dense1/add_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@dense1/b
�
train/Adam/mulMultrain/beta1_power/readtrain/Adam/beta1+^train/Adam/update_dense_branch/W/ApplyAdam+^train/Adam/update_dense_branch/b/ApplyAdam$^train/Adam/update_conv1/W/ApplyAdam$^train/Adam/update_conv1/b/ApplyAdam,^train/Adam/update_branch1/conv2/W/ApplyAdam,^train/Adam/update_branch1/conv2/b/ApplyAdam,^train/Adam/update_branch2/conv2/W/ApplyAdam,^train/Adam/update_branch2/conv2/b/ApplyAdam%^train/Adam/update_dense1/W/ApplyAdam%^train/Adam/update_dense1/b/ApplyAdam*
T0*"
_class
loc:@branch1/conv2/W
�
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
validate_shape(*
use_locking( *
T0*"
_class
loc:@branch1/conv2/W
�
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta2+^train/Adam/update_dense_branch/W/ApplyAdam+^train/Adam/update_dense_branch/b/ApplyAdam$^train/Adam/update_conv1/W/ApplyAdam$^train/Adam/update_conv1/b/ApplyAdam,^train/Adam/update_branch1/conv2/W/ApplyAdam,^train/Adam/update_branch1/conv2/b/ApplyAdam,^train/Adam/update_branch2/conv2/W/ApplyAdam,^train/Adam/update_branch2/conv2/b/ApplyAdam%^train/Adam/update_dense1/W/ApplyAdam%^train/Adam/update_dense1/b/ApplyAdam*
T0*"
_class
loc:@branch1/conv2/W
�
train/Adam/Assign_1Assigntrain/beta2_powertrain/Adam/mul_1*
use_locking( *
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(
�

train/AdamNoOp+^train/Adam/update_dense_branch/W/ApplyAdam+^train/Adam/update_dense_branch/b/ApplyAdam$^train/Adam/update_conv1/W/ApplyAdam$^train/Adam/update_conv1/b/ApplyAdam,^train/Adam/update_branch1/conv2/W/ApplyAdam,^train/Adam/update_branch1/conv2/b/ApplyAdam,^train/Adam/update_branch2/conv2/W/ApplyAdam,^train/Adam/update_branch2/conv2/b/ApplyAdam%^train/Adam/update_dense1/W/ApplyAdam%^train/Adam/update_dense1/b/ApplyAdam^train/Adam/Assign^train/Adam/Assign_1
8

save/ConstConst*
valueB Bmodel*
dtype0
�
save/SaveV2/tensor_namesConst*�
value�B� Bbranch1/conv2/WBbranch1/conv2/bBbranch2/conv2/WBbranch2/conv2/bBconv1/WBconv1/bBdense1/WBdense1/bBdense_branch/WBdense_branch/bBtrain/beta1_powerBtrain/beta2_powerBtrain/branch1/conv2/W/AdamBtrain/branch1/conv2/W/Adam_1Btrain/branch1/conv2/b/AdamBtrain/branch1/conv2/b/Adam_1Btrain/branch2/conv2/W/AdamBtrain/branch2/conv2/W/Adam_1Btrain/branch2/conv2/b/AdamBtrain/branch2/conv2/b/Adam_1Btrain/conv1/W/AdamBtrain/conv1/W/Adam_1Btrain/conv1/b/AdamBtrain/conv1/b/Adam_1Btrain/dense1/W/AdamBtrain/dense1/W/Adam_1Btrain/dense1/b/AdamBtrain/dense1/b/Adam_1Btrain/dense_branch/W/AdamBtrain/dense_branch/W/Adam_1Btrain/dense_branch/b/AdamBtrain/dense_branch/b/Adam_1*
dtype0
�
save/SaveV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbranch1/conv2/Wbranch1/conv2/bbranch2/conv2/Wbranch2/conv2/bconv1/Wconv1/bdense1/Wdense1/bdense_branch/Wdense_branch/btrain/beta1_powertrain/beta2_powertrain/branch1/conv2/W/Adamtrain/branch1/conv2/W/Adam_1train/branch1/conv2/b/Adamtrain/branch1/conv2/b/Adam_1train/branch2/conv2/W/Adamtrain/branch2/conv2/W/Adam_1train/branch2/conv2/b/Adamtrain/branch2/conv2/b/Adam_1train/conv1/W/Adamtrain/conv1/W/Adam_1train/conv1/b/Adamtrain/conv1/b/Adam_1train/dense1/W/Adamtrain/dense1/W/Adam_1train/dense1/b/Adamtrain/dense1/b/Adam_1train/dense_branch/W/Adamtrain/dense_branch/W/Adam_1train/dense_branch/b/Adamtrain/dense_branch/b/Adam_1*.
dtypes$
"2 
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
W
save/RestoreV2/tensor_namesConst*$
valueBBbranch1/conv2/W*
dtype0
L
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2
�
save/AssignAssignbranch1/conv2/Wsave/RestoreV2*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(*
use_locking(
Y
save/RestoreV2_1/tensor_namesConst*$
valueBBbranch1/conv2/b*
dtype0
N
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2
�
save/Assign_1Assignbranch1/conv2/bsave/RestoreV2_1*
T0*"
_class
loc:@branch1/conv2/b*
validate_shape(*
use_locking(
Y
save/RestoreV2_2/tensor_namesConst*$
valueBBbranch2/conv2/W*
dtype0
N
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2
�
save/Assign_2Assignbranch2/conv2/Wsave/RestoreV2_2*
use_locking(*
T0*"
_class
loc:@branch2/conv2/W*
validate_shape(
Y
save/RestoreV2_3/tensor_namesConst*$
valueBBbranch2/conv2/b*
dtype0
N
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2
�
save/Assign_3Assignbranch2/conv2/bsave/RestoreV2_3*
use_locking(*
T0*"
_class
loc:@branch2/conv2/b*
validate_shape(
Q
save/RestoreV2_4/tensor_namesConst*
valueBBconv1/W*
dtype0
N
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2
�
save/Assign_4Assignconv1/Wsave/RestoreV2_4*
validate_shape(*
use_locking(*
T0*
_class
loc:@conv1/W
Q
save/RestoreV2_5/tensor_namesConst*
valueBBconv1/b*
dtype0
N
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2
�
save/Assign_5Assignconv1/bsave/RestoreV2_5*
T0*
_class
loc:@conv1/b*
validate_shape(*
use_locking(
R
save/RestoreV2_6/tensor_namesConst*
valueBBdense1/W*
dtype0
N
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2
�
save/Assign_6Assigndense1/Wsave/RestoreV2_6*
use_locking(*
T0*
_class
loc:@dense1/W*
validate_shape(
R
save/RestoreV2_7/tensor_namesConst*
valueBBdense1/b*
dtype0
N
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2
�
save/Assign_7Assigndense1/bsave/RestoreV2_7*
use_locking(*
T0*
_class
loc:@dense1/b*
validate_shape(
X
save/RestoreV2_8/tensor_namesConst*
dtype0*#
valueBBdense_branch/W
N
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2
�
save/Assign_8Assigndense_branch/Wsave/RestoreV2_8*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_branch/W
X
save/RestoreV2_9/tensor_namesConst*
dtype0*#
valueBBdense_branch/b
N
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2
�
save/Assign_9Assigndense_branch/bsave/RestoreV2_9*
T0*!
_class
loc:@dense_branch/b*
validate_shape(*
use_locking(
\
save/RestoreV2_10/tensor_namesConst*&
valueBBtrain/beta1_power*
dtype0
O
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2
�
save/Assign_10Assigntrain/beta1_powersave/RestoreV2_10*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(*
use_locking(
\
save/RestoreV2_11/tensor_namesConst*
dtype0*&
valueBBtrain/beta2_power
O
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2
�
save/Assign_11Assigntrain/beta2_powersave/RestoreV2_11*
validate_shape(*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W
e
save/RestoreV2_12/tensor_namesConst*/
value&B$Btrain/branch1/conv2/W/Adam*
dtype0
O
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2
�
save/Assign_12Assigntrain/branch1/conv2/W/Adamsave/RestoreV2_12*
validate_shape(*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W
g
save/RestoreV2_13/tensor_namesConst*1
value(B&Btrain/branch1/conv2/W/Adam_1*
dtype0
O
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2
�
save/Assign_13Assigntrain/branch1/conv2/W/Adam_1save/RestoreV2_13*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(
e
save/RestoreV2_14/tensor_namesConst*
dtype0*/
value&B$Btrain/branch1/conv2/b/Adam
O
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2
�
save/Assign_14Assigntrain/branch1/conv2/b/Adamsave/RestoreV2_14*
use_locking(*
T0*"
_class
loc:@branch1/conv2/b*
validate_shape(
g
save/RestoreV2_15/tensor_namesConst*1
value(B&Btrain/branch1/conv2/b/Adam_1*
dtype0
O
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2
�
save/Assign_15Assigntrain/branch1/conv2/b/Adam_1save/RestoreV2_15*
validate_shape(*
use_locking(*
T0*"
_class
loc:@branch1/conv2/b
e
save/RestoreV2_16/tensor_namesConst*
dtype0*/
value&B$Btrain/branch2/conv2/W/Adam
O
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2
�
save/Assign_16Assigntrain/branch2/conv2/W/Adamsave/RestoreV2_16*
validate_shape(*
use_locking(*
T0*"
_class
loc:@branch2/conv2/W
g
save/RestoreV2_17/tensor_namesConst*1
value(B&Btrain/branch2/conv2/W/Adam_1*
dtype0
O
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2
�
save/Assign_17Assigntrain/branch2/conv2/W/Adam_1save/RestoreV2_17*
use_locking(*
T0*"
_class
loc:@branch2/conv2/W*
validate_shape(
e
save/RestoreV2_18/tensor_namesConst*/
value&B$Btrain/branch2/conv2/b/Adam*
dtype0
O
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2
�
save/Assign_18Assigntrain/branch2/conv2/b/Adamsave/RestoreV2_18*
validate_shape(*
use_locking(*
T0*"
_class
loc:@branch2/conv2/b
g
save/RestoreV2_19/tensor_namesConst*
dtype0*1
value(B&Btrain/branch2/conv2/b/Adam_1
O
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2
�
save/Assign_19Assigntrain/branch2/conv2/b/Adam_1save/RestoreV2_19*
T0*"
_class
loc:@branch2/conv2/b*
validate_shape(*
use_locking(
]
save/RestoreV2_20/tensor_namesConst*
dtype0*'
valueBBtrain/conv1/W/Adam
O
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2
�
save/Assign_20Assigntrain/conv1/W/Adamsave/RestoreV2_20*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
_
save/RestoreV2_21/tensor_namesConst*)
value BBtrain/conv1/W/Adam_1*
dtype0
O
"save/RestoreV2_21/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2
�
save/Assign_21Assigntrain/conv1/W/Adam_1save/RestoreV2_21*
validate_shape(*
use_locking(*
T0*
_class
loc:@conv1/W
]
save/RestoreV2_22/tensor_namesConst*'
valueBBtrain/conv1/b/Adam*
dtype0
O
"save/RestoreV2_22/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2
�
save/Assign_22Assigntrain/conv1/b/Adamsave/RestoreV2_22*
use_locking(*
T0*
_class
loc:@conv1/b*
validate_shape(
_
save/RestoreV2_23/tensor_namesConst*)
value BBtrain/conv1/b/Adam_1*
dtype0
O
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2
�
save/Assign_23Assigntrain/conv1/b/Adam_1save/RestoreV2_23*
use_locking(*
T0*
_class
loc:@conv1/b*
validate_shape(
^
save/RestoreV2_24/tensor_namesConst*(
valueBBtrain/dense1/W/Adam*
dtype0
O
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2
�
save/Assign_24Assigntrain/dense1/W/Adamsave/RestoreV2_24*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense1/W
`
save/RestoreV2_25/tensor_namesConst**
value!BBtrain/dense1/W/Adam_1*
dtype0
O
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2
�
save/Assign_25Assigntrain/dense1/W/Adam_1save/RestoreV2_25*
use_locking(*
T0*
_class
loc:@dense1/W*
validate_shape(
^
save/RestoreV2_26/tensor_namesConst*
dtype0*(
valueBBtrain/dense1/b/Adam
O
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2
�
save/Assign_26Assigntrain/dense1/b/Adamsave/RestoreV2_26*
use_locking(*
T0*
_class
loc:@dense1/b*
validate_shape(
`
save/RestoreV2_27/tensor_namesConst**
value!BBtrain/dense1/b/Adam_1*
dtype0
O
"save/RestoreV2_27/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2
�
save/Assign_27Assigntrain/dense1/b/Adam_1save/RestoreV2_27*
use_locking(*
T0*
_class
loc:@dense1/b*
validate_shape(
d
save/RestoreV2_28/tensor_namesConst*.
value%B#Btrain/dense_branch/W/Adam*
dtype0
O
"save/RestoreV2_28/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2
�
save/Assign_28Assigntrain/dense_branch/W/Adamsave/RestoreV2_28*
T0*!
_class
loc:@dense_branch/W*
validate_shape(*
use_locking(
f
save/RestoreV2_29/tensor_namesConst*0
value'B%Btrain/dense_branch/W/Adam_1*
dtype0
O
"save/RestoreV2_29/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
dtypes
2
�
save/Assign_29Assigntrain/dense_branch/W/Adam_1save/RestoreV2_29*
use_locking(*
T0*!
_class
loc:@dense_branch/W*
validate_shape(
d
save/RestoreV2_30/tensor_namesConst*
dtype0*.
value%B#Btrain/dense_branch/b/Adam
O
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2
�
save/Assign_30Assigntrain/dense_branch/b/Adamsave/RestoreV2_30*
use_locking(*
T0*!
_class
loc:@dense_branch/b*
validate_shape(
f
save/RestoreV2_31/tensor_namesConst*0
value'B%Btrain/dense_branch/b/Adam_1*
dtype0
O
"save/RestoreV2_31/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
dtypes
2
�
save/Assign_31Assigntrain/dense_branch/b/Adam_1save/RestoreV2_31*
T0*!
_class
loc:@dense_branch/b*
validate_shape(*
use_locking(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31
�
initNoOp^dense_branch/W/Assign^dense_branch/b/Assign^conv1/W/Assign^conv1/b/Assign^branch1/conv2/W/Assign^branch1/conv2/b/Assign^branch2/conv2/W/Assign^branch2/conv2/b/Assign^dense1/W/Assign^dense1/b/Assign^train/beta1_power/Assign^train/beta2_power/Assign!^train/dense_branch/W/Adam/Assign#^train/dense_branch/W/Adam_1/Assign!^train/dense_branch/b/Adam/Assign#^train/dense_branch/b/Adam_1/Assign^train/conv1/W/Adam/Assign^train/conv1/W/Adam_1/Assign^train/conv1/b/Adam/Assign^train/conv1/b/Adam_1/Assign"^train/branch1/conv2/W/Adam/Assign$^train/branch1/conv2/W/Adam_1/Assign"^train/branch1/conv2/b/Adam/Assign$^train/branch1/conv2/b/Adam_1/Assign"^train/branch2/conv2/W/Adam/Assign$^train/branch2/conv2/W/Adam_1/Assign"^train/branch2/conv2/b/Adam/Assign$^train/branch2/conv2/b/Adam_1/Assign^train/dense1/W/Adam/Assign^train/dense1/W/Adam_1/Assign^train/dense1/b/Adam/Assign^train/dense1/b/Adam_1/Assign
K
Merge/MergeSummaryMergeSummaryplotfeed_forward
activation*
N"