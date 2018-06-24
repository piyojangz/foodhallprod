.class Lcom/reactnative/ivpusic/imagepicker/PickerModule$3;
.super Ljava/lang/Object;
.source "PickerModule.java"

# interfaces
.implements Lcom/facebook/react/modules/core/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnative/ivpusic/imagepicker/PickerModule;->permissionsCheck(Landroid/app/Activity;Lcom/facebook/react/bridge/Promise;Ljava/util/List;Ljava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

.field final synthetic val$callback:Ljava/util/concurrent/Callable;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Lcom/facebook/react/bridge/Promise;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$3;->this$0:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    iput-object p2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$3;->val$callback:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v5, 0x1

    .line 225
    if-ne p1, v5, :cond_0

    .line 227
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget v1, p3, v2

    .line 228
    .local v1, "grantResult":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 229
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v3, "E_PERMISSION_MISSING"

    const-string v4, "Required permission missing"

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v1    # "grantResult":I
    :cond_0
    :goto_1
    return v5

    .line 227
    .restart local v1    # "grantResult":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "grantResult":I
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$3;->val$callback:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v3, "E_CALLBACK_ERROR"

    const-string v4, "Unknown error"

    invoke-interface {v2, v3, v4, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
