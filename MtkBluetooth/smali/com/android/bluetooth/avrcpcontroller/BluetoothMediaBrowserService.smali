.class public Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;
.super Landroidx/media/MediaBrowserServiceCompat;
.source "BluetoothMediaBrowserService.java"


# static fields
.field public static final CONTENT_STYLE_BROWSABLE_HINT:Ljava/lang/String; = "android.media.browse.CONTENT_STYLE_BROWSABLE_HINT"

.field public static final CONTENT_STYLE_GRID_ITEM_HINT_VALUE:I = 0x2

.field public static final CONTENT_STYLE_LIST_ITEM_HINT_VALUE:I = 0x1

.field public static final CONTENT_STYLE_PLAYABLE_HINT:Ljava/lang/String; = "android.media.browse.CONTENT_STYLE_PLAYABLE_HINT"

.field private static final CONTENT_STYLE_SUPPORTED:Ljava/lang/String; = "android.media.browse.CONTENT_STYLE_SUPPORTED"

.field private static final DBG:Z

.field public static final ERROR_RESOLUTION_ACTION_INTENT:Ljava/lang/String; = "android.media.extras.ERROR_RESOLUTION_ACTION_INTENT"

.field public static final ERROR_RESOLUTION_ACTION_LABEL:Ljava/lang/String; = "android.media.extras.ERROR_RESOLUTION_ACTION_LABEL"

.field private static final TAG:Ljava/lang/String; = "BluetoothMediaBrowserService"

.field private static sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;


# instance fields
.field private mMediaQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSession:Landroid/support/v4/media/session/MediaSessionCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-string v0, "BluetoothMediaBrowserService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroidx/media/MediaBrowserServiceCompat;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mMediaQueue:Ljava/util/List;

    return-void
.end method

