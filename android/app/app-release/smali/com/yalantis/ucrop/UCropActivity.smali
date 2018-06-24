.class public Lcom/yalantis/ucrop/UCropActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "UCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/UCropActivity$GestureTypes;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x3

.field public static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field public static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field public static final NONE:I = 0x0

.field public static final ROTATE:I = 0x2

.field private static final ROTATE_WIDGET_SENSITIVITY_COEFFICIENT:I = 0x2a

.field public static final SCALE:I = 0x1

.field private static final SCALE_WIDGET_SENSITIVITY_COEFFICIENT:I = 0x3a98

.field private static final TABS_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UCropActivity"


# instance fields
.field private mActiveWidgetColor:I

.field private mAllowedGestures:[I

.field private mBlockingView:Landroid/view/View;

.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompressQuality:I

.field private mCropAspectRatioViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

.field private mImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

.field private mLayoutAspectRatio:Landroid/view/ViewGroup;

.field private mLayoutRotate:Landroid/view/ViewGroup;

.field private mLayoutScale:Landroid/view/ViewGroup;

.field private mLogoColor:I

.field private mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

.field private mShowBottomControls:Z

.field private mShowLoader:Z

.field private final mStateClickListener:Landroid/view/View$OnClickListener;

.field private mStatusBarColor:I

.field private mTextViewRotateAngle:Landroid/widget/TextView;

.field private mTextViewScalePercent:Landroid/widget/TextView;

.field private mToolbarColor:I

.field private mToolbarTitle:Ljava/lang/String;

.field private mToolbarWidgetColor:I

.field private mUCropView:Lcom/yalantis/ucrop/view/UCropView;

.field private mWrapperStateAspectRatio:Landroid/view/ViewGroup;

.field private mWrapperStateRotate:Landroid/view/ViewGroup;

.field private mWrapperStateScale:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/yalantis/ucrop/UCropActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    .line 100
    sget-object v0, Lcom/yalantis/ucrop/UCropActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 101
    const/16 v0, 0x5a

    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressQuality:I

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I

    .line 339
    new-instance v0, Lcom/yalantis/ucrop/UCropActivity$1;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/UCropActivity$1;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

    .line 536
    new-instance v0, Lcom/yalantis/ucrop/UCropActivity$7;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/UCropActivity$7;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mStateClickListener:Landroid/view/View$OnClickListener;

    return-void

    .line 102
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lcom/yalantis/ucrop/UCropActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/yalantis/ucrop/UCropActivity;
    .param p1, "x1"    # F

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setAngleText(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/yalantis/ucrop/UCropActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/yalantis/ucrop/UCropActivity;
    .param p1, "x1"    # F

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setScaleText(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/UCropView;
    .locals 1
    .param p0, "x0"    # Lcom/yalantis/ucrop/UCropActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mUCropView:Lcom/yalantis/ucrop/view/UCropView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yalantis/ucrop/UCropActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/yalantis/ucrop/UCropActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/yalantis/ucrop/UCropActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yalantis/ucrop/UCropActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    .locals 1
    .param p0, "x0"    # Lcom/yalantis/ucrop/UCropActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/yalantis/ucrop/UCropActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/yalantis/ucrop/UCropActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/yalantis/ucrop/UCropActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/yalantis/ucrop/UCropActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->resetRotation()V

    return-void
.end method

.method static synthetic access$800(Lcom/yalantis/ucrop/UCropActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yalantis/ucrop/UCropActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->rotateByAngle(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/yalantis/ucrop/UCropActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yalantis/ucrop/UCropActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setWidgetState(I)V

    return-void
.end method

.method private addBlockingView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 588
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 589
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    .line 590
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 591
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    sget v2, Lcom/yalantis/ucrop/R$id;->toolbar:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 592
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 596
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    sget v1, Lcom/yalantis/ucrop/R$id;->ucrop_photobox:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 597
    return-void
.end method

.method private initiateRootViews()V
    .locals 3

    .prologue
    .line 330
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/UCropView;

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mUCropView:Lcom/yalantis/ucrop/view/UCropView;

    .line 331
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mUCropView:Lcom/yalantis/ucrop/view/UCropView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/UCropView;->getCropImageView()Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 332
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mUCropView:Lcom/yalantis/ucrop/view/UCropView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/UCropView;->getOverlayView()Lcom/yalantis/ucrop/view/OverlayView;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    .line 334
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTransformImageListener(Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;)V

    .line 336
    sget v0, Lcom/yalantis/ucrop/R$id;->image_view_logo:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mLogoColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 337
    return-void
.end method

.method private processOptions(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 200
    const-string v9, "com.yalantis.ucrop.CompressionFormatName"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "compressionFormatName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 202
    .local v5, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 203
    invoke-static {v6}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    .line 205
    :cond_0
    if-nez v5, :cond_1

    sget-object v5, Lcom/yalantis/ucrop/UCropActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .end local v5    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    :cond_1
    iput-object v5, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 207
    const-string v9, "com.yalantis.ucrop.CompressionQuality"

    const/16 v10, 0x5a

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressQuality:I

    .line 210
    const-string v9, "com.yalantis.ucrop.AllowedGestures"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 211
    .local v0, "allowedGestures":[I
    if-eqz v0, :cond_2

    array-length v9, v0

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 212
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I

    .line 216
    :cond_2
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const-string v10, "com.yalantis.ucrop.MaxBitmapSize"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setMaxBitmapSize(I)V

    .line 217
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const-string v10, "com.yalantis.ucrop.MaxScaleMultiplier"

    const/high16 v11, 0x41200000    # 10.0f

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setMaxScaleMultiplier(F)V

    .line 218
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const-string v10, "com.yalantis.ucrop.ImageToCropBoundsAnimDuration"

    const/16 v11, 0x1f4

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBoundsAnimDuration(J)V

    .line 222
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v10, "com.yalantis.ucrop.FreeStyleCrop"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/OverlayView;->setFreestyleCropEnabled(Z)V

    .line 224
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v10, "com.yalantis.ucrop.DimmedLayerColor"

    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_dimmed:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/OverlayView;->setDimmedColor(I)V

    .line 225
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v10, "com.yalantis.ucrop.CircleDimmedLayer"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/OverlayView;->setCircleDimmedLayer(Z)V

    .line 227
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v10, "com.yalantis.ucrop.ShowCropFrame"

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropFrame(Z)V

    .line 228
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v10, "com.yalantis.ucrop.CropFrameColor"

    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_frame:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameColor(I)V

    .line 229
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v10, "com.yalantis.ucrop.CropFrameStrokeWidth"

    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_frame_stoke_width:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameStrokeWidth(I)V

    .line 231
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v10, "com.yalantis.ucrop.ShowCropGrid"

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropGrid(Z)V

    .line 232
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v10, "com.yalantis.ucrop.CropGridRowCount"

    const/4 v11, 0x2

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridRowCount(I)V

    .line 233
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v10, "com.yalantis.ucrop.CropGridColumnCount"

    const/4 v11, 0x2

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColumnCount(I)V

    .line 234
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v10, "com.yalantis.ucrop.CropGridColor"

    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_grid:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColor(I)V

    .line 235
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v10, "com.yalantis.ucrop.CropGridStrokeWidth"

    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_grid_stoke_width:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridStrokeWidth(I)V

    .line 238
    const-string v9, "com.yalantis.ucrop.AspectRatioX"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    .line 239
    .local v2, "aspectRatioX":F
    const-string v9, "com.yalantis.ucrop.AspectRatioY"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    .line 241
    .local v3, "aspectRatioY":F
    const-string v9, "com.yalantis.ucrop.AspectRatioSelectedByDefault"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 242
    .local v4, "aspectRationSelectedByDefault":I
    const-string v9, "com.yalantis.ucrop.AspectRatioOptions"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 244
    .local v1, "aspectRatioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yalantis/ucrop/model/AspectRatio;>;"
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_5

    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :cond_5

    .line 245
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    if-eqz v9, :cond_3

    .line 246
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 248
    :cond_3
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    div-float v10, v2, v3

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    .line 257
    :goto_0
    const-string v9, "com.yalantis.ucrop.MaxSizeX"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 258
    .local v7, "maxSizeX":I
    const-string v9, "com.yalantis.ucrop.MaxSizeY"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 260
    .local v8, "maxSizeY":I
    if-lez v7, :cond_4

    if-lez v8, :cond_4

    .line 261
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v9, v7}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setMaxResultImageSizeX(I)V

    .line 262
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v9, v8}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setMaxResultImageSizeY(I)V

    .line 264
    :cond_4
    return-void

    .line 249
    .end local v7    # "maxSizeX":I
    .end local v8    # "maxSizeY":I
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 250
    iget-object v10, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-virtual {v9}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioX()F

    move-result v11

    .line 251
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-virtual {v9}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioY()F

    move-result v9

    div-float v9, v11, v9

    .line 250
    invoke-virtual {v10, v9}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    goto :goto_0

    .line 253
    :cond_6
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    goto :goto_0
.end method

.method private resetRotation()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->getCurrentAngle()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->postRotate(F)V

    .line 528
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    .line 529
    return-void
.end method

.method private rotateByAngle(I)V
    .locals 2
    .param p1, "angle"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->postRotate(F)V

    .line 533
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    .line 534
    return-void
.end method

.method private setAllowedGestures(I)V
    .locals 5
    .param p1, "tab"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 578
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I

    aget v0, v0, p1

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I

    aget v0, v0, p1

    if-ne v0, v2, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setScaleEnabled(Z)V

    .line 579
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I

    aget v3, v3, p1

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I

    aget v3, v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setRotateEnabled(Z)V

    .line 580
    return-void

    :cond_3
    move v0, v1

    .line 578
    goto :goto_0
.end method

.method private setAngleText(F)V
    .locals 6
    .param p1, "angle"    # F

    .prologue
    .line 515
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewRotateAngle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewRotateAngle:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.1f\u00b0"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    :cond_0
    return-void
.end method

.method private setImageData(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 176
    const-string v3, "com.yalantis.ucrop.InputUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 177
    .local v1, "inputUri":Landroid/net/Uri;
    const-string v3, "com.yalantis.ucrop.OutputUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 178
    .local v2, "outputUri":Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->processOptions(Landroid/content/Intent;)V

    .line 180
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 182
    :try_start_0
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v3, v1, v2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setResultError(Ljava/lang/Throwable;)V

    .line 185
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->finish()V

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    sget v4, Lcom/yalantis/ucrop/R$string;->ucrop_error_input_data_is_absent:I

    invoke-virtual {p0, v4}, Lcom/yalantis/ucrop/UCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/yalantis/ucrop/UCropActivity;->setResultError(Ljava/lang/Throwable;)V

    .line 189
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->finish()V

    goto :goto_0
.end method

.method private setInitialState()V
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowBottomControls:Z

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 548
    sget v0, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setWidgetState(I)V

    .line 555
    :goto_0
    return-void

    .line 550
    :cond_0
    sget v0, Lcom/yalantis/ucrop/R$id;->state_scale:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setWidgetState(I)V

    goto :goto_0

    .line 553
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setAllowedGestures(I)V

    goto :goto_0
.end method

.method private setScaleText(F)V
    .locals 6
    .param p1, "scale"    # F

    .prologue
    .line 521
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewScalePercent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewScalePercent:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, p1

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    :cond_0
    return-void
.end method

.method private setStatusBarColor(I)V
    .locals 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 387
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 389
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 390
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 391
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 394
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private setWidgetState(I)V
    .locals 5
    .param p1, "stateViewId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 558
    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowBottomControls:Z

    if-nez v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v4, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    sget v0, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 561
    iget-object v4, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateRotate:Landroid/view/ViewGroup;

    sget v0, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 562
    iget-object v4, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateScale:Landroid/view/ViewGroup;

    sget v0, Lcom/yalantis/ucrop/R$id;->state_scale:I

    if-ne p1, v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 564
    iget-object v4, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutAspectRatio:Landroid/view/ViewGroup;

    sget v0, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    if-ne p1, v0, :cond_5

    move v0, v2

    :goto_4
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 565
    iget-object v4, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutRotate:Landroid/view/ViewGroup;

    sget v0, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    if-ne p1, v0, :cond_6

    move v0, v2

    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutScale:Landroid/view/ViewGroup;

    sget v4, Lcom/yalantis/ucrop/R$id;->state_scale:I

    if-ne p1, v4, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 568
    sget v0, Lcom/yalantis/ucrop/R$id;->state_scale:I

    if-ne p1, v0, :cond_7

    .line 569
    invoke-direct {p0, v2}, Lcom/yalantis/ucrop/UCropActivity;->setAllowedGestures(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 560
    goto :goto_1

    :cond_3
    move v0, v2

    .line 561
    goto :goto_2

    :cond_4
    move v0, v2

    .line 562
    goto :goto_3

    :cond_5
    move v0, v3

    .line 564
    goto :goto_4

    :cond_6
    move v0, v3

    .line 565
    goto :goto_5

    .line 570
    :cond_7
    sget v0, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    if-ne p1, v0, :cond_8

    .line 571
    invoke-direct {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->setAllowedGestures(I)V

    goto :goto_0

    .line 573
    :cond_8
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setAllowedGestures(I)V

    goto :goto_0
.end method

.method private setupAppBar()V
    .locals 6

    .prologue
    .line 305
    iget v4, p0, Lcom/yalantis/ucrop/UCropActivity;->mStatusBarColor:I

    invoke-direct {p0, v4}, Lcom/yalantis/ucrop/UCropActivity;->setStatusBarColor(I)V

    .line 307
    sget v4, Lcom/yalantis/ucrop/R$id;->toolbar:I

    invoke-virtual {p0, v4}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    .line 310
    .local v2, "toolbar":Landroid/support/v7/widget/Toolbar;
    iget v4, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarColor:I

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 311
    iget v4, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 313
    sget v4, Lcom/yalantis/ucrop/R$id;->toolbar_title:I

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 314
    .local v3, "toolbarTitle":Landroid/widget/TextView;
    iget v4, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    iget-object v4, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    sget v4, Lcom/yalantis/ucrop/R$drawable;->ucrop_ic_cross:I

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 319
    .local v1, "stateButtonDrawable":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 320
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 322
    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/UCropActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 323
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 324
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 325
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 327
    :cond_0
    return-void
.end method

.method private setupAspectRatioWidget(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 398
    const-string v8, "com.yalantis.ucrop.AspectRatioSelectedByDefault"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 399
    .local v3, "aspectRationSelectedByDefault":I
    const-string v8, "com.yalantis.ucrop.AspectRatioOptions"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 401
    .local v1, "aspectRatioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yalantis/ucrop/model/AspectRatio;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 402
    :cond_0
    const/4 v3, 0x2

    .line 404
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "aspectRatioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yalantis/ucrop/model/AspectRatio;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .restart local v1    # "aspectRatioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yalantis/ucrop/model/AspectRatio;>;"
    new-instance v8, Lcom/yalantis/ucrop/model/AspectRatio;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v8, Lcom/yalantis/ucrop/model/AspectRatio;

    const/4 v9, 0x0

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v11, 0x40800000    # 4.0f

    invoke-direct {v8, v9, v10, v11}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v8, Lcom/yalantis/ucrop/model/AspectRatio;

    sget v9, Lcom/yalantis/ucrop/R$string;->ucrop_label_original:I

    invoke-virtual {p0, v9}, Lcom/yalantis/ucrop/UCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v8, Lcom/yalantis/ucrop/model/AspectRatio;

    const/4 v9, 0x0

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v11, 0x40000000    # 2.0f

    invoke-direct {v8, v9, v10, v11}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v8, Lcom/yalantis/ucrop/model/AspectRatio;

    const/4 v9, 0x0

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v11, 0x41100000    # 9.0f

    invoke-direct {v8, v9, v10, v11}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_1
    sget v8, Lcom/yalantis/ucrop/R$id;->layout_aspect_ratio:I

    invoke-virtual {p0, v8}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 417
    .local v7, "wrapperAspectRatioList":Landroid/widget/LinearLayout;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 418
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 419
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/model/AspectRatio;

    .line 420
    .local v0, "aspectRatio":Lcom/yalantis/ucrop/model/AspectRatio;
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    sget v10, Lcom/yalantis/ucrop/R$layout;->ucrop_aspect_ratio:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 421
    .local v6, "wrapperAspectRatio":Landroid/widget/FrameLayout;
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;

    .line 423
    .local v2, "aspectRatioTextView":Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;
    iget v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I

    invoke-virtual {v2, v9}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setActiveColor(I)V

    .line 424
    invoke-virtual {v2, v0}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setAspectRatio(Lcom/yalantis/ucrop/model/AspectRatio;)V

    .line 426
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    iget-object v9, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    .end local v0    # "aspectRatio":Lcom/yalantis/ucrop/model/AspectRatio;
    .end local v2    # "aspectRatioTextView":Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;
    .end local v6    # "wrapperAspectRatio":Landroid/widget/FrameLayout;
    :cond_2
    iget-object v8, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 432
    iget-object v8, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 433
    .local v4, "cropAspectRatioView":Landroid/view/ViewGroup;
    new-instance v9, Lcom/yalantis/ucrop/UCropActivity$2;

    invoke-direct {v9, p0}, Lcom/yalantis/ucrop/UCropActivity$2;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 447
    .end local v4    # "cropAspectRatioView":Landroid/view/ViewGroup;
    :cond_3
    return-void
.end method

.method private setupRotateWidget()V
    .locals 2

    .prologue
    .line 450
    sget v0, Lcom/yalantis/ucrop/R$id;->text_view_rotate:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewRotateAngle:Landroid/widget/TextView;

    .line 451
    sget v0, Lcom/yalantis/ucrop/R$id;->rotate_scroll_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$3;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/UCropActivity$3;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    .line 452
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$ScrollingListener;)V

    .line 469
    sget v0, Lcom/yalantis/ucrop/R$id;->rotate_scroll_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setMiddleLineColor(I)V

    .line 472
    sget v0, Lcom/yalantis/ucrop/R$id;->wrapper_reset_rotate:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$4;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/UCropActivity$4;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    sget v0, Lcom/yalantis/ucrop/R$id;->wrapper_rotate_by_angle:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$5;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/UCropActivity$5;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    return-void
.end method

.method private setupScaleWidget()V
    .locals 2

    .prologue
    .line 487
    sget v0, Lcom/yalantis/ucrop/R$id;->text_view_scale:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewScalePercent:Landroid/widget/TextView;

    .line 488
    sget v0, Lcom/yalantis/ucrop/R$id;->scale_scroll_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$6;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/UCropActivity$6;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    .line 489
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$ScrollingListener;)V

    .line 511
    sget v0, Lcom/yalantis/ucrop/R$id;->scale_scroll_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setMiddleLineColor(I)V

    .line 512
    return-void
.end method

.method private setupStatesWrapper()V
    .locals 6

    .prologue
    .line 370
    sget v3, Lcom/yalantis/ucrop/R$id;->image_view_state_scale:I

    invoke-virtual {p0, v3}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 371
    .local v2, "stateScaleImageView":Landroid/widget/ImageView;
    sget v3, Lcom/yalantis/ucrop/R$id;->image_view_state_rotate:I

    invoke-virtual {p0, v3}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 372
    .local v1, "stateRotateImageView":Landroid/widget/ImageView;
    sget v3, Lcom/yalantis/ucrop/R$id;->image_view_state_aspect_ratio:I

    invoke-virtual {p0, v3}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 374
    .local v0, "stateAspectRatioImageView":Landroid/widget/ImageView;
    new-instance v3, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I

    invoke-direct {v3, v4, v5}, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    new-instance v3, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I

    invoke-direct {v3, v4, v5}, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    new-instance v3, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I

    invoke-direct {v3, v4, v5}, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    return-void
.end method

.method private setupViews(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 267
    const-string v1, "com.yalantis.ucrop.StatusBarColor"

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_statusbar:I

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mStatusBarColor:I

    .line 268
    const-string v1, "com.yalantis.ucrop.ToolbarColor"

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_toolbar:I

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarColor:I

    .line 269
    const-string v1, "com.yalantis.ucrop.UcropColorWidgetActive"

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_widget_active:I

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveWidgetColor:I

    .line 270
    const-string v1, "com.yalantis.ucrop.UcropToolbarWidgetColor"

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_toolbar_widget:I

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    .line 271
    const-string v1, "com.yalantis.ucrop.UcropToolbarTitleText"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    .line 272
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    .line 273
    const-string v1, "com.yalantis.ucrop.UcropLogoColor"

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_logo:I

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mLogoColor:I

    .line 274
    const-string v1, "com.yalantis.ucrop.HideBottomControls"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowBottomControls:Z

    .line 276
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setupAppBar()V

    .line 277
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->initiateRootViews()V

    .line 279
    iget-boolean v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowBottomControls:Z

    if-eqz v1, :cond_0

    .line 280
    sget v1, Lcom/yalantis/ucrop/R$id;->ucrop_photobox:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 281
    .local v0, "photoBox":Landroid/view/ViewGroup;
    sget v1, Lcom/yalantis/ucrop/R$layout;->ucrop_controls:I

    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 283
    sget v1, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    .line 284
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mStateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    sget v1, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateRotate:Landroid/view/ViewGroup;

    .line 286
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateRotate:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mStateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    sget v1, Lcom/yalantis/ucrop/R$id;->state_scale:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateScale:Landroid/view/ViewGroup;

    .line 288
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateScale:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mStateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    sget v1, Lcom/yalantis/ucrop/R$id;->layout_aspect_ratio:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutAspectRatio:Landroid/view/ViewGroup;

    .line 291
    sget v1, Lcom/yalantis/ucrop/R$id;->layout_rotate_wheel:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutRotate:Landroid/view/ViewGroup;

    .line 292
    sget v1, Lcom/yalantis/ucrop/R$id;->layout_scale_wheel:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutScale:Landroid/view/ViewGroup;

    .line 294
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setupAspectRatioWidget(Landroid/content/Intent;)V

    .line 295
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setupRotateWidget()V

    .line 296
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setupScaleWidget()V

    .line 297
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setupStatesWrapper()V

    .line 299
    .end local v0    # "photoBox":Landroid/view/ViewGroup;
    :cond_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/R$string;->ucrop_label_edit_photo:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 274
    goto/16 :goto_1
.end method


# virtual methods
.method protected cropAndSaveImage()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 600
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 601
    iput-boolean v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z

    .line 602
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->supportInvalidateOptionsMenu()V

    .line 604
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressQuality:I

    new-instance v3, Lcom/yalantis/ucrop/UCropActivity$8;

    invoke-direct {v3, p0}, Lcom/yalantis/ucrop/UCropActivity$8;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yalantis/ucrop/view/GestureCropImageView;->cropAndSaveImage(Landroid/graphics/Bitmap$CompressFormat;ILcom/yalantis/ucrop/callback/BitmapCropCallback;)V

    .line 618
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    sget v1, Lcom/yalantis/ucrop/R$layout;->ucrop_activity_photobox:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setupViews(Landroid/content/Intent;)V

    .line 112
    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setImageData(Landroid/content/Intent;)V

    .line 113
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setInitialState()V

    .line 114
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->addBlockingView()V

    .line 115
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v10, 0x1

    .line 119
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    sget v6, Lcom/yalantis/ucrop/R$menu;->ucrop_menu_activity:I

    invoke-virtual {v5, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 123
    sget v5, Lcom/yalantis/ucrop/R$id;->menu_loader:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 124
    .local v3, "menuItemLoader":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 125
    .local v4, "menuItemLoaderIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 127
    :try_start_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 128
    iget v5, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 129
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Animatable;

    invoke-interface {v5}, Landroid/graphics/drawable/Animatable;->start()V

    .line 136
    :cond_0
    sget v5, Lcom/yalantis/ucrop/R$id;->menu_crop:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 137
    .local v1, "menuItemCrop":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 138
    .local v2, "menuItemCropIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 140
    iget v5, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 141
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 144
    :cond_1
    return v10

    .line 130
    .end local v1    # "menuItemCrop":Landroid/view/MenuItem;
    .end local v2    # "menuItemCropIcon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "UCropActivity"

    const-string v6, "%s - %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    sget v8, Lcom/yalantis/ucrop/R$string;->ucrop_mutate_exception_hint:I

    invoke-virtual {p0, v8}, Lcom/yalantis/ucrop/UCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/yalantis/ucrop/R$id;->menu_crop:I

    if-ne v0, v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->cropAndSaveImage()V

    .line 161
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 158
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 149
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_crop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 150
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_loader:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 167
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->cancelAllAnimations()V

    .line 170
    :cond_0
    return-void
.end method

.method protected setResultError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 630
    const/16 v0, 0x60

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.yalantis.ucrop.Error"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yalantis/ucrop/UCropActivity;->setResult(ILandroid/content/Intent;)V

    .line 631
    return-void
.end method

.method protected setResultUri(Landroid/net/Uri;FII)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resultAspectRatio"    # F
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I

    .prologue
    .line 621
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.yalantis.ucrop.OutputUri"

    .line 622
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.yalantis.ucrop.CropAspectRatio"

    .line 623
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.yalantis.ucrop.ImageWidth"

    .line 624
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.yalantis.ucrop.ImageHeight"

    .line 625
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 621
    invoke-virtual {p0, v0, v1}, Lcom/yalantis/ucrop/UCropActivity;->setResult(ILandroid/content/Intent;)V

    .line 627
    return-void
.end method
