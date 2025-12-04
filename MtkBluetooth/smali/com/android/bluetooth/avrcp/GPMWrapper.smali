.class Lcom/android/bluetooth/avrcp/GPMWrapper;
.super Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;
.source "GPMWrapper.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "AvrcpGPMWrapper"


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

    sput-boolean v0, Lcom/android/bluetooth/avrcp/GPMWrapper;->DEBUG:Z

    .line 32
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/avrcp/MediaController;Landroid/os/Looper;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;-><init>(Lcom/android/bluetooth/avrcp/MediaController;Landroid/os/Looper;)V

    .line 37
    return-void
.end method


# virtual methods
.method isMetadataSynced()Z
    .locals 8

    .line 41
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/GPMWrapper;->getQueue()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 42
    return v1

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/GPMWrapper;->getQueue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaSession$QueueItem;

    .line 49
    invoke-virtual {v3}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/GPMWrapper;->getActiveQueueID()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 50
    nop

    .line 51
    move-object v0, v3

    goto :goto_1

    .line 53
    :cond_1
    goto :goto_0

    .line 56
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/session/MediaSession$QueueItem;)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v2

    .line 57
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/GPMWrapper;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/MediaMetadata;)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v3

    .line 58
    if-eqz v0, :cond_4

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 67
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_4
    :goto_2
    sget-boolean v0, Lcom/android/bluetooth/avrcp/GPMWrapper;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 60
    const-string v0, "AvrcpGPMWrapper"

    const-string v4, "Metadata currently out of sync for Google Play Music"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  \u2514 Current queueItem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  \u2514 Current metadata : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_5
    return v1
.end method
