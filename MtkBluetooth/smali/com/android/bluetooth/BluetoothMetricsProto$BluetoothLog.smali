.class public final Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BluetoothLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLogOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

.field public static final HEADSET_PROFILE_CONNECTION_STATS_FIELD_NUMBER:I = 0xb

.field public static final NUM_BLUETOOTH_SESSION_FIELD_NUMBER:I = 0x6

.field public static final NUM_BONDED_DEVICES_FIELD_NUMBER:I = 0x5

.field public static final NUM_PAIR_EVENT_FIELD_NUMBER:I = 0x7

.field public static final NUM_SCAN_EVENT_FIELD_NUMBER:I = 0x9

.field public static final NUM_WAKE_EVENT_FIELD_NUMBER:I = 0x8

.field public static final PAIR_EVENT_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROFILE_CONNECTION_STATS_FIELD_NUMBER:I = 0xa

.field public static final SCAN_EVENT_FIELD_NUMBER:I = 0x4

.field public static final SESSION_FIELD_NUMBER:I = 0x1

.field public static final WAKE_EVENT_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;",
            ">;"
        }
    .end annotation
.end field

.field private numBluetoothSession_:J

.field private numBondedDevices_:I

.field private numPairEvent_:J

.field private numScanEvent_:J

.field private numWakeEvent_:J

.field private pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;",
            ">;"
        }
    .end annotation
.end field

.field private profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;",
            ">;"
        }
    .end annotation
.end field

.field private scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private session_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;",
            ">;"
        }
    .end annotation
.end field

.field private wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3332
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;-><init>()V

    .line 3335
    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    .line 3336
    const-class v1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3338
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 722
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 723
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 724
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 725
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 726
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 727
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 728
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 729
    return-void
.end method

