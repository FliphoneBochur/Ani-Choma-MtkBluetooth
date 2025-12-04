.class final Lcom/android/bluetooth/btservice/BondStateMachine;
.super Lcom/android/bluetooth/statemachine/StateMachine;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;,
        Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
    }
.end annotation


# static fields
.field static final BONDING_STATE_CHANGE:I = 0x4

.field static final BOND_STATE_BONDED:I = 0x2

.field static final BOND_STATE_BONDING:I = 0x1

.field static final BOND_STATE_NONE:I = 0x0

.field static final CANCEL_BOND:I = 0x2

.field static final CREATE_BOND:I = 0x1

.field private static final DBG:Z = false

.field public static final OOBDATA:Ljava/lang/String; = "oobdata"

.field static final PIN_REQUEST:I = 0x6

.field static final REMOVE_BOND:I = 0x3

.field static final SSP_REQUEST:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BluetoothBondStateMachine"

.field static final UUID_UPDATE:I = 0xa

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private final mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field mPendingBondedDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

.field private mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

.field private mStateMachineInitiated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    nop

    .line 62
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/BondStateMachine;->VDBG:Z

    .line 61
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 2

    .line 95
    const-string v0, "BondStateMachine:"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/statemachine/StateMachine;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    .line 82
    new-instance v0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStateMachineInitiated:Z

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingBondedDevices:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;

    .line 96
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 97
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 98
    iput-object p3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 99
    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 100
    iput-object p2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 101
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 102
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->setInitialState(Lcom/android/bluetooth/statemachine/State;)V

    .line 103
    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->cancelBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/btservice/BondStateMachine;I)I
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->getUnbondReasonFromHALCode(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->clearProfilePriority(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendDisplayPinIntent([BII)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/bluetooth/btservice/BondStateMachine;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStateMachineInitiated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Z)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/BondStateMachine;->createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/BondStateMachine;->removeBond(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/btservice/BondStateMachine;I)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->state2str(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/RemoteDevices;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    return-object p0
.end method

.method private cancelBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 323
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 324
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    .line 325
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondNative([B)Z

    move-result p1

    if-nez p1, :cond_0

    .line 326
    const-string p1, "BluetoothBondStateMachine"

    const-string v0, "Unexpected error while cancelling bond:"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 331
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private cleanup()V
    .locals 1

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 129
    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 130
    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 131
    return-void
.end method

.method private clearProfilePriority(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 595
    invoke-static {}, Lcom/android/bluetooth/hid/HidHostService;->getHidHostService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 596
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    .line 597
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v2

    .line 598
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v3

    .line 599
    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v4

    .line 600
    invoke-static {}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getPbapClientService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v5

    .line 602
    const/4 v6, -0x1

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0, p1, v6}, Lcom/android/bluetooth/hid/HidHostService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 605
    :cond_0
    if-eqz v1, :cond_1

    .line 606
    invoke-virtual {v1, p1, v6}, Lcom/android/bluetooth/a2dp/A2dpService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 608
    :cond_1
    if-eqz v2, :cond_2

    .line 609
    invoke-virtual {v2, p1, v6}, Lcom/android/bluetooth/hfp/HeadsetService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 611
    :cond_2
    if-eqz v3, :cond_3

    .line 612
    invoke-virtual {v3, p1, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 615
    :cond_3
    if-eqz v4, :cond_4

    .line 616
    invoke-virtual {v4, p1, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 618
    :cond_4
    if-eqz v5, :cond_5

    .line 619
    invoke-virtual {v5, p1, v6}, Lcom/android/bluetooth/pbapclient/PbapClientService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 622
    :cond_5
    return-void
.end method

.method private createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Z)Z
    .locals 17

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-ne v4, v5, :cond_5

    .line 354
    sget-boolean v4, Lcom/android/bluetooth/btservice/BondStateMachine;->VDBG:Z

    if-eqz v4, :cond_0

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bond address is:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 358
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v4

    .line 360
    if-eqz v3, :cond_1

    .line 361
    iget-object v7, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v7, v4, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->createBondOutOfBandNative([BILandroid/bluetooth/OobData;)Z

    move-result v4

    goto :goto_0

    .line 363
    :cond_1
    iget-object v7, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v7, v4, v2}, Lcom/android/bluetooth/btservice/AdapterService;->createBondNative([BI)Z

    move-result v4

    .line 365
    :goto_0
    const/16 v7, 0xa5

    iget-object v8, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 366
    invoke-virtual {v8, v1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    int-to-long v14, v2

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v11

    const/16 v12, 0xb

    .line 368
    const/4 v2, 0x1

    if-nez v3, :cond_2

    move v13, v6

    goto :goto_1

    .line 369
    :cond_2
    move v13, v2

    :goto_1
    const/4 v3, 0x0

    .line 365
    move-wide v9, v14

    move-wide v15, v14

    move v14, v3

    invoke-static/range {v7 .. v14}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BJIIII)V

    .line 371
    if-nez v4, :cond_3

    .line 372
    const/16 v9, 0xa5

    iget-object v2, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 373
    invoke-virtual {v2, v1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v13

    const/16 v14, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x7

    .line 372
    move-wide v11, v15

    move v15, v2

    move/from16 v16, v3

    invoke-static/range {v9 .. v16}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BJIIII)V

    .line 377
    const/16 v2, 0x9

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    .line 378
    return v6

    .line 379
    :cond_3
    if-eqz p4, :cond_4

    .line 380
    iget-object v1, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 382
    :cond_4
    return v2

    .line 384
    :cond_5
    return v6
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    .line 639
    const-string v0, "BluetoothBondStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method private getUnbondReasonFromHALCode(I)I
    .locals 2

    .line 647
    if-nez p1, :cond_0

    .line 648
    const/4 p1, 0x0

    return p1

    .line 649
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 650
    const/4 p1, 0x4

    return p1

    .line 651
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 652
    const/4 p1, 0x1

    return p1

    .line 653
    :cond_2
    const/16 v1, 0xb

    if-ne p1, v1, :cond_3

    .line 654
    const/4 p1, 0x2

    return p1

    .line 655
    :cond_3
    const/16 v1, 0xc

    if-ne p1, v1, :cond_4

    .line 656
    const/4 p1, 0x6

    return p1

    .line 660
    :cond_4
    return v0
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 1

    .line 635
    const-string v0, "BluetoothBondStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method public static make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)Lcom/android/bluetooth/btservice/BondStateMachine;
    .locals 2

    .line 107
    const-string v0, "BluetoothBondStateMachine"

    const-string v1, "make"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/bluetooth/btservice/BondStateMachine;-><init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 109
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->start()V

    .line 110
    return-object v0
.end method

.method private removeBond(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 2

    .line 335
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 336
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    .line 337
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->removeBondNative([B)Z

    move-result p1

    if-nez p1, :cond_0

    .line 338
    const-string p1, "BluetoothBondStateMachine"

    const-string p2, "Unexpected error while removing bond:"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    :cond_0
    if-eqz p2, :cond_1

    .line 341
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 343
    :cond_1
    const/4 p1, 0x1

    return p1

    .line 347
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private sendDisplayPinIntent([BII)V
    .locals 2

    .line 388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 390
    if-eqz p2, :cond_0

    .line 391
    const-string p1, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    :cond_0
    const-string p1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    const/high16 p1, 0x1000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 397
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string p2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/btservice/AdapterService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method private state2str(I)Ljava/lang/String;
    .locals 2

    .line 625
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 626
    const-string p1, "BOND_NONE"

    return-object p1

    .line 627
    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 628
    const-string p1, "BOND_BONDING"

    return-object p1

    .line 629
    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 630
    const-string p1, "BOND_BONDED"

    return-object p1

    .line 631
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private warnLog(Ljava/lang/String;)V
    .locals 1

    .line 643
    const-string v0, "BluetoothBondStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method


# virtual methods
.method bondStateChangeCallback(I[BI)V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 477
    if-nez v0, :cond_0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No record of the device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 485
    :cond_0
    sget-boolean p2, Lcom/android/bluetooth/btservice/BondStateMachine;->VDBG:Z

    if-eqz p2, :cond_1

    .line 486
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bondStateChangeCallback: Status: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Address: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " newState: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 491
    :cond_1
    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 492
    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 494
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 495
    const/16 p3, 0xc

    iput p3, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 496
    :cond_2
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    .line 497
    const/16 p3, 0xb

    iput p3, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 499
    :cond_3
    const/16 p3, 0xa

    iput p3, p2, Landroid/os/Message;->arg1:I

    .line 501
    :goto_0
    iput p1, p2, Landroid/os/Message;->arg2:I

    .line 503
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 504
    return-void
.end method

.method public declared-synchronized doQuit()V
    .locals 1

    monitor-enter p0

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStateMachineInitiated:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BondStateMachine;->quitNow()V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BondStateMachine;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :goto_0
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onQuitting()V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/BondStateMachine;->cleanup()V

    .line 136
    return-void
.end method

.method pinRequestCallback([B[BIZ)V
    .locals 8

    .line 569
    iget-object p2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    .line 570
    if-nez p2, :cond_0

    .line 571
    iget-object p2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 572
    iget-object p2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 575
    :cond_0
    const/16 v0, 0xa5

    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 576
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v4

    const/16 v5, 0xb

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 575
    invoke-static/range {v0 .. v7}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BJIIII)V

    .line 581
    sget-boolean p1, Lcom/android/bluetooth/btservice/BondStateMachine;->VDBG:Z

    if-eqz p1, :cond_1

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pinRequestCallback: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " name:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cod:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/bluetooth/BluetoothClass;

    invoke-direct {v0, p3}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 582
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 587
    :cond_1
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 588
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 589
    iput p4, p1, Landroid/os/Message;->arg2:I

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 592
    return-void
.end method

.method sendIntent(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 16

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p2

    iget-object v2, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v11

    .line 403
    nop

    .line 404
    const/16 v12, 0xc

    const/16 v13, 0xb

    const/16 v14, 0xa

    if-eq v10, v14, :cond_0

    if-eq v10, v13, :cond_0

    if-eq v10, v12, :cond_0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bond state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 408
    return-void

    .line 410
    :cond_0
    if-eqz v11, :cond_1

    .line 411
    invoke-virtual {v11}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    goto :goto_0

    .line 410
    :cond_1
    move v2, v14

    .line 413
    :goto_0
    iget-object v3, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingBondedDevices:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 414
    iget-object v3, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingBondedDevices:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 415
    if-ne v2, v12, :cond_3

    .line 416
    if-ne v10, v13, :cond_2

    .line 417
    iget-object v2, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v2, v1, v10}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 419
    :cond_2
    move v15, v13

    goto :goto_1

    .line 422
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid old state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_4
    move v15, v2

    .line 425
    :goto_1
    if-ne v15, v10, :cond_5

    .line 426
    return-void

    .line 428
    :cond_5
    const/16 v2, 0xa5

    iget-object v3, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 429
    invoke-virtual {v3, v1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v5

    const/4 v7, 0x0

    iget-object v6, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 431
    invoke-virtual {v6, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 428
    move/from16 v6, p2

    move/from16 v8, p3

    invoke-static/range {v2 .. v9}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BIIIIII)V

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 433
    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getClassOfDevice()I

    move-result v2

    .line 434
    :goto_2
    const/16 v3, 0xbb

    iget-object v4, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 435
    invoke-virtual {v4, v1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    iget-object v5, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 436
    invoke-virtual {v5, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 434
    invoke-static {v3, v4, v2, v5}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BII)V

    .line 437
    iget-object v2, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v2, v1, v10}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 439
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getDeviceType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    .line 440
    invoke-virtual {v11}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getDeviceType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    :cond_7
    if-ne v10, v12, :cond_b

    .line 441
    invoke-virtual {v11}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    if-nez v2, :cond_b

    .line 443
    sget-boolean v2, Lcom/android/bluetooth/btservice/BondStateMachine;->VDBG:Z

    if-eqz v2, :cond_8

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is bonded, wait for SDP complete to broadcast bonded intent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 447
    :cond_8
    iget-object v2, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingBondedDevices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 448
    iget-object v2, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingBondedDevices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_9
    if-ne v15, v14, :cond_a

    .line 452
    goto :goto_3

    .line 454
    :cond_a
    return-void

    .line 458
    :cond_b
    move v13, v10

    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 460
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v2, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    const-string v3, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {v2, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    if-ne v13, v14, :cond_c

    .line 463
    const-string v3, "android.bluetooth.device.extra.REASON"

    move/from16 v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    :cond_c
    iget-object v3, v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 467
    sget-boolean v2, Lcom/android/bluetooth/btservice/BondStateMachine;->VDBG:Z

    if-eqz v2, :cond_d

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bond State Change Intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Lcom/android/bluetooth/btservice/BondStateMachine;->state2str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-direct {v0, v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->state2str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 472
    :cond_d
    return-void
.end method

.method sspRequestCallback([B[BIII)V
    .locals 8

    .line 508
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 509
    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 513
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/btservice/BondStateMachine;->VDBG:Z

    if-eqz v0, :cond_1

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sspRequestCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cod: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pairingVariant "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " passkey: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 520
    :cond_1
    const/4 p2, 0x0

    .line 521
    const/4 p3, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_5

    if-eq p4, v1, :cond_4

    if-eq p4, v0, :cond_3

    if-eq p4, p3, :cond_2

    .line 542
    const-string p1, "SSP Pairing variant not present"

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->errorLog(Ljava/lang/String;)V

    .line 543
    return-void

    .line 537
    :cond_2
    const/4 p3, 0x4

    .line 538
    nop

    .line 539
    move p2, v1

    goto :goto_0

    .line 529
    :cond_3
    nop

    .line 530
    goto :goto_0

    .line 533
    :cond_4
    nop

    .line 534
    move p3, v1

    goto :goto_0

    .line 524
    :cond_5
    nop

    .line 525
    nop

    .line 526
    move p3, v0

    move p2, v1

    .line 545
    :goto_0
    iget-object p4, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {p4, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p4

    .line 546
    if-nez p4, :cond_6

    .line 547
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device is not known for:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/bluetooth/btservice/BondStateMachine;->warnLog(Ljava/lang/String;)V

    .line 548
    iget-object p4, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {p4, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 549
    iget-object p4, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {p4, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Landroid/bluetooth/BluetoothDevice;

    .line 552
    :cond_6
    const/16 v0, 0xa5

    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 553
    invoke-virtual {p1, p4}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v4

    const/16 v5, 0xb

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 552
    invoke-static/range {v0 .. v7}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BJIIII)V

    .line 557
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 558
    iput-object p4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 559
    if-eqz p2, :cond_7

    .line 560
    iput p5, p1, Landroid/os/Message;->arg1:I

    .line 562
    :cond_7
    iput p3, p1, Landroid/os/Message;->arg2:I

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 564
    return-void
.end method
