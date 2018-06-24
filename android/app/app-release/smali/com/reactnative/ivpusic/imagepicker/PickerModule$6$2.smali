.class Lcom/reactnative/ivpusic/imagepicker/PickerModule$6$2;
.super Ljava/lang/Object;
.source "PickerModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;


# direct methods
.method constructor <init>(Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6$2;->this$1:Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 478
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Lcom/facebook/react/bridge/WritableNativeMap;

    .line 479
    .local v0, "ex":Lcom/facebook/react/bridge/WritableNativeMap;
    iget-object v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6$2;->this$1:Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;

    iget-object v1, v1, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;->this$0:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    invoke-static {v1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->access$600(Lcom/reactnative/ivpusic/imagepicker/PickerModule;)Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method
