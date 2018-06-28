.class public abstract Lcom/facebook/react/uimanager/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/react/uimanager/events/Event;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sUniqueID:I


# instance fields
.field private mInitialized:Z

.field private mTimestampMs:J

.field private mUniqueID:I

.field private mViewTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/facebook/react/uimanager/events/Event;->sUniqueID:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 30
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget v0, Lcom/facebook/react/uimanager/events/Event;->sUniqueID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/react/uimanager/events/Event;->sUniqueID:I

    iput v0, p0, Lcom/facebook/react/uimanager/events/Event;->mUniqueID:I

    .line 31
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2
    .param p1, "viewTag"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget v0, Lcom/facebook/react/uimanager/events/Event;->sUniqueID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/react/uimanager/events/Event;->sUniqueID:I

    iput v0, p0, Lcom/facebook/react/uimanager/events/Event;->mUniqueID:I

    .line 34
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/events/Event;->init(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public coalesce(Lcom/facebook/react/uimanager/events/Event;)Lcom/facebook/react/uimanager/events/Event;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    .local p1, "otherEvent":Lcom/facebook/react/uimanager/events/Event;, "TT;"
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->getTimestampMs()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getTimestampMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .end local p0    # "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public abstract dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
.end method

.method final dispose()V
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/events/Event;->mInitialized:Z

    .line 108
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->onDispose()V

    .line 109
    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getEventName()Ljava/lang/String;
.end method

.method public final getTimestampMs()J
    .locals 2

    .prologue
    .line 58
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    iget-wide v0, p0, Lcom/facebook/react/uimanager/events/Event;->mTimestampMs:J

    return-wide v0
.end method

.method public getUniqueID()I
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    iget v0, p0, Lcom/facebook/react/uimanager/events/Event;->mUniqueID:I

    return v0
.end method

.method public final getViewTag()I
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    iget v0, p0, Lcom/facebook/react/uimanager/events/Event;->mViewTag:I

    return v0
.end method

.method protected init(I)V
    .locals 2
    .param p1, "viewTag"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    iput p1, p0, Lcom/facebook/react/uimanager/events/Event;->mViewTag:I

    .line 42
    invoke-static {}, Lcom/facebook/react/common/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/uimanager/events/Event;->mTimestampMs:J

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/events/Event;->mInitialized:Z

    .line 44
    return-void
.end method

.method isInitialized()Z
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/events/Event;->mInitialized:Z

    return v0
.end method

.method public onDispose()V
    .locals 0

    .prologue
    .line 100
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    return-void
.end method