.class public Lcom/facebook/yoga/YogaMeasureOutput;
.super Ljava/lang/Object;
.source "YogaMeasureOutput.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeight(J)F
    .locals 2
    .param p0, "measureOutput"    # J

    .prologue
    .line 32
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static getWidth(J)F
    .locals 4
    .param p0, "measureOutput"    # J

    .prologue
    .line 28
    const-wide/16 v0, -0x1

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static make(FF)J
    .locals 6
    .param p0, "width"    # F
    .param p1, "height"    # F

    .prologue
    .line 18
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 19
    .local v1, "wBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 20
    .local v0, "hBits":I
    int-to-long v2, v1

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v0

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static make(II)J
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 24
    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide v0

    return-wide v0
.end method
