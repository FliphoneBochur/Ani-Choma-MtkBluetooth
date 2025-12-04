.class Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;
.super Lcom/android/bluetooth/avrcp/MediaBrowser$ConnectionCallback;
.source "BrowsedPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/MediaBrowser$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpBrowsedPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$200(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Lcom/android/bluetooth/avrcp/MediaBrowser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$102(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$100(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$100(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->executeCallback(ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V

    .line 290
    return-void

    .line 285
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->executeCallback(ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V

    .line 286
    return-void
.end method

.method public onConnectionFailed()V
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionFailed: Connection Failed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpBrowsedPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->executeCallback(ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V

    .line 298
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->clearCallback()V

    .line 299
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->executeCallback(ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V

    .line 306
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->disconnect()V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionSuspended: Connection Suspended with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->access$000(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpBrowsedPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method
