.class Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;
.super Lcom/android/bluetooth/avrcp/MediaBrowser$SubscriptionCallback;
.source "BrowsedPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowserSubscriptionCallback"
.end annotation


# instance fields
.field mBrowseCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/MediaBrowser$SubscriptionCallback;-><init>()V

    .line 402
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;->mBrowseCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;

    .line 405
    iput-object p2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;->mBrowseCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;

    .line 406
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 410
    invoke-static {}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$300()Z

    move-result v0

    const-string v1, "AvrcpBrowsedPlayerWrapper"

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChildrenLoaded: mediaId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;->mBrowseCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;

    if-nez v0, :cond_1

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChildrenLoaded: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " children loaded while callback is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$200(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Lcom/android/bluetooth/avrcp/MediaBrowser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/browse/MediaBrowser$MediaItem;

    .line 427
    invoke-static {}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$300()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChildrenLoaded: Child=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\",  ID=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 428
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_2
    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->isBrowsable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 433
    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 434
    nop

    .line 435
    if-eqz v4, :cond_3

    .line 437
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/browse/MediaBrowser$MediaItem;Z)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v4

    iget-object v4, v4, Lcom/android/bluetooth/avrcp/Metadata;->title:Ljava/lang/String;

    goto :goto_1

    .line 435
    :cond_3
    const-string v4, "Not Provided"

    .line 439
    :goto_1
    new-instance v5, Lcom/android/bluetooth/avrcp/Folder;

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v3, v4}, Lcom/android/bluetooth/avrcp/Folder;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 440
    new-instance v2, Lcom/android/bluetooth/avrcp/ListItem;

    invoke-direct {v2, v5}, Lcom/android/bluetooth/avrcp/ListItem;-><init>(Lcom/android/bluetooth/avrcp/Folder;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    goto :goto_2

    .line 443
    :cond_4
    new-instance v4, Lcom/android/bluetooth/avrcp/ListItem;

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/browse/MediaBrowser$MediaItem;Z)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/android/bluetooth/avrcp/ListItem;-><init>(Lcom/android/bluetooth/avrcp/Metadata;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :goto_2
    goto :goto_0

    .line 447
    :cond_5
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    iget-object p2, p2, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mCachedFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;->mBrowseCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Util;->cloneList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v3, p1, v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;->run(ILjava/lang/String;Ljava/util/List;)V

    .line 451
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;->mBrowseCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;

    .line 452
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->disconnect()V

    .line 453
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 458
    const-string v0, "AvrcpBrowsedPlayerWrapper"

    const-string v1, "BrowserSubscriptionCallback: Could not get folder items"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;->mBrowseCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    invoke-interface {v0, v2, p1, v1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;->run(ILjava/lang/String;Ljava/util/List;)V

    .line 460
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->disconnect()V

    .line 461
    return-void
.end method
