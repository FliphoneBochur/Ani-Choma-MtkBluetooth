.class Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;
.super Landroid/hardware/radio/V1_0/ISapCallback$Stub;
.source "SapRilReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapRilReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SapCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/sap/SapRilReceiver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/sap/SapRilReceiver;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-direct {p0}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public apduResponse(IILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apduResponse: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SapRilReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$100(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 106
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 107
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/sap/SapMessage;->setResultCode(I)V

    .line 108
    if-nez p2, :cond_0

    .line 109
    invoke-static {p3}, Lcom/android/bluetooth/sap/SapRilReceiver;->arrayListToPrimitiveArray(Ljava/util/List;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/sap/SapMessage;->setApduResp([B)V

    .line 111
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {p2, p1, v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$200(Lcom/android/bluetooth/sap/SapRilReceiver;ILcom/android/bluetooth/sap/SapMessage;)V

    .line 112
    return-void
.end method

.method public connectResponse(III)V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectResponse: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sapConnectRsp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxMsgSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SapRilReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$100(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 74
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 75
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/sap/SapMessage;->setConnectionStatus(I)V

    .line 76
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 77
    invoke-virtual {v0, p3}, Lcom/android/bluetooth/sap/SapMessage;->setMaxMsgSize(I)V

    .line 79
    :cond_0
    const/4 p2, -0x1

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/sap/SapMessage;->setResultCode(I)V

    .line 80
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {p2, p1, v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$200(Lcom/android/bluetooth/sap/SapRilReceiver;ILcom/android/bluetooth/sap/SapMessage;)V

    .line 81
    return-void
.end method

.method public disconnectIndication(II)V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectIndication: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " disconnectType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SapRilReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$100(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 97
    new-instance p1, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v0, 0x102

    invoke-direct {p1, v0}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 98
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/sap/SapMessage;->setDisconnectionType(I)V

    .line 99
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {p2, p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$300(Lcom/android/bluetooth/sap/SapRilReceiver;Lcom/android/bluetooth/sap/SapMessage;)V

    .line 100
    return-void
.end method

.method public disconnectResponse(I)V
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectResponse: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SapRilReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$100(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 87
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 88
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;->setResultCode(I)V

    .line 89
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {v1, p1, v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$200(Lcom/android/bluetooth/sap/SapRilReceiver;ILcom/android/bluetooth/sap/SapMessage;)V

    .line 90
    return-void
.end method

.method public errorResponse(I)V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorResponse: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SapRilReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$100(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 186
    new-instance p1, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v0, 0x1ff

    invoke-direct {p1, v0}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 187
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {v0, p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$300(Lcom/android/bluetooth/sap/SapRilReceiver;Lcom/android/bluetooth/sap/SapMessage;)V

    .line 188
    return-void
.end method

.method public powerResponse(II)V
    .locals 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "powerResponse: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SapRilReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$100(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 130
    sget-object v0, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "powerResponse: reqType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 137
    new-instance p1, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 139
    new-instance p1, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 143
    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/sap/SapMessage;->setResultCode(I)V

    .line 144
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {p2, p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$300(Lcom/android/bluetooth/sap/SapRilReceiver;Lcom/android/bluetooth/sap/SapMessage;)V

    .line 145
    return-void

    .line 141
    :cond_2
    return-void
.end method

.method public resetSimResponse(II)V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetSimResponse: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SapRilReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$100(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 151
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 152
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/sap/SapMessage;->setResultCode(I)V

    .line 153
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {p2, p1, v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$200(Lcom/android/bluetooth/sap/SapRilReceiver;ILcom/android/bluetooth/sap/SapMessage;)V

    .line 154
    return-void
.end method

.method public statusIndication(II)V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statusIndication: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SapRilReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$100(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 160
    new-instance p1, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v0, 0x11

    invoke-direct {p1, v0}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 161
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/sap/SapMessage;->setStatusChange(I)V

    .line 162
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {p2, p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$300(Lcom/android/bluetooth/sap/SapRilReceiver;Lcom/android/bluetooth/sap/SapMessage;)V

    .line 163
    return-void
.end method

.method public transferAtrResponse(IILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transferAtrResponse: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SapRilReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$100(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 118
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 119
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/sap/SapMessage;->setResultCode(I)V

    .line 120
    if-nez p2, :cond_0

    .line 121
    invoke-static {p3}, Lcom/android/bluetooth/sap/SapRilReceiver;->arrayListToPrimitiveArray(Ljava/util/List;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/sap/SapMessage;->setAtr([B)V

    .line 123
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {p2, p1, v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$200(Lcom/android/bluetooth/sap/SapRilReceiver;ILcom/android/bluetooth/sap/SapMessage;)V

    .line 124
    return-void
.end method

.method public transferCardReaderStatusResponse(III)V
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transferCardReaderStatusResponse: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cardReaderStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SapRilReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$100(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 172
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 173
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/sap/SapMessage;->setResultCode(I)V

    .line 174
    if-nez p2, :cond_0

    .line 175
    invoke-virtual {v0, p3}, Lcom/android/bluetooth/sap/SapMessage;->setCardReaderStatus(I)V

    .line 177
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {p2, p1, v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$200(Lcom/android/bluetooth/sap/SapRilReceiver;ILcom/android/bluetooth/sap/SapMessage;)V

    .line 178
    return-void
.end method

.method public transferProtocolResponse(II)V
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transferProtocolResponse: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SapRilReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$100(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 194
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 195
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/sap/SapMessage;->setResultCode(I)V

    .line 196
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {p2, p1, v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$200(Lcom/android/bluetooth/sap/SapRilReceiver;ILcom/android/bluetooth/sap/SapMessage;)V

    .line 197
    return-void
.end method
