.class Lcom/android/bluetooth/btservice/PhonePolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "PhonePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/PhonePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/PhonePolicy;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/PhonePolicy;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy$1;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 120
    if-nez p1, :cond_0

    .line 121
    const-string p1, "Received intent with null action"

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$000(Ljava/lang/String;)V

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :sswitch_1
    const-string v0, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v0, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "android.bluetooth.device.action.UUID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_7
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :goto_0
    move v0, v6

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy$1;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$100(Lcom/android/bluetooth/btservice/PhonePolicy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 159
    :pswitch_1
    iget-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy$1;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$100(Lcom/android/bluetooth/btservice/PhonePolicy;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 160
    goto/16 :goto_3

    .line 153
    :pswitch_2
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 154
    const/16 p2, 0xc

    if-ne p1, p2, :cond_2

    .line 155
    iget-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy$1;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$100(Lcom/android/bluetooth/btservice/PhonePolicy;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 146
    :pswitch_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy$1;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$100(Lcom/android/bluetooth/btservice/PhonePolicy;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x15

    invoke-virtual {p1, v3, v0, v6, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 149
    goto :goto_3

    .line 141
    :pswitch_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy$1;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$100(Lcom/android/bluetooth/btservice/PhonePolicy;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3, v5, v6, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 144
    goto :goto_3

    .line 136
    :pswitch_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy$1;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$100(Lcom/android/bluetooth/btservice/PhonePolicy;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3, v4, v6, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 139
    goto :goto_3

    .line 131
    :pswitch_6
    iget-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy$1;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$100(Lcom/android/bluetooth/btservice/PhonePolicy;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5, v4, v6, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 134
    goto :goto_3

    .line 126
    :pswitch_7
    iget-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy$1;->this$0:Lcom/android/bluetooth/btservice/PhonePolicy;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->access$100(Lcom/android/bluetooth/btservice/PhonePolicy;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5, v5, v6, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 129
    goto :goto_3

    .line 164
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received unexpected intent, action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothPhonePolicy"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b36f014 -> :sswitch_7
        -0x16809cc6 -> :sswitch_6
        -0x11f77b4b -> :sswitch_5
        0x10531fc -> :sswitch_4
        0x1d0d7e43 -> :sswitch_3
        0x2083ec2d -> :sswitch_2
        0x461dab18 -> :sswitch_1
        0x4a286686 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
