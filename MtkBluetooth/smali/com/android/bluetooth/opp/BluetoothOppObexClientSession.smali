.class public Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.super Ljava/lang/Object;
.source "BluetoothOppObexClientSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppObexSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BtOppObexClient"

.field private static final V:Z


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private volatile mInterrupted:Z

.field private mNumFilesAttemptedToSend:I

.field private mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

.field private mTransport:Ljavax/obex/ObexTransport;

.field private volatile mWaitingForRemote:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-eqz p2, :cond_0

    .line 91
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 93
    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "transport is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mNumFilesAttemptedToSend:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mNumFilesAttemptedToSend:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I
    .locals 2

    .line 67
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mNumFilesAttemptedToSend:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mNumFilesAttemptedToSend:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Ljava/io/InputStream;[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->readFully(Ljava/io/InputStream;[BI)I

    move-result p0

    return p0
.end method

.method public static applyRemoteDeviceQuirks(Ljavax/obex/HeaderSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 766
    if-nez p1, :cond_0

    .line 767
    return-void

    .line 769
    :cond_0
    const-string v0, "00:04:48"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 774
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 775
    nop

    .line 776
    nop

    .line 777
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ltz v0, :cond_3

    .line 778
    aget-char v5, p1, v0

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    .line 779
    if-nez v4, :cond_1

    .line 780
    nop

    .line 781
    const/16 v3, 0x5f

    aput-char v3, p1, v0

    move v3, v1

    .line 783
    :cond_1
    move v4, v2

    .line 777
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 787
    :cond_3
    if-eqz v3, :cond_4

    .line 788
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 789
    invoke-virtual {p0, v1, v0}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 790
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Sending file \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" as \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" to workaround Poloroid filename quirk"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BtOppObexClient"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_4
    return-void
.end method

.method private static readFully(Ljava/io/InputStream;[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    .line 167
    :goto_0
    if-ge v0, p2, :cond_1

    .line 168
    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 169
    if-gtz v1, :cond_0

    .line 170
    goto :goto_1

    .line 172
    :cond_0
    add-int/2addr v0, v1

    .line 173
    goto :goto_0

    .line 174
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 162
    monitor-exit p0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public forceInterupt()V
    .locals 3

    .line 137
    const-string v0, "BtOppObexClient"

    const-string v1, "forceInterupt!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    .line 141
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->interrupt()V

    .line 142
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BtOppObexClient"

    const-string v2, "interrupt"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->access$000(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;)V

    .line 146
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    if-eqz v0, :cond_1

    const-string v0, "BtOppObexClient"

    const-string v2, "disconnect"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    goto :goto_0

    .line 149
    :cond_2
    const-string v0, "BtOppObexClient"

    const-string v2, "mThread is null now!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_3
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    .line 155
    return-void

    .line 152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public start(Landroid/os/Handler;I)V
    .locals 2

    .line 98
    const-string v0, "BtOppObexClient"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    .line 101
    new-instance p1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;I)V

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    .line 102
    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->start()V

    .line 103
    return-void
.end method

.method public stop()V
    .locals 4

    .line 108
    const-string v0, "BtOppObexClient"

    const-string v1, "Stop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->interrupt()V

    .line 115
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "BtOppObexClient"

    const-string v2, "waiting for thread to terminate"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->join(J)V

    .line 120
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    if-eqz v0, :cond_1

    .line 121
    const-string v0, "BtOppObexClient"

    const-string v2, "mThread join finished"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    :try_start_2
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    if-eqz v0, :cond_2

    .line 126
    const-string v0, "BtOppObexClient"

    const-string v2, "Interrupted waiting for thread to join"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->cancelNotification(Landroid/content/Context;)V

    .line 133
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    .line 134
    return-void

    .line 130
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public unblock()V
    .locals 0

    .line 799
    return-void
.end method
