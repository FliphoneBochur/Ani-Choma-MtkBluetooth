.class Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;
.super Ljava/lang/Object;
.source "AvrcpPlayer.java"


# static fields
.field private static final DBG:Z

.field public static final FEATURE_BROWSING:I = 0x3b

.field public static final FEATURE_FAST_FORWARD:I = 0x2d

.field public static final FEATURE_FORWARD:I = 0x2f

.field public static final FEATURE_NOW_PLAYING:I = 0x41

.field public static final FEATURE_PAUSE:I = 0x2a

.field public static final FEATURE_PLAY:I = 0x28

.field public static final FEATURE_PREVIOUS:I = 0x30

.field public static final FEATURE_REWIND:I = 0x2c

.field public static final FEATURE_STOP:I = 0x29

.field public static final INVALID_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AvrcpPlayer"


# instance fields
.field private mAvailableActions:J

.field private mCurrentPlayerApplicationSettings:Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

.field private mCurrentTrack:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mPlaySpeed:F

.field private mPlayStatus:I

.field private mPlayTime:J

.field private mPlayTimeUpdate:J

.field private mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private mPlayerFeatures:[B

.field private mPlayerType:I

.field private mSupportedPlayerApplicationSettings:Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-string v0, "AvrcpPlayer"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->DBG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayStatus:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayTime:J

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayTimeUpdate:J

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaySpeed:F

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mName:Ljava/lang/String;

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayerFeatures:[B

    .line 56
    const-wide/16 v0, 0x4000

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 59
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    invoke-direct {v0}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mSupportedPlayerApplicationSettings:Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mId:I

    .line 67
    const-wide/16 v0, 0x4037

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 71
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    iget-wide v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 74
    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;[BII)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayStatus:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayTime:J

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayTimeUpdate:J

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaySpeed:F

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mName:Ljava/lang/String;

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayerFeatures:[B

    .line 56
    const-wide/16 v0, 0x4000

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 59
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    invoke-direct {v0}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mSupportedPlayerApplicationSettings:Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    .line 78
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 79
    iput p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mId:I

    .line 80
    iput-object p3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mName:Ljava/lang/String;

    .line 81
    iput p5, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayStatus:I

    .line 82
    iput p6, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayerType:I

    .line 83
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayerFeatures:[B

    .line 84
    new-instance p1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    iget-wide p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 85
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 87
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->updateAvailableActions()V

    .line 88
    return-void
.end method

.method private updateAvailableActions()V
    .locals 4

    .line 205
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->supportsFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 208
    :cond_0
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->supportsFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 211
    :cond_1
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->supportsFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 214
    :cond_2
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->supportsFeature(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 217
    :cond_3
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->supportsFeature(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 220
    :cond_4
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->supportsFeature(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 223
    :cond_5
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->supportsFeature(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 226
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mSupportedPlayerApplicationSettings:Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->supportsSetting(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 230
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mSupportedPlayerApplicationSettings:Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->supportsSetting(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 232
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    const-wide/32 v2, 0x200000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 234
    :cond_8
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget-wide v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 237
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->DBG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported Actions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mAvailableActions:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_9
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentTrack()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;
    .locals 1

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mCurrentTrack:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayStatus()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayStatus:I

    return v0
.end method

.method public getPlayTime()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayTime:J

    return-wide v0
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 3

    .line 173
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->DBG:Z

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlayBackState state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method public declared-synchronized notifyImageDownload(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3

    monitor-enter p0

    .line 190
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AvrcpPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got an image download -- uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mCurrentTrack:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    if-nez v1, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mCurrentTrack:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mCurrentTrack:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->setCoverArtLocation(Landroid/net/Uri;)V

    .line 194
    sget-boolean p2, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->DBG:Z

    if-eqz p2, :cond_2

    const-string p2, "AvrcpPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image UUID \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' was added to current track."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_2
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 197
    :cond_3
    monitor-exit p0

    return v0

    .line 191
    :cond_4
    :goto_0
    monitor-exit p0

    return v0

    .line 189
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCurrentPlayerApplicationSettings(Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;)V
    .locals 2

    .line 149
    const-string v0, "AvrcpPlayer"

    const-string v1, "Settings changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mCurrentPlayerApplicationSettings:Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    .line 151
    invoke-static {}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->getSession()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mCurrentPlayerApplicationSettings:Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->getSetting(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setRepeatMode(I)V

    .line 154
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mCurrentPlayerApplicationSettings:Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->getSetting(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setShuffleMode(I)V

    .line 156
    return-void
.end method

.method public setPlayStatus(I)V
    .locals 6

    .line 115
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayTime:J

    long-to-float v0, v0

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaySpeed:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 116
    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayTime:J

    .line 117
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayStatus:I

    .line 118
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    const/high16 p1, -0x3fc00000    # -3.0f

    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaySpeed:F

    goto :goto_0

    .line 129
    :cond_1
    const/high16 p1, 0x40400000    # 3.0f

    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaySpeed:F

    .line 130
    goto :goto_0

    .line 123
    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaySpeed:F

    .line 124
    goto :goto_0

    .line 126
    :cond_3
    iput v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaySpeed:F

    .line 127
    goto :goto_0

    .line 120
    :cond_4
    iput v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaySpeed:F

    .line 121
    nop

    .line 136
    :goto_0
    new-instance p1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-direct {p1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayStatus:I

    iget-wide v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayTime:J

    iget v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaySpeed:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 139
    return-void
.end method

.method public setPlayTime(I)V
    .locals 4

    .line 103
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayTime:J

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayTimeUpdate:J

    .line 105
    new-instance p1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-direct {p1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayStatus:I

    iget-wide v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayTime:J

    iget v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaySpeed:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 108
    return-void
.end method

.method public setSupportedPlayerApplicationSettings(Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mSupportedPlayerApplicationSettings:Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    .line 144
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->updateAvailableActions()V

    .line 145
    return-void
.end method

.method public supportsFeature(I)Z
    .locals 3

    .line 163
    div-int/lit8 v0, p1, 0x8

    .line 164
    rem-int/lit8 p1, p1, 0x8

    const/4 v1, 0x1

    shl-int p1, v1, p1

    int-to-byte p1, p1

    .line 165
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlayerFeatures:[B

    aget-byte v0, v2, v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public supportsSetting(II)Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mSupportedPlayerApplicationSettings:Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->supportsSetting(II)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized updateCurrentTrack(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V
    .locals 5

    monitor-enter p0

    .line 180
    if-eqz p1, :cond_0

    .line 181
    :try_start_0
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getTrackNumber()J

    move-result-wide v0

    .line 182
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-direct {v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    .line 183
    invoke-virtual {v2, v0, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActiveQueueItemId(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->mCurrentTrack:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
