.class public Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;
.super Landroid/os/Handler;
.source "A2dpSinkStreamHandler.java"


# static fields
.field public static final AUDIO_FOCUS_CHANGE:I = 0x7

.field private static final DBG:Z

.field private static final DEFAULT_DUCK_PERCENT:I = 0x19

.field public static final DELAYED_PAUSE:I = 0x9

.field public static final DISCONNECT:I = 0x6

.field public static final REQUEST_FOCUS:I = 0x8

.field private static final SETTLE_TIMEOUT:I = 0x190

.field public static final SNK_PAUSE:I = 0x3

.field public static final SNK_PLAY:I = 0x2

.field public static final SRC_PAUSE:I = 0x5

.field public static final SRC_PLAY:I = 0x4

.field public static final SRC_STR_START:I = 0x0

.field public static final SRC_STR_STOP:I = 0x1

.field private static final STATE_FOCUS_GRANTED:I = 0x1

.field private static final STATE_FOCUS_LOST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "A2dpSinkStreamHandler"


# instance fields
.field private mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

.field private mAudioFocus:I

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSentPause:Z

.field private mStreamAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-string v0, "A2dpSinkStreamHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;Landroid/content/Context;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mSentPause:Z

    .line 90
    iput v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 103
    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler$1;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 115
    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    .line 116
    iput-object p2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mContext:Landroid/content/Context;

    .line 117
    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 118
    return-void
.end method

.method private declared-synchronized abandonAudioFocus()V
    .locals 2

    monitor-enter p0

    .line 323
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkStreamHandler"

    const-string v1, "abandonAudioFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->stopFluorideStreaming()V

    .line 325
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    return v0
.end method

.method private inCallFromStreamingDevice()Z
    .locals 3

    .line 368
    nop

    .line 369
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 371
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 370
    :cond_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    .line 374
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 375
    nop

    .line 376
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v0

    .line 377
    if-nez v0, :cond_1

    return v2

    .line 378
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 380
    :cond_3
    return v2
.end method

