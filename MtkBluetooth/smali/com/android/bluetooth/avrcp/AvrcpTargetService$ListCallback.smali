.class Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;
.super Ljava/lang/Object;
.source "AvrcpTargetService.java"

# interfaces
.implements Lcom/android/bluetooth/avrcp/MediaPlayerList$MediaUpdateCallback;
.implements Lcom/android/bluetooth/avrcp/MediaPlayerList$FolderUpdateCallback;
.implements Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpTargetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/bluetooth/avrcp/MediaData;)V
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$000(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$100(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/MediaData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaData;->metadata:Lcom/android/bluetooth/avrcp/Metadata;

    iget-object v1, p1, Lcom/android/bluetooth/avrcp/MediaData;->metadata:Lcom/android/bluetooth/avrcp/Metadata;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 81
    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$100(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/MediaData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    iget-object v2, p1, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->playstateEquals(Landroid/media/session/PlaybackState;Landroid/media/session/PlaybackState;)Z

    move-result v1

    .line 82
    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$100(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/MediaData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/bluetooth/avrcp/MediaData;->queue:Ljava/util/List;

    iget-object v3, p1, Lcom/android/bluetooth/avrcp/MediaData;->queue:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 84
    xor-int/lit8 v2, v2, 0x1

    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMediaUpdated: track_changed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " queue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AvrcpTargetService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {v3, p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$102(Lcom/android/bluetooth/avrcp/AvrcpTargetService;Lcom/android/bluetooth/avrcp/MediaData;)Lcom/android/bluetooth/avrcp/MediaData;

    .line 90
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$000(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$000(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->sendMediaUpdate(ZZZ)V

    .line 92
    return-void
.end method

.method public run(Z)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$000(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$000(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->sendPlayerAppSettingsUpdate(Z)V

    .line 106
    return-void
.end method

.method public run(ZZZ)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$000(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpTargetService$ListCallback;->this$0:Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->access$000(Lcom/android/bluetooth/avrcp/AvrcpTargetService;)Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->sendFolderUpdate(ZZZ)V

    .line 100
    return-void
.end method
