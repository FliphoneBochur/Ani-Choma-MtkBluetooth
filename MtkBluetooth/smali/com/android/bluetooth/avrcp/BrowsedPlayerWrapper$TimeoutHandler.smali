.class Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$TimeoutHandler;
.super Landroid/os/Handler;
.source "BrowsedPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeoutHandler"
.end annotation


# static fields
.field static final CALLBACK_TIMEOUT_MS:J = 0x1388L

.field static final MSG_TIMEOUT:I


# instance fields
.field private mPlaybackCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$TimeoutHandler;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    .line 318
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 315
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$TimeoutHandler;->mPlaybackCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;

    .line 319
    iput-object p3, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$TimeoutHandler;->mPlaybackCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;

    .line 320
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 324
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AvrcpBrowsedPlayerWrapper"

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message on timeout handler: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void

    .line 329
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Timeout while waiting for playback to begin on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$TimeoutHandler;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$TimeoutHandler;->mPlaybackCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;->run(I)V

    .line 331
    return-void
.end method
