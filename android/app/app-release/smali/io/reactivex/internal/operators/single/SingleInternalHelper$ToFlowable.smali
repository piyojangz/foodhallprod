.class final enum Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;
.super Ljava/lang/Enum;
.source "SingleInternalHelper.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ToFlowable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;",
        ">;",
        "Lio/reactivex/functions/Function",
        "<",
        "Lio/reactivex/SingleSource;",
        "Lorg/reactivestreams/Publisher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

.field public static final enum INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;->INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    sget-object v1, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;->INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;->$VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    return-object v0
.end method

.method public static values()[Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;->$VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    invoke-virtual {v0}, [Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    check-cast p1, Lio/reactivex/SingleSource;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;->apply(Lio/reactivex/SingleSource;)Lorg/reactivestreams/Publisher;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lio/reactivex/SingleSource;)Lorg/reactivestreams/Publisher;
    .locals 1
    .param p1, "v"    # Lio/reactivex/SingleSource;

    .prologue
    .line 54
    new-instance v0, Lio/reactivex/internal/operators/single/SingleToFlowable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/SingleToFlowable;-><init>(Lio/reactivex/SingleSource;)V

    return-object v0
.end method