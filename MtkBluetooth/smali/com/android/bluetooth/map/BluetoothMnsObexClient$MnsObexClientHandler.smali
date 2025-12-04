.class final Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;
.super Landroid/os/Handler;
.source "BluetoothMnsObexClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMnsObexClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MnsObexClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;Landroid/os/Looper;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 119
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;Landroid/os/Looper;Lcom/android/bluetooth/map/BluetoothMnsObexClient$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, " notfStatus: "

    const-string v2, "BluetoothMnsObexClient"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->access$400(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)V

    .line 145
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    new-instance v4, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v4, v0, v3, v5, v6}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;ZII)V

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    .line 147
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 148
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SearchReg  masId:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 154
    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->access$300(Lcom/android/bluetooth/map/BluetoothMnsObexClient;[BI)I

    .line 140
    goto :goto_0

    .line 126
    :cond_3
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->access$100()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reg  masId:  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isValidMnsRecord()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->handleRegistration(II)V

    goto :goto_0

    .line 133
    :cond_5
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->access$200()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 134
    const-string p1, "MNS SDP info not available yet - Cannot Connect."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_6
    :goto_0
    return-void
.end method
