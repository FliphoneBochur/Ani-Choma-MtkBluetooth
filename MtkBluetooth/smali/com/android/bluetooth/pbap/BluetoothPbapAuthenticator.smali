.class public Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;
.super Ljava/lang/Object;
.source "BluetoothPbapAuthenticator.java"

# interfaces
.implements Ljavax/obex/Authenticator;


# static fields
.field private static final TAG:Ljava/lang/String; = "PbapAuthenticator"


# instance fields
.field private mAuthCancelled:Z

.field private mChallenged:Z

.field private mPbapStateMachine:Lcom/android/bluetooth/pbap/PbapStateMachine;

.field private mSessionKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/PbapStateMachine;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mPbapStateMachine:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 54
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mChallenged:Z

    .line 55
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mAuthCancelled:Z

    .line 56
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private waitUserConfirmation()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mPbapStateMachine:Lcom/android/bluetooth/pbap/PbapStateMachine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->sendMessage(I)V

    .line 75
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mPbapStateMachine:Lcom/android/bluetooth/pbap/PbapStateMachine;

    const/4 v1, 0x6

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/pbap/PbapStateMachine;->sendMessageDelayed(IJ)V

    .line 77
    monitor-enter p0

    .line 78
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mChallenged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mAuthCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 80
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_1
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    :try_start_2
    const-string v0, "PbapAuthenticator"

    const-string v1, "Interrupted while waiting on isChallenged or AuthCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    :cond_0
    monitor-exit p0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public onAuthenticationChallenge(Ljava/lang/String;ZZ)Ljavax/obex/PasswordAuthentication;
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->waitUserConfirmation()V

    .line 92
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 93
    new-instance p1, Ljavax/obex/PasswordAuthentication;

    iget-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljavax/obex/PasswordAuthentication;-><init>([B[B)V

    return-object p1

    .line 95
    :cond_0
    return-object p2
.end method

.method public onAuthenticationResponse([B)[B
    .locals 0

    .line 101
    nop

    .line 102
    const/4 p1, 0x0

    return-object p1
.end method

.method final declared-synchronized setCancelled(Z)V
    .locals 0

    monitor-enter p0

    .line 65
    :try_start_0
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mAuthCancelled:Z

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized setChallenged(Z)V
    .locals 0

    monitor-enter p0

    .line 60
    :try_start_0
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mChallenged:Z

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized setSessionKey(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 70
    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->mSessionKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
