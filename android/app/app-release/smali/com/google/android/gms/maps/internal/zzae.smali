.class public abstract Lcom/google/android/gms/maps/internal/zzae;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzad;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzee;-><init>()V

    const-string v0, "com.google.android.gms.maps.internal.IOnInfoWindowCloseListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/maps/internal/zzae;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/internal/zzae;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/internal/zzq;->zzaf(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/zzae;->zzg(Lcom/google/android/gms/maps/model/internal/zzp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
