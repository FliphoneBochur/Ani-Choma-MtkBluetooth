.class public abstract Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$MediaSessionCallbackApi21;,
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;
    }
.end annotation


# instance fields
.field final mCallbackFwk:Landroid/media/session/MediaSession$Callback;

.field mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

.field final mLock:Ljava/lang/Object;

.field private mMediaPlayPausePendingOnHandler:Z

.field mSessionImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mLock:Ljava/lang/Object;

    .line 1137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 1138
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$MediaSessionCallbackApi21;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$MediaSessionCallbackApi21;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackFwk:Landroid/media/session/MediaSession$Callback;

    goto :goto_0

    .line 1140
    :cond_0
    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackFwk:Landroid/media/session/MediaSession$Callback;

    .line 1142
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    .line 1143
    return-void
.end method


# virtual methods
.method handleMediaPlayPauseIfPendingOnHandler(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V
    .locals 11
    .param p1, "impl"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
    .param p2, "callbackHandler"    # Landroid/os/Handler;

    .line 1239
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mMediaPlayPausePendingOnHandler:Z

    if-nez v0, :cond_0

    .line 1240
    return-void

    .line 1242
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mMediaPlayPausePendingOnHandler:Z

    .line 1243
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1245
    invoke-interface {p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    .line 1246
    .local v2, "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    move-wide v5, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v5

    .line 1247
    .local v5, "validActions":J
    :goto_0
    if-eqz v2, :cond_2

    .line 1248
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v0

    .line 1249
    .local v7, "isPlaying":Z
    :goto_1
    const-wide/16 v8, 0x204

    and-long/2addr v8, v5

    cmp-long v8, v8, v3

    if-eqz v8, :cond_3

    move v8, v1

    goto :goto_2

    :cond_3
    move v8, v0

    .line 1251
    .local v8, "canPlay":Z
    :goto_2
    const-wide/16 v9, 0x202

    and-long/2addr v9, v5

    cmp-long v3, v9, v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 1253
    .local v0, "canPause":Z
    :cond_4
    if-eqz v7, :cond_5

    if-eqz v0, :cond_5

    .line 1254
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto :goto_3

    .line 1255
    :cond_5
    if-nez v7, :cond_6

    if-eqz v8, :cond_6

    .line 1256
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    .line 1258
    :cond_6
    :goto_3
    return-void
.end method

.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0
    .param p1, "description"    # Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1468
    return-void
.end method

.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 0
    .param p1, "description"    # Landroid/support/v4/media/MediaDescriptionCompat;
    .param p2, "index"    # I

    .line 1480
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 1166
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1458
    return-void
.end method

.method public onFastForward()V
    .locals 0

    .line 1350
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "mediaButtonEvent"    # Landroid/content/Intent;

    .line 1180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1b

    if-lt v0, v2, :cond_0

    .line 1185
    return v1

    .line 1189
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    .line 1191
    .local v2, "impl":Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    .line 1192
    .local v3, "callbackHandler":Landroid/os/Handler;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    if-eqz v2, :cond_9

    if-nez v3, :cond_1

    goto :goto_3

    .line 1196
    :cond_1
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 1197
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 1200
    :cond_2
    invoke-interface {v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v4

    .line 1201
    .local v4, "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 1202
    .local v5, "keyCode":I
    const/16 v6, 0x4f

    if-eq v5, v6, :cond_3

    const/16 v6, 0x55

    if-eq v5, v6, :cond_3

    .line 1231
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->handleMediaPlayPauseIfPendingOnHandler(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V

    .line 1234
    return v1

    .line 1205
    :cond_3
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_7

    .line 1206
    iget-boolean v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mMediaPlayPausePendingOnHandler:Z

    if-eqz v6, :cond_6

    .line 1207
    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1209
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mMediaPlayPausePendingOnHandler:Z

    .line 1210
    invoke-interface {v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    .line 1211
    .local v1, "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    const-wide/16 v8, 0x0

    if-nez v1, :cond_4

    move-wide v10, v8

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v10

    .line 1213
    .local v10, "validActions":J
    :goto_0
    const-wide/16 v12, 0x20

    and-long/2addr v12, v10

    cmp-long v6, v12, v8

    if-eqz v6, :cond_5

    .line 1214
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    .line 1216
    .end local v1    # "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    .end local v10    # "validActions":J
    :cond_5
    goto :goto_1

    .line 1217
    :cond_6
    iput-boolean v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mMediaPlayPausePendingOnHandler:Z

    .line 1218
    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1221
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v8, v6

    .line 1218
    invoke-virtual {v3, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1225
    :cond_7
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->handleMediaPlayPauseIfPendingOnHandler(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V

    .line 1227
    :goto_1
    return v7

    .line 1198
    .end local v4    # "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .end local v5    # "keyCode":I
    :cond_8
    :goto_2
    return v1

    .line 1194
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_9
    :goto_3
    return v1

    .line 1192
    .end local v2    # "impl":Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
    .end local v3    # "callbackHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 0

    .line 1332
    return-void
.end method

.method public onPlay()V
    .locals 0

    .line 1297
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1304
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1313
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1319
    return-void
.end method

.method public onPrepare()V
    .locals 0

    .line 1265
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1273
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1283
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1291
    return-void
.end method

.method public onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0
    .param p1, "description"    # Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1491
    return-void
.end method

.method public onRemoveQueueItemAt(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1502
    return-void
.end method

.method public onRewind()V
    .locals 0

    .line 1356
    return-void
.end method

.method public onSeekTo(J)V
    .locals 0
    .param p1, "pos"    # J

    .line 1370
    return-void
.end method

.method public onSetCaptioningEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1411
    return-void
.end method

.method public onSetPlaybackSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 1403
    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 0
    .param p1, "rating"    # Landroid/support/v4/media/RatingCompat;

    .line 1378
    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "rating"    # Landroid/support/v4/media/RatingCompat;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1387
    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .line 1427
    return-void
.end method

.method public onSetShuffleMode(I)V
    .locals 0
    .param p1, "shuffleMode"    # I

    .line 1442
    return-void
.end method

.method public onSkipToNext()V
    .locals 0

    .line 1338
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 0

    .line 1344
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0
    .param p1, "id"    # J

    .line 1326
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1362
    return-void
.end method

.method setSessionImpl(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V
    .locals 3
    .param p1, "impl"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1146
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1147
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    .line 1148
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1149
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1151
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1152
    :cond_1
    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Looper;)V

    :cond_2
    :goto_0
    iput-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    .line 1153
    monitor-exit v0

    .line 1154
    return-void

    .line 1153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
