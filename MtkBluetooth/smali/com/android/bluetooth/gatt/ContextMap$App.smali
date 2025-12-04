.class Lcom/android/bluetooth/gatt/ContextMap$App;
.super Ljava/lang/Object;
.source "ContextMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ContextMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "App"
.end annotation


# instance fields
.field public appScanStats:Lcom/android/bluetooth/gatt/AppScanStats;

.field public callback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field hasBluetoothPrivilegedPermission:Z

.field hasLocationPermission:Z

.field public id:I

.field public info:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public isCongested:Ljava/lang/Boolean;

.field public mAssociatedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCongestionQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/bluetooth/gatt/CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field mEligibleForSanitizedExposureNotification:Z

.field mHasNetworkSettingsPermission:Z

.field mHasNetworkSetupWizardPermission:Z

.field mHasScanWithoutLocationPermission:Z

.field mIsQApp:Z

.field mUserHandle:Landroid/os/UserHandle;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ContextMap;

.field public uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ContextMap;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/android/bluetooth/gatt/AppScanStats;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "TC;TT;",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/gatt/AppScanStats;",
            ")V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->this$0:Lcom/android/bluetooth/gatt/ContextMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mCongestionQueue:Ljava/util/List;

    .line 121
    iput-object p2, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    .line 122
    iput-object p3, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    .line 123
    iput-object p4, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->info:Ljava/lang/Object;

    .line 124
    iput-object p5, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->name:Ljava/lang/String;

    .line 125
    iput-object p6, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->appScanStats:Lcom/android/bluetooth/gatt/AppScanStats;

    .line 126
    return-void
.end method


# virtual methods
.method linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 134
    return-void

    .line 137
    :cond_0
    :try_start_0
    check-cast v0, Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 138
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 139
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 140
    :catch_0
    move-exception p1

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to link deathRecipient for app id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.ContextMap"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void
.end method

.method popQueuedCallback()Lcom/android/bluetooth/gatt/CallbackInfo;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mCongestionQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mCongestionQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/CallbackInfo;

    return-object v0
.end method

.method queueCallback(Lcom/android/bluetooth/gatt/CallbackInfo;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mCongestionQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method unlinkToDeath()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unlink deathRecipient for app id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.ContextMap"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    return-void
.end method
