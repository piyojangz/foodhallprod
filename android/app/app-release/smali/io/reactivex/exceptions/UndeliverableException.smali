.class public final Lio/reactivex/exceptions/UndeliverableException;
.super Ljava/lang/IllegalStateException;
.source "UndeliverableException.java"


# annotations
.annotation build Lio/reactivex/annotations/Beta;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x16d353715d40a41aL


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method