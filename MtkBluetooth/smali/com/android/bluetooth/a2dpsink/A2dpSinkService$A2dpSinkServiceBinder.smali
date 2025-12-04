.class Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;
.super Landroid/bluetooth/IBluetoothA2dpSink$Stub;
.source "A2dpSinkService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "A2dpSinkServiceBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    .line 160
    return-void
.end method

.method private getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
    .locals 3

    .line 147
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 148
    const-string v0, "A2dpSinkService"

    const-string v2, "A2dp call not allowed for non-active user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-object v1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    if-eqz v0, :cond_1

    .line 153
    return-object v0

    .line 155
    :cond_1
    return-object v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    .line 165
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 169
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    .line 170
    if-nez v0, :cond_0

    .line 171
    const/4 p1, 0x0

    return p1

    .line 173
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    .line 180
    const/4 p1, 0x0

    return p1

    .line 182
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 1

    .line 241
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    .line 242
    if-nez v0, :cond_0

    .line 243
    const/4 p1, 0x0

    return-object p1

    .line 245
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;

    move-result-object p1

    return-object p1
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

    .line 187
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 191
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    .line 224
    if-nez v0, :cond_0

    .line 225
    const/4 p1, -0x1

    return p1

    .line 227
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 205
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    .line 206
    if-nez v0, :cond_0

    .line 207
    const/4 p1, 0x0

    return p1

    .line 209
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

    .line 196
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    .line 197
    if-nez v0, :cond_0

    .line 198
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 200
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 232
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    .line 233
    if-nez v0, :cond_0

    .line 234
    const/4 p1, 0x0

    return p1

    .line 236
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 214
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    .line 216
    const/4 p1, 0x0

    return p1

    .line 218
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method
