.class Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SapServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SapServerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/sap/SapServer;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/sap/SapServer;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/sap/SapServer;Lcom/android/bluetooth/sap/SapServer$1;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;-><init>(Lcom/android/bluetooth/sap/SapServer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapServer;->access$100(Lcom/android/bluetooth/sap/SapServer;)Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    move-result-object p1

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne p1, v1, :cond_6

    .line 149
    const-string p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    if-eqz p1, :cond_0

    .line 151
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    new-instance p1, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {p1, v0}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 156
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {p2}, Lcom/android/bluetooth/sap/SapServer;->access$200(Lcom/android/bluetooth/sap/SapServer;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/sap/SapMessage;->setMaxMsgSize(I)V

    .line 157
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {p2, p1}, Lcom/android/bluetooth/sap/SapServer;->access$300(Lcom/android/bluetooth/sap/SapServer;Lcom/android/bluetooth/sap/SapMessage;)V

    .line 160
    :cond_0
    goto/16 :goto_1

    .line 161
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "SapServer"

    if-eqz p1, :cond_4

    .line 162
    const-string p1, "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " - Received SAP_DISCONNECT_ACTION type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/16 p2, 0x101

    if-ne p1, p2, :cond_2

    .line 168
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapServer;->access$400(Lcom/android/bluetooth/sap/SapServer;)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {p2}, Lcom/android/bluetooth/sap/SapServer;->access$100(Lcom/android/bluetooth/sap/SapServer;)Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    move-result-object p2

    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq p2, v0, :cond_3

    iget-object p2, p0, Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {p2}, Lcom/android/bluetooth/sap/SapServer;->access$100(Lcom/android/bluetooth/sap/SapServer;)Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    move-result-object p2

    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq p2, v0, :cond_3

    .line 171
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {p2, p1}, Lcom/android/bluetooth/sap/SapServer;->access$500(Lcom/android/bluetooth/sap/SapServer;I)V

    .line 174
    :cond_3
    :goto_0
    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.bluetooth.sap.action.STATUS_IND_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 175
    const/4 p1, 0x2

    const-string v0, "com.android.bluetooth.sap.extra.STATUS_IND_TYPE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " - Received SAP_STATUS_IND_ACTION type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance p2, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v0, 0x11

    invoke-direct {p2, v0}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 179
    invoke-virtual {p2, p1}, Lcom/android/bluetooth/sap/SapMessage;->setStatusChange(I)V

    .line 180
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapServer;

    invoke-static {p1, p2}, Lcom/android/bluetooth/sap/SapServer;->access$600(Lcom/android/bluetooth/sap/SapServer;Lcom/android/bluetooth/sap/SapMessage;)V

    .line 182
    goto :goto_1

    .line 183
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RIL-BT received unexpected Intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_6
    :goto_1
    return-void
.end method
