.class public Lcom/android/bluetooth/avrcp/MediaPlayerList;
.super Ljava/lang/Object;
.source "MediaPlayerList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/MediaPlayerList$FolderUpdateCallback;,
        Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;,
        Lcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;,
        Lcom/android/bluetooth/avrcp/MediaPlayerList$MediaUpdateCallback;
    }
.end annotation


# static fields
.field private static final ACTIVE_PLAYER_LOGGER_SIZE:I = 0x5

.field private static final ACTIVE_PLAYER_LOGGER_TITLE:Ljava/lang/String; = "Active Player Events"

.field private static final AUDIO_PLAYBACK_STATE_LOGGER_SIZE:I = 0xf

.field private static final AUDIO_PLAYBACK_STATE_LOGGER_TITLE:Ljava/lang/String; = "Audio Playback State Events"

.field private static final BLUETOOTH_PLAYER_ID:I = 0x0

.field private static final BLUETOOTH_PLAYER_NAME:Ljava/lang/String; = "Bluetooth Player"

.field private static final BROWSE_ID_PATTERN:Ljava/lang/String; = "\\d\\d.*"

.field private static final DEBUG:Z

.field private static final NOW_PLAYING_ID_PATTERN:Ljava/lang/String; = "NowPlayingId([0-9]*)"

.field private static final NO_ACTIVE_PLAYER:I = 0x0

.field private static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "AvrcpMediaPlayerList"

