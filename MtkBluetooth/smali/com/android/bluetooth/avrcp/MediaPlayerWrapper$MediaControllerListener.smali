.class Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;
.super Lcom/android/bluetooth/avrcp/MediaController$Callback;
.source "MediaPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaControllerListener"
.end annotation


# instance fields
.field private mController:Lcom/android/bluetooth/avrcp/MediaController;

.field private mTimeoutHandler:Landroid/os/Handler;

.field private final mTimeoutHandlerLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;Lcom/android/bluetooth/avrcp/MediaController;Landroid/os/Looper;)V
    .locals 2

    .line 349
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/MediaController$Callback;-><init>()V

    .line 345
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->mTimeoutHandlerLock:Ljava/lang/Object;

    .line 350
    monitor-enter v0

    .line 351
    :try_start_0
    new-instance v1, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$TimeoutHandler;

    invoke-direct {v1, p1, p3}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$TimeoutHandler;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->mTimeoutHandler:Landroid/os/Handler;

    .line 353
    iput-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->mController:Lcom/android/bluetooth/avrcp/MediaController;

    .line 356
    invoke-virtual {p2, p0, v1}, Lcom/android/bluetooth/avrcp/MediaController;->registerCallback(Lcom/android/bluetooth/avrcp/MediaController$Callback;Landroid/os/Handler;)V

    .line 357
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method cleanup()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->mTimeoutHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->mController:Lcom/android/bluetooth/avrcp/MediaController;

    invoke-virtual {v1, p0}, Lcom/android/bluetooth/avrcp/MediaController;->unregisterCallback(Lcom/android/bluetooth/avrcp/MediaController$Callback;)V

    .line 363
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->mController:Lcom/android/bluetooth/avrcp/MediaController;

    .line 364
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->mTimeoutHandler:Landroid/os/Handler;

    .line 366
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTimeoutHandler()Landroid/os/Handler;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->isMetadataReady()Z

    move-result v0

    const-string v1, "onMetadataChanged(): "

    const-string v2, "AvrcpMediaPlayerWrapper"

    if-nez v0, :cond_0

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " tried to update with no queue"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    .line 393
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-static {p1}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/MediaMetadata;)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/avrcp/Util;->empty_data()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    const-string p1, "onMetadataChanged(): data is null, return"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 404
    const-string v0, "The callback metadata doesn\'t match controller metadata"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$400(Ljava/lang/String;)V

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$500(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Lcom/android/bluetooth/avrcp/MediaData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaData;->metadata:Lcom/android/bluetooth/avrcp/Metadata;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " tried to update with no new data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 421
    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->trySendMediaUpdate()V

    .line 422
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 5

    .line 426
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->isPlaybackStateReady()Z

    move-result v0

    const-string v1, "onPlaybackStateChanged(): "

    const-string v2, "AvrcpMediaPlayerWrapper"

    if-nez v0, :cond_0

    .line 427
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " tried to update with no queue"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    .line 433
    invoke-static {v4}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->playstateEquals(Landroid/media/session/PlaybackState;Landroid/media/session/PlaybackState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    const-string v0, "The callback playback state doesn\'t match the current state"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$400(Ljava/lang/String;)V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$500(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Lcom/android/bluetooth/avrcp/MediaData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    invoke-static {p1, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->playstateEquals(Landroid/media/session/PlaybackState;Landroid/media/session/PlaybackState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " tried to update with no new data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void

    .line 446
    :cond_2
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    if-nez p1, :cond_3

    .line 447
    const-string p1, "Waiting to send update as controller has no playback state"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void

    .line 451
    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->trySendMediaUpdate()V

    .line 452
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->isPlaybackStateReady()Z

    move-result v0

    const-string v1, "onQueueChanged(): "

    const-string v2, "AvrcpMediaPlayerWrapper"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->isMetadataReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getQueue()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    const-string v0, "The callback queue isn\'t the current queue"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$400(Ljava/lang/String;)V

    .line 468
    :cond_1
    invoke-static {p1}, Lcom/android/bluetooth/avrcp/Util;->toMetadataList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 469
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$500(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Lcom/android/bluetooth/avrcp/MediaData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaData;->queue:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " tried to update with no new data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void

    .line 475
    :cond_2
    invoke-static {}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$300()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  \u2514 QueueItem("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->trySendMediaUpdate()V

    .line 482
    return-void

    .line 457
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " tried to update with no queue"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The session was destroyed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpMediaPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$700(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;->sessionUpdatedCallback(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method trySendMediaUpdate()V
    .locals 5

    .line 370
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->mTimeoutHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->mTimeoutHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->isMetadataSynced()Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    const-string v3, "trySendMediaUpdate(): Starting media update timeout"

    invoke-static {v1, v3}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$200(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->mTimeoutHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 378
    monitor-exit v0

    return-void

    .line 380
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$MediaControllerListener;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$100(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)V

    .line 383
    return-void

    .line 380
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
