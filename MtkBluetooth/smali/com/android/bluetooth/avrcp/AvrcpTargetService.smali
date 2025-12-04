.class public Lcom/android/bluetooth/avrcp/AvrcpTargetService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "AvrcpTargetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpTargetBinder;,
        Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;,
        Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;
    }
.end annotation


# static fields
.field private static final AVRCP_ENABLE_PROPERTY:Ljava/lang/String; = "persist.bluetooth.enablenewavrcp"

.field private static final AVRCP_MAX_VOL:I = 0x7f

.field private static final DEBUG:Z

.field private static final MEDIA_KEY_EVENT_LOGGER_SIZE:I = 0x14

.field private static final MEDIA_KEY_EVENT_LOGGER_TITLE:Ljava/lang/String; = "Media Key Events"

.field private static final TAG:Ljava/lang/String; = "AvrcpTargetService"

.field private static sDeviceMaxVolume:I

.field private static sInstance:Lcom/android/bluetooth/avrcp/AvrcpTargetService;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

.field private mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

.field private final mMediaKeyEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

.field private mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

.field private mMediaPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

.field private mNativeInterface:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

.field private mReceiver:Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;

.field private mVolumeManager:Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    nop

    .line 50
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->DEBUG:Z

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sDeviceMaxVolume:I

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sInstance:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 57
    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    const/16 v1, 0x14

    const-string v2, "Media Key Events"

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaKeyEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    .line 66
    new-instance v0, Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mNativeInterface:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/MediaData;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/avrcp/AvrcpTargetService;Lcom/android/bluetooth/avrcp/MediaData;)Lcom/android/bluetooth/avrcp/MediaData;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mVolumeManager:Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;

    return-object p0
.end method

.method public static get()Lcom/android/bluetooth/avrcp/AvrcpTargetService;
    .locals 1

    .line 154
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sInstance:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    return-object v0
.end method

.method private getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 265
    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 0

    .line 261
    return-void
.end method

.method private setA2dpActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 272
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 273
    if-nez v0, :cond_0

    .line 274
    const-string p1, "AvrcpTargetService"

    const-string v0, "setA2dpActiveDevice: A2dp service not found"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 277
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 278
    return-void
.end method


