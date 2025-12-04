.class Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$ImageDownloadCallback;
.super Ljava/lang/Object;
.source "AvrcpControllerService.java"

# interfaces
.implements Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDownloadCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$ImageDownloadCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$1;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$ImageDownloadCallback;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;)V

    return-void
.end method


# virtual methods
.method public onImageDownloadComplete(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;)V
    .locals 3

    .line 105
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    const-string v1, "AvrcpControllerService"

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image downloaded [device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uuid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$ImageDownloadCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object v0

    .line 110
    if-nez v0, :cond_1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No state machine found for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$ImageDownloadCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-virtual {p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->removeImage(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 113
    return-void

    .line 115
    :cond_1
    const/16 p1, 0x190

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 117
    return-void
.end method
