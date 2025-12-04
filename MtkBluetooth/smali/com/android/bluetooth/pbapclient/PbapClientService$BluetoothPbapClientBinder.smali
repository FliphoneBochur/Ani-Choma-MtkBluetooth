.class Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;
.super Landroid/bluetooth/IBluetoothPbapClient$Stub;
.source "PbapClientService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PbapClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothPbapClientBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/pbapclient/PbapClientService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientService;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPbapClient$Stub;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    .line 223
    return-void
.end method

.method private getService()Lcom/android/bluetooth/pbapclient/PbapClientService;
    .locals 3

    .line 231
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 232
    const-string v0, "PbapClientService"

    const-string v2, "PbapClient call not allowed for non-active user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-object v1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->access$300(Lcom/android/bluetooth/pbapclient/PbapClientService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    return-object v0

    .line 239
    :cond_1
    return-object v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    .line 228
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 244
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    .line 248
    if-nez v0, :cond_0

    .line 249
    const-string p1, "PbapClientService"

    const-string v0, "PbapClient Binder connect no service"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 p1, 0x0

    return p1

    .line 252
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 257
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    .line 258
    if-nez v0, :cond_0

    .line 259
    const/4 p1, 0x0

    return p1

    .line 261
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

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

    .line 266
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    .line 267
    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 270
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 302
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    .line 303
    if-nez v0, :cond_0

    .line 304
    const/4 p1, -0x1

    return p1

    .line 306
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 284
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    .line 285
    if-nez v0, :cond_0

    .line 286
    const/4 p1, 0x0

    return p1

    .line 288
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

    .line 275
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    .line 276
    if-nez v0, :cond_0

    .line 277
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 279
    :cond_0
    invoke-static {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->access$400(Lcom/android/bluetooth/pbapclient/PbapClientService;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 293
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    .line 294
    if-nez v0, :cond_0

    .line 295
    const/4 p1, 0x0

    return p1

    .line 297
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/pbapclient/PbapClientService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method
