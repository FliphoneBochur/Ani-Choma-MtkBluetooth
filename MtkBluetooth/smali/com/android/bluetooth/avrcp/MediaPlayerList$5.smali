.class Lcom/android/bluetooth/avrcp/MediaPlayerList$5;
.super Ljava/lang/Object;
.source "MediaPlayerList.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;


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

    .line 785
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$5;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$5;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$500(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Landroid/media/session/MediaSessionManager;

    move-result-object v0

    const-string v1, "AvrcpMediaPlayerList"

    if-nez v0, :cond_0

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaKeyEventSessionChanged(): Unexpected callback from the MediaSessionManager, pkg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", token="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return-void

    .line 795
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    return-void

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$5;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 799
    return-void

    .line 801
    :cond_2
    if-eqz p2, :cond_5

    .line 802
    new-instance p1, Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$5;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    .line 803
    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaKeyEventSessionChanged(Token):token= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$5;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->addMediaPlayer(Landroid/media/session/MediaController;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 814
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to add media player: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void

    .line 819
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMediaKeyEventSessionChanged: token="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 819
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$5;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_4

    return-void

    .line 824
    :cond_4
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$5;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->setActivePlayer(I)V

    .line 825
    goto :goto_0

    .line 826
    :cond_5
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$5;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->haveMediaPlayer(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 827
    const-string p1, "onMediaKeyEventSessionChanged(PackageName): Media key event session changed to a player we don\'t have a session for"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$700(Ljava/lang/String;)V

    .line 829
    return-void

    .line 832
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMediaKeyEventSessionChanged: packageName="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$5;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->setActivePlayer(I)V

    .line 835
    :goto_0
    return-void
.end method
