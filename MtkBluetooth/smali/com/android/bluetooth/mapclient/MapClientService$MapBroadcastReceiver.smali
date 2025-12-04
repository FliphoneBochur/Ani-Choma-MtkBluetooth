.class Lcom/android/bluetooth/mapclient/MapClientService$MapBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MapClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/MapClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/mapclient/MapClientService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/mapclient/MapClientService;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MapClientService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/mapclient/MapClientService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/mapclient/MapClientService;Lcom/android/bluetooth/mapclient/MapClientService$1;)V
    .locals 0

    .line 591
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/MapClientService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/mapclient/MapClientService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 594
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 598
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.bluetooth.device.action.SDP_RECORD"

    if-nez v1, :cond_0

    .line 599
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    return-void

    .line 603
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 604
    const-string v3, "MapClientService"

    if-nez v1, :cond_1

    .line 605
    const-string p1, "broadcast has NO device param!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-void

    .line 612
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/mapclient/MapClientService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/mapclient/MapClientService;

    invoke-static {v4}, Lcom/android/bluetooth/mapclient/MapClientService;->access$200(Lcom/android/bluetooth/mapclient/MapClientService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/mapclient/MceStateMachine;

    .line 613
    if-nez v1, :cond_2

    .line 614
    const-string p1, "No Statemachine found for the device from broadcast"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void

    .line 618
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getState()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 620
    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->disconnect()Z

    .line 624
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 625
    const-string p1, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 630
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 632
    nop

    .line 633
    const-string p1, "android.bluetooth.device.extra.SDP_RECORD"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/SdpMasRecord;

    .line 637
    const/4 v0, -0x1

    const-string v2, "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 638
    if-nez p1, :cond_4

    .line 639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SDP search ended with no MAS record. Status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void

    .line 642
    :cond_4
    const/16 p2, 0x3ed

    invoke-virtual {v1, p2, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 643
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 646
    :cond_5
    return-void
.end method
