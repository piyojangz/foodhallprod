.class Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/view/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrapCropBoundsRunnable"
.end annotation


# instance fields
.field private final mCenterDiffX:F

.field private final mCenterDiffY:F

.field private final mCropImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yalantis/ucrop/view/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeltaScale:F

.field private final mDurationMs:J

.field private final mOldScale:F

.field private final mOldX:F

.field private final mOldY:F

.field private final mStartTime:J

.field private final mWillBeImageInBoundsAfterTranslate:Z


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFFFFZ)V
    .locals 2
    .param p1, "cropImageView"    # Lcom/yalantis/ucrop/view/CropImageView;
    .param p2, "durationMs"    # J
    .param p4, "oldX"    # F
    .param p5, "oldY"    # F
    .param p6, "centerDiffX"    # F
    .param p7, "centerDiffY"    # F
    .param p8, "oldScale"    # F
    .param p9, "deltaScale"    # F
    .param p10, "willBeImageInBoundsAfterTranslate"    # Z

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mCropImageView:Ljava/lang/ref/WeakReference;

    .line 538
    iput-wide p2, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mStartTime:J

    .line 540
    iput p4, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mOldX:F

    .line 541
    iput p5, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mOldY:F

    .line 542
    iput p6, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mCenterDiffX:F

    .line 543
    iput p7, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mCenterDiffY:F

    .line 544
    iput p8, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mOldScale:F

    .line 545
    iput p9, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDeltaScale:F

    .line 546
    iput-boolean p10, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mWillBeImageInBoundsAfterTranslate:Z

    .line 547
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 551
    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mCropImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/CropImageView;

    .line 552
    .local v0, "cropImageView":Lcom/yalantis/ucrop/view/CropImageView;
    if-nez v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 557
    .local v6, "now":J
    iget-wide v8, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    iget-wide v10, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mStartTime:J

    sub-long v10, v6, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-float v1, v8

    .line 559
    .local v1, "currentMs":F
    iget v5, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mCenterDiffX:F

    iget-wide v8, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    long-to-float v8, v8

    invoke-static {v1, v12, v5, v8}, Lcom/yalantis/ucrop/util/CubicEasing;->easeOut(FFFF)F

    move-result v3

    .line 560
    .local v3, "newX":F
    iget v5, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mCenterDiffY:F

    iget-wide v8, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    long-to-float v8, v8

    invoke-static {v1, v12, v5, v8}, Lcom/yalantis/ucrop/util/CubicEasing;->easeOut(FFFF)F

    move-result v4

    .line 561
    .local v4, "newY":F
    iget v5, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDeltaScale:F

    iget-wide v8, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    long-to-float v8, v8

    invoke-static {v1, v12, v5, v8}, Lcom/yalantis/ucrop/util/CubicEasing;->easeInOut(FFFF)F

    move-result v2

    .line 563
    .local v2, "newScale":F
    iget-wide v8, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mDurationMs:J

    long-to-float v5, v8

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    .line 564
    iget-object v5, v0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageCenter:[F

    const/4 v8, 0x0

    aget v5, v5, v8

    iget v8, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mOldX:F

    sub-float/2addr v5, v8

    sub-float v5, v3, v5

    iget-object v8, v0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageCenter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    iget v9, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mOldY:F

    sub-float/2addr v8, v9

    sub-float v8, v4, v8

    invoke-virtual {v0, v5, v8}, Lcom/yalantis/ucrop/view/CropImageView;->postTranslate(FF)V

    .line 565
    iget-boolean v5, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mWillBeImageInBoundsAfterTranslate:Z

    if-nez v5, :cond_2

    .line 566
    iget v5, p0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;->mOldScale:F

    add-float/2addr v5, v2

    invoke-static {v0}, Lcom/yalantis/ucrop/view/CropImageView;->access$000(Lcom/yalantis/ucrop/view/CropImageView;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-static {v0}, Lcom/yalantis/ucrop/view/CropImageView;->access$000(Lcom/yalantis/ucrop/view/CropImageView;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v0, v5, v8, v9}, Lcom/yalantis/ucrop/view/CropImageView;->zoomInImage(FFF)V

    .line 568
    :cond_2
    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/CropImageView;->isImageWrapCropBounds()Z

    move-result v5

    if-nez v5, :cond_0

    .line 569
    invoke-virtual {v0, p0}, Lcom/yalantis/ucrop/view/CropImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
