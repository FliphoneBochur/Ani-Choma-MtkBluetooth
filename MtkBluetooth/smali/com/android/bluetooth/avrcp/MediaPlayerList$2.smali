.class Lcom/android/bluetooth/avrcp/MediaPlayerList$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 651
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$2;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 654
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPackageChangedBroadcastReceiver: action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpMediaPlayerList"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 658
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 667
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 668
    if-eqz p1, :cond_5

    .line 669
    invoke-static {}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$100()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Name of package changed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 659
    :cond_2
    :goto_0
    const/4 p1, 0x0

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 661
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 662
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$2;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->haveMediaPlayer(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 663
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerList$2;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerList;

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->access$000(Lcom/android/bluetooth/avrcp/MediaPlayerList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerList;->removeMediaPlayer(I)V

    .line 665
    :cond_4
    nop

    .line 675
    :cond_5
    :goto_1
    return-void
.end method
