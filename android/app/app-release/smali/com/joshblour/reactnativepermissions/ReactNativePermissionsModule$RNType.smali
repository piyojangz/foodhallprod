.class public final enum Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;
.super Ljava/lang/Enum;
.source "ReactNativePermissionsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RNType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

.field public static final enum CAMERA:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

.field public static final enum CONTACTS:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

.field public static final enum EVENT:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

.field public static final enum LOCATION:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

.field public static final enum MICROPHONE:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

.field public static final enum PHOTO:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v3}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->LOCATION:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    .line 28
    new-instance v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v4}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->CAMERA:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    .line 29
    new-instance v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    const-string v1, "MICROPHONE"

    invoke-direct {v0, v1, v5}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->MICROPHONE:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    .line 30
    new-instance v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    const-string v1, "CONTACTS"

    invoke-direct {v0, v1, v6}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->CONTACTS:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    .line 31
    new-instance v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v7}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->EVENT:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    .line 32
    new-instance v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    const-string v1, "PHOTO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->PHOTO:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    sget-object v1, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->LOCATION:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->CAMERA:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->MICROPHONE:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->CONTACTS:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->EVENT:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->PHOTO:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->$VALUES:[Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    return-object v0
.end method

.method public static values()[Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->$VALUES:[Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    invoke-virtual {v0}, [Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    return-object v0
.end method
