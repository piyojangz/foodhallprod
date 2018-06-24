.class public Lcom/facebook/reactnative/androidsdk/FBLikeViewManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "FBLikeViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager",
        "<",
        "Lcom/facebook/reactnative/androidsdk/RCTLikeView;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RCTFBLikeView"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/facebook/reactnative/androidsdk/FBLikeViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/reactnative/androidsdk/RCTLikeView;

    move-result-object v0

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/reactnative/androidsdk/RCTLikeView;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 46
    new-instance v0, Lcom/facebook/reactnative/androidsdk/RCTLikeView;

    invoke-direct {v0, p1}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 47
    .local v0, "button":Lcom/facebook/reactnative/androidsdk/RCTLikeView;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "RCTFBLikeView"

    return-object v0
.end method

.method public setAuxiliaryViewPosition(Lcom/facebook/reactnative/androidsdk/RCTLikeView;Ljava/lang/String;)V
    .locals 1
    .param p1, "likeView"    # Lcom/facebook/reactnative/androidsdk/RCTLikeView;
    .param p2, "auxiliaryViewPosition"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "auxiliaryViewPosition"
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->setAuxiliaryViewPosition(Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;)V

    .line 67
    return-void
.end method

.method public setForegroundColor(Lcom/facebook/reactnative/androidsdk/RCTLikeView;I)V
    .locals 0
    .param p1, "likeView"    # Lcom/facebook/reactnative/androidsdk/RCTLikeView;
    .param p2, "foregroundColor"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "foregroundColor"
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1, p2}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->setForegroundColor(I)V

    .line 77
    return-void
.end method

.method public setHorizontalAlignment(Lcom/facebook/reactnative/androidsdk/RCTLikeView;Ljava/lang/String;)V
    .locals 1
    .param p1, "likeView"    # Lcom/facebook/reactnative/androidsdk/RCTLikeView;
    .param p2, "horizontalAlignment"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "horizontalAlignment"
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->setHorizontalAlignment(Lcom/facebook/share/widget/LikeView$HorizontalAlignment;)V

    .line 72
    return-void
.end method

.method public setLikeViewStyle(Lcom/facebook/reactnative/androidsdk/RCTLikeView;Ljava/lang/String;)V
    .locals 1
    .param p1, "likeView"    # Lcom/facebook/reactnative/androidsdk/RCTLikeView;
    .param p2, "likeViewStyle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "likeViewStyle"
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/LikeView$Style;->valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$Style;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->setLikeViewStyle(Lcom/facebook/share/widget/LikeView$Style;)V

    .line 62
    return-void
.end method

.method public setObjectIdAndType(Lcom/facebook/reactnative/androidsdk/RCTLikeView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p1, "likeView"    # Lcom/facebook/reactnative/androidsdk/RCTLikeView;
    .param p2, "objectIdAndType"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "objectIdAndType"
    .end annotation

    .prologue
    .line 52
    const-string v0, "objectId"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "objectType"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "objectId"

    .line 54
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectType"

    .line 55
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$ObjectType;->valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v1

    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->setObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 57
    :cond_0
    return-void
.end method

.method public setSoundEnabled(Lcom/facebook/reactnative/androidsdk/RCTLikeView;Z)V
    .locals 0
    .param p1, "likeView"    # Lcom/facebook/reactnative/androidsdk/RCTLikeView;
    .param p2, "soundEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "soundEnabled"
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1, p2}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->setSoundEffectsEnabled(Z)V

    .line 82
    return-void
.end method
