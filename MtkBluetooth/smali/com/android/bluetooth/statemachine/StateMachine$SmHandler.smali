.class Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/statemachine/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$QuittingState;,
        Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;,
        Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mSmHandlerObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/android/bluetooth/statemachine/State;

.field private mHaltingState:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;

.field private mHasQuit:Z

.field private mInitialState:Lcom/android/bluetooth/statemachine/State;

.field private mIsConstructionCompleted:Z

.field private mLogRecords:Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

.field private mMsg:Landroid/os/Message;

.field private mQuittingState:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$QuittingState;

.field private mSm:Lcom/android/bluetooth/statemachine/StateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/bluetooth/statemachine/State;",
            "Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I

.field private mTransitionInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 689
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/bluetooth/statemachine/StateMachine;)V
    .locals 2

    .line 1220
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 683
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mHasQuit:Z

    .line 686
    iput-boolean p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    .line 695
    new-instance v0, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;-><init>(Lcom/android/bluetooth/statemachine/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mLogRecords:Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    .line 704
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 713
    new-instance v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;-><init>(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mHaltingState:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;

    .line 716
    new-instance v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$QuittingState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$QuittingState;-><init>(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mQuittingState:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$QuittingState;

    .line 746
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 760
    iput-boolean p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 763
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 1221
    iput-object p2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    .line 1223
    iget-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mHaltingState:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->addState(Lcom/android/bluetooth/statemachine/State;Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1224
    iget-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mQuittingState:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->addState(Lcom/android/bluetooth/statemachine/State;Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1225
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/bluetooth/statemachine/StateMachine;Lcom/android/bluetooth/statemachine/StateMachine$1;)V
    .locals 0

    .line 680
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/bluetooth/statemachine/StateMachine;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/State;)V
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->removeState(Lcom/android/bluetooth/statemachine/State;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/State;)V
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->setInitialState(Lcom/android/bluetooth/statemachine/State;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Landroid/os/Message;
    .locals 0

    .line 680
    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/IState;
    .locals 0

    .line 680
    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/IState;)V
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mHaltingState:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Landroid/os/Message;)V
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Z
    .locals 0

    .line 680
    iget-boolean p0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mLogRecords:Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)I
    .locals 0

    .line 680
    iget p0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    return p0
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/State;
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDestState:Lcom/android/bluetooth/statemachine/State;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Ljava/util/ArrayList;
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Landroid/os/Message;)Z
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)V
    .locals 0

    .line 680
    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->quit()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)V
    .locals 0

    .line 680
    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->quitNow()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Z
    .locals 0

    .line 680
    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->isDbg()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Z)V
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->setDbg(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine;
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)V
    .locals 0

    .line 680
    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/State;Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;
    .locals 0

    .line 680
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->addState(Lcom/android/bluetooth/statemachine/State;Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    move-result-object p0

    return-object p0
.end method

.method private final addState(Lcom/android/bluetooth/statemachine/State;Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;
    .locals 3

    .line 1163
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    .line 1164
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStateInternal: E state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/bluetooth/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1164
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1167
    :cond_1
    nop

    .line 1168
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1169
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1170
    if-nez v1, :cond_3

    .line 1172
    invoke-direct {p0, p2, v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->addState(Lcom/android/bluetooth/statemachine/State;Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    move-result-object v1

    goto :goto_1

    .line 1168
    :cond_2
    move-object v1, v0

    .line 1175
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1176
    if-nez p2, :cond_4

    .line 1177
    new-instance p2, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    invoke-direct {p2, p0, v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;-><init>(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/StateMachine$1;)V

    .line 1178
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    :cond_4
    iget-object v0, p2, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    if-ne v0, v1, :cond_5

    goto :goto_2

    .line 1184
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "state already added"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1186
    :cond_6
    :goto_2
    iput-object p1, p2, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/android/bluetooth/statemachine/State;

    .line 1187
    iput-object v1, p2, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1188
    const/4 p1, 0x0

    iput-boolean p1, p2, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1189
    iget-boolean p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addStateInternal: X stateInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1190
    :cond_7
    return-object p2
.end method

.method private final cleanupAfterQuitting()V
    .locals 2

    .line 925
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine;->access$400(Lcom/android/bluetooth/statemachine/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 928
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->access$402(Lcom/android/bluetooth/statemachine/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->access$502(Lcom/android/bluetooth/statemachine/StateMachine;Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    .line 932
    iput-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    .line 933
    iput-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 934
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mLogRecords:Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;->cleanup()V

    .line 935
    iput-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 936
    iput-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 937
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 938
    iput-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mInitialState:Lcom/android/bluetooth/statemachine/State;

    .line 939
    iput-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDestState:Lcom/android/bluetooth/statemachine/State;

    .line 940
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mHasQuit:Z

    .line 942
    return-void
.end method

.method private final completeConstruction()V
    .locals 5

    .line 948
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    const-string v1, "completeConstruction: E"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 954
    :cond_0
    nop

    .line 955
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 956
    nop

    .line 957
    move v4, v1

    :goto_1
    if-eqz v3, :cond_1

    .line 958
    iget-object v3, v3, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 957
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 960
    :cond_1
    if-ge v2, v4, :cond_2

    .line 961
    move v2, v4

    .line 963
    :cond_2
    goto :goto_0

    .line 964
    :cond_3
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeConstruction: maxDepth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 966
    :cond_4
    new-array v0, v2, [Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    iput-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 967
    new-array v0, v2, [Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    iput-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 968
    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->setupInitialStateStack()V

    .line 971
    const/4 v0, -0x2

    sget-object v1, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 973
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    const-string v1, "completeConstruction: X"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 974
    :cond_5
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .locals 3

    .line 1245
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deferMessage: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1248
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1249
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1251
    iget-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method private final getCurrentState()Lcom/android/bluetooth/statemachine/IState;
    .locals 2

    .line 1150
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/android/bluetooth/statemachine/State;

    return-object v0
.end method

.method private final invokeEnterMethods(I)V
    .locals 4

    .line 1030
    move v0, p1

    :goto_0
    iget v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    .line 1031
    if-ne p1, v1, :cond_0

    .line 1033
    iput-boolean v2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 1035
    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {v3}, Lcom/android/bluetooth/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1036
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {v1}, Lcom/android/bluetooth/statemachine/State;->enter()V

    .line 1037
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1030
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    :cond_2
    iput-boolean v2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 1040
    return-void
.end method

.method private final invokeExitMethods(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;)V
    .locals 4

    .line 1016
    :goto_0
    iget v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    aget-object v2, v1, v0

    if-eq v2, p1, :cond_1

    .line 1018
    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/android/bluetooth/statemachine/State;

    .line 1019
    iget-boolean v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/bluetooth/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1020
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/statemachine/State;->exit()V

    .line 1021
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1022
    iget v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1023
    goto :goto_0

    .line 1024
    :cond_1
    return-void
.end method

.method private final isDbg()Z
    .locals 1

    .line 1273
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 2

    .line 1268
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$removeState$0(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;)Z
    .locals 0

    .line 1204
    iget-object p1, p1, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    .line 1052
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1053
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1054
    iget-boolean v2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1055
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1052
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1058
    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 6

    .line 1068
    iget v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 1069
    iget v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, -0x1

    .line 1070
    move v2, v0

    .line 1071
    :goto_0
    if-ltz v1, :cond_1

    .line 1072
    iget-boolean v3, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1073
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    iget-object v4, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 1074
    add-int/lit8 v2, v2, 0x1

    .line 1075
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1078
    :cond_1
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1079
    iget-boolean v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    .line 1080
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",startingIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",Top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    iget v4, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/android/bluetooth/statemachine/State;

    .line 1082
    invoke-virtual {v3}, Lcom/android/bluetooth/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1080
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1084
    :cond_2
    return v0
.end method

.method private performTransitions(Lcom/android/bluetooth/statemachine/State;Landroid/os/Message;)V
    .locals 9

    .line 839
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v6, v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/android/bluetooth/statemachine/State;

    .line 846
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->recordLogRec(Landroid/os/Message;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    move p2, v8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 848
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mLogRecords:Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;->logOnlyTransitions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    iget-object p2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDestState:Lcom/android/bluetooth/statemachine/State;

    if-eqz p2, :cond_2

    .line 851
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mLogRecords:Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/statemachine/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDestState:Lcom/android/bluetooth/statemachine/State;

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;->add(Lcom/android/bluetooth/statemachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/bluetooth/statemachine/IState;Lcom/android/bluetooth/statemachine/IState;Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_1

    .line 854
    :cond_1
    if-eqz p2, :cond_2

    .line 856
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mLogRecords:Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/statemachine/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDestState:Lcom/android/bluetooth/statemachine/State;

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/bluetooth/statemachine/StateMachine$LogRecords;->add(Lcom/android/bluetooth/statemachine/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/bluetooth/statemachine/IState;Lcom/android/bluetooth/statemachine/IState;Lcom/android/bluetooth/statemachine/IState;)V

    .line 860
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDestState:Lcom/android/bluetooth/statemachine/State;

    .line 861
    if-eqz p1, :cond_5

    .line 866
    :goto_2
    iget-boolean p2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    const-string v0, "handleMessage: new destination call exit/enter"

    invoke-virtual {p2, v0}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 873
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    move-result-object p2

    .line 875
    iput-boolean v8, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 876
    invoke-direct {p0, p2}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->invokeExitMethods(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;)V

    .line 877
    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result p2

    .line 878
    invoke-direct {p0, p2}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 886
    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V

    .line 888
    iget-object p2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDestState:Lcom/android/bluetooth/statemachine/State;

    if-eq p1, p2, :cond_4

    .line 890
    nop

    .line 895
    move-object p1, p2

    goto :goto_2

    .line 896
    :cond_4
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDestState:Lcom/android/bluetooth/statemachine/State;

    .line 903
    :cond_5
    if-eqz p1, :cond_7

    .line 904
    iget-object p2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mQuittingState:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$QuittingState;

    if-ne p1, p2, :cond_6

    .line 908
    iget-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/statemachine/StateMachine;->onQuitting()V

    .line 909
    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->cleanupAfterQuitting()V

    goto :goto_3

    .line 910
    :cond_6
    iget-object p2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mHaltingState:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;

    if-ne p1, p2, :cond_7

    .line 916
    iget-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/statemachine/StateMachine;->onHalting()V

    .line 919
    :cond_7
    :goto_3
    return-void
.end method

.method private final processMsg(Landroid/os/Message;)Lcom/android/bluetooth/statemachine/State;
    .locals 5

    .line 983
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    .line 984
    iget-boolean v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    const-string v2, "processMsg: "

    if-eqz v1, :cond_0

    .line 985
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {v4}, Lcom/android/bluetooth/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 988
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    iget-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mQuittingState:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_1

    .line 991
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/statemachine/State;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 995
    iget-object v0, v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 996
    if-nez v0, :cond_2

    .line 1000
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    .line 1001
    goto :goto_1

    .line 1003
    :cond_2
    iget-boolean v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    .line 1004
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {v4}, Lcom/android/bluetooth/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1008
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object p1, v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->state:Lcom/android/bluetooth/statemachine/State;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method private final quit()V
    .locals 2

    .line 1256
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    const-string v1, "quit:"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1257
    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1258
    return-void
.end method

.method private final quitNow()V
    .locals 2

    .line 1262
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    const-string v1, "quitNow:"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1263
    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1264
    return-void
.end method

.method private removeState(Lcom/android/bluetooth/statemachine/State;)V
    .locals 3

    .line 1199
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1200
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1203
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/bluetooth/statemachine/-$$Lambda$StateMachine$SmHandler$004aBUdZIe6WI_x9aDYEFbwFOtI;

    invoke-direct {v2, v0}, Lcom/android/bluetooth/statemachine/-$$Lambda$StateMachine$SmHandler$004aBUdZIe6WI_x9aDYEFbwFOtI;-><init>(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;)V

    .line 1204
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1205
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 1206
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    .line 1207
    if-eqz v0, :cond_1

    .line 1208
    return-void

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    return-void

    .line 1201
    :cond_2
    :goto_0
    return-void
.end method

.method private final setDbg(Z)V
    .locals 0

    .line 1278
    iput-boolean p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    .line 1279
    return-void
.end method

.method private final setInitialState(Lcom/android/bluetooth/statemachine/State;)V
    .locals 3

    .line 1229
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1230
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mInitialState:Lcom/android/bluetooth/statemachine/State;

    .line 1231
    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 3

    .line 1123
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mInitialState:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {v2}, Lcom/android/bluetooth/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mInitialState:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1128
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    if-eqz v0, :cond_1

    .line 1129
    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1130
    iget-object v0, v0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1128
    iget v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1134
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1136
    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    .line 1137
    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;
    .locals 3

    .line 1105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    .line 1106
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object p1, v0, v1

    .line 1109
    iget-object p1, p1, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    .line 1110
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v0, :cond_0

    .line 1112
    :cond_1
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_2

    .line 1113
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTempStateStackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",curStateInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1116
    :cond_2
    return-object p1
.end method

.method private final transitionTo(Lcom/android/bluetooth/statemachine/IState;)V
    .locals 3

    .line 1235
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mTransitionInProgress:Z

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine;->access$700(Lcom/android/bluetooth/statemachine/StateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionTo called while transition already in progress to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDestState:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new target state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_0
    check-cast p1, Lcom/android/bluetooth/statemachine/State;

    iput-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDestState:Lcom/android/bluetooth/statemachine/State;

    .line 1240
    iget-boolean p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transitionTo: destState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDestState:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {v1}, Lcom/android/bluetooth/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 1241
    :cond_1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 794
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mHasQuit:Z

    if-nez v0, :cond_6

    .line 795
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->onPreHandleMessage(Landroid/os/Message;)V

    .line 799
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: E msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 802
    :cond_1
    iput-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 805
    const/4 v0, 0x0

    .line 806
    iget-boolean v3, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-nez v3, :cond_4

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_2

    goto :goto_0

    .line 809
    :cond_2
    iget-boolean v3, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget v3, v3, Landroid/os/Message;->what:I

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v4, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v3, v4, :cond_3

    .line 812
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    .line 813
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->invokeEnterMethods(I)V

    goto :goto_1

    .line 815
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    .line 818
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->performTransitions(Lcom/android/bluetooth/statemachine/State;Landroid/os/Message;)V

    .line 821
    iget-boolean v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    if-eqz v0, :cond_5

    const-string v3, "handleMessage: X"

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 823
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    if-eqz v0, :cond_6

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_6

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_6

    .line 824
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->mSm:Lcom/android/bluetooth/statemachine/StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->onPostHandleMessage(Landroid/os/Message;)V

    .line 827
    :cond_6
    return-void
.end method
