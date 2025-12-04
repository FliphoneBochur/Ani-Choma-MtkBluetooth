.class Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;
.super Lcom/android/bluetooth/avrcp/MediaController$Callback;
.source "BrowsedPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaPlaybackListener"
.end annotation


# instance fields
.field private mController:Lcom/android/bluetooth/avrcp/MediaController;

.field private mLooper:Landroid/os/Looper;

.field private mPlaybackCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;

.field private mTimeoutHandler:Landroid/os/Handler;

.field private final mTimeoutHandlerLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/MediaController;)V
    .locals 1

    .line 341
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/MediaController$Callback;-><init>()V

    .line 335
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mTimeoutHandlerLock:Ljava/lang/Object;

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mTimeoutHandler:Landroid/os/Handler;

    .line 337
    iput-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mLooper:Landroid/os/Looper;

    .line 338
    iput-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mController:Lcom/android/bluetooth/avrcp/MediaController;

    .line 339
    iput-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mPlaybackCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;

    .line 342
    monitor-enter p1

    .line 343
    :try_start_0
    iput-object p3, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mController:Lcom/android/bluetooth/avrcp/MediaController;

    .line 344
    iput-object p2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mLooper:Landroid/os/Looper;

    .line 345
    monitor-exit p1

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method


# virtual methods
.method cleanup()V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mTimeoutHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mController:Lcom/android/bluetooth/avrcp/MediaController;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mController:Lcom/android/bluetooth/avrcp/MediaController;

    invoke-virtual {v1, p0}, Lcom/android/bluetooth/avrcp/MediaController;->unregisterCallback(Lcom/android/bluetooth/avrcp/MediaController$Callback;)V

    .line 375
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mController:Lcom/android/bluetooth/avrcp/MediaController;

    .line 377
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    :cond_1
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mTimeoutHandler:Landroid/os/Handler;

    .line 381
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mPlaybackCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;

    .line 382
    monitor-exit v0

    .line 383
    return-void

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    .line 387
    invoke-static {}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpBrowsedPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 389
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mPlaybackCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;

    invoke-interface {p1, v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;->run(I)V

    .line 391
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->cleanup()V

    .line 393
    :cond_1
    return-void
.end method

.method waitForPlayback(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;)V
    .locals 5

    .line 349
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mTimeoutHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mPlaybackCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;

    .line 355
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mController:Lcom/android/bluetooth/avrcp/MediaController;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    .line 356
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    const-string p1, "AvrcpBrowsedPlayerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback: Media is already playing for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mPlaybackCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;

    invoke-interface {p1, v1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;->run(I)V

    .line 365
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->cleanup()V

    goto :goto_1

    .line 357
    :cond_1
    :goto_0
    const-string p1, "AvrcpBrowsedPlayerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback: Waiting for media to play for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance p1, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$TimeoutHandler;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mLooper:Landroid/os/Looper;

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mPlaybackCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;

    invoke-direct {p1, v2, v3, v4}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$TimeoutHandler;-><init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mTimeoutHandler:Landroid/os/Handler;

    .line 359
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mController:Lcom/android/bluetooth/avrcp/MediaController;

    invoke-virtual {v2, p0, p1}, Lcom/android/bluetooth/avrcp/MediaController;->registerCallback(Lcom/android/bluetooth/avrcp/MediaController$Callback;Landroid/os/Handler;)V

    .line 360
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->mTimeoutHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 367
    :goto_1
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
