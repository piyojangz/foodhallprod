.class final Lcom/facebook/react/bridge/BaseJavaModule$3;
.super Lcom/facebook/react/bridge/BaseJavaModule$ArgumentExtractor;
.source "BaseJavaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/bridge/BaseJavaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/BaseJavaModule$ArgumentExtractor",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/BaseJavaModule$ArgumentExtractor;-><init>(Lcom/facebook/react/bridge/BaseJavaModule$1;)V

    return-void
.end method


# virtual methods
.method public extractArgument(Lcom/facebook/react/bridge/JSInstance;Lcom/facebook/react/bridge/ExecutorToken;Lcom/facebook/react/bridge/ReadableNativeArray;I)Ljava/lang/Float;
    .locals 2
    .param p1, "jsInstance"    # Lcom/facebook/react/bridge/JSInstance;
    .param p2, "executorToken"    # Lcom/facebook/react/bridge/ExecutorToken;
    .param p3, "jsArguments"    # Lcom/facebook/react/bridge/ReadableNativeArray;
    .param p4, "atIndex"    # I

    .prologue
    .line 88
    invoke-virtual {p3, p4}, Lcom/facebook/react/bridge/ReadableNativeArray;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic extractArgument(Lcom/facebook/react/bridge/JSInstance;Lcom/facebook/react/bridge/ExecutorToken;Lcom/facebook/react/bridge/ReadableNativeArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/react/bridge/BaseJavaModule$3;->extractArgument(Lcom/facebook/react/bridge/JSInstance;Lcom/facebook/react/bridge/ExecutorToken;Lcom/facebook/react/bridge/ReadableNativeArray;I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
