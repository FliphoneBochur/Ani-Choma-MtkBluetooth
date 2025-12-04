.class Lcom/android/bluetooth/avrcp/MediaPlayerList$1;
.super Ljava/lang/Object;
.source "MediaPlayerList.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


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

    .line 620
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    monitor-enter v0

    .line 625
    :try_start_0
    const-string v1, "AvrcpMediaPlayerList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActiveSessionsChanged: number of controllers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 634
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 636
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 637
    const-string v3, "AvrcpMediaPlayerList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActiveSessionsChanged: controller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 637
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 640
    goto :goto_1

    .line 643
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 644
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->addMediaPlayer(Landroid/media/session/MediaController;)I

    .line 636
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 646
    :cond_2
    monitor-exit v0

    .line 647
    return-void

    .line 646
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