.method static declared-synchronized addressedPlayerChanged(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 2

    const-class v0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    monitor-enter v0

    .line 182
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    if-eqz v1, :cond_1

    .line 183
    if-nez p0, :cond_0

    .line 184
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    invoke-direct {v1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->setErrorPlaybackState()V

    .line 185
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    invoke-direct {v1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->clearNowPlayingQueue()V

    .line 187
    :cond_0
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, p0}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    goto :goto_0

    .line 189
    :cond_1
    const-string p0, "BluetoothMediaBrowserService"

    const-string v1, "addressedPlayerChanged Unavailable"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :goto_0
    monitor-exit v0

    return-void

    .line 181
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private clearNowPlayingQueue()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mMediaQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mMediaQueue:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    .line 169
    return-void
.end method

.method private getDefaultStyle()Landroid/os/Bundle;
    .locals 4

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string v1, "android.media.browse.CONTENT_STYLE_SUPPORTED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    const-string v1, "android.media.browse.CONTENT_STYLE_BROWSABLE_HINT"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v1, "android.media.browse.CONTENT_STYLE_PLAYABLE_HINT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    return-object v0
.end method

.method public static declared-synchronized getPlaybackState()I
    .locals 2

    const-class v0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    monitor-enter v0

    .line 242
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    if-eqz v1, :cond_0

    .line 243
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 244
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 249
    :cond_0
    const/4 v1, 0x7

    monitor-exit v0

    return v1

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSession()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 3

    const-class v0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    monitor-enter v0

    .line 279
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    if-eqz v1, :cond_0

    .line 280
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 282
    :cond_0
    :try_start_1
    const-string v1, "BluetoothMediaBrowserService"

    const-string v2, "getSession Unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
    .locals 3

    const-class v0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    monitor-enter v0

    .line 256
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    if-eqz v1, :cond_0

    .line 257
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 259
    :cond_0
    :try_start_1
    const-string v1, "BluetoothMediaBrowserService"

    const-string v2, "transportControls Unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized notifyChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 4

    const-class v0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    monitor-enter v0

    .line 208
    :try_start_0
    const-string v1, "BluetoothMediaBrowserService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChanged PlaybackState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    if-eqz v1, :cond_0

    .line 210
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, p0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0

    .line 212
    :cond_0
    const-string p0, "BluetoothMediaBrowserService"

    const-string v1, "notifyChanged Unavailable"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :goto_0
    monitor-exit v0

    return-void

    .line 207
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized notifyChanged(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V
    .locals 3

    const-class v0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    monitor-enter v0

    .line 172
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getScope()B

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 174
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->updateNowPlayingQueue(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    goto :goto_0

    .line 176
    :cond_0
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 171
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized pause()V
    .locals 3

    const-class v0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    monitor-enter v0

    .line 231
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    if-eqz v1, :cond_0

    .line 232
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    goto :goto_0

    .line 234
    :cond_0
    const-string v1, "BluetoothMediaBrowserService"

    const-string v2, "pause Unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :goto_0
    monitor-exit v0

    return-void

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized play()V
    .locals 3

    const-class v0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    monitor-enter v0

    .line 220
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    if-eqz v1, :cond_0

    .line 221
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    goto :goto_0

    .line 223
    :cond_0
    const-string v1, "BluetoothMediaBrowserService"

    const-string v2, "play Unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :goto_0
    monitor-exit v0

    return-void

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setActive(Z)V
    .locals 2

    const-class v0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    monitor-enter v0

    .line 268
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    if-eqz v1, :cond_0

    .line 269
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, p0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    goto :goto_0

    .line 271
    :cond_0
    const-string p0, "BluetoothMediaBrowserService"

    const-string v1, "setActive Unavailable"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :goto_0
    monitor-exit v0

    return-void

    .line 267
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setErrorPlaybackState()V
    .locals 5

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    nop

    .line 111
    const v1, 0x7f0e000b

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string v2, "android.media.extras.ERROR_RESOLUTION_ACTION_LABEL"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 113
    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 117
    const-string v2, "android.media.extras.ERROR_RESOLUTION_ACTION_INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 119
    const v2, 0x7f0e0012

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 121
    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 124
    return-void
.end method

.method static declared-synchronized trackChanged(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V
    .locals 4

    const-class v0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    monitor-enter v0

    .line 194
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothMediaBrowserService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackChanged setMetadata="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    if-eqz v1, :cond_2

    .line 196
    if-eqz p0, :cond_1

    .line 197
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->toMediaMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_0

    .line 199
    :cond_1
    sget-object p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    iget-object p0, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_0

    .line 203
    :cond_2
    const-string p0, "BluetoothMediaBrowserService"

    const-string v1, "trackChanged Unavailable"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :goto_0
    monitor-exit v0

    return-void

    .line 193
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private updateNowPlayingQueue(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V
    .locals 5

    .line 154
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getContents()Ljava/util/List;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mMediaQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 158
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mMediaQueue:Ljava/util/List;

    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 159
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mMediaQueue:Ljava/util/List;

    .line 160
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v0, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 158
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mMediaQueue:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    .line 164
    return-void
.end method


# virtual methods
.method getContents(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getAvrcpControllerService()Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 104
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getContents(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 84
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->DBG:Z

    const-string v1, "BluetoothMediaBrowserService"

    if-eqz v0, :cond_0

    const-string v0, "onCreate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onCreate()V

    .line 88
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 89
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const v1, 0x7f0e0009

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueueTitle(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->mMediaQueue:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    .line 94
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->setErrorPlaybackState()V

    .line 95
    sput-object p0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->sBluetoothMediaBrowserService:Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    .line 96
    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;
    .locals 0

    .line 148
    sget-boolean p1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothMediaBrowserService"

    const-string p2, "onGetRoot"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->getDefaultStyle()Landroid/os/Bundle;

    move-result-object p1

    .line 150
    new-instance p2, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string p3, "__ROOT__"

    invoke-direct {p2, p3, p1}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2
.end method

.method public declared-synchronized onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMediaBrowserService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadChildren parentMediaId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->getContents(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 139
    if-nez p1, :cond_1

    .line 140
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