.method private isIotDevice()Z
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isTvDevice()Z
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized releaseMediaKeyFocus()V
    .locals 2

    monitor-enter p0

    .line 334
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkStreamHandler"

    const-string v1, "releaseMediaKeyFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 336
    monitor-exit p0

    return-void

    .line 338
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->setActive(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 340
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized requestAudioFocus()I
    .locals 3

    monitor-enter p0

    .line 263
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkStreamHandler"

    const-string v1, "requestAudioFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 268
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 271
    new-instance v2, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v2, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 272
    invoke-virtual {v2, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 274
    invoke-virtual {v0, v2, p0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    .line 276
    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 278
    if-ne v0, v1, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->startFluorideStreaming()V

    .line 280
    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :cond_1
    monitor-exit p0

    return v0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private requestAudioFocusIfNone()V
    .locals 2

    .line 256
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkStreamHandler"

    const-string v1, "requestAudioFocusIfNone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->requestAudioFocus()I

    .line 260
    :cond_1
    return-void
.end method

.method private declared-synchronized requestMediaKeyFocus()V
    .locals 5

    monitor-enter p0

    .line 296
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkStreamHandler"

    const-string v1, "requestMediaKeyFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 299
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 300
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 303
    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f0d0000

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 304
    invoke-virtual {v4}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v4

    .line 303
    invoke-static {v2, v3, v0, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 305
    if-nez v0, :cond_1

    .line 306
    const-string v0, "A2dpSinkStreamHandler"

    const-string v1, "Failed to initialize media player. You may not get media key events"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 310
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/bluetooth/a2dpsink/-$$Lambda$A2dpSinkStreamHandler$PPcVodXV7oIPabVMroFxjVNhk2o;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/a2dpsink/-$$Lambda$A2dpSinkStreamHandler$PPcVodXV7oIPabVMroFxjVNhk2o;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 319
    invoke-static {v1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->setActive(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendAvrcpPause()V
    .locals 0

    .line 360
    invoke-static {}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->pause()V

    .line 361
    return-void
.end method

.method private sendAvrcpPlay()V
    .locals 0

    .line 364
    invoke-static {}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->play()V

    .line 365
    return-void
.end method

.method private setFluorideAudioTrackGain(F)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->informAudioTrackGainNative(F)V

    .line 357
    return-void
.end method

.method private shouldRequestFocus()Z
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 397
    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 396
    return v0
.end method

.method private startFluorideStreaming()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->informAudioFocusStateNative(I)V

    .line 346
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->informAudioTrackGainNative(F)V

    .line 347
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->requestMediaKeyFocus()V

    .line 348
    return-void
.end method

.method private stopFluorideStreaming()V
    .locals 2

    .line 351
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->releaseMediaKeyFocus()V

    .line 352
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->informAudioFocusStateNative(I)V

    .line 353
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->abandonAudioFocus()V

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method declared-synchronized getAudioFocus()I
    .locals 1

    monitor-enter p0

    .line 384
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getFocusState()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 144
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    const-string v1, "A2dpSinkStreamHandler"

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " process message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " audioFocus =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 239
    :pswitch_0
    invoke-static {}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 240
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->inCallFromStreamingDevice()Z

    move-result p1

    if-nez p1, :cond_b

    .line 241
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->sendAvrcpPause()V

    .line 242
    iput-boolean v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mSentPause:Z

    .line 243
    iput-boolean v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    goto/16 :goto_1

    .line 185
    :pswitch_1
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->requestAudioFocusIfNone()V

    .line 186
    goto/16 :goto_1

    .line 194
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    .line 196
    const/4 v0, -0x3

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    const/16 v1, 0x9

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->removeMessages(I)V

    .line 200
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->startFluorideStreaming()V

    .line 201
    iget-boolean p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mSentPause:Z

    if-eqz p1, :cond_8

    .line 202
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->sendAvrcpPlay()V

    .line 203
    iput-boolean v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mSentPause:Z

    goto :goto_0

    .line 232
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->abandonAudioFocus()V

    .line 233
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->sendAvrcpPause()V

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 226
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->setFluorideAudioTrackGain(F)V

    .line 227
    goto :goto_0

    .line 209
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080002

    .line 210
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 211
    if-ltz p1, :cond_5

    const/16 v0, 0x64

    if-le p1, v0, :cond_6

    .line 212
    :cond_5
    const-string p1, "Invalid duck percent using default."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/16 p1, 0x19

    .line 215
    :cond_6
    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 216
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->DBG:Z

    if-eqz v0, :cond_7

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting reduce gain on transient loss gain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->setFluorideAudioTrackGain(F)V

    .line 220
    nop

    .line 236
    :cond_8
    :goto_0
    goto :goto_1

    .line 190
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mSentPause:Z

    .line 191
    goto :goto_1

    .line 180
    :pswitch_4
    iput-boolean v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    .line 182
    goto :goto_1

    .line 171
    :pswitch_5
    iput-boolean v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    .line 173
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->isIotDevice()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->isTvDevice()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->shouldRequestFocus()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 174
    :cond_9
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->requestAudioFocusIfNone()V

    .line 175
    goto :goto_1

    .line 166
    :pswitch_6
    iput-boolean v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    .line 168
    goto :goto_1

    .line 162
    :pswitch_7
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->requestAudioFocusIfNone()V

    .line 163
    goto :goto_1

    .line 158
    :pswitch_8
    goto :goto_1

    .line 150
    :pswitch_9
    iput-boolean v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    .line 151
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->isTvDevice()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->shouldRequestFocus()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 152
    :cond_a
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->requestAudioFocusIfNone()V

    .line 250
    :cond_b
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isPlaying()Z
    .locals 3

    .line 137
    iget-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mStreamAvailable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->mAudioFocus:I

    if-eq v0, v1, :cond_0

    const/4 v2, -0x3

    if-ne v0, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$requestMediaKeyFocus$0$A2dpSinkStreamHandler(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Silent media player error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "A2dpSinkStreamHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->releaseMediaKeyFocus()V

    .line 314
    const/4 p1, 0x0

    return p1
.end method

.method requestAudioFocus(Z)V
    .locals 1

    .line 129
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 130
    return-void
.end method
