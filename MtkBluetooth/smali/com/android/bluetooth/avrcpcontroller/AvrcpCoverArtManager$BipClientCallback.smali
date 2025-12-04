.class Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;
.super Ljava/lang/Object;
.source "AvrcpCoverArtManager.java"

# interfaces
.implements Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BipClientCallback"
.end annotation


# instance fields
.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 376
    return-void
.end method


# virtual methods
.method public onConnectionStateChanged(II)V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$000(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Ljava/lang/String;)V

    .line 381
    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$100(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 387
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$200(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getCurrentMetadataIfNoCoverArt(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 388
    :cond_0
    if-nez p2, :cond_2

    .line 389
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$300(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;

    move-result-object p1

    .line 390
    if-eqz p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 391
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 392
    if-eqz p2, :cond_2

    .line 393
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    const-string v0, "Disconnect was not expected by us. Attempt to reconnect."

    invoke-static {p2, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$000(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Ljava/lang/String;)V

    .line 394
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->getL2capPsm()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->connect(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 397
    :cond_2
    :goto_1
    return-void
.end method

.method public onGetImageComplete(ILjava/lang/String;Lcom/android/bluetooth/avrcpcontroller/BipImage;)V
    .locals 3

    .line 421
    const/16 v0, 0xa0

    if-eq p1, v0, :cond_0

    .line 422
    iget-object p3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": GetImage() failed - Handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Code: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$400(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Ljava/lang/String;)V

    .line 424
    return-void

    .line 426
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getUuidForHandle(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 427
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Received image data for handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", uuid: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", image: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$000(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Ljava/lang/String;)V

    .line 429
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-static {p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$600(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;)Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    move-result-object p2

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3}, Lcom/android/bluetooth/avrcpcontroller/BipImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p2, v0, p1, p3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->addImage(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p2

    .line 430
    if-nez p2, :cond_1

    .line 431
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    const-string p2, "Could not store downloaded image"

    invoke-static {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Ljava/lang/String;)V

    .line 432
    return-void

    .line 434
    :cond_1
    new-instance p3, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-direct {p3, v0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Ljava/lang/String;Landroid/net/Uri;)V

    .line 435
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$800(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;)Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$800(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;)Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$Callback;

    move-result-object p1

    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, p2, p3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$Callback;->onImageDownloadComplete(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;)V

    .line 436
    :cond_2
    return-void
.end method

.method public onGetImagePropertiesComplete(ILjava/lang/String;Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;)V
    .locals 2

    .line 402
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-static {p1, p3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$500(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;)Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    move-result-object p1

    .line 408
    iget-object p3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Download image - handle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$000(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Ljava/lang/String;)V

    .line 410
    iget-object p3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p3, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$300(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;

    move-result-object p3

    .line 411
    if-nez p3, :cond_1

    .line 412
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Could not getImage() for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " because client has disconnected."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$400(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Ljava/lang/String;)V

    .line 414
    return-void

    .line 416
    :cond_1
    invoke-virtual {p3, p2, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->getImage(Ljava/lang/String;Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;)Z

    .line 417
    return-void

    .line 403
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": GetImageProperties() failed - Handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Code: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->access$400(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Ljava/lang/String;)V

    .line 405
    return-void
.end method
