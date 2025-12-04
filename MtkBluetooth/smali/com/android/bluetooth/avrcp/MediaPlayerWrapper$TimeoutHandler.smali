.class Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$TimeoutHandler;
.super Landroid/os/Handler;
.source "MediaPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeoutHandler"
.end annotation


# static fields
.field private static final CALLBACK_TIMEOUT_MS:J = 0x7d0L

.field private static final MSG_TIMEOUT:I


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;Landroid/os/Looper;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$TimeoutHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    .line 318
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 319
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 323
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AvrcpMediaPlayerWrapper"

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message on timeout handler: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 328
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Timeout while waiting for metadata to sync for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$TimeoutHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  \u2514 Current Metadata: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$TimeoutHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/MediaMetadata;)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  \u2514 Current Playstate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$TimeoutHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$TimeoutHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->getQueue()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/Util;->toMetadataList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 332
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  \u2514 QueueItem("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$TimeoutHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->access$100(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)V

    .line 340
    sget-boolean p1, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->sTesting:Z

    if-eqz p1, :cond_2

    const-string p1, "Crashing the stack"

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_2
    return-void
.end method
