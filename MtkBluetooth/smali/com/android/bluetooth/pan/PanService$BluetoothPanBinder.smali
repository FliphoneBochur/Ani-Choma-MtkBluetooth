.class Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;
.super Landroid/bluetooth/IBluetoothPan$Stub;
.source "PanService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothPanBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/PanService;)V
    .locals 0

    .line 227
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPan$Stub;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    .line 229
    return-void
.end method

.method private getService()Lcom/android/bluetooth/pan/PanService;
    .locals 3

    .line 237
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 238
    const-string v0, "PanService"

    const-string v2, "Pan call not allowed for non-active user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-object v1

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService;->access$800(Lcom/android/bluetooth/pan/PanService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    return-object v0

    .line 245
    :cond_1
    return-object v1
.end method

.method private isPanNapOn()Z
    .locals 1

    .line 285
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 286
    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x0

    return v0

    .line 289
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/pan/PanService;->isPanNapOn()Z

    move-result v0

    return v0
.end method

.method private isPanUOn()Z
    .locals 2

    .line 293
    invoke-static {}, Lcom/android/bluetooth/pan/PanService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "PanService"

    const-string v1, "isTetheringOn call getPanLocalRoleNative"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 297
    if-nez v0, :cond_1

    .line 298
    const/4 v0, 0x0

    return v0

    .line 300
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/pan/PanService;->isPanUOn()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->mService:Lcom/android/bluetooth/pan/PanService;

    .line 234
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 250
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 251
    if-nez v0, :cond_0

    .line 252
    const/4 p1, 0x0

    return p1

    .line 254
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 259
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 260
    if-nez v0, :cond_0

    .line 261
    const/4 p1, 0x0

    return p1

    .line 263
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
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

    .line 330
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 331
    if-nez v0, :cond_0

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 334
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 277
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 278
    if-nez v0, :cond_0

    .line 279
    const/4 p1, 0x0

    return p1

    .line 281
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

    .line 339
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 340
    if-nez v0, :cond_0

    .line 341
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 343
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isTetheringOn()Z
    .locals 1

    .line 306
    monitor-enter p0

    .line 307
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 308
    if-nez v0, :cond_0

    .line 309
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 311
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/pan/PanService;->isTetheringOn()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothTethering(ZLjava/lang/String;)V
    .locals 4

    .line 317
    monitor-enter p0

    .line 318
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 319
    if-nez v0, :cond_0

    .line 320
    monitor-exit p0

    return-void

    .line 322
    :cond_0
    const-string v1, "PanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothTethering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mTetherOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService;->access$900(Lcom/android/bluetooth/pan/PanService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/pan/PanService;->setBluetoothTethering(ZLjava/lang/String;)V

    .line 325
    monitor-exit p0

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 268
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;->getService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    .line 269
    if-nez v0, :cond_0

    .line 270
    const/4 p1, 0x0

    return p1

    .line 272
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/pan/PanService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method
