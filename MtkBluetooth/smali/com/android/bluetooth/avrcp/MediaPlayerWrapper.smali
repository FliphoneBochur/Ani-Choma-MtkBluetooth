.class Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;,
        Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$TimeoutHandler;,
        Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PLAYBACK_STATE_CHANGE_EVENT_LOGGER_SIZE:I = 0x5

.field private static final PLAYBACK_STATE_CHANGE_LOGGER_EVENT_TITLE:Ljava/lang/String; = "Playback State change Event"

.field private static final PLAYSTATE_BOUNCE_IGNORE_PERIOD:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "AvrcpMediaPlayerWrapper"

.field static sTesting:Z


# instance fields
.field private final mCallbackLock:Ljava/lang/Object;

.field private mControllerCallbacks:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;

.field private mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

.field private mLooper:Landroid/os/Looper;

.field private mMediaController:Lcom/android/bluetooth/avrcp/MediaController;

.field private mPackageName:Ljava/lang/String;

.field private final mPlaybackStateChangeEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

.field private mRegisteredCallback:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    nop

    .line 45
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->DEBUG:Z

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->sTesting:Z

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/avrcp/MediaController;Landroid/os/Looper;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mControllerCallbacks:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCallbackLock:Ljava/lang/Object;

    .line 61
    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mRegisteredCallback:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;

    .line 87
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mMediaController:Lcom/android/bluetooth/avrcp/MediaController;

    .line 88
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPackageName:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mLooper:Landroid/os/Looper;

    .line 90
    new-instance p1, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    const/4 p2, 0x5

    const-string v1, "Playback State change Event"

    invoke-direct {p1, p2, v1}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPlaybackStateChangeEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    .line 93
    new-instance p1, Lcom/android/bluetooth/avrcp/MediaData;

    invoke-direct {p1, v0, v0, v0}, Lcom/android/bluetooth/avrcp/MediaData;-><init>(Lcom/android/bluetooth/avrcp/Metadata;Landroid/media/session/PlaybackState;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    .line 94
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getQueue()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/Util;->toMetadataList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/android/bluetooth/avrcp/MediaData;->queue:Ljava/util/List;

    .line 95
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p2

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/MediaMetadata;)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object p2

    iput-object p2, p1, Lcom/android/bluetooth/avrcp/MediaData;->metadata:Lcom/android/bluetooth/avrcp/Metadata;

    .line 96
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p2

    iput-object p2, p1, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->sendMediaUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Lcom/android/bluetooth/avrcp/MediaData;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Lcom/android/bluetooth/avrcp/AvrcpEventLogger;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPlaybackStateChangeEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mRegisteredCallback:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .line 527
    sget-boolean v0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AvrcpMediaPlayerWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 2

    .line 519
    sget-boolean v0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->sTesting:Z

    const-string v1, "AvrcpMediaPlayerWrapper"

    if-eqz v0, :cond_0

    .line 520
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    :cond_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :goto_0
    return-void
.end method

.method static playstateEquals(Landroid/media/session/PlaybackState;Landroid/media/session/PlaybackState;)Z
    .locals 5

    .line 506
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 508
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 509
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 510
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getActiveQueueItemId()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActiveQueueItemId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 511
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide p0

    sub-long/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 v1, 0x1f4

    cmp-long p0, p0, v1

    if-gez p0, :cond_1

    .line 512
    return v0

    .line 515
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private sendMediaUpdate()V
    .locals 5

    .line 287
    new-instance v0, Lcom/android/bluetooth/avrcp/MediaData;

    .line 288
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/MediaMetadata;)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v1

    .line 289
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 290
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getQueue()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Util;->toMetadataList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/avrcp/MediaData;-><init>(Lcom/android/bluetooth/avrcp/Metadata;Landroid/media/session/PlaybackState;Ljava/util/List;)V

    .line 292
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/MediaData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const-string v0, "AvrcpMediaPlayerWrapper"

    const-string v1, "Trying to update with last sent metadata"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mRegisteredCallback:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;

    if-nez v2, :cond_1

    .line 301
    const-string v0, "AvrcpMediaPlayerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Trying to send an update with no registered callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    monitor-exit v1

    return-void

    .line 306
    :cond_1
    const-string v2, "AvrcpMediaPlayerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trySendMediaUpdate(): Metadata has been updated for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mRegisteredCallback:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;

    invoke-interface {v2, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;->mediaUpdatedCallback(Lcom/android/bluetooth/avrcp/MediaData;)V

    .line 308
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    .line 311
    return-void

    .line 308
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->unregisterCallback()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mMediaController:Lcom/android/bluetooth/avrcp/MediaController;

    .line 103
    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mLooper:Landroid/os/Looper;

    .line 104
    return-void
.end method

.method getActiveQueueID()J
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mMediaController:Lcom/android/bluetooth/avrcp/MediaController;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 146
    :cond_0
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getActiveQueueItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method getCurrentMediaData()Lcom/android/bluetooth/avrcp/MediaData;
    .locals 4

    .line 155
    new-instance v0, Lcom/android/bluetooth/avrcp/MediaData;

    .line 156
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getCurrentMetadata()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v1

    .line 157
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 158
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getCurrentQueue()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/avrcp/MediaData;-><init>(Lcom/android/bluetooth/avrcp/Metadata;Landroid/media/session/PlaybackState;Ljava/util/List;)V

    .line 159
    return-object v0
.end method

.method getCurrentMetadata()Lcom/android/bluetooth/avrcp/Metadata;
    .locals 6

    .line 120
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->isMetadataSynced()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getActiveQueueID()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getCurrentQueue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/avrcp/Metadata;

    .line 122
    iget-object v2, v1, Lcom/android/bluetooth/avrcp/Metadata;->mediaId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NowPlayingId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getActiveQueueID()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentMetadata: Using playlist data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/Metadata;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->d(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/Metadata;->clone()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/MediaMetadata;)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    return-object v0
.end method

.method getCurrentQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/Metadata;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaData;->queue:Ljava/util/List;

    return-object v0
.end method

.method protected getMetadata()Landroid/media/MediaMetadata;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mMediaController:Lcom/android/bluetooth/avrcp/MediaController;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getPlaybackState()Landroid/media/session/PlaybackState;
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mMediaController:Lcom/android/bluetooth/avrcp/MediaController;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 134
    nop

    .line 135
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPackageName:Ljava/lang/String;

    const-string v3, "cn.kuwo.player"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 138
    const/4 v2, 0x2

    .line 139
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 138
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 140
    :cond_0
    return-object v0
.end method

.method protected getQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mMediaController:Lcom/android/bluetooth/avrcp/MediaController;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaController;->getQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getTimeoutHandler()Landroid/os/Handler;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mControllerCallbacks:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 533
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->getTimeoutHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method isMetadataReady()Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    const-string v0, "isMetadataReady(): Metadata is null"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->d(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method isMetadataSynced()Z
    .locals 7

    .line 196
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getQueue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getActiveQueueID()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 198
    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getQueue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$QueueItem;

    .line 201
    invoke-virtual {v2}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v3

    .line 202
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getActiveQueueID()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 203
    nop

    .line 204
    move-object v0, v2

    goto :goto_1

    .line 206
    :cond_0
    goto :goto_0

    .line 209
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/session/MediaSession$QueueItem;)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v1

    .line 210
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/MediaMetadata;)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v2

    .line 211
    if-eqz v0, :cond_2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcp/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 212
    :cond_2
    sget-boolean v0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Metadata currently out of sync for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AvrcpMediaPlayerWrapper"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  \u2514 Current queueItem: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  \u2514 Current metadata : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method isPlaybackStateReady()Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    const-string v0, "isPlaybackStateReady(): PlaybackState is null"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->d(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method isRepeatSupported()Z
    .locals 1

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method isShuffleSupported()Z
    .locals 1

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method playItemFromQueue(J)V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getQueue()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "playItemFromQueue: Trying to play item for player that has no queue: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AvrcpMediaPlayerWrapper"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mMediaController:Lcom/android/bluetooth/avrcp/MediaController;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaController;->getTransportControls()Lcom/android/bluetooth/avrcp/MediaController$TransportControls;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->skipToQueueItem(J)V

    .line 172
    return-void
