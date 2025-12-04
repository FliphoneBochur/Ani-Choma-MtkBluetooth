.class Lcom/android/bluetooth/btservice/AdapterProperties$1;
.super Landroid/content/BroadcastReceiver;
.source "AdapterProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterProperties;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterProperties;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 124
    const-string v0, "AdapterProperties"

    if-nez p1, :cond_0

    .line 125
    const-string p1, "Received intent with null action"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 128
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x6

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/4 v6, 0x5

    const/16 v7, 0xc

    const/4 v8, 0x4

    const/16 v9, 0xb

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v11

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v5

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v6

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v4

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_6
    const-string v2, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v10

    goto :goto_0

    :sswitch_7
    const-string v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v8

    goto :goto_0

    :sswitch_8
    const-string v2, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v7

    goto :goto_0

    :sswitch_9
    const-string v2, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_b
    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_c
    const-string v2, "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v1, 0xd

    goto :goto_0

    :sswitch_d
    const-string v2, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v9

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unknown intent "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 169
    :pswitch_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {p1, v3, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 170
    goto :goto_1

    .line 166
    :pswitch_1
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    const/16 v0, 0x11

    invoke-static {p1, v0, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 167
    goto :goto_1

    .line 163
    :pswitch_2
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {p1, v4, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 164
    goto :goto_1

    .line 160
    :pswitch_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    const/16 v0, 0x12

    invoke-static {p1, v0, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 161
    goto :goto_1

    .line 157
    :pswitch_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {p1, v5, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 158
    goto :goto_1

    .line 154
    :pswitch_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {p1, v6, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 155
    goto :goto_1

    .line 151
    :pswitch_6
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {p1, v7, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 152
    goto :goto_1

    .line 148
    :pswitch_7
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {p1, v8, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 149
    goto :goto_1

    .line 145
    :pswitch_8
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    const/16 v0, 0x13

    invoke-static {p1, v0, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 146
    goto :goto_1

    .line 142
    :pswitch_9
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {p1, v9, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 143
    goto :goto_1

    .line 139
    :pswitch_a
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    const/16 v0, 0x15

    invoke-static {p1, v0, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 140
    goto :goto_1

    .line 136
    :pswitch_b
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    const/16 v0, 0x10

    invoke-static {p1, v0, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 137
    goto :goto_1

    .line 133
    :pswitch_c
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {p1, v10, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 134
    goto :goto_1

    .line 130
    :pswitch_d
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties$1;->this$0:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {p1, v11, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V

    .line 131
    nop

    .line 175
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x693fb1f3 -> :sswitch_d
        -0x63e84816 -> :sswitch_c
        -0x3ce0ba4b -> :sswitch_b
        -0x32445438 -> :sswitch_a
        -0x2486726f -> :sswitch_9
        -0x4fdeb4b -> :sswitch_8
        0x264968e -> :sswitch_7
        0x1ab8cab8 -> :sswitch_6
        0x2083ec2d -> :sswitch_5
        0x27181f3c -> :sswitch_4
        0x36eb6e04 -> :sswitch_3
        0x3737b587 -> :sswitch_2
        0x4a286686 -> :sswitch_1
        0x5055e708 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
