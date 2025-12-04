.class Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$AvrcpControllerServiceBinder;
.super Landroid/bluetooth/IBluetoothAvrcpController$Stub;
.source "AvrcpControllerService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvrcpControllerServiceBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$AvrcpControllerServiceBinder;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    .line 270
    return-void
.end method

.method private getService()Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;
    .locals 3

    .line 257
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 258
    const-string v0, "AvrcpControllerService"

    const-string v2, "AVRCP call not allowed for non-active user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-object v1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$AvrcpControllerServiceBinder;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    if-eqz v0, :cond_1

    .line 263
    return-object v0

    .line 265
    :cond_1
    return-object v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$AvrcpControllerServiceBinder;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    .line 275
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$AvrcpControllerServiceBinder;->getService()Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    move-result-object v0

    .line 280
    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 283
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 297
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$AvrcpControllerServiceBinder;->getService()Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    move-result-object v0

    .line 298
    if-nez v0, :cond_0

    .line 299
    const/4 p1, 0x0

    return p1

    .line 301
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$AvrcpControllerServiceBinder;->getService()Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    move-result-object v0

    .line 289
    if-nez v0, :cond_0

    .line 290
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 292
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPlayerSettings(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .locals 1

    .line 318
    const-string p1, "AvrcpControllerService"

    const-string v0, "getPlayerSettings not implemented"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendGroupNavigationCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .line 306
    const-string p1, "AvrcpControllerService"

    const-string p2, "sendGroupNavigationCmd not implemented"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public setPlayerApplicationSetting(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)Z
    .locals 1

    .line 312
    const-string p1, "AvrcpControllerService"

    const-string v0, "setPlayerApplicationSetting not implemented"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 p1, 0x0

    return p1
.end method