# virtual methods
.method deviceConnected(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    .line 281
    sget-boolean v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 282
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

    const-string v1, "AvrcpTargetService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mVolumeManager:Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->deviceConnected(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 285
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->AVRCP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 286
    return-void
.end method

.method deviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 289
    sget-boolean v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceDisconnected: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpTargetService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mVolumeManager:Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->deviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 293
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 464
    const-string v0, "\nProfile: AvrcpTargetService:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sInstance:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    if-nez v0, :cond_0

    .line 466
    const-string v0, "AvrcpTargetService not running"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    return-void

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    if-eqz v1, :cond_1

    .line 472
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->dump(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 474
    :cond_1
    const-string v1, "\nMedia Player List is empty\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaKeyEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->dump(Ljava/lang/StringBuilder;)V

    .line 478
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mVolumeManager:Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->dump(Ljava/lang/StringBuilder;)V

    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?m)^"

    const-string v2, "  "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    return-void
.end method

.method getAppSettingChange(Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetAppSettingChangeCallback;)V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->getAppSettingChange(Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetAppSettingChangeCallback;)V

    .line 456
    return-void
.end method

.method getCurrentMediaId()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getCurrentMediaId()Ljava/lang/String;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    return-object v0

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getCurrentSongInfo()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Metadata;->mediaId:Ljava/lang/String;

    return-object v0

    .line 368
    :cond_1
    const-string v0, "error"

    return-object v0
.end method

.method getCurrentPlayerId()I
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getCurrentPlayerId()I

    move-result v0

    return v0
.end method

.method getCurrentSongInfo()Lcom/android/bluetooth/avrcp/Metadata;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getCurrentSongInfo()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    return-object v0
.end method

.method getFolderItems(ILjava/lang/String;Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getFolderItems(ILjava/lang/String;Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;)V

    .line 390
    return-void
.end method

.method getListPlayerAttribute(Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeCallback;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->getListPlayerAttribute(Lcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeCallback;)V

    .line 421
    return-void
.end method

.method getListPlayerAttributeValues(BLcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeValuesCallback;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->getListPlayerAttributeValues(BLcom/android/bluetooth/avrcp/MediaPlayerSettings$GetListPlayerAttributeValuesCallback;)V

    .line 427
    return-void
.end method

.method getMediaPlayerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/PlayerInfo;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getMediaPlayerList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 159
    const-string v0, "AvrcpTargetService"

    return-object v0
.end method

.method getNowPlayingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/Metadata;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getNowPlayingList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPlayState()Lcom/android/bluetooth/avrcp/PlayStatus;
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getCurrentPlayStatus()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getCurrentSongInfo()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v1

    iget-object v1, v1, Lcom/android/bluetooth/avrcp/Metadata;->duration:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 356
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/avrcp/PlayStatus;->fromPlaybackState(Landroid/media/session/PlaybackState;J)Lcom/android/bluetooth/avrcp/PlayStatus;

    move-result-object v0

    return-object v0
.end method

.method getPlayerAttributeText(B[BLcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeTextCallback;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->getPlayerAttributeText(B[BLcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeTextCallback;)V

    .line 445
    return-void
.end method

.method getPlayerAttributeTextValue(BB[BLcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueTextCallback;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->getPlayerAttributeTextValue(BB[BLcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueTextCallback;)V

    .line 451
    return-void
.end method

.method getPlayerAttributeValue(B[ILcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueCallback;)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->getPlayerAttributeValue(B[ILcom/android/bluetooth/avrcp/MediaPlayerSettings$GetPlayerAttributeValueCallback;)V

    .line 433
    return-void
.end method

.method getPlayerRoot(ILcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getPlayerRoot(ILcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;)V

    .line 386
    return-void
.end method

.method public getRememberedVolumeForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 321
    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mVolumeManager:Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->getNewDeviceVolume()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->getVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    return p1
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 164
    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpTargetBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpTargetBinder;-><init>(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)V

    return-object v0
.end method

.method playItem(IZLjava/lang/String;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->playItem(IZLjava/lang/String;)V

    .line 396
    return-void
.end method

.method public removeStoredVolumeForDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 311
    if-nez p1, :cond_0

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mVolumeManager:Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->removeStoredVolumeForDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 314
    return-void
.end method

.method sendMediaKeyEvent(IZ)V
    .locals 6

    .line 401
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v1

    .line 403
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaKeyEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    sget-boolean v3, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->DEBUG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMediaKeyEvent: device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " event="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pushed="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    const-string v1, "AvrcpTargetService"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->logd(ZLjava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->sendMediaKeyEvent(IZ)V

    .line 407
    return-void
.end method

.method public sendVolumeChanged(I)V
    .locals 2

    .line 342
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 343
    if-nez v0, :cond_0

    .line 344
    const-string p1, "AvrcpTargetService"

    const-string v0, "sendVolumeChanged: no active device"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mVolumeManager:Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;

    invoke-virtual {v1, v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->sendVolumeChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 349
    return-void
.end method

.method setActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveDevice: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpTargetService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-nez p1, :cond_0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveDevice: could not find device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->setA2dpActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 415
    return-void
.end method

.method setPlayerAppSetting(B[B[BLcom/android/bluetooth/avrcp/MediaPlayerSettings$SetPlayerAppSettingCallback;)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->setPlayerAppSetting(B[B[BLcom/android/bluetooth/avrcp/MediaPlayerSettings$SetPlayerAppSettingCallback;)V

    .line 439
    return-void
.end method

.method protected setUserUnlocked(I)V
    .locals 2

    .line 169
    const-string p1, "AvrcpTargetService"

    const-string v0, "User unlocked, initializing the service"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v0, "persist.bluetooth.enablenewavrcp"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string v0, "Skipping initialization of the new AVRCP Target Player List"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 p1, 0x0

    sput-object p1, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sInstance:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    .line 174
    return-void

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    if-eqz p1, :cond_1

    .line 178
    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;-><init>(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)V

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->init(Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;)V

    .line 180
    :cond_1
    return-void
.end method

.method setVolume(I)V
    .locals 2

    .line 328
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 329
    if-nez v0, :cond_0

    .line 330
    const-string p1, "AvrcpTargetService"

    const-string v0, "setVolume: no active device"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mVolumeManager:Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;

    invoke-virtual {v1, v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->setVolume(Landroid/bluetooth/BluetoothDevice;I)V

    .line 335
    return-void
.end method

.method protected start()Z
    .locals 5

    .line 184
    sget-object v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sInstance:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    const-string v1, "AvrcpTargetService"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "The service has already been initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v2

    .line 190
    :cond_0
    const-string v0, "Starting the AVRCP Target Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Lcom/android/bluetooth/avrcp/MediaData;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3}, Lcom/android/bluetooth/avrcp/MediaData;-><init>(Lcom/android/bluetooth/avrcp/Metadata;Landroid/media/session/PlaybackState;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    .line 193
    const-string v0, "persist.bluetooth.enablenewavrcp"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    const-string v0, "Skipping initialization of the new AVRCP Target Service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sput-object v3, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sInstance:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    .line 196
    return v2

    .line 199
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mAudioManager:Landroid/media/AudioManager;

    .line 200
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    sput v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sDeviceMaxVolume:I

    .line 202
    new-instance v0, Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    .line 203
    new-instance v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    .line 205
    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->getInterface()Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mNativeInterface:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    .line 206
    invoke-virtual {v0, p0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->init(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)V

    .line 208
    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mNativeInterface:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    invoke-direct {v0, p0, v1, v4}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mVolumeManager:Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;

    .line 210
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    new-instance v1, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;-><init>(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->init(Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;)V

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    new-instance v1, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;-><init>(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->init(Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;)V

    .line 216
    :cond_2
    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;-><init>(Lcom/android/bluetooth/avrcp/AvrcpTargetService;Lcom/android/bluetooth/avrcp/AvrcpTargetService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mReceiver:Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mReceiver:Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    sput-object p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sInstance:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    .line 226
    return v2
.end method

.method protected stop()Z
    .locals 4

    .line 231
    const-string v0, "AvrcpTargetService"

    const-string v1, "Stopping the AVRCP Target Service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-object v1, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sInstance:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 234
    const-string v1, "stop() called before start()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v2

    .line 238
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sInstance:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    .line 241
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mReceiver:Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_0

    .line 242
    :catch_0
    move-exception v3

    .line 243
    const-string v3, "Avrcp Broadcast Receiver not registered."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->cleanup()V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->cleanup()V

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mNativeInterface:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->cleanup()V

    .line 252
    :cond_3
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerList:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    .line 253
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mMediaPlayerSettings:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    .line 254
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mNativeInterface:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    .line 255
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mAudioManager:Landroid/media/AudioManager;

    .line 256
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mReceiver:Lcom/android/bluetooth/avrcp/AvrcpTargetService$AvrcpBroadcastReceiver;

    .line 257
    return v2
.end method

.method public volumeDeviceSwitched(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 301
    sget-boolean v0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "volumeDeviceSwitched: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpTargetService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->mVolumeManager:Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->volumeDeviceSwitched(Landroid/bluetooth/BluetoothDevice;)V

    .line 305
    return-void
.end method