.field private static final mAbnormalApkList:[Ljava/lang/String;

.field static sTesting:Z


# instance fields
.field private mActivePlayerId:I

.field private final mActivePlayerLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

.field private final mActiveSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

.field private mAudioPlaybackIsActive:Z

.field private final mAudioPlaybackStateLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

.field private mBrowsablePlayerConnector:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

.field private mBrowsablePlayers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrMediaData:Lcom/android/bluetooth/avrcp/MediaData;

.field private mLooper:Landroid/os/Looper;

.field private final mMediaKeyEventSessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

.field private final mMediaPlayerCallback:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;

.field private mMediaPlayerIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPlayers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final mPackageChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    nop

    .line 67
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->DEBUG:Z

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->sTesting:Z

    .line 87
    const-string v0, "com.android.server.telecom"

    const-string v1, "ch.iAgentur.i20Min"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAbnormalApkList:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 5

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mCurrMediaData:Lcom/android/bluetooth/avrcp/MediaData;

    .line 98
    new-instance v1, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    const/4 v2, 0x5

    const-string v3, "Active Player Events"

    invoke-direct {v1, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    .line 100
    new-instance v1, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    const/16 v2, 0xf

    const-string v3, "Audio Playback State Events"

    invoke-direct {v1, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackStateLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 106
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 108
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayers:Ljava/util/Map;

    .line 109
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerId:I

    .line 111
    iput-boolean v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackIsActive:Z

    .line 618
    new-instance v1, Lcom/android/bluetooth/avrcp/MediaPlayerList$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList$1;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerList;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActiveSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 651
    new-instance v1, Lcom/android/bluetooth/avrcp/MediaPlayerList$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList$2;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerList;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mPackageChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 721
    new-instance v1, Lcom/android/bluetooth/avrcp/MediaPlayerList$3;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList$3;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerList;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 753
    new-instance v1, Lcom/android/bluetooth/avrcp/MediaPlayerList$4;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList$4;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerList;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerCallback:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;

    .line 783
    new-instance v1, Lcom/android/bluetooth/avrcp/MediaPlayerList$5;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList$5;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerList;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaKeyEventSessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    .line 133
    const-string v1, "AvrcpMediaPlayerList"

    const-string v2, "Creating MediaPlayerList"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mLooper:Landroid/os/Looper;

    .line 136
    iput-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mContext:Landroid/content/Context;

    .line 139
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mPackageChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    const-string v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioManager:Landroid/media/AudioManager;

    .line 148
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 150
    nop

    .line 151
    const-string v1, "media_session"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/session/MediaSessionManager;

    iput-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 152
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActiveSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2, v1, v0, v2}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 154
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaKeyEventSessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    .line 154
    invoke-virtual {p1, p2, v0}, Landroid/media/session/MediaSessionManager;->addOnMediaKeyEventSessionChangedListener(Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackIsActive:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/avrcp/MediaPlayerList;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackIsActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Lcom/android/bluetooth/avrcp/AvrcpEventLogger;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackStateLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/avrcp/MediaPlayerList;Lcom/android/bluetooth/avrcp/MediaData;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->sendMediaUpdate(Lcom/android/bluetooth/avrcp/MediaData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Landroid/media/session/MediaSessionManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 1

    .line 873
    sget-boolean v0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 874
    const-string v0, "AvrcpMediaPlayerList"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_0
    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 2

    .line 865
    sget-boolean v0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->sTesting:Z

    const-string v1, "AvrcpMediaPlayerList"

    if-eqz v0, :cond_0

    .line 866
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 868
    :cond_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :goto_0
    return-void
.end method

.method static synthetic lambda$getFolderItems$3(Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 424
    if-eqz p2, :cond_0

    .line 425
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, p2}, Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;->run(Ljava/lang/String;Ljava/util/List;)V

    .line 426
    return-void

    .line 428
    :cond_0
    invoke-interface {p0, p1, p4}, Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;->run(Ljava/lang/String;Ljava/util/List;)V

    .line 429
    return-void
.end method

.method static synthetic lambda$getPlayerRoot$2(Lcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;IILjava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 273
    const-string p3, ""

    if-eqz p2, :cond_0

    .line 274
    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p3, p2}, Lcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;->run(IZLjava/lang/String;I)V

    .line 275
    return-void

    .line 277
    :cond_0
    const/4 p2, 0x1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;->run(IZLjava/lang/String;I)V

    .line 278
    return-void
.end method

.method static synthetic lambda$init$0(ILjava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got the contents for: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : num results="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-static {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private playFolderItem(Ljava/lang/String;)V
    .locals 2

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playFolderItem: mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getCurrentPlayerId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->haveMediaBrowser(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    const-string p1, "playFolderItem: Do not have the a browsable player"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->e(Ljava/lang/String;)V

    .line 388
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getCurrentPlayerId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    .line 391
    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->playItem(Ljava/lang/String;)Z

    .line 393
    :cond_1
    return-void
.end method

.method private playNowPlayingItem(Ljava/lang/String;)V
    .locals 3

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playNowPlayingItem: mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 370
    const-string v0, "NowPlayingId([0-9]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 371
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playNowPlayingItem: Couldn\'t match mediaId to pattern: mediaId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AvrcpMediaPlayerList"

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 379
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->playItemFromQueue(J)V

    .line 382
    :cond_1
    return-void
.end method

.method private sendFolderUpdate(ZZZ)V
    .locals 1

    .line 593
    const-string v0, "sendFolderUpdate"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mCallback:Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;

    if-nez v0, :cond_0

    .line 595
    return-void

    .line 598
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->run(ZZZ)V

    .line 599
    return-void
.end method

.method private sendMediaUpdate(Lcom/android/bluetooth/avrcp/MediaData;)V
    .locals 3

    .line 602
    const-string v0, "sendMediaUpdate"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mCallback:Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;

    if-nez v0, :cond_0

    .line 604
    return-void

    .line 608
    :cond_0
    iget-object v0, p1, Lcom/android/bluetooth/avrcp/MediaData;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "AvrcpMediaPlayerList"

    if-nez v0, :cond_1

    .line 609
    const-string v0, "sendMediaUpdate: Creating a one item queue for a player with no queue"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p1, Lcom/android/bluetooth/avrcp/MediaData;->queue:Ljava/util/List;

    iget-object v2, p1, Lcom/android/bluetooth/avrcp/MediaData;->metadata:Lcom/android/bluetooth/avrcp/Metadata;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMediaUpdate state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mCurrMediaData:Lcom/android/bluetooth/avrcp/MediaData;

    .line 615
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mCallback:Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->run(Lcom/android/bluetooth/avrcp/MediaData;)V

    .line 616
    return-void
.end method


# virtual methods
.method addMediaPlayer(Landroid/media/session/MediaController;)I
    .locals 0

    .line 484
    if-nez p1, :cond_0

    .line 485
    const-string p1, "Trying to add a null MediaController"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->e(Ljava/lang/String;)V

    .line 486
    const/4 p1, -0x1

    return p1

    .line 489
    :cond_0
    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaControllerFactory;->wrap(Landroid/media/session/MediaController;)Lcom/android/bluetooth/avrcp/MediaController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->addMediaPlayer(Lcom/android/bluetooth/avrcp/MediaController;)I

    move-result p1

    return p1
.end method

.method addMediaPlayer(Lcom/android/bluetooth/avrcp/MediaController;)I
    .locals 6

    .line 441
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->isAbnormalApk(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "AvrcpMediaPlayerList"

    if-eqz v1, :cond_0

    .line 444
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip adding "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "to the media player list"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 p1, -0x1

    return p1

    .line 448
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->havePlayerId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getFreeMediaPlayerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 456
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->haveMediaPlayer(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already have a controller for the player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", updating instead"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    .line 459
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->updateMediaController(Lcom/android/bluetooth/avrcp/MediaController;)V

    .line 462
    iget p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerId:I

    if-ne v1, p1, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getCurrentMediaData()Lcom/android/bluetooth/avrcp/MediaData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->sendMediaUpdate(Lcom/android/bluetooth/avrcp/MediaData;)V

    .line 466
    :cond_2
    return v1

    .line 469
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mLooper:Landroid/os/Looper;

    invoke-static {p1, v3}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapperFactory;->wrap(Lcom/android/bluetooth/avrcp/MediaController;Landroid/os/Looper;)Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v3

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding wrapped media player: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at key: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    .line 474
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 473
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    return v1
.end method

.method cleanup()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mPackageChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerId:I

    .line 217
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActiveSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaKeyEventSessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 222
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 226
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    .line 227
    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->cleanup()V

    .line 228
    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 231
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayerConnector:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->cleanup()V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    .line 235
    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->disconnect()V

    .line 236
    goto :goto_1

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 238
    return-void
.end method

.method dump(Ljava/lang/StringBuilder;)V
    .locals 8

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List of MediaControllers: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "  "

    const-string v4, "(?m)^"

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 842
    iget v5, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerId:I

    if-ne v2, v5, :cond_0

    .line 843
    const-string v5, "<Active> "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    .line 846
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Media Player "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v5}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    goto :goto_0

    .line 851
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List of Browsers: size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    .line 853
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    goto :goto_1

    .line 857
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->dump(Ljava/lang/StringBuilder;)V

    .line 858
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackStateLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->dump(Ljava/lang/StringBuilder;)V

    .line 860
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    return-void
.end method

.method getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    iget v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    return-object v0
.end method

.method getCurrentMediaId()Ljava/lang/String;
    .locals 7

    .line 301
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v0

    .line 302
    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 304
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 305
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getCurrentQueue()Ljava/util/List;

    move-result-object v0

    .line 309
    if-eqz v2, :cond_2

    .line 310
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActiveQueueItemId()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 311
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NowPlayingId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActiveQueueItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 312
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentMediaId: No active queue item Id sending empty mediaId: PlaybackState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 314
    return-object v1
.end method

.method getCurrentPlayStatus()Landroid/media/session/PlaybackState;
    .locals 5

    .line 329
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v0

    .line 330
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 332
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 333
    iget-boolean v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackIsActive:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 335
    :cond_1
    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 337
    if-nez v0, :cond_2

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v3

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 336
    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 335
    return-object v0

    .line 341
    :cond_3
    return-object v0
.end method

.method getCurrentPlayerId()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerId:I

    return v0
.end method

.method getCurrentSongInfo()Lcom/android/bluetooth/avrcp/Metadata;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v0

    .line 323
    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/bluetooth/avrcp/Util;->empty_data()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    return-object v0

    .line 325
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getCurrentMetadata()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    return-object v0
.end method

.method getFolderItems(ILjava/lang/String;Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;)V
    .locals 2

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFolderItems(): playerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->haveMediaBrowser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    .line 418
    nop

    .line 419
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getRootId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_0
    move-object v0, p2

    .line 423
    :goto_0
    new-instance v1, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$NLIUEnJuInHd0r5Ci2ukbma39_s;

    invoke-direct {v1, p3, p2}, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$NLIUEnJuInHd0r5Ci2ukbma39_s;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getFolderItems(Ljava/lang/String;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;)Z

    .line 430
    return-void

    .line 432
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;->run(Ljava/lang/String;Ljava/util/List;)V

    .line 434
    return-void
.end method

.method getFolderItemsMediaPlayerList(Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;)V
    .locals 7

    .line 396
    const-string v0, "getFolderItemsMediaPlayerList: Sending Media Player list for root directory"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    .line 401
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/avrcp/Util;->getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 402
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFolderItemsMediaPlayerList: Adding player "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 405
    new-instance v4, Lcom/android/bluetooth/avrcp/Folder;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const-string v2, "%02d"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v6, v3}, Lcom/android/bluetooth/avrcp/Folder;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 406
    new-instance v2, Lcom/android/bluetooth/avrcp/ListItem;

    invoke-direct {v2, v4}, Lcom/android/bluetooth/avrcp/ListItem;-><init>(Lcom/android/bluetooth/avrcp/Folder;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    goto :goto_0

    .line 408
    :cond_0
    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList$GetFolderItemsCallback;->run(Ljava/lang/String;Ljava/util/List;)V

    .line 409
    return-void
.end method

.method getFreeMediaPlayerId()I
    .locals 3

    .line 253
    const/4 v0, 0x1

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return v0
.end method

.method getMediaPlayerList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/PlayerInfo;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Lcom/android/bluetooth/avrcp/PlayerInfo;

    invoke-direct {v0}, Lcom/android/bluetooth/avrcp/PlayerInfo;-><init>()V

    .line 286
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v1

    .line 287
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getCurrentPlayerId()I

    move-result v2

    iput v2, v0, Lcom/android/bluetooth/avrcp/PlayerInfo;->id:I

    .line 288
    if-eqz v1, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/bluetooth/avrcp/Util;->getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/PlayerInfo;->name:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getCurrentPlayerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/bluetooth/avrcp/PlayerInfo;->browsable:Z

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    return-object v1

    .line 291
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getNowPlayingList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/Metadata;",
            ">;"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getCurrentMediaId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getCurrentSongInfo()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v2

    .line 351
    iput-object v1, v2, Lcom/android/bluetooth/avrcp/Metadata;->mediaId:Ljava/lang/String;

    .line 352
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    return-object v0

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getCurrentQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPlayerRoot(ILcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;)V
    .locals 3

    .line 267
    const-string v0, "getPlayerRoot"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->haveMediaBrowser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->setActivePlayer(I)V

    .line 270
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    .line 271
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getRootId()Ljava/lang/String;

    move-result-object v1

    .line 272
    new-instance v2, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$IzpG9loU5HiCBfcrlR93s62unzw;

    invoke-direct {v2, p2, p1}, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$IzpG9loU5HiCBfcrlR93s62unzw;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getFolderItems(Ljava/lang/String;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;)Z

    .line 279
    goto :goto_0

    .line 280
    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    invoke-interface {p2, p1, v0, v1, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList$GetPlayerRootCallback;->run(IZLjava/lang/String;I)V

    .line 281
    :goto_0
    return-void
.end method

.method haveMediaBrowser(I)Z
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method haveMediaPlayer(I)Z
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method haveMediaPlayer(Ljava/lang/String;)Z
    .locals 1

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->havePlayerId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 500
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method havePlayerId(Ljava/lang/String;)Z
    .locals 1

    .line 493
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method init(Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;)V
    .locals 3

    .line 159
    const-string v0, "AvrcpMediaPlayerList"

    const-string v1, "Initializing MediaPlayerList"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mCallback:Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;

    .line 163
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 168
    const/high16 v1, 0x20000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mLooper:Landroid/os/Looper;

    new-instance v2, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$igObBs4BI0Rh_MdySAaee3CwLhA;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$igObBs4BI0Rh_MdySAaee3CwLhA;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerList;)V

    invoke-static {v0, v1, p1, v2}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->connectToPlayers(Landroid/content/Context;Landroid/os/Looper;Ljava/util/List;Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;)Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayerConnector:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    .line 210
    return-void
.end method

.method injectAudioPlaybacActive(Z)V
    .locals 0

    .line 717
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackIsActive:Z

    .line 718
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->updateMediaForAudioPlayback()V

    .line 719
    return-void
.end method

.method isAbnormalApk(Ljava/lang/String;)Z
    .locals 5

    .line 241
    sget-object v0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAbnormalApkList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 242
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    const/4 p1, 0x1

    return p1

    .line 241
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    :cond_1
    return v2
.end method

.method public synthetic lambda$init$1$MediaPlayerList(Ljava/util/List;)V
    .locals 4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: Browsable Player list size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpMediaPlayerList"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 179
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    .line 181
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->havePlayerId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getFreeMediaPlayerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding Browser Wrapper for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    .line 186
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mBrowsablePlayers:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getRootId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$mGTItNIqyZg9XtVDDr_evulck_s;->INSTANCE:Lcom/android/bluetooth/avrcp/-$$Lambda$MediaPlayerList$mGTItNIqyZg9XtVDDr_evulck_s;

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getFolderItems(Ljava/lang/String;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;)Z

    .line 195
    goto :goto_0

    .line 198
    :cond_2
    const-string p1, "Initializing list of current media players"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->addMediaPlayer(Landroid/media/session/MediaController;)I

    .line 204
    goto :goto_1

    .line 208
    :cond_3
    iget p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerId:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->setActivePlayer(I)V

    .line 209
    :cond_4
    return-void
.end method

.method playItem(IZLjava/lang/String;)V
    .locals 0

    .line 360
    if-eqz p2, :cond_0

    .line 361
    invoke-direct {p0, p3}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->playNowPlayingItem(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->playFolderItem(Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void
.end method

.method removeMediaPlayer(I)V
    .locals 4

    .line 512
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->haveMediaPlayer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to remove nonexistent media player: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->e(Ljava/lang/String;)V

    .line 514
    return-void

    .line 519
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerId:I

    if-ne p1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->unregisterCallback()V

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerId:I

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    invoke-static {}, Lcom/android/bluetooth/avrcp/Util;->empty_data()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v1, Lcom/android/bluetooth/avrcp/MediaData;

    .line 525
    invoke-static {}, Lcom/android/bluetooth/avrcp/Util;->empty_data()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/bluetooth/avrcp/MediaData;-><init>(Lcom/android/bluetooth/avrcp/Metadata;Landroid/media/session/PlaybackState;Ljava/util/List;)V

    .line 530
    invoke-direct {p0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->sendMediaUpdate(Lcom/android/bluetooth/avrcp/MediaData;)V

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing media player "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->haveMediaBrowser(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 537
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t have a browse service. Recycle player ID."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 538
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerIds:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->cleanup()V

    .line 541
    return-void
.end method

.method sendMediaKeyEvent(IZ)V
    .locals 2

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMediaKeyEvent: key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pushed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->d(Ljava/lang/String;)V

    .line 586
    nop

    .line 587
    xor-int/lit8 p2, p2, 0x1

    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/AvrcpPassthrough;->toKeyCode(I)I

    move-result p1

    invoke-direct {v0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 588
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 589
    return-void
.end method

.method setActivePlayer(I)V
    .locals 4

    .line 545
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayers:Ljava/util/Map;

    monitor-enter v0

    .line 547
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->haveMediaPlayer(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player doesn\'t exist in list(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->e(Ljava/lang/String;)V

    .line 549
    monitor-exit v0

    return-void

    .line 552
    :cond_0
    iget v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerId:I

    if-ne p1, v1, :cond_1

    .line 553
    const-string p1, "AvrcpMediaPlayerList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already the active player"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    monitor-exit v0

    return-void

    .line 557
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerId:I

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 558
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->unregisterCallback()V

    .line 561
    :cond_2
    iput p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerId:I

    .line 562
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mMediaPlayerCallback:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->registerCallback(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;)V

    .line 563
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mActivePlayerLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    const-string v1, "AvrcpMediaPlayerList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActivePlayer(): setting player to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 563
    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->isMetadataSynced()Z

    move-result p1

    if-nez p1, :cond_3

    .line 568
    const-string p1, "AvrcpMediaPlayerList"

    const-string v1, "setActivePlayer(): Metadata not synced on new player"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    monitor-exit v0

    return-void

    .line 572
    :cond_3
    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v1, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->sendFolderUpdate(ZZZ)V

    .line 574
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getCurrentMediaData()Lcom/android/bluetooth/avrcp/MediaData;

    move-result-object p1

    .line 575
    iget-boolean v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackIsActive:Z

    if-eqz v1, :cond_4

    .line 576
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mCurrMediaData:Lcom/android/bluetooth/avrcp/MediaData;

    iget-object v1, v1, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    iput-object v1, p1, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    .line 577
    const-string v1, "AvrcpMediaPlayerList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActivePlayer mAudioPlaybackIsActive=true, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->sendMediaUpdate(Lcom/android/bluetooth/avrcp/MediaData;)V

    .line 580
    monitor-exit v0

    .line 581
    return-void

    .line 580
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method updateMediaForAudioPlayback()V
    .locals 7

    .line 679
    nop

    .line 680
    nop

    .line 681
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "AvrcpMediaPlayerList"

    if-nez v0, :cond_0

    .line 682
    const-string v0, "updateMediaForAudioPlayback: no active player"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 684
    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    .line 685
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 686
    invoke-static {}, Lcom/android/bluetooth/avrcp/Util;->empty_data()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    new-instance v5, Lcom/android/bluetooth/avrcp/MediaData;

    .line 688
    invoke-static {}, Lcom/android/bluetooth/avrcp/Util;->empty_data()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v6

    .line 689
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-direct {v5, v6, v0, v4}, Lcom/android/bluetooth/avrcp/MediaData;-><init>(Lcom/android/bluetooth/avrcp/Metadata;Landroid/media/session/PlaybackState;Ljava/util/List;)V

    .line 692
    const/4 v0, 0x0

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->getActivePlayer()Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getCurrentMediaData()Lcom/android/bluetooth/avrcp/MediaData;

    move-result-object v5

    .line 694
    iget-object v0, v5, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    .line 697
    :goto_0
    const/4 v4, 0x3

    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 699
    const-string v0, "updateMediaForAudioPlayback: Active player is playing, drop it"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void

    .line 703
    :cond_1
    iget-boolean v6, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackIsActive:Z

    if-eqz v6, :cond_3

    .line 704
    new-instance v6, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v6}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 706
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v1

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 705
    invoke-virtual {v6, v4, v1, v2, v0}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    iput-object v0, v5, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    .line 710
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList;->mAudioPlaybackStateLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMediaForAudioPlayback: update state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-direct {p0, v5}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->sendMediaUpdate(Lcom/android/bluetooth/avrcp/MediaData;)V

    .line 713
    return-void
.end method