.method static synthetic access$000()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1

    .line 717
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setSession(ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setPairEvent(ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setPairEvent(ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addPairEvent(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addPairEvent(ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addPairEvent(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addPairEvent(ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Ljava/lang/Iterable;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addAllPairEvent(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->clearPairEvent()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->removePairEvent(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setWakeEvent(ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setSession(ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setWakeEvent(ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addWakeEvent(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addWakeEvent(ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addWakeEvent(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addWakeEvent(ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Ljava/lang/Iterable;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addAllWakeEvent(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->clearWakeEvent()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->removeWakeEvent(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setScanEvent(ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setScanEvent(ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addSession(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addScanEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addScanEvent(ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addScanEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addScanEvent(ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Ljava/lang/Iterable;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addAllScanEvent(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->clearScanEvent()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->removeScanEvent(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setNumBondedDevices(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->clearNumBondedDevices()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;J)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setNumBluetoothSession(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addSession(ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->clearNumBluetoothSession()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;J)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setNumPairEvent(J)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->clearNumPairEvent()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;J)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setNumWakeEvent(J)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->clearNumWakeEvent()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;J)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setNumScanEvent(J)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->clearNumScanEvent()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addProfileConnectionStats(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addSession(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addProfileConnectionStats(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Ljava/lang/Iterable;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addAllProfileConnectionStats(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->clearProfileConnectionStats()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->removeProfileConnectionStats(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setHeadsetProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->setHeadsetProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addHeadsetProfileConnectionStats(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addHeadsetProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addSession(ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addHeadsetProfileConnectionStats(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addHeadsetProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Ljava/lang/Iterable;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addAllHeadsetProfileConnectionStats(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->clearHeadsetProfileConnectionStats()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->removeHeadsetProfileConnectionStats(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Ljava/lang/Iterable;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->addAllSession(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->clearSession()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->removeSession(I)V

    return-void
.end method

.method private addAllHeadsetProfileConnectionStats(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;",
            ">;)V"
        }
    .end annotation

    .line 2014
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureHeadsetProfileConnectionStatsIsMutable()V

    .line 2015
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2017
    return-void
.end method

.method private addAllPairEvent(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;",
            ">;)V"
        }
    .end annotation

    .line 1063
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensurePairEventIsMutable()V

    .line 1064
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1066
    return-void
.end method

.method private addAllProfileConnectionStats(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;",
            ">;)V"
        }
    .end annotation

    .line 1835
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureProfileConnectionStatsIsMutable()V

    .line 1836
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1838
    return-void
.end method

.method private addAllScanEvent(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;",
            ">;)V"
        }
    .end annotation

    .line 1421
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureScanEventIsMutable()V

    .line 1422
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1424
    return-void
.end method

.method private addAllSession(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;",
            ">;)V"
        }
    .end annotation

    .line 884
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureSessionIsMutable()V

    .line 885
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 887
    return-void
.end method

.method private addAllWakeEvent(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;",
            ">;)V"
        }
    .end annotation

    .line 1242
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureWakeEventIsMutable()V

    .line 1243
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1245
    return-void
.end method

.method private addHeadsetProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)V
    .locals 1

    .line 2002
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureHeadsetProfileConnectionStatsIsMutable()V

    .line 2003
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 2004
    return-void
.end method

.method private addHeadsetProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V
    .locals 1

    .line 1975
    if-eqz p2, :cond_0

    .line 1978
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureHeadsetProfileConnectionStatsIsMutable()V

    .line 1979
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1980
    return-void

    .line 1976
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private addHeadsetProfileConnectionStats(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)V
    .locals 1

    .line 1990
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureHeadsetProfileConnectionStatsIsMutable()V

    .line 1991
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1992
    return-void
.end method

.method private addHeadsetProfileConnectionStats(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V
    .locals 1

    .line 1960
    if-eqz p1, :cond_0

    .line 1963
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureHeadsetProfileConnectionStatsIsMutable()V

    .line 1964
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1965
    return-void

    .line 1961
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private addPairEvent(ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)V
    .locals 1

    .line 1051
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensurePairEventIsMutable()V

    .line 1052
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1053
    return-void
.end method

.method private addPairEvent(ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V
    .locals 1

    .line 1024
    if-eqz p2, :cond_0

    .line 1027
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensurePairEventIsMutable()V

    .line 1028
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1029
    return-void

    .line 1025
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private addPairEvent(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)V
    .locals 1

    .line 1039
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensurePairEventIsMutable()V

    .line 1040
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1041
    return-void
.end method

.method private addPairEvent(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V
    .locals 1

    .line 1009
    if-eqz p1, :cond_0

    .line 1012
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensurePairEventIsMutable()V

    .line 1013
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1014
    return-void

    .line 1010
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private addProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)V
    .locals 1

    .line 1823
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureProfileConnectionStatsIsMutable()V

    .line 1824
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1825
    return-void
.end method

.method private addProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V
    .locals 1

    .line 1796
    if-eqz p2, :cond_0

    .line 1799
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureProfileConnectionStatsIsMutable()V

    .line 1800
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1801
    return-void

    .line 1797
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private addProfileConnectionStats(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)V
    .locals 1

    .line 1811
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureProfileConnectionStatsIsMutable()V

    .line 1812
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1813
    return-void
.end method

.method private addProfileConnectionStats(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V
    .locals 1

    .line 1781
    if-eqz p1, :cond_0

    .line 1784
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureProfileConnectionStatsIsMutable()V

    .line 1785
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1786
    return-void

    .line 1782
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private addScanEvent(ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)V
    .locals 1

    .line 1409
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureScanEventIsMutable()V

    .line 1410
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1411
    return-void
.end method

.method private addScanEvent(ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V
    .locals 1

    .line 1382
    if-eqz p2, :cond_0

    .line 1385
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureScanEventIsMutable()V

    .line 1386
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1387
    return-void

    .line 1383
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private addScanEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)V
    .locals 1

    .line 1397
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureScanEventIsMutable()V

    .line 1398
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1399
    return-void
.end method

.method private addScanEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V
    .locals 1

    .line 1367
    if-eqz p1, :cond_0

    .line 1370
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureScanEventIsMutable()V

    .line 1371
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1372
    return-void

    .line 1368
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private addSession(ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)V
    .locals 1

    .line 872
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureSessionIsMutable()V

    .line 873
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 874
    return-void
.end method

.method private addSession(ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V
    .locals 1

    .line 845
    if-eqz p2, :cond_0

    .line 848
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureSessionIsMutable()V

    .line 849
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 850
    return-void

    .line 846
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private addSession(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)V
    .locals 1

    .line 860
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureSessionIsMutable()V

    .line 861
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 862
    return-void
.end method

.method private addSession(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V
    .locals 1

    .line 830
    if-eqz p1, :cond_0

    .line 833
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureSessionIsMutable()V

    .line 834
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 835
    return-void

    .line 831
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private addWakeEvent(ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)V
    .locals 1

    .line 1230
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureWakeEventIsMutable()V

    .line 1231
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1232
    return-void
.end method

.method private addWakeEvent(ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V
    .locals 1

    .line 1203
    if-eqz p2, :cond_0

    .line 1206
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureWakeEventIsMutable()V

    .line 1207
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1208
    return-void

    .line 1204
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private addWakeEvent(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)V
    .locals 1

    .line 1218
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureWakeEventIsMutable()V

    .line 1219
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1220
    return-void
.end method

.method private addWakeEvent(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V
    .locals 1

    .line 1188
    if-eqz p1, :cond_0

    .line 1191
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureWakeEventIsMutable()V

    .line 1192
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1193
    return-void

    .line 1189
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private clearHeadsetProfileConnectionStats()V
    .locals 1

    .line 2026
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2027
    return-void
.end method

.method private clearNumBluetoothSession()V
    .locals 2

    .line 1537
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    .line 1538
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numBluetoothSession_:J

    .line 1539
    return-void
.end method

.method private clearNumBondedDevices()V
    .locals 1

    .line 1490
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    .line 1491
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numBondedDevices_:I

    .line 1492
    return-void
.end method

.method private clearNumPairEvent()V
    .locals 2

    .line 1584
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    .line 1585
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numPairEvent_:J

    .line 1586
    return-void
.end method

.method private clearNumScanEvent()V
    .locals 2

    .line 1678
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    .line 1679
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numScanEvent_:J

    .line 1680
    return-void
.end method

.method private clearNumWakeEvent()V
    .locals 2

    .line 1631
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    .line 1632
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numWakeEvent_:J

    .line 1633
    return-void
.end method

.method private clearPairEvent()V
    .locals 1

    .line 1075
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1076
    return-void
.end method

.method private clearProfileConnectionStats()V
    .locals 1

    .line 1847
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1848
    return-void
.end method

.method private clearScanEvent()V
    .locals 1

    .line 1433
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1434
    return-void
.end method

.method private clearSession()V
    .locals 1

    .line 896
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 897
    return-void
.end method

.method private clearWakeEvent()V
    .locals 1

    .line 1254
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1255
    return-void
.end method

.method private ensureHeadsetProfileConnectionStatsIsMutable()V
    .locals 1

    .line 1919
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1921
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1923
    :cond_0
    return-void
.end method

.method private ensurePairEventIsMutable()V
    .locals 1

    .line 968
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 970
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 972
    :cond_0
    return-void
.end method

.method private ensureProfileConnectionStatsIsMutable()V
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1742
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1744
    :cond_0
    return-void
.end method

.method private ensureScanEventIsMutable()V
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1328
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1330
    :cond_0
    return-void
.end method

.method private ensureSessionIsMutable()V
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 791
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 793
    :cond_0
    return-void
.end method

.method private ensureWakeEventIsMutable()V
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1149
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1151
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1

    .line 3341
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2115
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2118
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2092
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2098
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2056
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2063
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2103
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2110
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2080
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2087
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2043
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2050
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2068
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2075
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;",
            ">;"
        }
    .end annotation

    .line 3347
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeHeadsetProfileConnectionStats(I)V
    .locals 1

    .line 2036
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureHeadsetProfileConnectionStatsIsMutable()V

    .line 2037
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 2038
    return-void
.end method

.method private removePairEvent(I)V
    .locals 1

    .line 1085
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensurePairEventIsMutable()V

    .line 1086
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1087
    return-void
.end method

.method private removeProfileConnectionStats(I)V
    .locals 1

    .line 1857
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureProfileConnectionStatsIsMutable()V

    .line 1858
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1859
    return-void
.end method

.method private removeScanEvent(I)V
    .locals 1

    .line 1443
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureScanEventIsMutable()V

    .line 1444
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1445
    return-void
.end method

.method private removeSession(I)V
    .locals 1

    .line 906
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureSessionIsMutable()V

    .line 907
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 908
    return-void
.end method

.method private removeWakeEvent(I)V
    .locals 1

    .line 1264
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureWakeEventIsMutable()V

    .line 1265
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1266
    return-void
.end method

.method private setHeadsetProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)V
    .locals 1

    .line 1949
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureHeadsetProfileConnectionStatsIsMutable()V

    .line 1950
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1951
    return-void
.end method

.method private setHeadsetProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V
    .locals 1

    .line 1934
    if-eqz p2, :cond_0

    .line 1937
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureHeadsetProfileConnectionStatsIsMutable()V

    .line 1938
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1939
    return-void

    .line 1935
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setNumBluetoothSession(J)V
    .locals 1

    .line 1526
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    .line 1527
    iput-wide p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numBluetoothSession_:J

    .line 1528
    return-void
.end method

.method private setNumBondedDevices(I)V
    .locals 1

    .line 1479
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    .line 1480
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numBondedDevices_:I

    .line 1481
    return-void
.end method

.method private setNumPairEvent(J)V
    .locals 1

    .line 1573
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    .line 1574
    iput-wide p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numPairEvent_:J

    .line 1575
    return-void
.end method

.method private setNumScanEvent(J)V
    .locals 1

    .line 1667
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    .line 1668
    iput-wide p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numScanEvent_:J

    .line 1669
    return-void
.end method

.method private setNumWakeEvent(J)V
    .locals 1

    .line 1620
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    .line 1621
    iput-wide p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numWakeEvent_:J

    .line 1622
    return-void
.end method

.method private setPairEvent(ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)V
    .locals 1

    .line 998
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensurePairEventIsMutable()V

    .line 999
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1000
    return-void
.end method

.method private setPairEvent(ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V
    .locals 1

    .line 983
    if-eqz p2, :cond_0

    .line 986
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensurePairEventIsMutable()V

    .line 987
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 988
    return-void

    .line 984
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)V
    .locals 1

    .line 1770
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureProfileConnectionStatsIsMutable()V

    .line 1771
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1772
    return-void
.end method

.method private setProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V
    .locals 1

    .line 1755
    if-eqz p2, :cond_0

    .line 1758
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureProfileConnectionStatsIsMutable()V

    .line 1759
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1760
    return-void

    .line 1756
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setScanEvent(ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)V
    .locals 1

    .line 1356
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureScanEventIsMutable()V

    .line 1357
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1358
    return-void
.end method

.method private setScanEvent(ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V
    .locals 1

    .line 1341
    if-eqz p2, :cond_0

    .line 1344
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureScanEventIsMutable()V

    .line 1345
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1346
    return-void

    .line 1342
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setSession(ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)V
    .locals 1

    .line 819
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureSessionIsMutable()V

    .line 820
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 821
    return-void
.end method

.method private setSession(ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V
    .locals 1

    .line 804
    if-eqz p2, :cond_0

    .line 807
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureSessionIsMutable()V

    .line 808
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 809
    return-void

    .line 805
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setWakeEvent(ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)V
    .locals 1

    .line 1177
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureWakeEventIsMutable()V

    .line 1178
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1179
    return-void
.end method

.method private setWakeEvent(ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V
    .locals 1

    .line 1162
    if-eqz p2, :cond_0

    .line 1165
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->ensureWakeEventIsMutable()V

    .line 1166
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1167
    return-void

    .line 1163
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3265
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3325
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3322
    :pswitch_0
    return-object p3

    .line 3319
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3304
    :pswitch_2
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->PARSER:Lcom/google/protobuf/Parser;

    .line 3305
    if-nez p1, :cond_1

    .line 3306
    const-class p2, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    monitor-enter p2

    .line 3307
    :try_start_0
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->PARSER:Lcom/google/protobuf/Parser;

    .line 3308
    if-nez p1, :cond_0

    .line 3309
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3312
    sput-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->PARSER:Lcom/google/protobuf/Parser;

    .line 3314
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 3316
    :cond_1
    :goto_0
    return-object p1

    .line 3301
    :pswitch_3
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    return-object p1

    .line 3273
    :pswitch_4
    const/16 p1, 0x12

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "session_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-class p3, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "pairEvent_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "wakeEvent_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "scanEvent_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "numBondedDevices_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "numBluetoothSession_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "numPairEvent_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "numWakeEvent_"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "numScanEvent_"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "profileConnectionStats_"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "headsetProfileConnectionStats_"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-class p3, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    aput-object p3, p1, p2

    .line 3293
    nop

    .line 3297
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    const-string p3, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0006\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004\u001b\u0005\u0004\u0000\u0006\u0002\u0001\u0007\u0002\u0002\u0008\u0002\u0003\t\u0002\u0004\n\u001b\u000b\u001b"

    invoke-static {p2, p3, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3270
    :pswitch_5
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;

    invoke-direct {p1, p3}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;-><init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V

    return-object p1

    .line 3267
    :pswitch_6
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-direct {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHeadsetProfileConnectionStats(I)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1

    .line 1905
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p1
.end method

.method public getHeadsetProfileConnectionStatsCount()I
    .locals 1

    .line 1894
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadsetProfileConnectionStatsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;",
            ">;"
        }
    .end annotation

    .line 1872
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getHeadsetProfileConnectionStatsOrBuilder(I)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStatsOrBuilder;
    .locals 1

    .line 1916
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStatsOrBuilder;

    return-object p1
.end method

.method public getHeadsetProfileConnectionStatsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStatsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1883
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->headsetProfileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNumBluetoothSession()J
    .locals 2

    .line 1516
    iget-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numBluetoothSession_:J

    return-wide v0
.end method

.method public getNumBondedDevices()I
    .locals 1

    .line 1469
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numBondedDevices_:I

    return v0
.end method

.method public getNumPairEvent()J
    .locals 2

    .line 1563
    iget-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numPairEvent_:J

    return-wide v0
.end method

.method public getNumScanEvent()J
    .locals 2

    .line 1657
    iget-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numScanEvent_:J

    return-wide v0
.end method

.method public getNumWakeEvent()J
    .locals 2

    .line 1610
    iget-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->numWakeEvent_:J

    return-wide v0
.end method

.method public getPairEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p1
.end method

.method public getPairEventCount()I
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPairEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;",
            ">;"
        }
    .end annotation

    .line 921
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPairEventOrBuilder(I)Lcom/android/bluetooth/BluetoothMetricsProto$PairEventOrBuilder;
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$PairEventOrBuilder;

    return-object p1
.end method

.method public getPairEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$PairEventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->pairEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getProfileConnectionStats(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p1
.end method

.method public getProfileConnectionStatsCount()I
    .locals 1

    .line 1715
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getProfileConnectionStatsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;",
            ">;"
        }
    .end annotation

    .line 1693
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getProfileConnectionStatsOrBuilder(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStatsOrBuilder;
    .locals 1

    .line 1737
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStatsOrBuilder;

    return-object p1
.end method

.method public getProfileConnectionStatsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStatsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1704
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->profileConnectionStats_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getScanEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p1
.end method

.method public getScanEventCount()I
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getScanEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;",
            ">;"
        }
    .end annotation

    .line 1279
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getScanEventOrBuilder(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEventOrBuilder;
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEventOrBuilder;

    return-object p1
.end method

.method public getScanEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1290
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->scanEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSession(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p1
.end method

.method public getSessionCount()I
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSessionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;",
            ">;"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSessionOrBuilder(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSessionOrBuilder;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSessionOrBuilder;

    return-object p1
.end method

.method public getSessionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSessionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->session_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getWakeEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p1
.end method

.method public getWakeEventCount()I
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getWakeEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;",
            ">;"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getWakeEventOrBuilder(I)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEventOrBuilder;
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEventOrBuilder;

    return-object p1
.end method

.method public getWakeEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1111
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->wakeEvent_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasNumBluetoothSession()Z
    .locals 1

    .line 1505
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNumBondedDevices()Z
    .locals 2

    .line 1458
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNumPairEvent()Z
    .locals 1

    .line 1552
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNumScanEvent()Z
    .locals 1

    .line 1646
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNumWakeEvent()Z
    .locals 1

    .line 1599
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
