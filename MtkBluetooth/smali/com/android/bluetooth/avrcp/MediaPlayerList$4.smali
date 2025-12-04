.class Lcom/android/bluetooth/avrcp/MediaPlayerList$4;
.super Ljava/lang/Object;
.source "MediaPlayerList.java"

# interfaces
.implements Lcom/android/bluetooth/avrcp/MediaPlayerWrapper$Callback;


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

    .line 754
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$4;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mediaUpdatedCallback(Lcom/android/bluetooth/avrcp/MediaData;)V
    .locals 3

    .line 757
    iget-object v0, p1, Lcom/android/bluetooth/avrcp/MediaData;->metadata:Lcom/android/bluetooth/avrcp/Metadata;

    const-string v1, "AvrcpMediaPlayerList"

    if-nez v0, :cond_0

    .line 758
    const-string p1, "mediaUpdatedCallback(): metadata is null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void

    .line 762
    :cond_0
    iget-object v0, p1, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    if-nez v0, :cond_1

    .line 763
    const-string p1, "mediaUpdatedCallback(): Tried to update with null state"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return-void

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$4;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$200(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 768
    const-string p1, "Some audio playbacks are still active, drop it"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return-void

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$4;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$400(Lcom/android/bluetooth/avrcp/MediaPlayerList;Lcom/android/bluetooth/avrcp/MediaData;)V

    .line 772
    return-void
.end method

.method public sessionUpdatedCallback(Ljava/lang/String;)V
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$4;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->haveMediaPlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessionUpdatedCallback(): packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpMediaPlayerList"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$4;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->removeMediaPlayer(I)V

    .line 780
    :cond_0
    return-void
.end method
