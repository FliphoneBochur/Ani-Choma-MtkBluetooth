.class Lcom/android/bluetooth/avrcp/MediaPlayerList$3;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "MediaPlayerList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/MediaPlayerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/MediaPlayerList;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$3;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 725
    if-nez p1, :cond_0

    .line 726
    return-void

    .line 728
    :cond_0
    const/4 v0, 0x0

    .line 729
    const/4 v1, 0x0

    .line 730
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 731
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    const/16 v5, 0xc

    if-ne v3, v5, :cond_1

    .line 733
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 735
    nop

    .line 736
    move-object v1, v2

    move v0, v4

    .line 738
    :cond_1
    goto :goto_0

    .line 739
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$3;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$200(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Z

    move-result p1

    if-eq v0, p1, :cond_6

    .line 740
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$3;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$300(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    move-result-object p1

    invoke-static {}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$100()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlaybackConfigChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$3;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$200(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Z

    move-result v4

    const-string v5, "Active"

    const-string v6, "Non-active"

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_1

    :cond_3
    move-object v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v6

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    const-string v4, "AvrcpMediaPlayerList"

    invoke-virtual {p1, v2, v4, v3}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->logd(ZLjava/lang/String;Ljava/lang/String;)V

    .line 743
    if-eqz v0, :cond_5

    .line 744
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$3;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$300(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    move-result-object p1

    invoke-static {}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$100()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlaybackConfigChanged: active config: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v4, v1}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->logd(ZLjava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$3;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {p1, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$202(Lcom/android/bluetooth/avrcp/MediaPlayerList;Z)Z

    .line 748
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$3;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->updateMediaForAudioPlayback()V

    .line 750
    :cond_6
    return-void
.end method
