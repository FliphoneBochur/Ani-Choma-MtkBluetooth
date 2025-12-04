.class public final synthetic Lcom/android/bluetooth/hfp/-$$Lambda$zZhcclBCEMTE1UUJjcoEJjXmX_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/bluetooth/hfp/-$$Lambda$zZhcclBCEMTE1UUJjcoEJjXmX_8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/bluetooth/hfp/-$$Lambda$zZhcclBCEMTE1UUJjcoEJjXmX_8;

    invoke-direct {v0}, Lcom/android/bluetooth/hfp/-$$Lambda$zZhcclBCEMTE1UUJjcoEJjXmX_8;-><init>()V

    sput-object v0, Lcom/android/bluetooth/hfp/-$$Lambda$zZhcclBCEMTE1UUJjcoEJjXmX_8;->INSTANCE:Lcom/android/bluetooth/hfp/-$$Lambda$zZhcclBCEMTE1UUJjcoEJjXmX_8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectingTimestampMs()J

    move-result-wide v0

    return-wide v0
.end method
