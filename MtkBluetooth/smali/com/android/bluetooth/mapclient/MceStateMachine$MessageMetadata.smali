.class Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;
.super Ljava/lang/Object;
.source "MceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/MceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageMetadata"
.end annotation


# instance fields
.field private final mHandle:Ljava/lang/String;

.field private mRead:Z

.field private final mTimestamp:Ljava/lang/Long;

.field final synthetic this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/mapclient/MceStateMachine;Ljava/lang/String;Ljava/lang/Long;Z)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;->mHandle:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;->mTimestamp:Ljava/lang/Long;

    .line 148
    iput-boolean p4, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;->mRead:Z

    .line 149
    return-void
.end method


# virtual methods
.method public getHandle()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;->mHandle:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getRead()Z
    .locals 1

    monitor-enter p0

    .line 160
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;->mRead:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;->mTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public declared-synchronized setRead(Z)V
    .locals 0

    monitor-enter p0

    .line 164
    :try_start_0
    iput-boolean p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;->mRead:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
