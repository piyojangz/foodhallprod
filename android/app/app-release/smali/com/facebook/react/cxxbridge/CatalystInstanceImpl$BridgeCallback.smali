.class Lcom/facebook/react/cxxbridge/CatalystInstanceImpl$BridgeCallback;
.super Ljava/lang/Object;
.source "CatalystInstanceImpl.java"

# interfaces
.implements Lcom/facebook/react/cxxbridge/ReactCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BridgeCallback"
.end annotation


# instance fields
.field private final mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;)V
    .locals 1
    .param p1, "outer"    # Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/react/cxxbridge/CatalystInstanceImpl$BridgeCallback;->mOuter:Ljava/lang/ref/WeakReference;

    .line 148
    return-void
.end method


# virtual methods
.method public decrementPendingJSCalls()V
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/facebook/react/cxxbridge/CatalystInstanceImpl$BridgeCallback;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;

    .line 169
    .local v0, "impl":Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;
    if-eqz v0, :cond_0

    .line 170
    invoke-static {v0}, Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;->access$300(Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;)V

    .line 172
    :cond_0
    return-void
.end method

.method public incrementPendingJSCalls()V
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/facebook/react/cxxbridge/CatalystInstanceImpl$BridgeCallback;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;

    .line 161
    .local v0, "impl":Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;
    if-eqz v0, :cond_0

    .line 162
    invoke-static {v0}, Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;->access$200(Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onBatchComplete()V
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lcom/facebook/react/cxxbridge/CatalystInstanceImpl$BridgeCallback;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;

    .line 153
    .local v0, "impl":Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;
    if-eqz v0, :cond_0

    .line 154
    invoke-static {v0}, Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;->access$100(Lcom/facebook/react/cxxbridge/CatalystInstanceImpl;)Lcom/facebook/react/cxxbridge/NativeModuleRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/cxxbridge/NativeModuleRegistry;->onBatchComplete()V

    .line 156
    :cond_0
    return-void
.end method
