.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketConnectThread"
.end annotation


# instance fields
.field private mBtSocket:Landroid/bluetooth/BluetoothSocket;

.field private final mChannel:I

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mHost:Ljava/lang/String;

.field private mIsConnected:Z

.field private mIsInterrupted:Z

.field private mL2cChannel:I

.field private mRetry:Z

.field private mSdpInitiated:Z

.field private mTimestamp:J

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 824
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 825
    const-string p1, "Socket Connect Thread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 809
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mL2cChannel:I

    .line 815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mBtSocket:Landroid/bluetooth/BluetoothSocket;

    .line 817
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 819
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 821
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mIsInterrupted:Z

    .line 826
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 827
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mHost:Ljava/lang/String;

    .line 828
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mChannel:I

    .line 829
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mIsConnected:Z

    .line 830
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 831
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 832
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;ZZI)V
    .locals 1

    .line 836
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 837
    const-string p1, "Socket Connect Thread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 809
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mL2cChannel:I

    .line 815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mBtSocket:Landroid/bluetooth/BluetoothSocket;

    .line 817
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 819
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 821
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mIsInterrupted:Z

    .line 838
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 839
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mHost:Ljava/lang/String;

    .line 840
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mChannel:I

    .line 841
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mIsConnected:Z

    .line 842
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 843
    iput-boolean p4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 844
    iput p5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mL2cChannel:I

    .line 845
    return-void
.end method

.method private connectRfcommSocket()V
    .locals 6

    .line 863
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result v0

    const-string v1, "BtOppTransfer"

    if-eqz v0, :cond_0

    .line 864
    const-string v0, "connectRfcommSocket"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mIsInterrupted:Z

    if-eqz v0, :cond_1

    .line 868
    const-string v0, "connectRfcommSocket interrupted"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mBtSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothSocket;)V

    .line 870
    return-void

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    .line 873
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 872
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mBtSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 878
    nop

    .line 880
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 882
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rfcomm socket connection attempt took "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mTimestamp:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_2
    new-instance v0, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mBtSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v0, v2}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 890
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->setName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 892
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send transport message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 912
    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    const-string v2, "Rfcomm socket connect exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid exchange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 906
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 907
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v0

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 908
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 909
    goto :goto_0

    .line 910
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mBtSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothSocket;)V

    .line 913
    :goto_0
    return-void

    .line 874
    :catch_1
    move-exception v0

    .line 875
    const-string v2, "Rfcomm socket create error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 876
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mBtSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothSocket;)V

    .line 877
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start interrupt :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mBtSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppTransfer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mIsInterrupted:Z

    .line 853
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mBtSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 855
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    goto :goto_0

    .line 856
    :catch_0
    move-exception v0

    .line 857
    const-string v0, "Error when close socket"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mTimestamp:J

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdp initiated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " l2cChannel :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mL2cChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppTransfer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mL2cChannel:I

    if-gez v0, :cond_0

    goto/16 :goto_1

    .line 932
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mSdpInitiated:Z

    .line 936
    :try_start_0
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mIsInterrupted:Z

    if-eqz v2, :cond_1

    .line 937
    const-string v0, "btSocket connect interrupted "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mBtSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothSocket;)V

    .line 939
    return-void

    .line 941
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->createInsecureL2capSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mBtSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 947
    nop

    .line 949
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 950
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L2cap socket connection attempt took "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mTimestamp:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_2
    new-instance v0, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mBtSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v0, v2}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 956
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->setName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 957
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send transport message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 970
    nop

    .line 971
    return-void

    .line 961
    :catch_0
    move-exception v0

    .line 962
    const-string v2, "L2cap socket connect exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mBtSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 967
    goto :goto_0

    .line 965
    :catch_1
    move-exception v0

    .line 966
    const-string v2, "Bluetooth socket close error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->connectRfcommSocket()V

    .line 969
    return-void

    .line 943
    :catch_2
    move-exception v0

    .line 944
    const-string v2, "L2cap socket create error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 945
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->connectRfcommSocket()V

    .line 946
    return-void

    .line 926
    :cond_4
    :goto_1
    const-string v0, "sdp not initiated, connecting on rfcomm"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->connectRfcommSocket()V

    .line 928
    return-void
.end method
