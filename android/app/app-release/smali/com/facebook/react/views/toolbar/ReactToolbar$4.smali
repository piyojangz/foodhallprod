.class Lcom/facebook/react/views/toolbar/ReactToolbar$4;
.super Ljava/lang/Object;
.source "ReactToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/toolbar/ReactToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/toolbar/ReactToolbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/views/toolbar/ReactToolbar;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 168
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    iget-object v1, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    .line 169
    invoke-virtual {v1}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    .line 170
    invoke-virtual {v2}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 168
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/views/toolbar/ReactToolbar;->measure(II)V

    .line 171
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    iget-object v1, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    invoke-virtual {v1}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    invoke-virtual {v2}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    invoke-virtual {v3}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;->this$0:Lcom/facebook/react/views/toolbar/ReactToolbar;

    invoke-virtual {v4}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/react/views/toolbar/ReactToolbar;->layout(IIII)V

    .line 172
    return-void
.end method