.end method

.method registerCallback(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;)V
    .locals 3

    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot register null callbacks for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->e(Ljava/lang/String;)V

    .line 231
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mRegisteredCallback:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;

    .line 236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    new-instance p1, Lcom/android/bluetooth/avrcp/MediaData;

    .line 241
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/MediaMetadata;)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 243
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getQueue()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Util;->toMetadataList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/android/bluetooth/avrcp/MediaData;-><init>(Lcom/android/bluetooth/avrcp/Metadata;Landroid/media/session/PlaybackState;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    .line 245
    new-instance p1, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mMediaController:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;Lcom/android/bluetooth/avrcp/MediaController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mControllerCallbacks:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;

    .line 246
    return-void

    .line 236
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mMediaController:Lcom/android/bluetooth/avrcp/MediaController;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcp/MediaController;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string v1, "Current Data:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Song: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    iget-object v3, v3, Lcom/android/bluetooth/avrcp/MediaData;->metadata:Lcom/android/bluetooth/avrcp/Metadata;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  PlayState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    iget-object v3, v3, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Queue: size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    iget-object v3, v3, Lcom/android/bluetooth/avrcp/MediaData;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    iget-object v1, v1, Lcom/android/bluetooth/avrcp/MediaData;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/avrcp/Metadata;

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    goto :goto_0

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPlaybackStateChangeEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->dump(Ljava/lang/StringBuilder;)V

    .line 548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toggleRepeat(Z)V
    .locals 0

    .line 189
    return-void
.end method

.method toggleShuffle(Z)V
    .locals 0

    .line 185
    return-void
.end method

.method unregisterCallback()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mRegisteredCallback:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;

    .line 255
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mControllerCallbacks:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->cleanup()V

    .line 259
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mControllerCallbacks:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;

    .line 260
    return-void

    .line 255
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method updateMediaController(Lcom/android/bluetooth/avrcp/MediaController;)V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mMediaController:Lcom/android/bluetooth/avrcp/MediaController;

    if-ne p1, v0, :cond_0

    return-void

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mMediaController:Lcom/android/bluetooth/avrcp/MediaController;

    .line 267
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mRegisteredCallback:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mControllerCallbacks:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;

    if-nez v0, :cond_1

    goto :goto_0

    .line 272
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mControllerCallbacks:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->cleanup()V

    .line 277
    new-instance p1, Lcom/android/bluetooth/avrcp/MediaData;

    .line 278
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/MediaMetadata;)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    .line 279
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 280
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getQueue()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Util;->toMetadataList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/android/bluetooth/avrcp/MediaData;-><init>(Lcom/android/bluetooth/avrcp/Metadata;Landroid/media/session/PlaybackState;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mCurrentData:Lcom/android/bluetooth/avrcp/MediaData;

    .line 282
    new-instance p1, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mMediaController:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;Lcom/android/bluetooth/avrcp/MediaController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mControllerCallbacks:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Controller for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was updated."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->d(Ljava/lang/String;)V

    .line 284
    return-void

    .line 269
    :cond_2
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Controller for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " maybe is not activated."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->d(Ljava/lang/String;)V

    .line 270
    monitor-exit p1

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
