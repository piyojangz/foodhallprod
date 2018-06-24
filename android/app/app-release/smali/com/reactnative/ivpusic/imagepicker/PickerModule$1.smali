.class Lcom/reactnative/ivpusic/imagepicker/PickerModule$1;
.super Ljava/lang/Object;
.source "PickerModule.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnative/ivpusic/imagepicker/PickerModule;->clean(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$module:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Lcom/reactnative/ivpusic/imagepicker/PickerModule;Landroid/app/Activity;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1, "this$0"    # Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$1;->this$0:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    iput-object p2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$1;->val$module:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    iput-object p3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 153
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$1;->val$module:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    iget-object v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$1;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->access$000(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "File does not exist"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v3, "E_ERROR_WHILE_CLEANING_FILES"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v5

    .line 156
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$1;->val$module:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    invoke-static {v2, v1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->access$100(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Ljava/io/File;)V

    .line 157
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
