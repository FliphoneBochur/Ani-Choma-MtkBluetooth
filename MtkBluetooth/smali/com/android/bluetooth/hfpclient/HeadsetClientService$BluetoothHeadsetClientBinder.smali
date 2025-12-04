.class Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;
.super Landroid/bluetooth/IBluetoothHeadsetClient$Stub;
.source "HeadsetClientService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHeadsetClientBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .line 193
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 3

    .line 201
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HeadsetClientService"

    if-nez v0, :cond_0

    .line 202
    const-string v0, "HeadsetClient call not allowed for non-active user"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-object v1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->access$200(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    return-object v0

    .line 210
    :cond_1
    const-string v0, "HeadsetClientService is not available."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-object v1
.end method


# virtual methods
.method public acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 335
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 336
    if-nez v0, :cond_0

    .line 337
    const/4 p1, 0x0

    return p1

    .line 339
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method

.method public cleanup()V
    .locals 1

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .line 198
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 216
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 217
    if-nez v0, :cond_0

    .line 218
    const/4 p1, 0x0

    return p1

    .line 220
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public connectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 317
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 318
    if-nez v0, :cond_0

    .line 319
    const/4 p1, 0x0

    return p1

    .line 321
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 1

    .line 390
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 391
    if-nez v0, :cond_0

    .line 392
    const/4 p1, 0x0

    return-object p1

    .line 394
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object p1

    return-object p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 225
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 226
    if-nez v0, :cond_0

    .line 227
    const/4 p1, 0x0

    return p1

    .line 229
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 326
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 327
    if-nez v0, :cond_0

    .line 328
    const/4 p1, 0x0

    return p1

    .line 330
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 381
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 382
    if-nez v0, :cond_0

    .line 383
    const/4 p1, 0x0

    return p1

    .line 385
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 372
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 373
    if-nez v0, :cond_0

    .line 374
    const/4 p1, 0x0

    return p1

    .line 376
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public getAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 311
    const-string p1, "HeadsetClientService"

    const-string v0, "getAudioRouteAllowed API not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 p1, 0x0

    return p1
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 297
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 298
    if-nez v0, :cond_0

    .line 299
    const/4 p1, 0x0

    return p1

    .line 301
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

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

    .line 234
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 235
    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 238
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 270
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 271
    if-nez v0, :cond_0

    .line 272
    const/4 p1, -0x1

    return p1

    .line 274
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 252
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 253
    if-nez v0, :cond_0

    .line 254
    const/4 p1, 0x0

    return p1

    .line 256
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 1

    .line 426
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 427
    if-nez v0, :cond_0

    .line 428
    const/4 p1, 0x0

    return-object p1

    .line 430
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 1

    .line 444
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 445
    if-nez v0, :cond_0

    .line 446
    const/4 p1, 0x0

    return-object p1

    .line 448
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    .line 399
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 400
    if-nez v0, :cond_0

    .line 401
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 403
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object p1

    return-object p1
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

    .line 243
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 244
    if-nez v0, :cond_0

    .line 245
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 247
    :cond_0
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->access$300(Lcom/android/bluetooth/hfpclient/HeadsetClientService;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 417
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 418
    if-nez v0, :cond_0

    .line 419
    const/4 p1, 0x0

    return p1

    .line 421
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 353
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 354
    if-nez v0, :cond_0

    .line 355
    const/4 p1, 0x0

    return p1

    .line 357
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 344
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 345
    if-nez v0, :cond_0

    .line 346
    const/4 p1, 0x0

    return p1

    .line 348
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 1

    .line 408
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 409
    if-nez v0, :cond_0

    .line 410
    const/4 p1, 0x0

    return p1

    .line 412
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result p1

    return p1
.end method

.method public sendVendorAtCommand(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z
    .locals 1

    .line 435
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 436
    if-nez v0, :cond_0

    .line 437
    const/4 p1, 0x0

    return p1

    .line 439
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendVendorAtCommand(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    .line 306
    const-string p1, "HeadsetClientService"

    const-string p2, "setAudioRouteAllowed API not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 261
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 262
    if-nez v0, :cond_0

    .line 263
    const/4 p1, 0x0

    return p1

    .line 265
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 279
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 280
    if-nez v0, :cond_0

    .line 281
    const/4 p1, 0x0

    return p1

    .line 283
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 288
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 289
    if-nez v0, :cond_0

    .line 290
    const/4 p1, 0x0

    return p1

    .line 292
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z
    .locals 1

    .line 362
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    .line 363
    if-nez v0, :cond_0

    .line 364
    const-string p1, "HeadsetClientService"

    const-string p2, "service is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 p1, 0x0

    return p1

    .line 367
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getUUID()Ljava/util/UUID;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->terminateCall(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)Z

    move-result p1

    return p1
.end method
