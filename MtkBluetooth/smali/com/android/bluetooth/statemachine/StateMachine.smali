.class public Lcom/android/bluetooth/statemachine/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;,
        Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;,
        Lcom/android/bluetooth/statemachine/StateMachine$LogRec;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1303
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    .line 1304
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1305
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1307
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/statemachine/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1308
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1325
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/statemachine/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1326
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    .line 1315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/statemachine/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1317
    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/statemachine/StateMachine;)Landroid/os/HandlerThread;
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/statemachine/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/bluetooth/statemachine/StateMachine;Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/statemachine/StateMachine;)Ljava/lang/String;
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 1

    .line 1293
    iput-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mName:Ljava/lang/String;

    .line 1294
    new-instance p1, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/bluetooth/statemachine/StateMachine;Lcom/android/bluetooth/statemachine/StateMachine$1;)V

    iput-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1295
    return-void
.end method


# virtual methods
.method public addLogRec(Ljava/lang/String;)V
    .locals 8

    .line 1560
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1561
    if-nez v0, :cond_0

    return-void

    .line 1562
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1800(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    move-result-object v1

    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1200(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1300(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/IState;

    move-result-object v5

    .line 1563
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$2100(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    move-result-object v2

    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$2200(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v6, v2, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/android/bluetooth/statemachine/State;

    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$2300(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v7

    .line 1562
    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;->add(Lcom/android/bluetooth/statemachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/bluetooth/statemachine/IState;Lcom/android/bluetooth/statemachine/IState;Lcom/android/bluetooth/statemachine/IState;)V

    .line 1564
    return-void
.end method

.method public final addState(Lcom/android/bluetooth/statemachine/State;)V
    .locals 2

    .line 1357
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$900(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/State;Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1358
    return-void
.end method

.method public final addState(Lcom/android/bluetooth/statemachine/State;Lcom/android/bluetooth/statemachine/State;)V
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$900(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/State;Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1350
    return-void
.end method

.method public final copyLogRecs()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/bluetooth/statemachine/StateMachine$LogRec;",
            ">;"
        }
    .end annotation

    .line 1543
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1544
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1545
    if-eqz v1, :cond_0

    .line 1546
    invoke-static {v1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1800(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;->access$2000(Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/statemachine/StateMachine$LogRec;

    .line 1547
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1548
    goto :goto_0

    .line 1550
    :cond_0
    return-object v0
.end method

.method public final deferMessage(Landroid/os/Message;)V
    .locals 1

    .line 1437
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1600(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Landroid/os/Message;)V

    .line 1438
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 2072
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/bluetooth/statemachine/StateMachine;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " total records="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/statemachine/StateMachine;->getLogRecCount()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2074
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/statemachine/StateMachine;->getLogRecSize()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 2075
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " rec["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->getLogRec(I)Lcom/android/bluetooth/statemachine/StateMachine$LogRec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/statemachine/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2074
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2078
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "curState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/statemachine/StateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/bluetooth/statemachine/IState;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2079
    return-void
.end method

.method public final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1384
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1385
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1200(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentState()Lcom/android/bluetooth/statemachine/IState;
    .locals 1

    .line 1393
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1394
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1395
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1300(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/IState;

    move-result-object v0

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 1595
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    return-object v0
.end method

.method public final getLogRec(I)Lcom/android/bluetooth/statemachine/StateMachine$LogRec;
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1535
    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1536
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1800(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;->get(I)Lcom/android/bluetooth/statemachine/StateMachine$LogRec;

    move-result-object p1

    return-object p1
.end method

.method public final getLogRecCount()I
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1525
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1526
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1800(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;->count()I

    move-result v0

    return v0
.end method

.method public final getLogRecMaxSize()I
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1515
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1516
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1800(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;->access$1900(Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;)I

    move-result v0

    return v0
.end method

.method public final getLogRecSize()I
    .locals 1

    .line 1503
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1504
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1505
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1800(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;->size()I

    move-result v0

    return v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 0

    .line 1581
    const-string p1, ""

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1477
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 0

    .line 1588
    const/4 p1, 0x0

    return-object p1
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0

    .line 1454
    return-void
.end method

.method protected final hasDeferredMessages(I)Z
    .locals 3

    .line 1971
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1972
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1974
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$2400(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1975
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1976
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1977
    iget v2, v2, Landroid/os/Message;->what:I

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1978
    :cond_1
    goto :goto_0

    .line 1980
    :cond_2
    return v1
.end method

.method protected final hasMessages(I)Z
    .locals 1

    .line 1988
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1989
    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1991
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public isDbg()Z
    .locals 1

    .line 2033
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 2034
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2036
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$2800(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Z

    move-result v0

    return v0
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .locals 1

    .line 2000
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 2001
    if-nez v0, :cond_1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 2003
    :cond_1
    invoke-static {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$2500(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 2110
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    return-void
.end method

.method protected logAndAddLogRec(Ljava/lang/String;)V
    .locals 0

    .line 2100
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->addLogRec(Ljava/lang/String;)V

    .line 2101
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 2102
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1

    .line 2119
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    .line 2155
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2165
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2166
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1

    .line 2137
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1

    .line 2128
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 1

    .line 2146
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    return-void
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .line 1609
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1

    .line 1624
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .locals 2

    .line 1659
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1

    .line 1677
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1641
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method protected onHalting()V
    .locals 0

    .line 1462
    return-void
.end method

.method protected onPostHandleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1341
    return-void
.end method

.method protected onPreHandleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1333
    return-void
.end method

.method protected onQuitting()V
    .locals 0

    .line 1471
    return-void
.end method

.method public final quit()V
    .locals 1

    .line 2011
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 2012
    if-nez v0, :cond_0

    return-void

    .line 2014
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$2600(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)V

    .line 2015
    return-void
.end method

.method public final quitNow()V
    .locals 1

    .line 2022
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 2023
    if-nez v0, :cond_0

    return-void

    .line 2025
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$2700(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)V

    .line 2026
    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 0

    .line 1570
    const/4 p1, 0x1

    return p1
.end method

.method protected final removeDeferredMessages(I)V
    .locals 2

    .line 1957
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1958
    if-nez v0, :cond_0

    return-void

    .line 1960
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$2400(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1961
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1962
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1963
    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1964
    :cond_1
    goto :goto_0

    .line 1965
    :cond_2
    return-void
.end method

.method protected final removeMessages(I)V
    .locals 1

    .line 1947
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1948
    if-nez v0, :cond_0

    return-void

    .line 1950
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->removeMessages(I)V

    .line 1951
    return-void
.end method

.method public final removeState(Lcom/android/bluetooth/statemachine/State;)V
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1000(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/State;)V

    .line 1366
    return-void
.end method

.method public sendMessage(I)V
    .locals 1

    .line 1706
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1707
    if-nez v0, :cond_0

    return-void

    .line 1709
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1710
    return-void
.end method

.method public sendMessage(II)V
    .locals 1

    .line 1732
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1733
    if-nez v0, :cond_0

    return-void

    .line 1735
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1736
    return-void
.end method

.method public sendMessage(III)V
    .locals 1

    .line 1745
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1746
    if-nez v0, :cond_0

    return-void

    .line 1748
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1749
    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 1

    .line 1758
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1759
    if-nez v0, :cond_0

    return-void

    .line 1761
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1762
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1720
    if-nez v0, :cond_0

    return-void

    .line 1722
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1723
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1

    .line 1771
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1772
    if-nez v0, :cond_0

    return-void

    .line 1774
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1775
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 1

    .line 1864
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1865
    if-nez v0, :cond_0

    return-void

    .line 1867
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1868
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(II)V
    .locals 1

    .line 1892
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1893
    if-nez v0, :cond_0

    return-void

    .line 1895
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1896
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(III)V
    .locals 1

    .line 1907
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1908
    if-nez v0, :cond_0

    return-void

    .line 1910
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1911
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 1

    .line 1921
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1922
    if-nez v0, :cond_0

    return-void

    .line 1924
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1925
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 1

    .line 1878
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1879
    if-nez v0, :cond_0

    return-void

    .line 1881
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1882
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1

    .line 1935
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1936
    if-nez v0, :cond_0

    return-void

    .line 1938
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1939
    return-void
.end method

.method public sendMessageDelayed(IIIJ)V
    .locals 1

    .line 1823
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1824
    if-nez v0, :cond_0

    return-void

    .line 1826
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p4, p5}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1827
    return-void
.end method

.method public sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 1

    .line 1837
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1838
    if-nez v0, :cond_0

    return-void

    .line 1840
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p5, p6}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1841
    return-void
.end method

.method public sendMessageDelayed(IIJ)V
    .locals 1

    .line 1810
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1811
    if-nez v0, :cond_0

    return-void

    .line 1813
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1814
    return-void
.end method

.method public sendMessageDelayed(IJ)V
    .locals 1

    .line 1784
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1785
    if-nez v0, :cond_0

    return-void

    .line 1787
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1788
    return-void
.end method

.method public sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 1

    .line 1797
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1798
    if-nez v0, :cond_0

    return-void

    .line 1800
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/statemachine/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1801
    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1

    .line 1850
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 1851
    if-nez v0, :cond_0

    return-void

    .line 1853
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1854
    return-void
.end method

.method public setDbg(Z)V
    .locals 1

    .line 2046
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 2047
    if-nez v0, :cond_0

    return-void

    .line 2049
    :cond_0
    invoke-static {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$2900(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Z)V

    .line 2050
    return-void
.end method

.method public final setInitialState(Lcom/android/bluetooth/statemachine/State;)V
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1100(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/State;)V

    .line 1376
    return-void
.end method

.method public final setLogOnlyTransitions(Z)V
    .locals 1

    .line 1495
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1800(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    .line 1496
    return-void
.end method

.method public final setLogRecSize(I)V
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1800(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;->setSize(I)V

    .line 1487
    return-void
.end method

.method public start()V
    .locals 1

    .line 2057
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 2058
    if-nez v0, :cond_0

    return-void

    .line 2061
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$3000(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)V

    .line 2062
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2083
    const-string v0, "(null)"

    .line 2084
    nop

    .line 2086
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2087
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v2}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1300(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/bluetooth/statemachine/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2090
    goto :goto_0

    .line 2088
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    .line 2091
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transitionTo(Lcom/android/bluetooth/statemachine/IState;)V
    .locals 1

    .line 1413
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1400(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/IState;)V

    .line 1414
    return-void
.end method

.method public final transitionToHaltingState()V
    .locals 2

    .line 1424
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1500(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1400(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/IState;)V

    .line 1425
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2

    .line 1446
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine;->mSmHandler:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$1700(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->loge(Ljava/lang/String;)V

    .line 1447
    :cond_0
    return-void
.end method
