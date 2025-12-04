.class Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;
.super Landroid/bluetooth/IBluetoothMap$Stub;
.source "BluetoothMapService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothMapBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 2

    .line 1206
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothMap$Stub;-><init>()V

    .line 1207
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1208
    const-string v0, "BluetoothMapService"

    const-string v1, "BluetoothMapBinder()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 1211
    return-void
.end method

.method private getService()Lcom/android/bluetooth/map/BluetoothMapService;
    .locals 3

    .line 1193
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1194
    const-string v0, "BluetoothMapService"

    const-string v2, "MAP call not allowed for non-active user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-object v1

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->access$2300(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;

    return-object v0

    .line 1203
    :cond_1
    return-object v1
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .locals 1

    monitor-enter p0

    .line 1215
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->mService:Lcom/android/bluetooth/map/BluetoothMapService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    monitor-exit p0

    return-void

    .line 1214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 1258
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1259
    const-string v0, "BluetoothMapService"

    const-string v1, "disconnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1262
    if-nez v0, :cond_1

    .line 1263
    const/4 p1, 0x0

    return p1

    .line 1265
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 1266
    const/4 p1, 0x1

    return p1
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .line 1232
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    const-string v1, "BluetoothMapService"

    if-eqz v0, :cond_0

    .line 1233
    const-string v0, "getClient()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1236
    if-nez v0, :cond_1

    .line 1237
    const/4 v0, 0x0

    return-object v0

    .line 1239
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1240
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v2, :cond_2

    .line 1241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClient() - returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_2
    return-object v0
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

    .line 1271
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1272
    const-string v0, "BluetoothMapService"

    const-string v1, "getConnectedDevices()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1275
    if-nez v0, :cond_1

    .line 1276
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 1278
    :cond_1
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1279
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->access$2400(Lcom/android/bluetooth/map/BluetoothMapService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 1317
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1318
    if-nez v0, :cond_0

    .line 1319
    const/4 p1, -0x1

    return p1

    .line 1321
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 1296
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1297
    const-string v0, "BluetoothMapService"

    const-string v1, "getConnectionState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1300
    if-nez v0, :cond_1

    .line 1301
    const/4 p1, 0x0

    return p1

    .line 1303
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1284
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1285
    const-string v0, "BluetoothMapService"

    const-string v1, "getDevicesMatchingConnectionStates()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1288
    if-nez v0, :cond_1

    .line 1289
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 1291
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getState()I
    .locals 2

    .line 1220
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1221
    const-string v0, "BluetoothMapService"

    const-string v1, "getState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1224
    if-nez v0, :cond_1

    .line 1225
    const/4 v0, 0x0

    return v0

    .line 1227
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v0

    return v0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 1248
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1249
    const-string v0, "BluetoothMapService"

    const-string v1, "isConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1252
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1253
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1252
    :goto_0
    return p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 1308
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;->getService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    .line 1309
    if-nez v0, :cond_0

    .line 1310
    const/4 p1, 0x0

    return p1

    .line 1312
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method
