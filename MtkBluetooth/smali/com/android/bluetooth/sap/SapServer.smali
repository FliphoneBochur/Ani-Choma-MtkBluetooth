.class public Lcom/android/bluetooth/sap/SapServer;
.super Ljava/lang/Thread;
.source "SapServer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;,
        Lcom/android/bluetooth/sap/SapServer$SAP_STATE;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final DISCONNECT_TIMEOUT_IMMEDIATE:I = 0x1388

.field private static final DISCONNECT_TIMEOUT_RFCOMM:I = 0x7d0

.field public static final ISAP_GET_SERVICE_DELAY_MILLIS:I = 0xbb8

.field public static final NOTIFICATION_ID:I = 0x1080080

.field public static final SAP_DISCONNECT_ACTION:Ljava/lang/String; = "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

.field public static final SAP_DISCONNECT_TYPE_EXTRA:Ljava/lang/String; = "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

.field public static final SAP_MSG_RFC_REPLY:I = 0x0

.field public static final SAP_MSG_RIL_CONNECT:I = 0x1

.field public static final SAP_MSG_RIL_IND:I = 0x3

.field public static final SAP_MSG_RIL_REQ:I = 0x2

.field private static final SAP_NOTIFICATION_CHANNEL:Ljava/lang/String; = "sap_notification_channel"

.field public static final SAP_PROXY_DEAD:I = 0x5

.field public static final SAP_RIL_SOCK_CLOSED:I = 0x4

.field public static final SAP_STATUS_IND_ACTION:Ljava/lang/String; = "com.android.bluetooth.sap.action.STATUS_IND_ACTION"

.field public static final SAP_STATUS_IND_EXTRA:Ljava/lang/String; = "com.android.bluetooth.sap.extra.STATUS_IND_TYPE"

.field private static final TAG:Ljava/lang/String; = "SapServer"

.field private static final TAG_HANDLER:Ljava/lang/String; = "SapServerHandler"

.field public static final VERBOSE:Z = false


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsLocalInitDisconnect:Z

.field private mMaxMsgSize:I

.field private mPendingDiscIntent:Landroid/app/PendingIntent;

.field private mRfcommIn:Ljava/io/BufferedInputStream;

.field private mRfcommOut:Ljava/io/BufferedOutputStream;

.field private mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

.field private mSapHandler:Landroid/os/Handler;

.field private mSapServiceHandler:Landroid/os/Handler;

.field private mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

