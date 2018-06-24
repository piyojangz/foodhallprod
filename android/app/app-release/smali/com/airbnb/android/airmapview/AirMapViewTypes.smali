.class public final enum Lcom/airbnb/android/airmapview/AirMapViewTypes;
.super Ljava/lang/Enum;
.source "AirMapViewTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/airmapview/AirMapViewTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/airmapview/AirMapViewTypes;

.field public static final enum NATIVE:Lcom/airbnb/android/airmapview/AirMapViewTypes;

.field public static final enum WEB:Lcom/airbnb/android/airmapview/AirMapViewTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/airbnb/android/airmapview/AirMapViewTypes;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/airmapview/AirMapViewTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/airmapview/AirMapViewTypes;->NATIVE:Lcom/airbnb/android/airmapview/AirMapViewTypes;

    new-instance v0, Lcom/airbnb/android/airmapview/AirMapViewTypes;

    const-string v1, "WEB"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/airmapview/AirMapViewTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/airmapview/AirMapViewTypes;->WEB:Lcom/airbnb/android/airmapview/AirMapViewTypes;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/airmapview/AirMapViewTypes;

    sget-object v1, Lcom/airbnb/android/airmapview/AirMapViewTypes;->NATIVE:Lcom/airbnb/android/airmapview/AirMapViewTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/airmapview/AirMapViewTypes;->WEB:Lcom/airbnb/android/airmapview/AirMapViewTypes;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/android/airmapview/AirMapViewTypes;->$VALUES:[Lcom/airbnb/android/airmapview/AirMapViewTypes;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/airmapview/AirMapViewTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/airbnb/android/airmapview/AirMapViewTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/airmapview/AirMapViewTypes;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/airmapview/AirMapViewTypes;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/airbnb/android/airmapview/AirMapViewTypes;->$VALUES:[Lcom/airbnb/android/airmapview/AirMapViewTypes;

    invoke-virtual {v0}, [Lcom/airbnb/android/airmapview/AirMapViewTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/airmapview/AirMapViewTypes;

    return-object v0
.end method
