.class final Lio/reactivex/internal/functions/Functions$ClassFilter;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClassFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lio/reactivex/internal/functions/Functions$ClassFilter;, "Lio/reactivex/internal/functions/Functions$ClassFilter<TT;TU;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$ClassFilter;->clazz:Ljava/lang/Class;

    .line 357
    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lio/reactivex/internal/functions/Functions$ClassFilter;, "Lio/reactivex/internal/functions/Functions$ClassFilter<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/functions/Functions$ClassFilter;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
