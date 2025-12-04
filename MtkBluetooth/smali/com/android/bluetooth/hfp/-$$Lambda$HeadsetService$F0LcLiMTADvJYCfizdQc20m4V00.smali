.class public final synthetic Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$F0LcLiMTADvJYCfizdQc20m4V00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$F0LcLiMTADvJYCfizdQc20m4V00;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$F0LcLiMTADvJYCfizdQc20m4V00;

    invoke-direct {v0}, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$F0LcLiMTADvJYCfizdQc20m4V00;-><init>()V

    sput-object v0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$F0LcLiMTADvJYCfizdQc20m4V00;->INSTANCE:Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$F0LcLiMTADvJYCfizdQc20m4V00;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->lambda$setActiveDevice$1(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method
