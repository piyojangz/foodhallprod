.class public Lcom/airbnb/android/react/maps/AirMapCallout;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "AirMapCallout.java"


# instance fields
.field public height:I

.field private tooltip:Z

.field public width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapCallout;->tooltip:Z

    .line 14
    return-void
.end method


# virtual methods
.method public getTooltip()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapCallout;->tooltip:Z

    return v0
.end method

.method public setTooltip(Z)V
    .locals 0
    .param p1, "tooltip"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/airbnb/android/react/maps/AirMapCallout;->tooltip:Z

    .line 18
    return-void
.end method