.field private mTestMode:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    .line 114
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 62
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    .line 63
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    .line 65
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    .line 68
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 70
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    .line 74
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    .line 99
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mPendingDiscIntent:Landroid/app/PendingIntent;

    .line 103
    iput v1, p0, Lcom/android/bluetooth/sap/SapServer;->mMaxMsgSize:I

    .line 105
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/sap/SapServer;->mTestMode:I

    .line 115
    iput-object p2, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 116
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    .line 119
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    .line 120
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    .line 123
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    const-string p2, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string p2, "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string p2, "com.android.bluetooth.sap.action.STATUS_IND_ACTION"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    new-instance p2, Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;

    invoke-direct {p2, p0, v0}, Lcom/android/bluetooth/sap/SapServer$SapServerBroadcastReceiver;-><init>(Lcom/android/bluetooth/sap/SapServer;Lcom/android/bluetooth/sap/SapServer$1;)V

    iput-object p2, p0, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    iget-object p3, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/sap/SapServer;)Lcom/android/bluetooth/sap/SapServer$SAP_STATE;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/sap/SapServer;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/bluetooth/sap/SapServer;->mMaxMsgSize:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/sap/SapServer;Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->onConnectRequest(Lcom/android/bluetooth/sap/SapMessage;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/sap/SapServer;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->shutdown()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/sap/SapServer;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/sap/SapServer;Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    return-void
.end method

.method private changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V
    .locals 0

    .line 668
    monitor-enter p0

    .line 669
    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    .line 670
    monitor-exit p0

    .line 671
    return-void

    .line 670
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private clearPendingRilResponses(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED_BUSY:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v0, v1, :cond_0

    .line 624
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/sap/SapMessage;->setClearRilQueue(Z)V

    .line 626
    :cond_0
    return-void
.end method

.method private static getMessageName(I)Ljava/lang/String;
    .locals 1

    .line 1017
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1027
    const-string p0, "Unknown message ID"

    return-object p0

    .line 1025
    :cond_0
    const-string p0, "SAP_MSG_RIL_IND"

    return-object p0

    .line 1023
    :cond_1
    const-string p0, "SAP_MSG_RIL_REQ"

    return-object p0

    .line 1021
    :cond_2
    const-string p0, "SAP_MSG_RIL_CONNECT"

    return-object p0

    .line 1019
    :cond_3
    const-string p0, "SAP_MSG_REPLY"

    return-object p0
.end method

.method private handleRfcommReply(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 6

    .line 814
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 821
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x7d0

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v1, v2, :cond_2

    .line 898
    :cond_1
    move-object p1, v0

    .line 900
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v0, v1, :cond_b

    .line 901
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 902
    const/16 v1, 0x138f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 903
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 904
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 905
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/bluetooth/sap/SapServer;->setNotification(II)V

    .line 909
    goto :goto_0

    .line 855
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v4, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    const/16 v5, 0x101

    if-ne v1, v4, :cond_4

    .line 866
    new-instance p1, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {p1, v2}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 867
    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 868
    nop

    .line 869
    invoke-direct {p0, v5, v3}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    .line 870
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 871
    goto :goto_0

    .line 872
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 873
    iget-boolean v1, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-eqz v1, :cond_5

    .line 879
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->shutdown()V

    .line 880
    move-object p1, v0

    goto :goto_0

    .line 889
    :cond_5
    invoke-direct {p0, v5, v3}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    .line 892
    goto :goto_0

    .line 824
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v2, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v1, v2, :cond_8

    .line 830
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getConnectionStatus()I

    move-result p1

    if-nez p1, :cond_7

    .line 832
    sget-object p1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 838
    :cond_7
    move-object p1, v0

    goto :goto_0

    .line 839
    :cond_8
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getConnectionStatus()I

    move-result v0

    if-nez v0, :cond_9

    .line 841
    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    goto :goto_0

    .line 842
    :cond_9
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getConnectionStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 844
    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    goto :goto_0

    .line 845
    :cond_a
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getConnectionStatus()I

    move-result v0

    if-eqz v0, :cond_b

    .line 851
    const/16 v0, 0x100

    invoke-direct {p0, v0, v3}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    .line 920
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED_BUSY:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v0, v1, :cond_c

    .line 921
    invoke-static {}, Lcom/android/bluetooth/sap/SapMessage;->getNumPendingRilMessages()I

    move-result v0

    if-nez v0, :cond_c

    .line 922
    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 927
    :cond_c
    if-eqz p1, :cond_d

    .line 928
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendReply(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 930
    :cond_d
    return-void
.end method

.method private handleRilInd(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    .line 933
    if-nez p1, :cond_0

    .line 934
    return-void

    .line 937
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v0

    const/16 v1, 0x102

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v0, v1, :cond_2

    .line 941
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 942
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getDisconnectionType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sap/SapMessage;->setDisconnectionType(I)V

    .line 943
    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 944
    goto :goto_0

    .line 946
    :cond_2
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getDisconnectionType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    .line 948
    nop

    .line 957
    :goto_0
    return-void
.end method

.method private isCallOngoing()Z
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 652
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 653
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    .line 654
    const/4 v0, 0x0

    return v0

    .line 656
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private onConnectRequest(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 5

    .line 578
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 580
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 584
    nop

    .line 585
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 586
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    move-object v0, v4

    goto :goto_0

    .line 588
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v3, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v2, v3, :cond_1

    .line 590
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;->setConnectionStatus(I)V

    goto :goto_0

    .line 593
    :cond_1
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMaxMsgSize()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/sap/SapServer;->mMaxMsgSize:I

    .line 595
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->isCallOngoing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 598
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sap/SapMessage;->setConnectionStatus(I)V

    goto :goto_0

    .line 604
    :cond_2
    sget-object p1, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 605
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz p1, :cond_3

    .line 607
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendRilConnectMessage()V

    .line 609
    move-object v0, v4

    goto :goto_0

    .line 611
    :cond_3
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 612
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sap/SapMessage;->setConnectionStatus(I)V

    .line 613
    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 617
    :goto_0
    if-eqz v0, :cond_4

    .line 618
    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 620
    :cond_4
    return-void
.end method

.method private sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 634
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 635
    return-void
.end method

.method private sendDisconnectInd(I)V
    .locals 4

    .line 205
    const/16 v0, 0x100

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    .line 210
    new-instance v2, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 211
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/sap/SapMessage;->setDisconnectionType(I)V

    .line 212
    invoke-direct {p0, v2}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 215
    if-nez p1, :cond_0

    .line 217
    const/high16 p1, 0x10000000

    invoke-virtual {p0, v1, p1}, Lcom/android/bluetooth/sap/SapServer;->setNotification(II)V

    goto :goto_0

    .line 219
    :cond_0
    if-ne p1, v1, :cond_1

    .line 222
    const/16 p1, 0x1388

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    .line 225
    :cond_1
    :goto_0
    goto :goto_1

    .line 226
    :cond_2
    new-instance p1, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 228
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->clearPendingRilResponses(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 232
    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendRilThreadMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 234
    iput-boolean v1, p0, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    .line 236
    :goto_1
    return-void
.end method

.method private sendReply(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 1006
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/sap/SapMessage;->write(Ljava/io/OutputStream;)V

    .line 1007
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    goto :goto_0

    .line 1008
    :catch_0
    move-exception p1

    .line 1009
    const-string v0, "SapServerHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1014
    :cond_0
    :goto_0
    return-void
.end method

.method private sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 5

    .line 969
    const-string v0, "SapServerHandler"

    const-string v1, "sendRilMessage: calling getSapProxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->getSapProxyLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 971
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapRilReceiver;->getSapProxy()Landroid/hardware/radio/V1_0/ISap;

    move-result-object v1

    .line 972
    const/16 v2, 0x12

    if-nez v1, :cond_0

    .line 973
    const-string p1, "SapServerHandler"

    const-string v1, "sendRilMessage: Unable to send message to RIL; sapProxy is null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    new-instance p1, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {p1, v2}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 976
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 980
    :cond_0
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/sap/SapMessage;->send(Landroid/hardware/radio/V1_0/ISap;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    :goto_0
    goto :goto_1

    .line 987
    :catch_0
    move-exception p1

    .line 988
    :try_start_2
    const-string v1, "SapServerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRilMessage: Unable to send message to RIL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    new-instance p1, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {p1, v2}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 990
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->notifyShutdown()V

    .line 991
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->resetSapProxy()V

    goto :goto_1

    .line 984
    :catch_1
    move-exception p1

    .line 985
    const-string v1, "SapServerHandler"

    const-string v3, "sendRilMessage: IllegalArgumentException"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 986
    new-instance p1, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {p1, v2}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    .line 993
    :goto_1
    monitor-exit v0

    .line 994
    return-void

    .line 993
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private sendRilThreadMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 643
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 644
    return-void
.end method

.method private shutdown()V
    .locals 1

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :cond_0
    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    .line 760
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 764
    :cond_1
    goto :goto_1

    .line 763
    :catch_1
    move-exception v0

    .line 765
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    .line 766
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    .line 767
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 768
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    .line 769
    return-void
.end method

.method private startDisconnectTimer(II)V
    .locals 6

    .line 773
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 774
    monitor-enter p0

    .line 775
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    const-string v1, "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 777
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    .line 778
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 779
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v2, p1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mPendingDiscIntent:Landroid/app/PendingIntent;

    .line 781
    const/4 p1, 0x2

    .line 782
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    iget-object p2, p0, Lcom/android/bluetooth/sap/SapServer;->mPendingDiscIntent:Landroid/app/PendingIntent;

    .line 781
    invoke-virtual {v1, p1, v2, v3, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 789
    monitor-exit p0

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private stopDisconnectTimer()V
    .locals 2

    .line 793
    monitor-enter p0

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mPendingDiscIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    .line 796
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 797
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapServer;->mPendingDiscIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 798
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mPendingDiscIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mPendingDiscIntent:Landroid/app/PendingIntent;

    .line 804
    :cond_0
    monitor-exit p0

    .line 805
    return-void

    .line 804
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method clearNotification()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 332
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 333
    const v1, 0x1080080

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 334
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 691
    nop

    .line 693
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 739
    return v2

    .line 728
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    iget-object p1, p1, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_7

    .line 729
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->notifyShutdown()V

    .line 730
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->resetSapProxy()V

    .line 734
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->getSapProxy()Landroid/hardware/radio/V1_0/ISap;

    goto :goto_0

    .line 725
    :cond_1
    const/16 p1, 0x101

    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/sap/SapServer;->startDisconnectTimer(II)V

    .line 726
    goto :goto_0

    .line 719
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/sap/SapMessage;

    .line 720
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->handleRilInd(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 721
    goto :goto_0

    .line 713
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/sap/SapMessage;

    .line 714
    if-eqz p1, :cond_7

    .line 715
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    .line 701
    :cond_4
    iget p1, p0, Lcom/android/bluetooth/sap/SapServer;->mTestMode:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 702
    new-instance p1, Lcom/android/bluetooth/sap/SapMessage;

    const/16 v3, 0x201

    invoke-direct {p1, v3}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 704
    iget v3, p0, Lcom/android/bluetooth/sap/SapServer;->mTestMode:I

    invoke-virtual {p1, v3}, Lcom/android/bluetooth/sap/SapMessage;->setTestMode(I)V

    .line 705
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 706
    iput v0, p0, Lcom/android/bluetooth/sap/SapServer;->mTestMode:I

    .line 708
    :cond_5
    new-instance p1, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {p1, v2}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 709
    iget v0, p0, Lcom/android/bluetooth/sap/SapServer;->mMaxMsgSize:I

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/sap/SapMessage;->setMaxMsgSize(I)V

    .line 710
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->sendRilMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 711
    goto :goto_0

    .line 695
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/sap/SapMessage;

    .line 696
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapServer;->handleRfcommReply(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 697
    nop

    .line 741
    :cond_7
    :goto_0
    return v1
.end method

.method public run()V
    .locals 16

    .line 345
    move-object/from16 v1, p0

    const-string v2, "All done exiting thread..."

    const-string v3, "Interrupt received while waitinf for de-init to complete"

    const-string v4, "Receiver not registered."

    const-string v5, "SapServer"

    const/16 v0, 0xa

    const/16 v6, 0x1388

    const/16 v7, 0x100

    const/16 v8, 0xc

    const/4 v9, -0x1

    const/4 v10, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 348
    new-instance v11, Landroid/os/HandlerThread;

    const-string v12, "SapServerHandler"

    invoke-direct {v11, v12, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v11, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 350
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 353
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 354
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v11, v1, Lcom/android/bluetooth/sap/SapServer;->mSapHandler:Landroid/os/Handler;

    .line 356
    new-instance v0, Lcom/android/bluetooth/sap/SapRilReceiver;

    iget-object v12, v1, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-direct {v0, v11, v12}, Lcom/android/bluetooth/sap/SapRilReceiver;-><init>(Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 357
    const/4 v0, 0x0

    .line 358
    :goto_0
    if-nez v0, :cond_a

    .line 362
    iget-object v11, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->read()I

    move-result v11

    .line 366
    const/4 v12, 0x1

    if-ne v11, v9, :cond_0

    .line 370
    move v0, v12

    goto/16 :goto_4

    .line 375
    :cond_0
    iget-object v13, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    invoke-static {v11, v13}, Lcom/android/bluetooth/sap/SapMessage;->readMessage(ILjava/io/InputStream;)Lcom/android/bluetooth/sap/SapMessage;

    move-result-object v13

    .line 377
    iget-object v14, v1, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    invoke-static {v14}, Lcom/android/bluetooth/sap/SapService;->notifyUpdateWakeLock(Landroid/os/Handler;)V

    .line 378
    const/16 v14, 0x12

    if-eqz v13, :cond_8

    iget-object v15, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v9, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v15, v9, :cond_8

    .line 379
    if-eqz v11, :cond_6

    const/4 v9, 0x2

    if-eq v11, v9, :cond_4

    const/16 v9, 0x9

    if-eq v11, v9, :cond_3

    const/16 v9, 0xd

    if-eq v11, v9, :cond_3

    const/16 v9, 0x13

    if-eq v11, v9, :cond_1

    goto :goto_1

    .line 430
    :cond_1
    iget-object v9, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v11, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v9, v11, :cond_2

    invoke-virtual {v13}, Lcom/android/bluetooth/sap/SapMessage;->getTransportProtocol()I

    move-result v9

    if-eqz v9, :cond_2

    .line 431
    invoke-virtual {v13}, Lcom/android/bluetooth/sap/SapMessage;->getTransportProtocol()I

    move-result v9

    if-eq v9, v12, :cond_2

    .line 432
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid TransportProtocol received:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v13}, Lcom/android/bluetooth/sap/SapMessage;->getTransportProtocol()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 432
    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v9, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v9, v14}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 438
    invoke-direct {v1, v9}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 439
    move-object v13, v10

    .line 445
    :cond_2
    :goto_1
    iget-object v9, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v11, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v9, v11, :cond_7

    .line 446
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Message received in STATE != CONNECTED - state = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    .line 447
    invoke-virtual {v11}, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 446
    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v9, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v9, v14}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 452
    invoke-direct {v1, v9}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 453
    move-object v13, v10

    goto :goto_3

    .line 425
    :cond_3
    invoke-direct {v1, v13}, Lcom/android/bluetooth/sap/SapServer;->clearPendingRilResponses(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 426
    goto :goto_3

    .line 405
    :cond_4
    iget-object v9, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v11, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v9, v11, :cond_5

    .line 406
    const-string v9, "disconnect received when call was ongoing, send disconnect response"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget-object v9, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {v1, v9}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 409
    new-instance v9, Lcom/android/bluetooth/sap/SapMessage;

    const/4 v11, 0x3

    invoke-direct {v9, v11}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 411
    invoke-direct {v1, v9}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 412
    goto :goto_2

    .line 413
    :cond_5
    invoke-direct {v1, v13}, Lcom/android/bluetooth/sap/SapServer;->clearPendingRilResponses(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 414
    sget-object v9, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {v1, v9}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 415
    invoke-direct {v1, v13}, Lcom/android/bluetooth/sap/SapServer;->sendRilThreadMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 419
    :goto_2
    nop

    .line 420
    move-object v13, v10

    goto :goto_3

    .line 384
    :cond_6
    invoke-direct {v1, v13}, Lcom/android/bluetooth/sap/SapServer;->onConnectRequest(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 385
    nop

    .line 386
    move-object v13, v10

    .line 457
    :cond_7
    :goto_3
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Lcom/android/bluetooth/sap/SapMessage;->getSendToRil()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 458
    sget-object v9, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTED_BUSY:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {v1, v9}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    .line 459
    invoke-direct {v1, v13}, Lcom/android/bluetooth/sap/SapServer;->sendRilThreadMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_4

    .line 464
    :cond_8
    const-string v9, "Unable to parse message."

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v9, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v9, v14}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 466
    invoke-direct {v1, v9}, Lcom/android/bluetooth/sap/SapServer;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :cond_9
    :goto_4
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 479
    :cond_a
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    goto :goto_5

    :cond_b
    const/4 v9, -0x1

    .line 481
    :goto_5
    if-eq v9, v8, :cond_c

    .line 483
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 486
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 491
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v0, v8, :cond_d

    .line 493
    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {v1, v0}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    goto :goto_6

    .line 494
    :cond_d
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v0, v8, :cond_f

    .line 495
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v0, v8, :cond_e

    iget-boolean v0, v1, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v0, :cond_e

    .line 496
    invoke-direct {v1, v7}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    .line 502
    :cond_e
    :try_start_1
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 505
    goto :goto_6

    .line 503
    :catch_0
    move-exception v0

    .line 504
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    :cond_f
    :goto_6
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    .line 510
    :try_start_2
    iget-object v3, v1, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 513
    goto :goto_7

    .line 511
    :catch_1
    move-exception v0

    .line 512
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_7
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 516
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    .line 519
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_11

    .line 521
    :try_start_3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 522
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 523
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 525
    goto :goto_8

    .line 524
    :catch_2
    move-exception v0

    .line 527
    :cond_11
    :goto_8
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v0, :cond_12

    .line 528
    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->resetSapProxy()V

    .line 529
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 532
    :cond_12
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_13

    .line 537
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 538
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 540
    goto :goto_9

    .line 539
    :catch_3
    move-exception v0

    .line 543
    :cond_13
    :goto_9
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_14

    .line 548
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 549
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 551
    goto :goto_a

    .line 550
    :catch_4
    move-exception v0

    .line 554
    :cond_14
    :goto_a
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_33

    .line 555
    goto/16 :goto_1d

    .line 479
    :catchall_0
    move-exception v0

    move-object v9, v0

    goto/16 :goto_1e

    .line 475
    :catch_5
    move-exception v0

    .line 477
    :try_start_6
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 479
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    goto :goto_b

    :cond_15
    const/4 v9, -0x1

    .line 481
    :goto_b
    if-eq v9, v8, :cond_16

    .line 483
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 486
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 491
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v0, v8, :cond_17

    .line 493
    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {v1, v0}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    goto :goto_c

    .line 494
    :cond_17
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v0, v8, :cond_19

    .line 495
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v0, v8, :cond_18

    iget-boolean v0, v1, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v0, :cond_18

    .line 496
    invoke-direct {v1, v7}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    .line 502
    :cond_18
    :try_start_7
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_6

    .line 505
    goto :goto_c

    .line 503
    :catch_6
    move-exception v0

    .line 504
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    :cond_19
    :goto_c
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1a

    .line 510
    :try_start_8
    iget-object v3, v1, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_7

    .line 513
    goto :goto_d

    .line 511
    :catch_7
    move-exception v0

    .line 512
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_d
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 516
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    .line 519
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1b

    .line 521
    :try_start_9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 522
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 523
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8

    .line 525
    goto :goto_e

    .line 524
    :catch_8
    move-exception v0

    .line 527
    :cond_1b
    :goto_e
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v0, :cond_1c

    .line 528
    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->resetSapProxy()V

    .line 529
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 532
    :cond_1c
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_1d

    .line 537
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 538
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 540
    goto :goto_f

    .line 539
    :catch_9
    move-exception v0

    .line 543
    :cond_1d
    :goto_f
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_1e

    .line 548
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 549
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 551
    goto :goto_10

    .line 550
    :catch_a
    move-exception v0

    .line 554
    :cond_1e
    :goto_10
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_33

    .line 555
    goto/16 :goto_1d

    .line 472
    :catch_b
    move-exception v0

    .line 474
    :try_start_c
    const-string v0, "IOException received, this is probably a shutdown signal, cleaning up..."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 479
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    goto :goto_11

    :cond_1f
    const/4 v9, -0x1

    .line 481
    :goto_11
    if-eq v9, v8, :cond_20

    .line 483
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 486
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 491
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v0, v8, :cond_21

    .line 493
    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {v1, v0}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    goto :goto_12

    .line 494
    :cond_21
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v0, v8, :cond_23

    .line 495
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v0, v8, :cond_22

    iget-boolean v0, v1, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v0, :cond_22

    .line 496
    invoke-direct {v1, v7}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    .line 502
    :cond_22
    :try_start_d
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_c

    .line 505
    goto :goto_12

    .line 503
    :catch_c
    move-exception v0

    .line 504
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    :cond_23
    :goto_12
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_24

    .line 510
    :try_start_e
    iget-object v3, v1, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_d

    .line 513
    goto :goto_13

    .line 511
    :catch_d
    move-exception v0

    .line 512
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_13
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 516
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    .line 519
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_25

    .line 521
    :try_start_f
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 522
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 523
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_e

    .line 525
    goto :goto_14

    .line 524
    :catch_e
    move-exception v0

    .line 527
    :cond_25
    :goto_14
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v0, :cond_26

    .line 528
    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->resetSapProxy()V

    .line 529
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 532
    :cond_26
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_27

    .line 537
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 538
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 540
    goto :goto_15

    .line 539
    :catch_f
    move-exception v0

    .line 543
    :cond_27
    :goto_15
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_28

    .line 548
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 549
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    .line 551
    goto :goto_16

    .line 550
    :catch_10
    move-exception v0

    .line 554
    :cond_28
    :goto_16
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_33

    .line 555
    goto/16 :goto_1d

    .line 470
    :catch_11
    move-exception v0

    .line 471
    :try_start_12
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 479
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    goto :goto_17

    :cond_29
    const/4 v9, -0x1

    .line 481
    :goto_17
    if-eq v9, v8, :cond_2a

    .line 483
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 486
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 491
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v0, v8, :cond_2b

    .line 493
    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {v1, v0}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    goto :goto_18

    .line 494
    :cond_2b
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v0, v8, :cond_2d

    .line 495
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v0, v8, :cond_2c

    iget-boolean v0, v1, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v0, :cond_2c

    .line 496
    invoke-direct {v1, v7}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    .line 502
    :cond_2c
    :try_start_13
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_12

    .line 505
    goto :goto_18

    .line 503
    :catch_12
    move-exception v0

    .line 504
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    :cond_2d
    :goto_18
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2e

    .line 510
    :try_start_14
    iget-object v3, v1, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_13

    .line 513
    goto :goto_19

    .line 511
    :catch_13
    move-exception v0

    .line 512
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_19
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 516
    :cond_2e
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    .line 519
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2f

    .line 521
    :try_start_15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 522
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 523
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_14

    .line 525
    goto :goto_1a

    .line 524
    :catch_14
    move-exception v0

    .line 527
    :cond_2f
    :goto_1a
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v0, :cond_30

    .line 528
    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->resetSapProxy()V

    .line 529
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 532
    :cond_30
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_31

    .line 537
    :try_start_16
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 538
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_15

    .line 540
    goto :goto_1b

    .line 539
    :catch_15
    move-exception v0

    .line 543
    :cond_31
    :goto_1b
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_32

    .line 548
    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 549
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_16

    .line 551
    goto :goto_1c

    .line 550
    :catch_16
    move-exception v0

    .line 554
    :cond_32
    :goto_1c
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_33

    .line 555
    :goto_1d
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 556
    iput v6, v0, Landroid/os/Message;->what:I

    .line 557
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 562
    :cond_33
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    nop

    .line 564
    return-void

    .line 479
    :goto_1e
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    goto :goto_1f

    :cond_34
    const/4 v0, -0x1

    .line 481
    :goto_1f
    if-eq v0, v8, :cond_35

    .line 483
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 486
    :cond_35
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 491
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->CONNECTING_CALL_ONGOING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-ne v0, v8, :cond_36

    .line 493
    sget-object v0, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    invoke-direct {v1, v0}, Lcom/android/bluetooth/sap/SapServer;->changeState(Lcom/android/bluetooth/sap/SapServer$SAP_STATE;)V

    goto :goto_20

    .line 494
    :cond_36
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTED:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v0, v8, :cond_38

    .line 495
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mState:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    sget-object v8, Lcom/android/bluetooth/sap/SapServer$SAP_STATE;->DISCONNECTING:Lcom/android/bluetooth/sap/SapServer$SAP_STATE;

    if-eq v0, v8, :cond_37

    iget-boolean v0, v1, Lcom/android/bluetooth/sap/SapServer;->mIsLocalInitDisconnect:Z

    if-nez v0, :cond_37

    .line 496
    invoke-direct {v1, v7}, Lcom/android/bluetooth/sap/SapServer;->sendDisconnectInd(I)V

    .line 502
    :cond_37
    :try_start_18
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mDeinitSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_17

    .line 505
    goto :goto_20

    .line 503
    :catch_17
    move-exception v0

    .line 504
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    :cond_38
    :goto_20
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_39

    .line 510
    :try_start_19
    iget-object v3, v1, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_18

    .line 513
    goto :goto_21

    .line 511
    :catch_18
    move-exception v0

    .line 512
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_21
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 516
    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->stopDisconnectTimer()V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/sap/SapServer;->clearNotification()V

    .line 519
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3a

    .line 521
    :try_start_1a
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 522
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 523
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_19

    .line 525
    goto :goto_22

    .line 524
    :catch_19
    move-exception v0

    .line 527
    :cond_3a
    :goto_22
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    if-eqz v0, :cond_3b

    .line 528
    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->resetSapProxy()V

    .line 529
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRilBtReceiver:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 532
    :cond_3b
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_3c

    .line 537
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 538
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommIn:Ljava/io/BufferedInputStream;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1a

    .line 540
    goto :goto_23

    .line 539
    :catch_1a
    move-exception v0

    .line 543
    :cond_3c
    :goto_23
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_3d

    .line 548
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 549
    iput-object v10, v1, Lcom/android/bluetooth/sap/SapServer;->mRfcommOut:Ljava/io/BufferedOutputStream;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1b

    .line 551
    goto :goto_24

    .line 550
    :catch_1b
    move-exception v0

    .line 554
    :cond_3d
    :goto_24
    iget-object v0, v1, Lcom/android/bluetooth/sap/SapServer;->mSapServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3e

    .line 555
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 556
    iput v6, v0, Landroid/os/Message;->what:I

    .line 557
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 562
    :cond_3e
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    throw v9
.end method

.method setNotification(II)V
    .locals 16

    .line 241
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 242
    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 243
    new-instance v3, Landroid/app/NotificationChannel;

    iget-object v4, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 244
    const v5, 0x7f0e0020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "sap_notification_channel"

    const/4 v7, 0x4

    invoke-direct {v3, v6, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 246
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 247
    const/high16 v3, 0x4000000

    or-int v3, p2, v3

    .line 255
    const-string v4, "bt.sap.pts"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 259
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    const v9, 0x7f0e001b

    const v10, 0x7f0e001f

    const v11, 0x7f0e001d

    if-nez v1, :cond_0

    .line 261
    iget-object v12, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 262
    iget-object v12, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 263
    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v14, 0x7f0e001e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 264
    iget-object v14, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 266
    :cond_0
    iget-object v12, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 267
    iget-object v12, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 268
    iget-object v13, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    const v14, 0x7f0e001c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 269
    iget-object v14, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 271
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v14, "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

    const/4 v15, 0x0

    const v11, 0x1080080

    const/4 v9, 0x1

    if-nez v4, :cond_1

    .line 272
    invoke-virtual {v7, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    iget-object v4, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 274
    invoke-static {v4, v1, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 275
    new-instance v3, Landroid/app/Notification$Action$Builder;

    iget-object v4, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 276
    invoke-static {v4, v11}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-direct {v3, v4, v12, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 277
    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 278
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v0, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 289
    goto :goto_1

    .line 290
    :cond_1
    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    iget-object v4, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 296
    invoke-static {v4, v15, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 298
    iget-object v7, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 299
    invoke-static {v7, v9, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 301
    new-instance v3, Landroid/app/Notification$Action$Builder;

    iget-object v7, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 302
    invoke-static {v7, v11}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    iget-object v8, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 303
    const v12, 0x7f0e001b

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 304
    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    .line 305
    new-instance v4, Landroid/app/Notification$Action$Builder;

    iget-object v7, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 306
    invoke-static {v7, v11}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    iget-object v8, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    .line 308
    const v12, 0x7f0e001d

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 309
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 310
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v0, v0, Lcom/android/bluetooth/sap/SapServer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 325
    :goto_1
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x28

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 327
    invoke-virtual {v2, v11, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 328
    return-void
.end method

.method public setTestMode(I)V
    .locals 0

    .line 198
    return-void
.end method
