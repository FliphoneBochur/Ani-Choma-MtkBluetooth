.class Lcom/android/bluetooth/opp/TestTcpListener;
.super Ljava/lang/Object;
.source "TestActivity.java"


# static fields
.field private static final ACCEPT_WAIT_TIMEOUT:I = 0x1388

.field private static final D:Z = true

.field public static final DEFAULT_OPP_CHANNEL:I = 0xc

.field public static final MSG_INCOMING_BTOPP_CONNECTION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BtOppRfcommListener"

.field private static final V:Z


# instance fields
.field private mBtOppRfcommChannel:I

.field private mCallback:Landroid/os/Handler;

.field private volatile mInterrupted:Z

.field private mSocketAcceptThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 365
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/TestTcpListener;->V:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 382
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/TestTcpListener;-><init>(I)V

    .line 383
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mBtOppRfcommChannel:I

    .line 386
    iput p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mBtOppRfcommChannel:I

    .line 387
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 359
    sget-boolean v0, Lcom/android/bluetooth/opp/TestTcpListener;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/TestTcpListener;)I
    .locals 0

    .line 359
    iget p0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mBtOppRfcommChannel:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/TestTcpListener;)Z
    .locals 0

    .line 359
    iget-boolean p0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/opp/TestTcpListener;Z)Z
    .locals 0

    .line 359
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/TestTcpListener;)Landroid/os/Handler;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mCallback:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 1

    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 391
    iput-object p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mCallback:Landroid/os/Handler;

    .line 392
    new-instance p1, Lcom/android/bluetooth/opp/TestTcpListener$1;

    const-string v0, "BtOppRfcommListener"

    invoke-direct {p1, p0, v0}, Lcom/android/bluetooth/opp/TestTcpListener$1;-><init>(Lcom/android/bluetooth/opp/TestTcpListener;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 446
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z

    .line 447
    iget-object p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :cond_0
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 389
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 457
    const-string v0, "BtOppRfcommListener"

    const-string v1, "stopping Connect Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 462
    sget-boolean v0, Lcom/android/bluetooth/opp/TestTcpListener;->V:Z

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "BtOppRfcommListener"

    const-string v1, "waiting for thread to terminate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 467
    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mCallback:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    :try_start_2
    sget-boolean v0, Lcom/android/bluetooth/opp/TestTcpListener;->V:Z

    if-eqz v0, :cond_1

    .line 470
    const-string v0, "BtOppRfcommListener"

    const-string v1, "Interrupted waiting for Accept Thread to join"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
