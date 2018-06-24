.class Lcom/yalantis/ucrop/UCropActivity$2;
.super Ljava/lang/Object;
.source "UCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/UCropActivity;->setupAspectRatioWidget(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalantis/ucrop/UCropActivity;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/UCropActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yalantis/ucrop/UCropActivity;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$2;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity$2;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {v1}, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 437
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->getAspectRatio(Z)F

    move-result v1

    .line 436
    invoke-virtual {v3, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    .line 438
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity$2;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {v1}, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    .line 439
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity$2;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {v1}, Lcom/yalantis/ucrop/UCropActivity;->access$600(Lcom/yalantis/ucrop/UCropActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 441
    .local v0, "cropAspectRatioView":Landroid/view/ViewGroup;
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 444
    .end local v0    # "cropAspectRatioView":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method
