.class Lcom/android/bluetooth/btservice/RemoteDevices$1;
.super Landroid/content/BroadcastReceiver;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/RemoteDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/RemoteDevices;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$1;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2f1da261

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x2083ec2d

    if-eq v0, v1, :cond_2

    const v1, 0x69ab72ba

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :cond_2
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :cond_3
    const-string v0, "android.bluetooth.headset.action.HF_INDICATORS_VALUE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothRemoteDevices"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 106
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$1;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->onHeadsetConnectionStateChanged(Landroid/content/Intent;)V

    .line 107
    goto :goto_2

    .line 103
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$1;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->onVendorSpecificHeadsetEvent(Landroid/content/Intent;)V

    .line 104
    goto :goto_2

    .line 100
    :cond_6
    iget-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$1;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->onHfIndicatorValueChanged(Landroid/content/Intent;)V

    .line 101
    nop

    .line 112
    :goto_2
    return-void
.end method
