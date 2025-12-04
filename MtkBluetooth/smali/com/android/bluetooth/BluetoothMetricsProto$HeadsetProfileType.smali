.class public final enum Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;
.super Ljava/lang/Enum;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeadsetProfileType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType$HeadsetProfileTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

.field public static final enum HEADSET_PROFILE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

.field public static final HEADSET_PROFILE_UNKNOWN_VALUE:I = 0x0

.field public static final enum HFP:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

.field public static final HFP_VALUE:I = 0x2

.field public static final enum HSP:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

.field public static final HSP_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 386
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    const-string v1, "HEADSET_PROFILE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->HEADSET_PROFILE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    .line 390
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    const-string v1, "HSP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->HSP:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    .line 394
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    const-string v1, "HFP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->HFP:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    .line 381
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    sget-object v5, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->HEADSET_PROFILE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->HSP:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    .line 438
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType$1;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType$1;-><init>()V

    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 462
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 463
    iput p3, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->value:I

    .line 464
    return-void
.end method

.method public static forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;
    .locals 1

    .line 425
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 429
    const/4 p0, 0x0

    return-object p0

    .line 428
    :cond_0
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->HFP:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    return-object p0

    .line 427
    :cond_1
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->HSP:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    return-object p0

    .line 426
    :cond_2
    sget-object p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->HEADSET_PROFILE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;",
            ">;"
        }
    .end annotation

    .line 435
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 448
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType$HeadsetProfileTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    invoke-static {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;
    .locals 1

    .line 381
    const-class v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;
    .locals 1

    .line 381
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->$VALUES:[Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    invoke-virtual {v0}, [Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->value:I

    return v0
.end method
