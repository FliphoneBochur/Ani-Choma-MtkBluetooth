.class public Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;
.super Ljava/lang/Object;
.source "AvrcpNativeInterface.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "AvrcpNativeInterface"

.field private static sInstance:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;


# instance fields
.field private mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    nop

    .line 33
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->DEBUG:Z

    .line 39
    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->classInitNative()V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectDeviceNative(Ljava/lang/String;)Z
.end method

.method private static d(Ljava/lang/String;)V
    .locals 1

    .line 356
    sget-boolean v0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "AvrcpNativeInterface"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    return-void
.end method

.method private native disconnectDeviceNative(Ljava/lang/String;)Z
.end method

.method private native getAppSettingChangeRspNative(B[B)V
.end method

.method private native getFolderItemsResponseNative(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/ListItem;",
            ">;)V"
        }
    .end annotation
.end method

.method static getInterface()Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->sInstance:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    invoke-direct {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;-><init>()V

    sput-object v0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->sInstance:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    .line 47
    :cond_0
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->sInstance:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    return-object v0
.end method

.method private native getListPlayerAttributeRspNative(B[B)V
.end method

.method private native getListPlayerAttributeValuesRspNative(B[B)V
.end method

.method private native getPlayerAttributeTextRspNative(I[BI[Ljava/lang/String;)V
.end method

.method private native getPlayerAttributeTextValueRspNative(I[BI[Ljava/lang/String;)V
.end method

.method private native getPlayerAttributeValueRspNative(B[B)V
.end method

.method private native initNative()V
.end method

.method private native sendFolderUpdateNative(ZZZ)V
.end method

.method private native sendMediaUpdateNative(ZZZ)V
.end method

.method private native sendPlayerAppSettingsUpdateNative(Z)V
.end method

.method private native sendVolumeChangedNative(Ljava/lang/String;I)V
.end method

.method private native setBrowsedPlayerResponseNative(IZLjava/lang/String;I)V
.end method

.method private native setPlayerAppSettingRspNative(I)V
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .line 57
    const-string v0, "Cleanup AvrcpNativeInterface"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    .line 59
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->cleanupNative()V

    .line 60
    return-void
.end method

.method connectDevice(Ljava/lang/String;)Z
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectDevice: bdaddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->connectDeviceNative(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method deviceConnected(Ljava/lang/String;Z)V
    .locals 2

    .line 201
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceConnected: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " absoluteVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    if-nez v0, :cond_0

    .line 204
    const-string p1, "AvrcpNativeInterface"

    const-string p2, "deviceConnected: AvrcpTargetService is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 208
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->deviceConnected(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 209
    return-void
.end method

.method deviceDisconnected(Ljava/lang/String;)V
    .locals 2

    .line 213
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceDisconnected: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    if-nez v0, :cond_0

    .line 216
    const-string p1, "AvrcpNativeInterface"

    const-string v0, "deviceDisconnected: AvrcpTargetService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 220
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->deviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 221
    return-void
.end method

.method disconnectDevice(Ljava/lang/String;)Z
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectDevice: bdaddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->disconnectDeviceNative(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method getAppSettingChangeRequest()V
    .locals 2

    .line 319
    const-string v0, "getAppSettingChangeRequest"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    new-instance v1, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$_oMP5wrOYKUJTODbrDDcX7yRhjo;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$_oMP5wrOYKUJTODbrDDcX7yRhjo;-><init>(Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getAppSettingChange(Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetAppSettingChangeCallback;)V

    .line 322
    return-void
.end method

.method getAppSettingChangeResponse(B[B)V
    .locals 1

    .line 325
    const-string v0, "getAppSettingChangeResponse"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getAppSettingChangeRspNative(B[B)V

    .line 327
    return-void
.end method

.method getCurrentMediaId()Ljava/lang/String;
    .locals 2

    .line 93
    const-string v0, "getCurrentMediaId"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "AvrcpNativeInterface"

    const-string v1, "getMediaPlayerList(): AvrcpTargetService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v0, ""

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getCurrentMediaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentPlayerId()I
    .locals 2

    .line 113
    const-string v0, "getCurrentPlayerId"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    if-nez v0, :cond_0

    .line 115
    const-string v0, "AvrcpNativeInterface"

    const-string v1, "getMediaPlayerList(): AvrcpTargetService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, -0x1

    return v0

    .line 119
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getCurrentPlayerId()I

    move-result v0

    return v0
.end method

.method getCurrentSongInfo()Lcom/android/bluetooth/avrcp/Metadata;
    .locals 2

    .line 63
    const-string v0, "getCurrentSongInfo"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    if-nez v0, :cond_0

    .line 65
    const-string v0, "AvrcpNativeInterface"

    const-string v1, "getCurrentSongInfo(): AvrcpTargetService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getCurrentSongInfo()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    return-object v0
.end method

.method getFolderItemsRequest(ILjava/lang/String;)V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFolderItemsRequest: playerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    new-instance v1, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$yqsIIES5LBrM35GDVi_3FCOWPYA;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$yqsIIES5LBrM35GDVi_3FCOWPYA;-><init>(Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getFolderItems(ILjava/lang/String;Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;)V

    .line 151
    return-void
.end method

.method getFolderItemsResponse(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFolderItemsResponse: parentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " items.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getFolderItemsResponseNative(Ljava/lang/String;Ljava/util/List;)V

    .line 156
    return-void
.end method

.method getListPlayerAttributeRequest()V
    .locals 2

    .line 241
    const-string v0, "getListPlayerAttributeRequest"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    new-instance v1, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$6PV1_8SmDuD-MSFKWqVkWHG7wdo;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$6PV1_8SmDuD-MSFKWqVkWHG7wdo;-><init>(Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getListPlayerAttribute(Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeCallback;)V

    .line 244
    return-void
.end method

.method getListPlayerAttributeResponse(B[B)V
    .locals 1

    .line 247
    const-string v0, "getListPlayerAttributeResponse attr"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getListPlayerAttributeRspNative(B[B)V

    .line 249
    return-void
.end method

.method getListPlayerAttributeValuesRequest(B)V
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getListPlayerAttributeValuesRequest attr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    new-instance v1, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$epKMcdnVXDc4cJIO_eRSuzxix4U;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$epKMcdnVXDc4cJIO_eRSuzxix4U;-><init>(Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getListPlayerAttributeValues(BLcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeValuesCallback;)V

    .line 256
    return-void
.end method

.method getListPlayerAttributeValuesResponse(B[B)V
    .locals 1

    .line 259
    const-string v0, "getListPlayerAttributeValuesResponse"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getListPlayerAttributeValuesRspNative(B[B)V

    .line 261
    return-void
.end method

.method getMediaPlayerList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/PlayerInfo;",
            ">;"
        }
    .end annotation

    .line 123
    const-string v0, "getMediaPlayerList"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    if-nez v0, :cond_0

    .line 125
    const-string v0, "AvrcpNativeInterface"

    const-string v1, "getMediaPlayerList(): AvrcpTargetService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getMediaPlayerList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getNowPlayingList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/Metadata;",
            ">;"
        }
    .end annotation

    .line 103
    const-string v0, "getNowPlayingList"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "AvrcpNativeInterface"

    const-string v1, "getMediaPlayerList(): AvrcpTargetService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getNowPlayingList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPlayStatus()Lcom/android/bluetooth/avrcp/PlayStatus;
    .locals 2

    .line 73
    const-string v0, "getPlayStatus"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    if-nez v0, :cond_0

    .line 75
    const-string v0, "AvrcpNativeInterface"

    const-string v1, "getPlayStatus(): AvrcpTargetService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getPlayState()Lcom/android/bluetooth/avrcp/PlayStatus;

    move-result-object v0

    return-object v0
.end method

.method getPlayerAttributeTextRequest(B[B)V
    .locals 2

    .line 289
    const-string v0, "getPlayerAttributeTextRequest"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    new-instance v1, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$WwZH6-xs77C2LBs3lJfScJOOtjY;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$WwZH6-xs77C2LBs3lJfScJOOtjY;-><init>(Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getPlayerAttributeText(B[BLcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeTextCallback;)V

    .line 292
    return-void
.end method

.method getPlayerAttributeTextResponse(I[BI[Ljava/lang/String;)V
    .locals 1

    .line 295
    const-string v0, "getPlayerAttributeTextResponse"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getPlayerAttributeTextRspNative(I[BI[Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method getPlayerAttributeTextValueResponse(I[BI[Ljava/lang/String;)V
    .locals 1

    .line 307
    const-string v0, "getPlayerAttributeTextValueResponse"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getPlayerAttributeTextValueRspNative(I[BI[Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method getPlayerAttributeValueRequest(B[I)V
    .locals 2

    .line 265
    const-string v0, "getPlayerAttributeValueRequest"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    new-instance v1, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$uSd4CvFb0qTf_3SiBj9ImHizeds;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$uSd4CvFb0qTf_3SiBj9ImHizeds;-><init>(Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getPlayerAttributeValue(B[ILcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueCallback;)V

    .line 268
    return-void
.end method

.method getPlayerAttributeValueResponse(B[B)V
    .locals 1

    .line 271
    const-string v0, "getPlayerAttributeValueResponse"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getPlayerAttributeValueRspNative(B[B)V

    .line 273
    return-void
.end method

.method getPlayerAttributeValueTextRequest(BB[B)V
    .locals 2

    .line 301
    const-string v0, "getPlayerAttributeValueTextRequest"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    new-instance v1, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$LN-t2KgDPth1xFIVjOrmKVw9MoU;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$LN-t2KgDPth1xFIVjOrmKVw9MoU;-><init>(Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getPlayerAttributeTextValue(BB[BLcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueTextCallback;)V

    .line 304
    return-void
.end method

.method init(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)V
    .locals 1

    .line 51
    const-string v0, "Init AvrcpNativeInterface"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    .line 53
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->initNative()V

    .line 54
    return-void
.end method

.method public synthetic lambda$getAppSettingChangeRequest$8$AvrcpNativeInterface(B[B)V
    .locals 0

    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getAppSettingChangeResponse(B[B)V

    return-void
.end method

.method public synthetic lambda$getFolderItemsRequest$1$AvrcpNativeInterface(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getFolderItemsResponse(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$getListPlayerAttributeRequest$2$AvrcpNativeInterface(B[B)V
    .locals 0

    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getListPlayerAttributeResponse(B[B)V

    return-void
.end method

.method public synthetic lambda$getListPlayerAttributeValuesRequest$3$AvrcpNativeInterface(B[B)V
    .locals 0

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getListPlayerAttributeValuesResponse(B[B)V

    return-void
.end method

.method public synthetic lambda$getPlayerAttributeTextRequest$6$AvrcpNativeInterface(I[BI[Ljava/lang/String;)V
    .locals 0

    .line 291
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getPlayerAttributeTextResponse(I[BI[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getPlayerAttributeValueRequest$4$AvrcpNativeInterface(B[B)V
    .locals 0

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getPlayerAttributeValueResponse(B[B)V

    return-void
.end method

.method public synthetic lambda$getPlayerAttributeValueTextRequest$7$AvrcpNativeInterface(I[BI[Ljava/lang/String;)V
    .locals 0

    .line 303
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getPlayerAttributeTextValueResponse(I[BI[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setBrowsedPlayer$0$AvrcpNativeInterface(IZLjava/lang/String;I)V
    .locals 0

    .line 137
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->setBrowsedPlayerResponse(IZLjava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$setPlayerAppSettingRequest$5$AvrcpNativeInterface(I)V
    .locals 0

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->setPlayerAppSettingResponse(I)V

    return-void
.end method

.method playItem(IZLjava/lang/String;)V
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playItem: playerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " nowPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mediaId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    if-nez v0, :cond_0

    .line 175
    const-string p1, "AvrcpNativeInterface"

    const-string p2, "playItem: AvrcpTargetService is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 179
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->playItem(IZLjava/lang/String;)V

    .line 180
    return-void
.end method

.method sendFolderUpdate(ZZZ)V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendFolderUpdate: availablePlayers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " addressedPlayers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " uids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->sendFolderUpdateNative(ZZZ)V

    .line 170
    return-void
.end method

.method sendMediaKeyEvent(IZ)V
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMediaKeyEvent: keyEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pushed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    if-nez v0, :cond_0

    .line 85
    const-string p1, "AvrcpNativeInterface"

    const-string p2, "sendMediaKeyEvent(): AvrcpTargetService is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 89
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sendMediaKeyEvent(IZ)V

    .line 90
    return-void
.end method

.method sendMediaUpdate(ZZZ)V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMediaUpdate: metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " playStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " queue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->sendMediaUpdateNative(ZZZ)V

    .line 163
    return-void
.end method

.method sendPlayerAppSettingsUpdate(Z)V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPlayerAppSettingsUpdate playerSettings= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->sendPlayerAppSettingsUpdateNative(Z)V

    .line 315
    return-void
.end method

.method sendVolumeChanged(Ljava/lang/String;I)V
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendVolumeChanged: volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->sendVolumeChangedNative(Ljava/lang/String;I)V

    .line 226
    return-void
.end method

.method setActiveDevice(Ljava/lang/String;)V
    .locals 2

    .line 194
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveDevice: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 197
    return-void
.end method

.method setBrowsedPlayer(I)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBrowsedPlayer: playerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    new-instance v1, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$vNJITuoaCzOnnbl8EHU94oBzRuA;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$vNJITuoaCzOnnbl8EHU94oBzRuA;-><init>(Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getPlayerRoot(ILcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;)V

    .line 138
    return-void
.end method

.method setBrowsedPlayerResponse(IZLjava/lang/String;I)V
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBrowsedPlayerResponse: playerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " rootId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " numItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->setBrowsedPlayerResponseNative(IZLjava/lang/String;I)V

    .line 146
    return-void
.end method

.method setPlayerAppSettingRequest(B[B[B)V
    .locals 2

    .line 277
    const-string v0, "setPlayerAppSettingRequest"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    new-instance v1, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$oCkZQIqY7owds9Lus7OZ9XLuYPE;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/-$$Lambda$AvrcpNativeInterface$oCkZQIqY7owds9Lus7OZ9XLuYPE;-><init>(Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->setPlayerAppSetting(B[B[BLcom/android/bluetooth/avrcp/MediaPlayerSettings$SetPlayerAppSettingCallback;)V

    .line 280
    return-void
.end method

.method setPlayerAppSettingResponse(I)V
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayerAppSettingResponse attr_status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->setPlayerAppSettingRspNative(I)V

    .line 285
    return-void
.end method

.method setVolume(I)V
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume: volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->d(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->mAvrcpService:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    if-nez v0, :cond_0

    .line 231
    const-string p1, "AvrcpNativeInterface"

    const-string v0, "setVolume: AvrcpTargetService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 235
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->setVolume(I)V

    .line 236
    return-void
.end method
