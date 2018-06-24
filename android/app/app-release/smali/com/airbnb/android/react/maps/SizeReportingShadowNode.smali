.class public Lcom/airbnb/android/react/maps/SizeReportingShadowNode;
.super Lcom/facebook/react/uimanager/LayoutShadowNode;
.source "SizeReportingShadowNode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollectExtraUpdates(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V
    .locals 3
    .param p1, "uiViewOperationQueue"    # Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->onCollectExtraUpdates(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    const-string v1, "width"

    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/SizeReportingShadowNode;->getLayoutWidth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "height"

    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/SizeReportingShadowNode;->getLayoutHeight()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/SizeReportingShadowNode;->getReactTag()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->enqueueUpdateExtraData(ILjava/lang/Object;)V

    .line 30
    return-void
.end method
